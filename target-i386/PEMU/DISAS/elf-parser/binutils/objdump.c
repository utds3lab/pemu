/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#      Modided objdump for elf file parsing.
*/

#include "sysdep.h"
#include "bfd.h"
#include "elf-bfd.h"
#include "bucomm.h"
#include "elfcomm.h"
#include "dwarf.h"
#include "getopt.h"
#include "safe-ctype.h"
#include "dis-asm.h"
#include "libiberty.h"
#include "demangle.h"
#include "filenames.h"

#include "debug.h"
#include "budbg.h"
#include "objdump.h"

#ifdef HAVE_MMAP
#include <sys/mman.h>
#endif

/* Internal headers for the ELF .stab-dump code - sorry.  */
#define	BYTES_IN_WORD	32
#include "aout/aout64.h"

/* Exit status.  */
static int exit_status = 0;

static char *default_target = NULL;	/* Default at runtime.  */

/* The following variables are set based on arguments passed on the
   command line.  */
//static int show_version = 0;		/* Show the version number.  */
//static int dump_section_contents;	/* -s */
//static int dump_section_headers;	/* -h */
//static bfd_boolean dump_file_header;	/* -f */
//static int dump_symtab;			/* -t */
//static int dump_dynamic_symtab;		/* -T */
//static int dump_reloc_info;		/* -r */
//static int dump_dynamic_reloc_info;	/* -R */
//static int dump_ar_hdrs;		/* -a */
//static int dump_private_headers;	/* -p */
//static char *dump_private_options;	/* -P */
static int prefix_addresses;		/* --prefix-addresses */
static int with_line_numbers;		/* -l */
static bfd_boolean with_source_code;	/* -S */
static int show_raw_insn;		/* --show-raw-insn */
static int dump_dwarf_section_info;	/* --dwarf */
static int dump_stab_section_info;	/* --stabs */
static int do_demangle;			/* -C, --demangle */
static bfd_boolean disassemble;		/* -d */
static bfd_boolean disassemble_all;	/* -D */
static int disassemble_zeroes;		/* --disassemble-zeroes */
static bfd_boolean formats_info;	/* -i */
static int wide_output;			/* -w */
static int insn_width;			/* --insn-width */
static bfd_vma start_address = (bfd_vma) -1; /* --start-address */
static bfd_vma stop_address = (bfd_vma) -1;  /* --stop-address */
static int dump_debugging;		/* --debugging */
static int dump_debugging_tags;		/* --debugging-tags */
static int suppress_bfd_header;
static int dump_special_syms = 0;	/* --special-syms */
static bfd_vma adjust_section_vma = 0;	/* --adjust-vma */
static int file_start_context = 0;      /* --file-start-context */
static bfd_boolean display_file_offsets;/* -F */
static const char *prefix;		/* --prefix */
static int prefix_strip;		/* --prefix-strip */
static size_t prefix_length;
/* A structure to record the sections mentioned in -j switches. */ 
/*  struct only
{
  const char * name; // The name of the section.
  bfd_boolean  seen; // A flag to indicate that the section has been found in one or more input files.  
  struct only * next; // Pointer to the next structure in the list.  
};  */
/* Pointer to an array of 'only' structures.
   This pointer is NULL if the -j switch has not been used. */ 
//static struct only * only_list = NULL; 
/* Variables for handling include file path table.  */
//static const char **include_paths;
//static int include_path_count;


/* Extra info to pass to the section disassembler and address printing
   function.  */
struct objdump_disasm_info
{
  bfd *              abfd;
  asection *         sec;
  bfd_boolean        require_sec;
  arelent **         dynrelbuf;
  long               dynrelcount;
  disassembler_ftype disassemble_fn;
  arelent *          reloc;
};
/* Image Structure. */
struct IMG
{
  char *             name;
  int                id;
  int                sec_num;
  
  struct SEC *       sections_head;
  struct SEC *       sections_tail;

  struct IMG *       prev;
  struct IMG *       next;
};
/* Section structure. */
struct SEC
{ 
  char *             name;
  int                id;
  bfd_vma            address;
  int                size;
  int                type;
  int                rtn_num;
  
  struct IMG *       image_belong;
  
  struct bfd_symbol* symbol;
  
  struct RTN *       routines_head;
  struct RTN *       routines_tail;

  struct SEC *       prev;
  struct SEC *       next;
};
/* Routine structure */
struct RTN
{
  char *             name;
  int                id;
  bfd_vma            address;
  int                size;
  int                inst_num;

  struct SEC *       section_belong;
  
  struct INST *      instructions_head;
  struct INST *      instructions_tail;

  struct RTN *       prev;
  struct RTN *       next;
};
/* Instruction structure */
struct INST
{
  int                id;
  bfd_vma            address;
  int                size;
  bfd_byte *         inst_cont;
  
  struct RTN *       routine_belong;

  struct INST *      prev;
  struct INST *      next;
};
  
/* Architecture to disassemble for, or default if NULL. */
static char *machine = NULL;

/* Target specific options to the disassembler. */
static char *disassembler_options = NULL;

/* Endianness to disassemble for, or default if BFD_ENDIAN_UNKNOWN. */
static enum bfd_endian endian = BFD_ENDIAN_UNKNOWN;

/* The symbol table. */
static asymbol **syms;

/* Number of symbols in `syms'. */
static long symcount = 0;

/* The sorted symbol table. */
static asymbol **sorted_syms;

/* Number of symbols in `sorted_syms'. */
static long sorted_symcount = 0;

/* The dynamic symbol table. */
static asymbol **dynsyms;

/* The synthetic symbol table. */
static asymbol *synthsyms;
static long synthcount = 0;

/* Number of symbols in `dynsyms'. */
static long dynsymcount = 0;


//static bfd_byte *stabs;
//static bfd_size_type stab_size;
//static char *strtab;
//static bfd_size_type stabstr_size;


static bfd_boolean is_relocatable = FALSE;


/* Handlers for -P/--private. */
/*  static const struct objdump_private_desc * const objdump_private_vectors[] =
  {
    OBJDUMP_PRIVATE_VECTORS
    NULL
  };  */
//static void usage (FILE *, int) ATTRIBUTE_NORETURN;
/*  static void
usage (FILE *stream, int status)
{
  fprintf (stream, _("Usage: %s <option(s)> <file(s)>\n"), program_name);
  fprintf (stream, _(" Display information from object <file(s)>.\n"));
  fprintf (stream, _(" At least one of the following switches must be given:\n"));
  fprintf (stream, _("\
  -a, --archive-headers    Display archive header information\n\
  -f, --file-headers       Display the contents of the overall file header\n\
  -p, --private-headers    Display object format specific file header contents\n\
  -P, --private=OPT,OPT... Display object format specific contents\n\
  -h, --[section-]headers  Display the contents of the section headers\n\
  -x, --all-headers        Display the contents of all headers\n\
  -d, --disassemble        Display assembler contents of executable sections\n\
  -D, --disassemble-all    Display assembler contents of all sections\n\
  -S, --source             Intermix source code with disassembly\n\
  -s, --full-contents      Display the full contents of all sections requested\n\
  -g, --debugging          Display debug information in object file\n\
  -e, --debugging-tags     Display debug information using ctags style\n\
  -G, --stabs              Display (in raw form) any STABS info in the file\n\
  -W[lLiaprmfFsoRt] or\n\
  --dwarf[=rawline,=decodedline,=info,=abbrev,=pubnames,=aranges,=macro,=frames,\n\
          =frames-interp,=str,=loc,=Ranges,=pubtypes,\n\
          =gdb_index,=trace_info,=trace_abbrev,=trace_aranges,\n\
          =addr,=cu_index]\n\
                           Display DWARF info in the file\n\
  -t, --syms               Display the contents of the symbol table(s)\n\
  -T, --dynamic-syms       Display the contents of the dynamic symbol table\n\
  -r, --reloc              Display the relocation entries in the file\n\
  -R, --dynamic-reloc      Display the dynamic relocation entries in the file\n\
  @<file>                  Read options from <file>\n\
  -v, --version            Display this program's version number\n\
  -i, --info               List object formats and architectures supported\n\
  -H, --help               Display this information\n\
"));
  if (status != 2)
    {
      const struct objdump_private_desc * const *desc;

      fprintf (stream, _("\n The following switches are optional:\n"));
      fprintf (stream, _("\
  -b, --target=BFDNAME           Specify the target object format as BFDNAME\n\
  -m, --architecture=MACHINE     Specify the target architecture as MACHINE\n\
  -j, --section=NAME             Only display information for section NAME\n\
  -M, --disassembler-options=OPT Pass text OPT on to the disassembler\n\
  -EB --endian=big               Assume big endian format when disassembling\n\
  -EL --endian=little            Assume little endian format when disassembling\n\
      --file-start-context       Include context from start of file (with -S)\n\
  -I, --include=DIR              Add DIR to search list for source files\n\
  -l, --line-numbers             Include line numbers and filenames in output\n\
  -F, --file-offsets             Include file offsets when displaying information\n\
  -C, --demangle[=STYLE]         Decode mangled/processed symbol names\n\
                                  The STYLE, if specified, can be `auto', `gnu',\n\
                                  `lucid', `arm', `hp', `edg', `gnu-v3', `java'\n\
                                  or `gnat'\n\
  -w, --wide                     Format output for more than 80 columns\n\
  -z, --disassemble-zeroes       Do not skip blocks of zeroes when disassembling\n\
      --start-address=ADDR       Only process data whose address is >= ADDR\n\
      --stop-address=ADDR        Only process data whose address is <= ADDR\n\
      --prefix-addresses         Print complete address alongside disassembly\n\
      --[no-]show-raw-insn       Display hex alongside symbolic disassembly\n\
      --insn-width=WIDTH         Display WIDTH bytes on a single line for -d\n\
      --adjust-vma=OFFSET        Add OFFSET to all displayed section addresses\n\
      --special-syms             Include special symbols in symbol dumps\n\
      --prefix=PREFIX            Add PREFIX to absolute paths for -S\n\
      --prefix-strip=LEVEL       Strip initial directory names for -S\n"));
      fprintf (stream, _("\
      --dwarf-depth=N        Do not display DIEs at depth N or greater\n\
      --dwarf-start=N        Display DIEs starting with N, at the same depth\n\
                             or deeper\n\
      --dwarf-check          Make additional dwarf internal consistency checks.\
      \n\n"));
      list_supported_targets (program_name, stream);
      list_supported_architectures (program_name, stream);

      disassembler_usage (stream);

      if (objdump_private_vectors[0] != NULL)
        {
          fprintf (stream,
                   _("\nOptions supported for -P/--private switch:\n"));
          for (desc = objdump_private_vectors; *desc != NULL; desc++)
            (*desc)->help (stream);
        }
    }
  if (REPORT_BUGS_TO[0] && status == 0)
    fprintf (stream, _("Report bugs to %s.\n"), REPORT_BUGS_TO);
  exit (status);
}  */
/* 150 isn't special; it's just an arbitrary non-ASCII char value. */
/*  enum option_values
  {
    OPTION_ENDIAN=150,
    OPTION_START_ADDRESS,
    OPTION_STOP_ADDRESS,
    OPTION_DWARF,
    OPTION_PREFIX,
    OPTION_PREFIX_STRIP,
    OPTION_INSN_WIDTH,
    OPTION_ADJUST_VMA,
    OPTION_DWARF_DEPTH,
    OPTION_DWARF_CHECK,
    OPTION_DWARF_START
  };  */
/*  static struct option long_options[]=
{
  {"adjust-vma", required_argument, NULL, OPTION_ADJUST_VMA},
  {"all-headers", no_argument, NULL, 'x'},
  {"private-headers", no_argument, NULL, 'p'},
  {"private", required_argument, NULL, 'P'},
  {"architecture", required_argument, NULL, 'm'},
  {"archive-headers", no_argument, NULL, 'a'},
  {"debugging", no_argument, NULL, 'g'},
  {"debugging-tags", no_argument, NULL, 'e'},
  {"demangle", optional_argument, NULL, 'C'},
  {"disassemble", no_argument, NULL, 'd'},
  {"disassemble-all", no_argument, NULL, 'D'},
  {"disassembler-options", required_argument, NULL, 'M'},
  {"disassemble-zeroes", no_argument, NULL, 'z'},
  {"dynamic-reloc", no_argument, NULL, 'R'},
  {"dynamic-syms", no_argument, NULL, 'T'},
  {"endian", required_argument, NULL, OPTION_ENDIAN},
  {"file-headers", no_argument, NULL, 'f'},
  {"file-offsets", no_argument, NULL, 'F'},
  {"file-start-context", no_argument, &file_start_context, 1},
  {"full-contents", no_argument, NULL, 's'},
  {"headers", no_argument, NULL, 'h'},
  {"help", no_argument, NULL, 'H'},
  {"info", no_argument, NULL, 'i'},
  {"line-numbers", no_argument, NULL, 'l'},
  {"no-show-raw-insn", no_argument, &show_raw_insn, -1},
  {"prefix-addresses", no_argument, &prefix_addresses, 1},
  {"reloc", no_argument, NULL, 'r'},
  {"section", required_argument, NULL, 'j'},
  {"section-headers", no_argument, NULL, 'h'},
  {"show-raw-insn", no_argument, &show_raw_insn, 1},
  {"source", no_argument, NULL, 'S'},
  {"special-syms", no_argument, &dump_special_syms, 1},
  {"include", required_argument, NULL, 'I'},
  {"dwarf", optional_argument, NULL, OPTION_DWARF},
  {"stabs", no_argument, NULL, 'G'},
  {"start-address", required_argument, NULL, OPTION_START_ADDRESS},
  {"stop-address", required_argument, NULL, OPTION_STOP_ADDRESS},
  {"syms", no_argument, NULL, 't'},
  {"target", required_argument, NULL, 'b'},
  {"version", no_argument, NULL, 'V'},
  {"wide", no_argument, NULL, 'w'},
  {"prefix", required_argument, NULL, OPTION_PREFIX},
  {"prefix-strip", required_argument, NULL, OPTION_PREFIX_STRIP},
  {"insn-width", required_argument, NULL, OPTION_INSN_WIDTH},
  {"dwarf-depth",      required_argument, 0, OPTION_DWARF_DEPTH},
  {"dwarf-start",      required_argument, 0, OPTION_DWARF_START},
  {"dwarf-check",      no_argument, 0, OPTION_DWARF_CHECK},
  {0, no_argument, 0, 0}
};  */


static void
nonfatal (const char *msg)
{
  bfd_nonfatal (msg);
  exit_status = 1;
}


/* Returns TRUE if the specified section should be dumped. */
/*  static bfd_boolean
process_section_p (asection * section)
{
  struct only * only;

  if (only_list == NULL)
    return TRUE;

  for (only = only_list; only; only = only->next)
    if (strcmp (only->name, section->name) == 0)
      {
	only->seen = TRUE;
	return TRUE;
      }

  return FALSE;
}  */
/* Add an entry to the 'only' list. */
/*  static void
add_only (char * name)
{
  struct only * only;

*//* First check to make sure that we do not
     already have an entry for this name. *//*
  for (only = only_list; only; only = only->next)
    if (strcmp (only->name, name) == 0)
      return;

  only = xmalloc (sizeof * only);
  only->name = name;
  only->seen = FALSE;
  only->next = only_list;
  only_list = only;
}  */
/* Release the memory used by the 'only' list.
   PR 11225: Issue a warning message for unseen sections.
   Only do this if none of the sections were seen.  This is mainly to support
   tools like the GAS testsuite where an object file is dumped with a list of
   generic section names known to be present in a range of different file
   formats. */
/*  static void
free_only_list (void)
{
  bfd_boolean at_least_one_seen = FALSE;
  struct only * only;
  struct only * next;

  if (only_list == NULL)
    return;

  for (only = only_list; only; only = only->next)
    if (only->seen)
      {
	at_least_one_seen = TRUE;
	break;
      }

  for (only = only_list; only; only = next)
    {
      if (! at_least_one_seen)
	{
	  non_fatal (_("section '%s' mentioned in a -j option, "
		       "but not found in any input file"),
		     only->name);
	  exit_status = 1;
	}
      next = only->next;
      free (only);
    }
}  */
/*  static void
dump_section_header (bfd *abfd, asection *section,
		     void *ignored ATTRIBUTE_UNUSED)
{
  char *comma = "";
  unsigned int opb = bfd_octets_per_byte (abfd);

*//* Ignore linker created section.  See elfNN_ia64_object_p in
     bfd/elfxx-ia64.c. *//*
  if (section->flags & SEC_LINKER_CREATED)
    return;

*//* PR 10413: Skip sections that we are ignoring. *//*
  if (! process_section_p (section))
    return;

  printf ("%3d %-13s %08lx  ", section->index,
	  bfd_get_section_name (abfd, section),
	  (unsigned long) bfd_section_size (abfd, section) / opb);
  bfd_printf_vma (abfd, bfd_get_section_vma (abfd, section));
  printf ("  ");
  bfd_printf_vma (abfd, section->lma);
  printf ("  %08lx  2**%u", (unsigned long) section->filepos,
	  bfd_get_section_alignment (abfd, section));
  if (! wide_output)
    printf ("\n                ");
  printf ("  ");

#define PF(x, y) \
  if (section->flags & x) { printf ("%s%s", comma, y); comma = ", "; }

  PF (SEC_HAS_CONTENTS, "CONTENTS");
  PF (SEC_ALLOC, "ALLOC");
  PF (SEC_CONSTRUCTOR, "CONSTRUCTOR");
  PF (SEC_LOAD, "LOAD");
  PF (SEC_RELOC, "RELOC");
  PF (SEC_READONLY, "READONLY");
  PF (SEC_CODE, "CODE");
  PF (SEC_DATA, "DATA");
  PF (SEC_ROM, "ROM");
  PF (SEC_DEBUGGING, "DEBUGGING");
  PF (SEC_NEVER_LOAD, "NEVER_LOAD");
  PF (SEC_EXCLUDE, "EXCLUDE");
  PF (SEC_SORT_ENTRIES, "SORT_ENTRIES");
  if (bfd_get_arch (abfd) == bfd_arch_tic54x)
    {
      PF (SEC_TIC54X_BLOCK, "BLOCK");
      PF (SEC_TIC54X_CLINK, "CLINK");
    }
  PF (SEC_SMALL_DATA, "SMALL_DATA");
  if (bfd_get_flavour (abfd) == bfd_target_coff_flavour)
    PF (SEC_COFF_SHARED, "SHARED");
  PF (SEC_THREAD_LOCAL, "THREAD_LOCAL");
  PF (SEC_GROUP, "GROUP");

  if ((section->flags & SEC_LINK_ONCE) != 0)
    {
      const char *ls;
      struct coff_comdat_info *comdat;

      switch (section->flags & SEC_LINK_DUPLICATES)
	{
	default:
	  abort ();
	case SEC_LINK_DUPLICATES_DISCARD:
	  ls = "LINK_ONCE_DISCARD";
	  break;
	case SEC_LINK_DUPLICATES_ONE_ONLY:
	  ls = "LINK_ONCE_ONE_ONLY";
	  break;
	case SEC_LINK_DUPLICATES_SAME_SIZE:
	  ls = "LINK_ONCE_SAME_SIZE";
	  break;
	case SEC_LINK_DUPLICATES_SAME_CONTENTS:
	  ls = "LINK_ONCE_SAME_CONTENTS";
	  break;
	}
      printf ("%s%s", comma, ls);

      comdat = bfd_coff_get_comdat_section (abfd, section);
      if (comdat != NULL)
	printf (" (COMDAT %s %ld)", comdat->name, comdat->symbol);

      comma = ", ";
    }

  printf ("\n");
#undef PF
}  */
/*  static void
dump_headers (bfd *abfd)
{
  printf (_("Sections:\n"));

#ifndef BFD64
  printf (_("Idx Name          Size      VMA       LMA       File off  Algn"));
#else
*//* With BFD64, non-ELF returns -1 and wants always 64 bit addresses. *//*
  if (bfd_get_arch_size (abfd) == 32)
    printf (_("Idx Name          Size      VMA       LMA       File off  Algn"));
  else
    printf (_("Idx Name          Size      VMA               LMA               File off  Algn"));
#endif

  if (wide_output)
    printf (_("  Flags"));
  printf ("\n");

  bfd_map_over_sections (abfd, dump_section_header, NULL);
}  */


static asymbol **
slurp_symtab (bfd *abfd)
{
  asymbol **sy = NULL;
  long storage;

  if (!(bfd_get_file_flags (abfd) & HAS_SYMS))
    {
      symcount = 0;
      return NULL;
    }

  storage = bfd_get_symtab_upper_bound (abfd);
  if (storage < 0)
    {
      non_fatal (_("failed to read symbol table from: %s"), bfd_get_filename (abfd));
      bfd_fatal (_("error message was"));
    }
  if (storage)
    sy = (asymbol **) xmalloc (storage);

  symcount = bfd_canonicalize_symtab (abfd, sy);
  if (symcount < 0)
    bfd_fatal (bfd_get_filename (abfd));
  return sy;
}

/* Read in the dynamic symbols. */

static asymbol **
slurp_dynamic_symtab (bfd *abfd)
{
  asymbol **sy = NULL;
  long storage;

  storage = bfd_get_dynamic_symtab_upper_bound (abfd);
  if (storage < 0)
    {
      if (!(bfd_get_file_flags (abfd) & DYNAMIC))
	{
	  non_fatal (_("%s: not a dynamic object"), bfd_get_filename (abfd));
	  exit_status = 1;
	  dynsymcount = 0;
	  return NULL;
	}

      bfd_fatal (bfd_get_filename (abfd));
    }
  if (storage)
    sy = (asymbol **) xmalloc (storage);

  dynsymcount = bfd_canonicalize_dynamic_symtab (abfd, sy);
  if (dynsymcount < 0)
    bfd_fatal (bfd_get_filename (abfd));
  return sy;
}

/* Filter out (in place) symbols that are useless for disassembly.
   COUNT is the number of elements in SYMBOLS.
   Return the number of useful symbols. */

static long
remove_useless_symbols (asymbol **symbols, long count)
{
  asymbol **in_ptr = symbols, **out_ptr = symbols;

  while (--count >= 0)
    {
      asymbol *sym = *in_ptr++;

      if (sym->name == NULL || sym->name[0] == '\0')
	continue;
      if (sym->flags & (BSF_DEBUGGING | BSF_SECTION_SYM))
	continue;
      if (bfd_is_und_section (sym->section)
	  || bfd_is_com_section (sym->section))
	continue;

      *out_ptr++ = sym;
    }
  return out_ptr - symbols;
}

/* Sort symbols into value order. */

static int
compare_symbols (const void *ap, const void *bp)
{
  const asymbol *a = * (const asymbol **) ap;
  const asymbol *b = * (const asymbol **) bp;
  const char *an;
  const char *bn;
  size_t anl;
  size_t bnl;
  bfd_boolean af;
  bfd_boolean bf;
  flagword aflags;
  flagword bflags;

  if (bfd_asymbol_value (a) > bfd_asymbol_value (b))
    return 1;
  else if (bfd_asymbol_value (a) < bfd_asymbol_value (b))
    return -1;

  if (a->section > b->section)
    return 1;
  else if (a->section < b->section)
    return -1;

  an = bfd_asymbol_name (a);
  bn = bfd_asymbol_name (b);
  anl = strlen (an);
  bnl = strlen (bn);

  /* The symbols gnu_compiled and gcc2_compiled convey no real
     information, so put them after other symbols with the same value. */
  af = (strstr (an, "gnu_compiled") != NULL
	|| strstr (an, "gcc2_compiled") != NULL);
  bf = (strstr (bn, "gnu_compiled") != NULL
	|| strstr (bn, "gcc2_compiled") != NULL);

  if (af && ! bf)
    return 1;
  if (! af && bf)
    return -1;

  /* We use a heuristic for the file name, to try to sort it after
     more useful symbols.  It may not work on non Unix systems, but it
     doesn't really matter; the only difference is precisely which
     symbol names get printed. */

#define file_symbol(s, sn, snl)			\
  (((s)->flags & BSF_FILE) != 0			\
   || ((sn)[(snl) - 2] == '.'			\
       && ((sn)[(snl) - 1] == 'o'		\
	   || (sn)[(snl) - 1] == 'a')))

  af = file_symbol (a, an, anl);
  bf = file_symbol (b, bn, bnl);

  if (af && ! bf)
    return 1;
  if (! af && bf)
    return -1;

  /* Try to sort global symbols before local symbols before function
     symbols before debugging symbols. */

  aflags = a->flags;
  bflags = b->flags;

  if ((aflags & BSF_DEBUGGING) != (bflags & BSF_DEBUGGING))
    {
      if ((aflags & BSF_DEBUGGING) != 0)
	return 1;
      else
	return -1;
    }
  if ((aflags & BSF_FUNCTION) != (bflags & BSF_FUNCTION))
    {
      if ((aflags & BSF_FUNCTION) != 0)
	return -1;
      else
	return 1;
    }
  if ((aflags & BSF_LOCAL) != (bflags & BSF_LOCAL))
    {
      if ((aflags & BSF_LOCAL) != 0)
	return 1;
      else
	return -1;
    }
  if ((aflags & BSF_GLOBAL) != (bflags & BSF_GLOBAL))
    {
      if ((aflags & BSF_GLOBAL) != 0)
	return -1;
      else
	return 1;
    }

  /* Symbols that start with '.' might be section names, so sort them
     after symbols that don't start with '.'. */
  if (an[0] == '.' && bn[0] != '.')
    return 1;
  if (an[0] != '.' && bn[0] == '.')
    return -1;

  /* Finally, if we can't distinguish them in any other way, try to
     get consistent results by sorting the symbols by name. */
  return strcmp (an, bn);
}


/* Sort relocs into address order. */
/*  static int
compare_relocs (const void *ap, const void *bp)
{
  const arelent *a = * (const arelent **) ap;
  const arelent *b = * (const arelent **) bp;

  if (a->address > b->address)
    return 1;
  else if (a->address < b->address)
    return -1;

*//* So that associated relocations tied to the same address show up
     in the correct order, we don't do any further sorting. *//*
  if (a > b)
    return 1;
  else if (a < b)
    return -1;
  else
    return 0;
}  */


/* Print an address (VMA) to the output stream in INFO.
   If SKIP_ZEROES is TRUE, omit leading zeroes. */
static void
objdump_print_value (bfd_vma vma, struct disassemble_info *inf,
		     bfd_boolean skip_zeroes)
{
  char buf[30];
  char *p;
  struct objdump_disasm_info *aux;

  aux = (struct objdump_disasm_info *) inf->application_data;
  bfd_sprintf_vma (aux->abfd, buf, vma);
  if (! skip_zeroes)
    p = buf;
  else
    {
      for (p = buf; *p == '0'; ++p)
	;
      if (*p == '\0')
	--p;
    }
  (*inf->fprintf_func) (inf->stream, "%s", p);
}
/* Print the name of a symbol. */
static void
objdump_print_symname (bfd *abfd, struct disassemble_info *inf,
		       asymbol *sym)
{ 
  char *alloc;
  const char *name;

  alloc = NULL;
  name = bfd_asymbol_name (sym);
  if (do_demangle && name[0] != '\0')
    {
      /* Demangle the name. */
      alloc = bfd_demangle (abfd, name, DMGL_ANSI | DMGL_PARAMS);
      if (alloc != NULL)
	name = alloc;
    }

  if (inf != NULL)
    (*inf->fprintf_func) (inf->stream, "%s", name);
  else
    printf ("%s", name);

  if (alloc != NULL)
    free (alloc);
}
/* Locate a symbol given a bfd and a section (from INFO->application_data),
   and a VMA.  If INFO->application_data->require_sec is TRUE, then always
   require the symbol to be in the section.  Returns NULL if there is no
   suitable symbol.  If PLACE is not NULL, then *PLACE is set to the index
   of the symbol in sorted_syms. */

static asymbol *
find_symbol_for_address (bfd_vma vma,
			 struct disassemble_info *inf,
			 long *place)
{
  /* @@ Would it speed things up to cache the last two symbols returned,
     and maybe their address ranges?  For many processors, only one memory
     operand can be present at a time, so the 2-entry cache wouldn't be
     constantly churned by code doing heavy memory accesses.  */

  /* Indices in `sorted_syms'. */
  long min = 0;
  long max_count = sorted_symcount;
  long thisplace;
  struct objdump_disasm_info *aux;
  bfd *abfd;
  asection *sec;
  unsigned int opb;
  bfd_boolean want_section;

  if (sorted_symcount < 1)
    return NULL;

  aux = (struct objdump_disasm_info *) inf->application_data;
  abfd = aux->abfd;
  sec = aux->sec;
  opb = inf->octets_per_byte;

  /* Perform a binary search looking for the closest symbol to the
     required value.  We are searching the range (min, max_count]. */
  while (min + 1 < max_count)
    {
      asymbol *sym;

      thisplace = (max_count + min) / 2;
      sym = sorted_syms[thisplace];

      if (bfd_asymbol_value (sym) > vma)
	max_count = thisplace;
      else if (bfd_asymbol_value (sym) < vma)
	min = thisplace;
      else
	{
	  min = thisplace;
	  break;
	}
    }

  /* The symbol we want is now in min, the low end of the range we
     were searching.  If there are several symbols with the same
     value, we want the first one. */
  thisplace = min;
  while (thisplace > 0
	 && (bfd_asymbol_value (sorted_syms[thisplace])
	     == bfd_asymbol_value (sorted_syms[thisplace - 1])))
    --thisplace;

  /* Prefer a symbol in the current section if we have multple symbols
     with the same value, as can occur with overlays or zero size
     sections. */
  min = thisplace;
  while (min < max_count
	 && (bfd_asymbol_value (sorted_syms[min])
	     == bfd_asymbol_value (sorted_syms[thisplace])))
    {
      if (sorted_syms[min]->section == sec
	  && inf->symbol_is_valid (sorted_syms[min], inf))
	{
	  thisplace = min;

	  if (place != NULL)
	    *place = thisplace;

	  return sorted_syms[thisplace];
	}
      ++min;
    }

  /* If the file is relocatable, and the symbol could be from this
     section, prefer a symbol from this section over symbols from
     others, even if the other symbol's value might be closer.

     Note that this may be wrong for some symbol references if the
     sections have overlapping memory ranges, but in that case there's
     no way to tell what's desired without looking at the relocation
     table.
    
     Also give the target a chance to reject symbols. */
  want_section = (aux->require_sec
		  || ((abfd->flags & HAS_RELOC) != 0
		      && vma >= bfd_get_section_vma (abfd, sec)
		      && vma < (bfd_get_section_vma (abfd, sec)
				+ bfd_section_size (abfd, sec) / opb)));
  if ((sorted_syms[thisplace]->section != sec && want_section)
      || ! inf->symbol_is_valid (sorted_syms[thisplace], inf))
    {
      long i;
      long newplace = sorted_symcount;

      for (i = min - 1; i >= 0; i--)
	{
	  if ((sorted_syms[i]->section == sec || !want_section)
	      && inf->symbol_is_valid (sorted_syms[i], inf))
	    {
	      if (newplace == sorted_symcount)
		newplace = i;

	      if (bfd_asymbol_value (sorted_syms[i])
		  != bfd_asymbol_value (sorted_syms[newplace]))
		break;

	      /* Remember this symbol and keep searching until we reach
		 an earlier address. */
	      newplace = i;
	    }
	}

      if (newplace != sorted_symcount)
	thisplace = newplace;
      else
	{
	  /* We didn't find a good symbol with a smaller value.
	     Look for one with a larger value. */
	  for (i = thisplace + 1; i < sorted_symcount; i++)
	    {
	      if ((sorted_syms[i]->section == sec || !want_section)
		  && inf->symbol_is_valid (sorted_syms[i], inf))
		{
		  thisplace = i;
		  break;
		}
	    }
	}

      if ((sorted_syms[thisplace]->section != sec && want_section)
	  || ! inf->symbol_is_valid (sorted_syms[thisplace], inf))
	/* There is no suitable symbol. */
	return NULL;
    }

  if (place != NULL)
    *place = thisplace;

  return sorted_syms[thisplace];
}
/* Print an address and the offset to the nearest symbol. */
static void
objdump_print_addr_with_sym (bfd *abfd, asection *sec, asymbol *sym,
			     bfd_vma vma, struct disassemble_info *inf,
			     bfd_boolean skip_zeroes)
{
  objdump_print_value (vma, inf, skip_zeroes);

  if (sym == NULL)
    {
      bfd_vma secaddr;

      (*inf->fprintf_func) (inf->stream, " <%s",
			    bfd_get_section_name (abfd, sec));
      secaddr = bfd_get_section_vma (abfd, sec);
      if (vma < secaddr)
	{
	  (*inf->fprintf_func) (inf->stream, "-0x");
	  objdump_print_value (secaddr - vma, inf, TRUE);
	}
      else if (vma > secaddr)
	{
	  (*inf->fprintf_func) (inf->stream, "+0x");
	  objdump_print_value (vma - secaddr, inf, TRUE);
	}
      (*inf->fprintf_func) (inf->stream, ">");
    }
  else
    {
      (*inf->fprintf_func) (inf->stream, " <");
      objdump_print_symname (abfd, inf, sym);
      if (bfd_asymbol_value (sym) > vma)
	{
	  (*inf->fprintf_func) (inf->stream, "-0x");
	  objdump_print_value (bfd_asymbol_value (sym) - vma, inf, TRUE);
	}
      else if (vma > bfd_asymbol_value (sym))
	{
	  (*inf->fprintf_func) (inf->stream, "+0x");
	  objdump_print_value (vma - bfd_asymbol_value (sym), inf, TRUE);
	}
      (*inf->fprintf_func) (inf->stream, ">");
    }

  if (display_file_offsets)
    inf->fprintf_func (inf->stream, _(" (File Offset: 0x%lx)"),
			(long int)(sec->filepos + (vma - sec->vma)));
}
/* Print an address (VMA), symbolically if possible.
   If SKIP_ZEROES is TRUE, don't output leading zeroes. */
static void
objdump_print_addr (bfd_vma vma,
		    struct disassemble_info *inf,
		    bfd_boolean skip_zeroes)
{
  struct objdump_disasm_info *aux;
  asymbol *sym = NULL;
  bfd_boolean skip_find = FALSE;

  aux = (struct objdump_disasm_info *) inf->application_data;

  if (sorted_symcount < 1)
    {
      (*inf->fprintf_func) (inf->stream, "0x");
      objdump_print_value (vma, inf, skip_zeroes);

      if (display_file_offsets)
	inf->fprintf_func (inf->stream, _(" (File Offset: 0x%lx)"),
			   (long int)(aux->sec->filepos + (vma - aux->sec->vma)));
      return;
    }

  if (aux->reloc != NULL
      && aux->reloc->sym_ptr_ptr != NULL
      && * aux->reloc->sym_ptr_ptr != NULL)
    {
      sym = * aux->reloc->sym_ptr_ptr;

      /* Adjust the vma to the reloc. */
      vma += bfd_asymbol_value (sym);

      if (bfd_is_und_section (bfd_get_section (sym)))
	skip_find = TRUE;
    }

  if (!skip_find)
    sym = find_symbol_for_address (vma, inf, NULL);

  objdump_print_addr_with_sym (aux->abfd, aux->sec, sym, vma, inf,
			       skip_zeroes);
}
/* Print VMA to INFO.  This function is passed to the disassembler
   routine. */
static void
objdump_print_address (bfd_vma vma, struct disassemble_info *inf)
{
  objdump_print_addr (vma, inf, ! prefix_addresses);
}
/* Determine if the given address has a symbol associated with it.  */
static int
objdump_symbol_at_address (bfd_vma vma, struct disassemble_info * inf)
{
  asymbol * sym;

  sym = find_symbol_for_address (vma, inf, NULL);

  return (sym != NULL && (bfd_asymbol_value (sym) == vma));
}


/* Hold the last function name and the last line number we displayed
   in a disassembly. */
//static char *prev_functionname;
//static unsigned int prev_line;
//static unsigned int prev_discriminator;
/* We keep a list of all files that we have seen when doing a
   disassembly with source, so that we know how much of the file to
   display.  This can be important for inlined functions. */
/*  struct print_file_list
{
  struct print_file_list *next;
  const char *filename;
  const char *modname;
  const char *map; 
  size_t mapsize;
  const char **linemap; 
  unsigned maxline;
  unsigned last_line;
  int first;
};  */
//static struct print_file_list *print_files;
/* The number of preceding context lines to show when we start
   displaying a file for the first time. */
//#define SHOW_PRECEDING_CONTEXT_LINES (5)
/* Read a complete file into memory. */
/*  static const char *
slurp_file (const char *fn, size_t *size)
{
#ifdef HAVE_MMAP
  int ps = getpagesize ();
  size_t msize;
#endif
  const char *map;
  struct stat st;
  int fd = open (fn, O_RDONLY | O_BINARY);

  if (fd < 0)
    return NULL;
  if (fstat (fd, &st) < 0)
    {
      close (fd);
      return NULL;
    }
  *size = st.st_size;
#ifdef HAVE_MMAP
  msize = (*size + ps - 1) & ~(ps - 1);
  map = mmap (NULL, msize, PROT_READ, MAP_SHARED, fd, 0);
  if (map != (char *) -1L)
    {
      close (fd);
      return map;
    }
#endif
  map = (const char *) malloc (*size);
  if (!map || (size_t) read (fd, (char *) map, *size) != *size)
    {
      free ((void *) map);
      map = NULL;
    }
  close (fd);
  return map;
}  */
//#define line_map_decrease 5
/* Precompute array of lines for a mapped file. */
/* static const char ** 
index_file (const char *map, size_t size, unsigned int *maxline) 
{
  const char *p, *lstart, *end;
  int chars_per_line = 45; //First iteration will use 40
  unsigned int lineno;
  const char **linemap = NULL; 
  unsigned long line_map_size = 0;
 
  lineno = 0;
  lstart = map;
  end = map + size;

  for (p = map; p < end; p++) 
    { 
      if (*p == '\n') 
	{ 
	  if (p + 1 < end && p[1] == '\r') 
	    p++;  
	} 
      else if (*p == '\r') 
	{ 
	  if (p + 1 < end && p[1] == '\n')
	    p++;
	}
      else
	continue;
      
    *//* End of line found. *//*

      if (linemap == NULL || line_map_size < lineno + 1) 
	{ 
	  unsigned long newsize;

	  chars_per_line -= line_map_decrease;
	  if (chars_per_line <= 1)
	    chars_per_line = 1;
	  line_map_size = size / chars_per_line + 1;
	  if (line_map_size < lineno + 1)
	    line_map_size = lineno + 1;
	  newsize = line_map_size * sizeof (char *);
	  linemap = (const char **) xrealloc (linemap, newsize);
	}

      linemap[lineno++] = lstart; 
      lstart = p + 1; 
    }
  
  *maxline = lineno; 
  return linemap;
}  */
/* Tries to open MODNAME, and if successful adds a node to print_files
   linked list and returns that node.  Returns NULL on failure. */
/*  static struct print_file_list *
try_print_file_open (const char *origname, const char *modname)
{
  struct print_file_list *p;

  p = (struct print_file_list *) xmalloc (sizeof (struct print_file_list));

  p->map = slurp_file (modname, &p->mapsize);
  if (p->map == NULL)
    {
      free (p);
      return NULL;
    }
  
  p->linemap = index_file (p->map, p->mapsize, &p->maxline);
  p->last_line = 0;
  p->filename = origname;
  p->modname = modname;
  p->next = print_files;
  p->first = 1;
  print_files = p;
  return p;
}  */
/* If the source file, as described in the symtab, is not found
   try to locate it in one of the paths specified with -I
   If found, add location to print_files linked list. */
/*  static struct print_file_list *
update_source_path (const char *filename)
{
  struct print_file_list *p;
  const char *fname;
  int i;

  p = try_print_file_open (filename, filename);
  if (p != NULL)
    return p;

  if (include_path_count == 0)
    return NULL;

*//* Get the name of the file. *//*
  fname = lbasename (filename);

*//* If file exists under a new path, we need to add it to the list
     so that show_line knows about it. *//*
  for (i = 0; i < include_path_count; i++)
    {
      char *modname = concat (include_paths[i], "/", fname, (const char *) 0);

      p = try_print_file_open (filename, modname);
      if (p)
	return p;

      free (modname);
    }

  return NULL;
}  */
/* Print a source file line. */
/*  static void 
print_line (struct print_file_list *p, unsigned int linenum)
{
  const char *l;
  size_t len;
 
  --linenum; 
  if (linenum >= p->maxline)
    return;
  l = p->linemap [linenum];
*//* Test fwrite return value to quiet glibc warning. *//*
  len = strcspn (l, "\n\r");
  if (len == 0 || fwrite (l, len, 1, stdout) == 1)
    putchar ('\n');
}  */
/* Print a range of source code lines. */
/*  static void
dump_lines (struct print_file_list *p, unsigned int start, unsigned int end)
{
  if (p->map == NULL)
    return;
  while (start <= end) 
    {
      print_line (p, start);
      start++;
    }
}  */
/* Show the line number, or the source line, in a disassembly
   listing. */
/*  static void
show_line (bfd *abfd, asection *section, bfd_vma addr_offset)
{
  const char *filename;
  const char *functionname;
  unsigned int linenumber;
  unsigned int discriminator;
  bfd_boolean reloc;

  if (! with_line_numbers && ! with_source_code)
    return;

  if (! bfd_find_nearest_line_discriminator (abfd, section, syms, addr_offset,
                                             &filename, &functionname,
                                             &linenumber, &discriminator))
    return;

  if (filename != NULL && *filename == '\0')
    filename = NULL;
  if (functionname != NULL && *functionname == '\0')
    functionname = NULL;

  if (filename
      && IS_ABSOLUTE_PATH (filename)
      && prefix)
    {
      char *path_up;
      const char *fname = filename;
      char *path = (char *) alloca (prefix_length + PATH_MAX + 1);

      if (prefix_length)
	memcpy (path, prefix, prefix_length);
      path_up = path + prefix_length;

    *//* Build relocated filename, stripping off leading directories
	 from the initial filename if requested. *//*
      if (prefix_strip > 0)
	{
	  int level = 0;
	  const char *s;

	*//* Skip selected directory levels. *//*
	  for (s = fname + 1; *s != '\0' && level < prefix_strip; s++)
	    if (IS_DIR_SEPARATOR(*s))
	      {
		fname = s;
		level++;
	      }
	}

    *//* Update complete filename. *//*
      strncpy (path_up, fname, PATH_MAX);
      path_up[PATH_MAX] = '\0';

      filename = path;
      reloc = TRUE;
    }
  else
    reloc = FALSE;

  if (with_line_numbers)
    {
      if (functionname != NULL
	  && (prev_functionname == NULL
	      || strcmp (functionname, prev_functionname) != 0))
	printf ("%s():\n", functionname);
      if (linenumber > 0 && (linenumber != prev_line || 
                             (discriminator != prev_discriminator)))
        { 
          if (discriminator > 0)
            printf ("%s:%u (discriminator %u)\n", filename == NULL ? "???" : filename,
                    linenumber, discriminator);
          else
            printf ("%s:%u\n", filename == NULL ? "???" : filename, linenumber);
        }
    }

  if (with_source_code
      && filename != NULL
      && linenumber > 0)
    {
      struct print_file_list **pp, *p;
      unsigned l;

      for (pp = &print_files; *pp != NULL; pp = &(*pp)->next)
	if (filename_cmp ((*pp)->filename, filename) == 0)
	  break;
      p = *pp;

      if (p == NULL)
	{
	  if (reloc)
	    filename = xstrdup (filename);
	  p = update_source_path (filename);
	}

      if (p != NULL && linenumber != p->last_line)
	{
	  if (file_start_context && p->first) 
	    l = 1;
	  else 
	    {
	      l = linenumber - SHOW_PRECEDING_CONTEXT_LINES;
	      if (l >= linenumber) 
		l = 1;
	      if (p->last_line >= l && p->last_line <= linenumber)
		l = p->last_line + 1;
	    }
	  dump_lines (p, l, linenumber);
	  p->last_line = linenumber;
	  p->first = 0;
	}
    }

  if (functionname != NULL
      && (prev_functionname == NULL
	  || strcmp (functionname, prev_functionname) != 0))
    {
      if (prev_functionname != NULL)
	free (prev_functionname);
      prev_functionname = (char *) xmalloc (strlen (functionname) + 1);
      strcpy (prev_functionname, functionname);
    }

  if (linenumber > 0 && linenumber != prev_line)
    prev_line = linenumber;

  if (discriminator != prev_discriminator)
    prev_discriminator = discriminator;
}  */


/* Pseudo FILE object for strings. */
typedef struct
{
  char *buffer;
  size_t pos;
  size_t alloc;
} SFILE;

/* sprintf to a "stream". */
static int ATTRIBUTE_PRINTF_2
objdump_sprintf (SFILE *f, const char *format, ...)
{
  size_t n;
  va_list args;

  while (1)
    {
      size_t space = f->alloc - f->pos;
  
      va_start (args, format);
      n = vsnprintf (f->buffer + f->pos, space, format, args);
      va_end (args);

      if (space > n)
	break;
      
      f->alloc = (f->alloc + n) * 2;
      f->buffer = (char *) xrealloc (f->buffer, f->alloc);
    }
  f->pos += n;
  
  return n;
}

/* The number of zeroes we want to see before we start skipping them.
   The number is arbitrarily chosen.  */

#define DEFAULT_SKIP_ZEROES 8

/* The number of zeroes to skip at the end of a section.  If the
   number of zeroes at the end is between SKIP_ZEROES_AT_END and
   SKIP_ZEROES, they will be disassembled.  If there are fewer than
   SKIP_ZEROES_AT_END, they will be skipped.  This is a heuristic
   attempt to avoid disassembling zeroes inserted by section
   alignment.  */

#define DEFAULT_SKIP_ZEROES_AT_END 3

/* Disassemble some data in memory between given values. */

static void
disassemble_bytes (struct disassemble_info * inf,
		   disassembler_ftype        disassemble_fn,
		   bfd_boolean               insns,
		   bfd_byte *                data,
		   bfd_vma                   start_offset,
		   bfd_vma                   stop_offset,
		   bfd_vma		     rel_offset,
		   arelent ***               relppp,
		   arelent **                relppend,
                   struct RTN **             RTN_Routine,
                   struct INST **            INST_Tail)
{
  struct objdump_disasm_info *aux;
  asection *section;
//  int octets_per_line;
//  int skip_addr_chars;
  bfd_vma addr_offset;
  unsigned int opb = inf->octets_per_byte;
//  unsigned int skip_zeroes = inf->skip_zeroes;
//  unsigned int skip_zeroes_at_end = inf->skip_zeroes_at_end;
  int octets = opb;
  SFILE sfile;

  aux = (struct objdump_disasm_info *) inf->application_data;
  section = aux->sec;

  sfile.alloc = 120;
  sfile.buffer = (char *) xmalloc (sfile.alloc);
  sfile.pos = 0;

/*  if (insn_width)
    octets_per_line = insn_width;
  else if (insns)
    octets_per_line = 4;
  else
    octets_per_line = 16;  */
  /* Figure out how many characters to skip at the start of an
     address, to make the disassembly look nicer.  We discard leading
     zeroes in chunks of 4, ensuring that there is always a leading
     zero remaining. */
/*  skip_addr_chars = 0;
  if (! prefix_addresses)
    {
      char buf[30];

      bfd_sprintf_vma (aux->abfd, buf, section->vma + section->size / opb);

      while (buf[skip_addr_chars] == '0')
	++skip_addr_chars;

    *//* Don't discard zeros on overflow.  *//*
      if (buf[skip_addr_chars] == '\0' && section->vma != 0)
	skip_addr_chars = 0;

      if (skip_addr_chars != 0)
	skip_addr_chars = (skip_addr_chars - 1) & -4;
    }
  inf->insn_info_valid = 0;  */

  addr_offset = start_offset;
  while (addr_offset < stop_offset)
    {
/*      bfd_vma z;
      bfd_boolean need_nl = FALSE;
      int previous_octets;  */

      /* Remember the length of the previous instruction. */
/*      previous_octets = octets;
      octets = 0;  */
      /* Make sure we don't use relocs from previous instructions. */
      aux->reloc = NULL;

      if (insns)
    	{ 
    	  sfile.pos = 0;
	  inf->fprintf_func = (fprintf_ftype) objdump_sprintf;
	  inf->stream = &sfile;
	  inf->bytes_per_line = 0;
	  inf->bytes_per_chunk = 0;
	  inf->flags = 0;  //disassemble_all ? DISASSEMBLE_DATA : 0;

	  octets = (*disassemble_fn) (section->vma + addr_offset, inf); //Disassemble here
          
          /* Create a instruction and add to the instructions list. */
          (*RTN_Routine)->inst_num++;
          struct INST *INST_Instruction = (struct INST *)malloc(sizeof(struct INST));
          INST_Instruction->id = (*INST_Tail)->id + 1;
          INST_Instruction->address = section->vma + addr_offset;
          INST_Instruction->size = octets;
          bfd_byte inst_data[15];
          bfd_vma j;
          int i;
          for (i = 0, j = addr_offset * opb; j < addr_offset * opb + octets; ++i, ++j)
            { 
              inst_data[i] = data[j];
            }
          INST_Instruction->inst_cont = &inst_data[0];
          INST_Instruction->routine_belong = (*INST_Tail)->routine_belong;
          INST_Instruction->prev = (*INST_Tail);
          INST_Instruction->next = NULL;
          (*INST_Tail)->next = INST_Instruction;
          *INST_Tail = INST_Instruction;
        }
      else
    	{
	  /* Not a instruction */
     	}
   
      addr_offset += octets / opb;
      
      

      /* If we see more than SKIP_ZEROES octets of zeroes, we just
	 print `...'. */
/*      for (z = addr_offset * opb; z < stop_offset * opb; z++)
	if (data[z] != 0)
	  break;
      if (! disassemble_zeroes
	  && (inf->insn_info_valid == 0
	      || inf->branch_delay_insns == 0)
	  && (z - addr_offset * opb >= skip_zeroes
	      || (z == stop_offset * opb &&
		  z - addr_offset * opb < skip_zeroes_at_end)))
	{
	*//* If there are more nonzero octets to follow, we only skip
	     zeroes in multiples of 4, to try to avoid running over
	     the start of an instruction which happens to start with
	     zero. *//*
	  if (z != stop_offset * opb)
	    z = addr_offset * opb + ((z - addr_offset * opb) &~ 3);

	  octets = z - addr_offset * opb;

	 *//* If we are going to display more data, and we are displaying
	     file offsets, then tell the user how many zeroes we skip
	     and the file offset from where we resume dumping. *//*
	  if (display_file_offsets && ((addr_offset + (octets / opb)) < stop_offset))
	    printf ("\t... (skipping %d zeroes, resuming at file offset: 0x%lx)\n",
		    octets / opb,
		    (unsigned long) (section->filepos
				     + (addr_offset + (octets / opb))));
	  else
	    printf ("\t...\n");
	}  
      else
	{
	  char buf[50];
	  int bpc = 0;
	  int pb = 0;

	  if (with_line_numbers || with_source_code)
	    show_line (aux->abfd, section, addr_offset);

	  if (! prefix_addresses)
	    {
	      char *s;

	      bfd_sprintf_vma (aux->abfd, buf, section->vma + addr_offset);
	      for (s = buf + skip_addr_chars; *s == '0'; s++)
		*s = ' ';
	      if (*s == '\0')
		*--s = '0';
	      printf ("%s:\t", buf + skip_addr_chars);
	    }
	  else
	    {
	      aux->require_sec = TRUE;
	      objdump_print_address (section->vma + addr_offset, inf);
	      aux->require_sec = FALSE;
	      putchar (' ');
	    }

	  if (insns)
	    {
	      sfile.pos = 0;
	      inf->fprintf_func = (fprintf_ftype) objdump_sprintf;
	      inf->stream = &sfile;
	      inf->bytes_per_line = 0;
	      inf->bytes_per_chunk = 0;
	      inf->flags = disassemble_all ? DISASSEMBLE_DATA : 0;
	      if (machine)
		inf->flags |= USER_SPECIFIED_MACHINE_TYPE;

	      if (inf->disassembler_needs_relocs
		  && (bfd_get_file_flags (aux->abfd) & EXEC_P) == 0
		  && (bfd_get_file_flags (aux->abfd) & DYNAMIC) == 0
		  && *relppp < relppend)
		{
		  bfd_signed_vma distance_to_rel;

		  distance_to_rel = (**relppp)->address
		    - (rel_offset + addr_offset);

		*//* Check to see if the current reloc is associated with
		     the instruction that we are about to disassemble. *//*
		  if (distance_to_rel == 0
		    *//* FIXME: This is wrong.  We are trying to catch
			 relocs that are addressed part way through the
			 current instruction, as might happen with a packed
			 VLIW instruction.  Unfortunately we do not know the
			 length of the current instruction since we have not
			 disassembled it yet.  Instead we take a guess based
			 upon the length of the previous instruction.  The
			 proper solution is to have a new target-specific
			 disassembler function which just returns the length
			 of an instruction at a given address without trying
			 to display its disassembly. *//*
		      || (distance_to_rel > 0
			  && distance_to_rel < (bfd_signed_vma) (previous_octets/ opb)))
		    {
		      inf->flags |= INSN_HAS_RELOC;
		      aux->reloc = **relppp;
		    }
		}

	      octets = (*disassemble_fn) (section->vma + addr_offset, inf);
	      inf->fprintf_func = (fprintf_ftype) fprintf;
	      inf->stream = stdout;
	      if (insn_width == 0 && inf->bytes_per_line != 0)
		octets_per_line = inf->bytes_per_line;
	      if (octets < (int) opb)
		{
		  if (sfile.pos)
		    printf ("%s\n", sfile.buffer);
		  if (octets >= 0)
		    {
		      non_fatal (_("disassemble_fn returned length %d"),
				 octets);
		      exit_status = 1;
		    }
		  break;
		}
	    }
	  else
	    {
	      bfd_vma j;

	      octets = octets_per_line;
	      if (addr_offset + octets / opb > stop_offset)
		octets = (stop_offset - addr_offset) * opb;

	      for (j = addr_offset * opb; j < addr_offset * opb + octets; ++j)
		{
		  if (ISPRINT (data[j]))
		    buf[j - addr_offset * opb] = data[j];
		  else
		    buf[j - addr_offset * opb] = '.';
		}
	      buf[j - addr_offset * opb] = '\0';
	    }

	  if (prefix_addresses
	      ? show_raw_insn > 0
	      : show_raw_insn >= 0)
	    {
	      bfd_vma j;

	    *//* If ! prefix_addresses and ! wide_output, we print
		 octets_per_line octets per line. *//*
	      pb = octets;
	      if (pb > octets_per_line && ! prefix_addresses && ! wide_output)
		pb = octets_per_line;

	      if (inf->bytes_per_chunk)
		bpc = inf->bytes_per_chunk;
	      else
		bpc = 1;

	      for (j = addr_offset * opb; j < addr_offset * opb + pb; j += bpc)
		{
		  int k;

		  if (bpc > 1 && inf->display_endian == BFD_ENDIAN_LITTLE)
		    {
		      for (k = bpc - 1; k >= 0; k--)
			printf ("%02x", (unsigned) data[j + k]);
		      putchar (' ');
		    }
		  else
		    {
		      for (k = 0; k < bpc; k++)
			printf ("%02x", (unsigned) data[j + k]);
		      putchar (' ');
		    }
		}

	      for (; pb < octets_per_line; pb += bpc)
		{
		  int k;

		  for (k = 0; k < bpc; k++)
		    printf ("  ");
		  putchar (' ');
		}

	    *//* Separate raw data from instruction by extra space. *//*
	      if (insns)
		putchar ('\t');
	      else
		printf ("    ");
	    }

	  if (! insns)
	    printf ("%s", buf);
	  else if (sfile.pos)
	    printf ("%s", sfile.buffer);

	  if (prefix_addresses
	      ? show_raw_insn > 0
	      : show_raw_insn >= 0)
	    {
	      while (pb < octets)
		{
		  bfd_vma j;
		  char *s;

		  putchar ('\n');
		  j = addr_offset * opb + pb;

		  bfd_sprintf_vma (aux->abfd, buf, section->vma + j / opb);
		  for (s = buf + skip_addr_chars; *s == '0'; s++)
		    *s = ' ';
		  if (*s == '\0')
		    *--s = '0';
		  printf ("%s:\t", buf + skip_addr_chars);

		  pb += octets_per_line;
		  if (pb > octets)
		    pb = octets;
		  for (; j < addr_offset * opb + pb; j += bpc)
		    {
		      int k;

		      if (bpc > 1 && inf->display_endian == BFD_ENDIAN_LITTLE)
			{
			  for (k = bpc - 1; k >= 0; k--)
			    printf ("%02x", (unsigned) data[j + k]);
			  putchar (' ');
			}
		      else
			{
			  for (k = 0; k < bpc; k++)
			    printf ("%02x", (unsigned) data[j + k]);
			  putchar (' ');
			}
		    }
		}
	    }

	  if (!wide_output)
	    putchar ('\n');
	  else
	    need_nl = TRUE;
	}

      while ((*relppp) < relppend
	     && (**relppp)->address < rel_offset + addr_offset + octets / opb)
	{
	  if (dump_reloc_info || dump_dynamic_reloc_info)
	    {
	      arelent *q;

	      q = **relppp;

	      if (wide_output)
		putchar ('\t');
	      else
		printf ("\t\t\t");

	      objdump_print_value (section->vma - rel_offset + q->address,
				   inf, TRUE);

	      if (q->howto == NULL)
		printf (": *unknown*\t");
	      else if (q->howto->name)
		printf (": %s\t", q->howto->name);
	      else
		printf (": %d\t", q->howto->type);

	      if (q->sym_ptr_ptr == NULL || *q->sym_ptr_ptr == NULL)
		printf ("*unknown*");
	      else
		{
		  const char *sym_name;

		  sym_name = bfd_asymbol_name (*q->sym_ptr_ptr);
		  if (sym_name != NULL && *sym_name != '\0')
		    objdump_print_symname (aux->abfd, inf, *q->sym_ptr_ptr);
		  else
		    {
		      asection *sym_sec;

		      sym_sec = bfd_get_section (*q->sym_ptr_ptr);
		      sym_name = bfd_get_section_name (aux->abfd, sym_sec);
		      if (sym_name == NULL || *sym_name == '\0')
			sym_name = "*unknown*";
		      printf ("%s", sym_name);
		    }
		}

	      if (q->addend)
		{
		  bfd_signed_vma addend = q->addend;
		  if (addend < 0)
		    {
		      printf ("-0x");
		      addend = -addend;
		    }
		  else
		    printf ("+0x");
		  objdump_print_value (addend, inf, TRUE);
		}

	      printf ("\n");
	      need_nl = FALSE;
	    }
	  ++(*relppp);
	}

      if (need_nl)
	printf ("\n");

      addr_offset += octets / opb;  */
    

    } 

  free (sfile.buffer);
}

static void
disassemble_section (bfd *abfd, asection *section, void *inf, struct SEC **SEC_Tail)
{
  const struct elf_backend_data * bed;
  bfd_vma                      sign_adjust = 0;
  struct disassemble_info *    pinfo = (struct disassemble_info *) inf;
  struct objdump_disasm_info * paux;
  unsigned int                 opb = pinfo->octets_per_byte;
  bfd_byte *                   data = NULL;
  bfd_size_type                datasize = 0;
  arelent **                   rel_pp = NULL;
  arelent **                   rel_ppstart = NULL;
  arelent **                   rel_ppend;
  unsigned long                stop_offset;
  asymbol *                    sym = NULL;
  long                         place = 0;
  long                         rel_count;
  bfd_vma                      rel_offset;
  unsigned long                addr_offset;

  /* Create a section and add to the sections list. */
  struct SEC *SEC_Section = (struct SEC *)malloc(sizeof(struct SEC));
  SEC_Section->name = section->name;
  SEC_Section->id = (*SEC_Tail)->id + 1;
  SEC_Section->address = section->vma;
  SEC_Section->size = section->size;
  SEC_Section->type = 0;
  SEC_Section->image_belong = (*SEC_Tail)->image_belong;
  SEC_Section->symbol = section->symbol;
  SEC_Section->prev = *SEC_Tail;
  SEC_Section->next = NULL;
  (*SEC_Tail)->next = SEC_Section;
  (*SEC_Tail) = SEC_Section;
  
  /* Sections that do not contain machine
     code are not normally disassembled. */
  if (//! disassemble_all
      //&& only_list == NULL &&
      ((section->flags & (SEC_CODE | SEC_HAS_CONTENTS))
      != (SEC_CODE | SEC_HAS_CONTENTS)))
    return;
/*  if (! process_section_p (section))
    return;  */
  
  datasize = bfd_get_section_size (section);
  if (datasize == 0)
    return;
  if (start_address == (bfd_vma) -1
      || start_address < section->vma)
    addr_offset = 0;
  else
    addr_offset = start_address - section->vma;  
  if (stop_address == (bfd_vma) -1)
    stop_offset = datasize / opb;
  else
    {
      if (stop_address < section->vma)
	    stop_offset = 0;
      else
    	stop_offset = stop_address - section->vma;
      if (stop_offset > datasize / opb)
    	stop_offset = datasize / opb;
    }  
  if (addr_offset >= stop_offset)
    return;
  
  /* Decide which set of relocs to use.  Load them if necessary. */
  paux = (struct objdump_disasm_info *) pinfo->application_data;
  rel_count = 0;
  rel_pp = NULL;
  rel_offset = 0;
  rel_ppend = rel_pp + rel_count;
/*  paux = (struct objdump_disasm_info *) pinfo->application_data;
  if (paux->dynrelbuf)
    {
      rel_pp = paux->dynrelbuf;
      rel_count = paux->dynrelcount;
    *//* Dynamic reloc addresses are absolute, non-dynamic are section
	 relative.  REL_OFFSET specifies the reloc address corresponding
	 to the start of this section. *//*
      rel_offset = section->vma;
    }
  else
    {
      rel_count = 0;
      rel_pp = NULL;
      rel_offset = 0;

      if ((section->flags & SEC_RELOC) != 0
	  && (dump_reloc_info || pinfo->disassembler_needs_relocs))
	{
	  long relsize;

	  relsize = bfd_get_reloc_upper_bound (abfd, section);
	  if (relsize < 0)
	    bfd_fatal (bfd_get_filename (abfd));

	  if (relsize > 0)
	    {
	      rel_ppstart = rel_pp = (arelent **) xmalloc (relsize);
	      rel_count = bfd_canonicalize_reloc (abfd, section, rel_pp, syms);
	      if (rel_count < 0)
		bfd_fatal (bfd_get_filename (abfd));

	    *//* Sort the relocs by address. *//*
	      qsort (rel_pp, rel_count, sizeof (arelent *), compare_relocs);
	    }
	}
    }
  rel_ppend = rel_pp + rel_count;  */

  data = (bfd_byte *) xmalloc (datasize);
  bfd_get_section_contents (abfd, section, data, 0, datasize);

  paux->sec = section;
  pinfo->buffer = data;
  pinfo->buffer_vma = section->vma;
  pinfo->buffer_length = datasize;
  pinfo->section = section;

  /* Skip over the relocs belonging to addresses below the
     start address. */
  while (rel_pp < rel_ppend
	 && (*rel_pp)->address < rel_offset + addr_offset)
    ++rel_pp;
  
  /* Find the nearest symbol forwards from our current position. */
  paux->require_sec = TRUE;
  sym = (asymbol *) find_symbol_for_address (section->vma + addr_offset,
                                             (struct disassemble_info *) inf,
                                             &place);
  paux->require_sec = FALSE;

  /* PR 9774: If the target used signed addresses then we must make
     sure that we sign extend the value that we calculate for 'addr'
     in the loop below.  */
  if (bfd_get_flavour (abfd) == bfd_target_elf_flavour
      && (bed = get_elf_backend_data (abfd)) != NULL
      && bed->sign_extend_vma)
    sign_adjust = (bfd_vma) 1 << (bed->s->arch_size - 1);

  /* Disassemble a block of instructions up to the address associated with
     the symbol we have just found.  Then print the symbol and find the
     next symbol on.  Repeat until we have disassembled the entire section
     or we have reached the end of the address range we are interested in. */
  /* And Create a routine list */
  SEC_Section->type = 1;
  SEC_Section->rtn_num = 0;
  struct RTN *RTN_Head = (struct RTN *)malloc(sizeof(struct RTN));
  RTN_Head->id = 0;
  RTN_Head->section_belong = SEC_Section->name;
  RTN_Head->prev = NULL;
  RTN_Head->next = NULL;
  struct RTN *RTN_Tail = RTN_Head;
  SEC_Section->routines_head = RTN_Head;
  SEC_Section->routines_tail = RTN_Tail;
  while (addr_offset < stop_offset)
    { 
      SEC_Section->rtn_num++;
      bfd_vma addr;
      asymbol *nextsym;
      unsigned long nextstop_offset;
      bfd_boolean insns;

      addr = section->vma + addr_offset;
      addr = ((addr & ((sign_adjust << 1) - 1)) ^ sign_adjust) - sign_adjust;
     
      if (sym != NULL && bfd_asymbol_value (sym) <= addr)
	{
	  int x;

	  for (x = place;
	       (x < sorted_symcount && (bfd_asymbol_value (sorted_syms[x]) <= addr));
	       ++x)
	    continue;

	  pinfo->symbols = sorted_syms + place;
	  pinfo->num_symbols = x - place;
	  pinfo->symtab_pos = place;
	}
      else
    	{
	  pinfo->symbols = NULL;
	  pinfo->num_symbols = 0;
	  pinfo->symtab_pos = -1;
	}
       
/*      if (! prefix_addresses)
	{
	  pinfo->fprintf_func (pinfo->stream, "\n");
	  objdump_print_addr_with_sym (abfd, section, sym, addr,
				       pinfo, FALSE);
	  pinfo->fprintf_func (pinfo->stream, ":\n");
	}  */
      
      if (sym != NULL && bfd_asymbol_value (sym) > addr)
	nextsym = sym;
      else if (sym == NULL)
	nextsym = NULL;
      else
    	{ 
#define is_valid_next_sym(SYM) \
        ((SYM)->section == section \
        && (bfd_asymbol_value (SYM) > bfd_asymbol_value (sym)) \
        && pinfo->symbol_is_valid (SYM, pinfo))
	    
	  /* Search forward for the next appropriate symbol in
	     SECTION.  Note that all the symbols are sorted
	     together into one big array, and that some sections
	     may have overlapping addresses. */
	  while (place < sorted_symcount
		 && ! is_valid_next_sym (sorted_syms [place]))
	    ++place;

	  if (place >= sorted_symcount)
	    nextsym = NULL;
	  else
	    nextsym = sorted_syms[place];
	}

      if (sym != NULL && bfd_asymbol_value (sym) > addr)
	nextstop_offset = bfd_asymbol_value (sym) - section->vma;
      else if (nextsym == NULL)
	nextstop_offset = stop_offset;
      else
	nextstop_offset = bfd_asymbol_value (nextsym) - section->vma;

      if (nextstop_offset > stop_offset
	  || nextstop_offset <= addr_offset)
       	nextstop_offset = stop_offset;

      /* If a symbol is explicitly marked as being an object
	 rather than a function, just dump the bytes without
	 disassembling them. */
      if (//disassemble_all ||
	  sym == NULL
	  || sym->section != section
	  || bfd_asymbol_value (sym) > addr
	  || ((sym->flags & BSF_OBJECT) == 0
	      && (strstr (bfd_asymbol_name (sym), "gnu_compiled")
		  == NULL)
	      && (strstr (bfd_asymbol_name (sym), "gcc2_compiled")
		  == NULL))
	  || (sym->flags & BSF_FUNCTION) != 0)
	insns = TRUE;
      else
	insns = FALSE;
     
      /* Create a routine and add to the routines list. */
      struct RTN *RTN_Routine = (struct RTN *)malloc(sizeof(struct RTN));
      RTN_Routine->name = sym->name;
      RTN_Routine->id = RTN_Tail->id + 1;
      RTN_Routine->address = section->vma + addr_offset;
      /* !!!!!!!Here is the function address!!!!!! */


      RTN_Routine->size = nextstop_offset - addr_offset;
      RTN_Routine->inst_num = 0;
      RTN_Routine->section_belong = RTN_Tail->section_belong;
      RTN_Routine->prev = RTN_Tail;
      RTN_Routine->next = NULL;
      RTN_Tail->next = RTN_Routine;
      RTN_Tail = RTN_Routine;
      
      /* Create a instruction list. */
      struct INST *INST_Head = (struct INST *)malloc(sizeof(struct INST));
      INST_Head->id = 0;
      INST_Head->routine_belong = RTN_Routine;
      INST_Head->prev = NULL;
      INST_Head->next = NULL;
      struct INST *INST_Tail = INST_Head;
      RTN_Routine->instructions_head = INST_Head;
      RTN_Routine->instructions_tail = INST_Tail;
      disassemble_bytes (pinfo, paux->disassemble_fn, insns, data,
			             addr_offset, nextstop_offset,
			             rel_offset, &rel_pp, rel_ppend, &RTN_Routine, &INST_Tail);
      addr_offset = nextstop_offset;
      sym = nextsym;
    }
  free (data);

  if (rel_ppstart != NULL)
    free (rel_ppstart);
}

/* Disassemble the contents of an object file. */

static void
disassemble_data (bfd *abfd, struct IMG **IMG_File)
{
  struct disassemble_info disasm_info;
  struct objdump_disasm_info aux;
  long i;

/*  print_files = NULL;
  prev_functionname = NULL;
  prev_line = -1;
  prev_discriminator = 0;  */

  /* We make a copy of syms to sort.  We don't want to sort syms
     because that will screw up the relocs. */ 
  sorted_symcount = symcount ? symcount : dynsymcount;
  sorted_syms = (asymbol **) xmalloc ((sorted_symcount + synthcount)
                                      * sizeof (asymbol *));
  memcpy (sorted_syms, symcount ? syms : dynsyms,
	  sorted_symcount * sizeof (asymbol *));

  sorted_symcount = remove_useless_symbols (sorted_syms, sorted_symcount);

  for (i = 0; i < synthcount; ++i)
    {
      sorted_syms[sorted_symcount] = synthsyms + i;
      ++sorted_symcount;
    } 

  /* Sort the symbols into section and symbol order. */  
  qsort (sorted_syms, sorted_symcount, sizeof (asymbol *), compare_symbols);

  init_disassemble_info (&disasm_info, stdout, (fprintf_ftype) fprintf);

  disasm_info.application_data = (void *) &aux;
  aux.abfd = abfd;
  aux.require_sec = FALSE;
  aux.dynrelbuf = NULL;
  aux.dynrelcount = 0;
  aux.reloc = NULL;

  disasm_info.print_address_func = objdump_print_address;
  disasm_info.symbol_at_address_func = objdump_symbol_at_address;

/*  if (machine != NULL)
    {
      const bfd_arch_info_type *inf = bfd_scan_arch (machine);

      if (inf == NULL)
	fatal (_("can't use supplied machine %s"), machine);

      abfd->arch_info = inf;
    }
  if (endian != BFD_ENDIAN_UNKNOWN)
    {
      struct bfd_target *xvec;

      xvec = (struct bfd_target *) xmalloc (sizeof (struct bfd_target));
      memcpy (xvec, abfd->xvec, sizeof (struct bfd_target));
      xvec->byteorder = endian;
      abfd->xvec = xvec;
    }  */

  /* Use libopcodes to locate a suitable disassembler. */
  aux.disassemble_fn = disassembler (abfd);
  if (!aux.disassemble_fn)
    {
      non_fatal (_("can't disassemble for architecture %s\n"),
		 bfd_printable_arch_mach (bfd_get_arch (abfd), 0));
      exit_status = 1;
      return;
    }

  disasm_info.flavour = bfd_get_flavour (abfd);
  disasm_info.arch = bfd_get_arch (abfd);
  disasm_info.mach = bfd_get_mach (abfd);
  disasm_info.disassembler_options = disassembler_options;
  disasm_info.octets_per_byte = bfd_octets_per_byte (abfd);
  disasm_info.skip_zeroes = DEFAULT_SKIP_ZEROES;
  disasm_info.skip_zeroes_at_end = DEFAULT_SKIP_ZEROES_AT_END;
  disasm_info.disassembler_needs_relocs = FALSE;

  if (bfd_big_endian (abfd))
    disasm_info.display_endian = disasm_info.endian = BFD_ENDIAN_BIG;
  else if (bfd_little_endian (abfd))
    disasm_info.display_endian = disasm_info.endian = BFD_ENDIAN_LITTLE;
  else
    /* ??? Aborting here seems too drastic.  We could default to big or little
       instead. */
    disasm_info.endian = BFD_ENDIAN_UNKNOWN;

  /* Allow the target to customize the info structure. */
  disassemble_init_for_target (& disasm_info);
  
  /* Pre-load the dynamic relocs if we are going
     to be dumping them along with the disassembly. */
/*  if (dump_dynamic_reloc_info)
    {
      long relsize = bfd_get_dynamic_reloc_upper_bound (abfd);
  
      if (relsize < 0)
	bfd_fatal (bfd_get_filename (abfd));

      if (relsize > 0)
	{
	  aux.dynrelbuf = (arelent **) xmalloc (relsize);
	  aux.dynrelcount = bfd_canonicalize_dynamic_reloc (abfd,
							    aux.dynrelbuf,
							    dynsyms);
	  if (aux.dynrelcount < 0)
	    bfd_fatal (bfd_get_filename (abfd));

	*//* Sort the relocs by address.  *//*
	  qsort (aux.dynrelbuf, aux.dynrelcount, sizeof (arelent *),
		 compare_relocs);
	}
    }  */
  disasm_info.symtab = sorted_syms;
  disasm_info.symtab_size = sorted_symcount;
  
  /* Go to the section disassemble part and create a section list for the image. */
  (*IMG_File)->sec_num = abfd->section_count;
  asection *sect;
  unsigned int seci = 0;
  struct SEC *SEC_Head = (struct SEC *)malloc(sizeof(struct SEC));
  SEC_Head->id = 0;
  SEC_Head->image_belong = IMG_File;
  SEC_Head->prev = NULL;
  SEC_Head->prev =NULL;
  struct SEC *SEC_Tail = SEC_Head;
  (*IMG_File)->sections_head = SEC_Head;
  (*IMG_File)->sections_tail = SEC_Tail;
  
  for (sect = abfd->sections; sect != NULL; seci++, sect = sect->next) 
    disassemble_section(abfd, sect, &disasm_info, &SEC_Tail);
  if (seci != abfd->section_count) /* Debugging. */
    abort();
 
  if (aux.dynrelbuf != NULL)
    free (aux.dynrelbuf);
  free (sorted_syms);
}

static int
load_specific_debug_section (enum dwarf_section_display_enum debug,
			     asection *sec, void *file)
{
  struct dwarf_section *section = &debug_displays [debug].section;
  bfd *abfd = (bfd *) file;
  bfd_boolean ret;

  /* If it is already loaded, do nothing. */
  if (section->start != NULL)
    return 1;

  section->address = bfd_get_section_vma (abfd, sec);
  section->size = bfd_get_section_size (sec);
  section->start = NULL;
  ret = bfd_get_full_section_contents (abfd, sec, &section->start);

  if (! ret)
    {
      free_debug_section (debug);
      printf (_("\nCan't get contents for section '%s'.\n"),
	      section->name);
      return 0;
    }

  if (is_relocatable && debug_displays [debug].relocate)
    {
      bfd_cache_section_contents (sec, section->start);

      ret = bfd_simple_get_relocated_section_contents (abfd,
						       sec,
						       section->start,
						       syms) != NULL;

      if (! ret)
        {
          free_debug_section (debug);
          printf (_("\nCan't get contents for section '%s'.\n"),
	          section->name);
          return 0;
        }
    }

  return 1;
}
int
load_debug_section (enum dwarf_section_display_enum debug, void *file)
{
  struct dwarf_section *section = &debug_displays [debug].section;
  bfd *abfd = (bfd *) file;
  asection *sec;

  /* If it is already loaded, do nothing. */
  if (section->start != NULL)
    return 1;

  /* Locate the debug section. */
  sec = bfd_get_section_by_name (abfd, section->uncompressed_name);
  if (sec != NULL)
    section->name = section->uncompressed_name;
  else
    {
      sec = bfd_get_section_by_name (abfd, section->compressed_name);
      if (sec != NULL)
        section->name = section->compressed_name;
    }
  if (sec == NULL)
    return 0;

  return load_specific_debug_section (debug, sec, file);
}
void
free_debug_section (enum dwarf_section_display_enum debug)
{
  struct dwarf_section *section = &debug_displays [debug].section;

  if (section->start == NULL)
    return;

  free ((char *) section->start);
  section->start = NULL;
  section->address = 0;
  section->size = 0;
}


/*  static void
dump_dwarf_section (bfd *abfd, asection *section,
		    void *arg ATTRIBUTE_UNUSED)
{
  const char *name = bfd_get_section_name (abfd, section);
  const char *match;
  int i;

  if (CONST_STRNEQ (name, ".gnu.linkonce.wi."))
    match = ".debug_info";
  else
    match = name;

  for (i = 0; i < max; i++)
    if ((strcmp (debug_displays [i].section.uncompressed_name, match) == 0
	 || strcmp (debug_displays [i].section.compressed_name, match) == 0)
	&& debug_displays [i].enabled != NULL
	&& *debug_displays [i].enabled)
      {
	struct dwarf_section *sec = &debug_displays [i].section;

	if (strcmp (sec->uncompressed_name, match) == 0)
	  sec->name = sec->uncompressed_name;
	else
	  sec->name = sec->compressed_name;
	if (load_specific_debug_section ((enum dwarf_section_display_enum) i,
                                         section, abfd))
	  {
	    debug_displays [i].display (sec, abfd);
	    
	    if (i != info && i != abbrev)
	      free_debug_section ((enum dwarf_section_display_enum) i);
	  }
	break;
      }
}  */
/* Dump the dwarf debugging information. */
/*  static void
dump_dwarf (bfd *abfd)
{
  is_relocatable = (abfd->flags & (EXEC_P | DYNAMIC)) == 0;

  eh_addr_size = bfd_arch_bits_per_address (abfd) / 8;

  if (bfd_big_endian (abfd))
    byte_get = byte_get_big_endian;
  else if (bfd_little_endian (abfd))
    byte_get = byte_get_little_endian;
  else
  *//* PR 17512: file: objdump-s-endless-loop.tekhex. *//*
    {
      warn (_("File %s does not contain any dwarf debug information\n"),
	    bfd_get_filename (abfd));
      return;
    }

  switch (bfd_get_arch (abfd))
    {
    case bfd_arch_i386:
      switch (bfd_get_mach (abfd))
	{
	case bfd_mach_x86_64:
	case bfd_mach_x86_64_intel_syntax:
	case bfd_mach_x86_64_nacl:
	case bfd_mach_x64_32:
	case bfd_mach_x64_32_intel_syntax:
	case bfd_mach_x64_32_nacl:
	  init_dwarf_regnames_x86_64 ();
	  break;

	default:
	  init_dwarf_regnames_i386 ();
	  break;
	}
      break;

    case bfd_arch_aarch64:
      init_dwarf_regnames_aarch64();
      break;

    default:
      break;
    }

  bfd_map_over_sections (abfd, dump_dwarf_section, NULL);

  free_debug_memory ();
}  */
/* Read ABFD's stabs section STABSECT_NAME, and return a pointer to
   it.  Return NULL on failure.   */
/*  static char *
read_section_stabs (bfd *abfd, const char *sect_name, bfd_size_type *size_ptr)
{
  asection *stabsect;
  bfd_size_type size;
  char *contents;

  stabsect = bfd_get_section_by_name (abfd, sect_name);
  if (stabsect == NULL)
    {
      printf (_("No %s section present\n\n"), sect_name);
      return FALSE;
    }

  size = bfd_section_size (abfd, stabsect);
  contents  = (char *) xmalloc (size);

  if (! bfd_get_section_contents (abfd, stabsect, contents, 0, size))
    {
      non_fatal (_("reading %s section of %s failed: %s"),
		 sect_name, bfd_get_filename (abfd),
		 bfd_errmsg (bfd_get_error ()));
      exit_status = 1;
      free (contents);
      return NULL;
    }

  *size_ptr = size;

  return contents;
}  */
/* Stabs entries use a 12 byte format:
     4 byte string table index
     1 byte stab type
     1 byte stab other field
     2 byte stab desc field
     4 byte stab value
   FIXME: This will have to change for a 64 bit object format.  */
//#define STRDXOFF  (0)
//#define TYPEOFF   (4)
//#define OTHEROFF  (5)
//#define DESCOFF   (6)
//#define VALOFF    (8)
//#define STABSIZE (12)
/* Print ABFD's stabs section STABSECT_NAME (in `stabs'),
   using string table section STRSECT_NAME (in `strtab').  */

/*  static void
print_section_stabs (bfd *abfd,
		     const char *stabsect_name,
		     unsigned *string_offset_ptr)
{
  int i;
  unsigned file_string_table_offset = 0;
  unsigned next_file_string_table_offset = *string_offset_ptr;
  bfd_byte *stabp, *stabs_end;

  stabp = stabs;
  stabs_end = stabp + stab_size;

  printf (_("Contents of %s section:\n\n"), stabsect_name);
  printf ("Symnum n_type n_othr n_desc n_value  n_strx String\n");

*//* Loop through all symbols and print them.

     We start the index at -1 because there is a dummy symbol on
     the front of stabs-in-{coff,elf} sections that supplies sizes.  *//*
  for (i = -1; stabp <= stabs_end - STABSIZE; stabp += STABSIZE, i++)
    {
      const char *name;
      unsigned long strx;
      unsigned char type, other;
      unsigned short desc;
      bfd_vma value;

      strx = bfd_h_get_32 (abfd, stabp + STRDXOFF);
      type = bfd_h_get_8 (abfd, stabp + TYPEOFF);
      other = bfd_h_get_8 (abfd, stabp + OTHEROFF);
      desc = bfd_h_get_16 (abfd, stabp + DESCOFF);
      value = bfd_h_get_32 (abfd, stabp + VALOFF);

      printf ("\n%-6d ", i);
    *//* Either print the stab name, or, if unnamed, print its number
	 again (makes consistent formatting for tools like awk).  *//*
      name = bfd_get_stab_name (type);
      if (name != NULL)
	printf ("%-6s", name);
      else if (type == N_UNDF)
	printf ("HdrSym");
      else
	printf ("%-6d", type);
      printf (" %-6d %-6d ", other, desc);
      bfd_printf_vma (abfd, value);
      printf (" %-6lu", strx);

    *//* Symbols with type == 0 (N_UNDF) specify the length of the
	 string table associated with this file.  We use that info
	 to know how to relocate the *next* file's string table indices.  *//*
      if (type == N_UNDF)
	{
	  file_string_table_offset = next_file_string_table_offset;
	  next_file_string_table_offset += value;
	}
      else
	{
	  bfd_size_type amt = strx + file_string_table_offset;

	*//* Using the (possibly updated) string table offset, print the
	     string (if any) associated with this symbol.  *//*
	  if (amt < stabstr_size)
	  *//* PR 17512: file: 079-79389-0.001:0.1.  *//*
	    printf (" %.*s", (int)(stabstr_size - amt), strtab + amt);
	  else
	    printf (" *");
	}
    }
  printf ("\n\n");
  *string_offset_ptr = next_file_string_table_offset;
}  */
/*  typedef struct
{
  const char * section_name;
  const char * string_section_name;
  unsigned string_offset;
}
stab_section_names;  */
/*  static void
find_stabs_section (bfd *abfd, asection *section, void *names)
{
  int len;
  stab_section_names * sought = (stab_section_names *) names;

*//*  /* Check for section names for which stabsect_name is a prefix, to
     handle .stab.N, etc.  *//*
  len = strlen (sought->section_name);

*//* If the prefix matches, and the files section name ends with a
     nul or a digit, then we match.  I.e., we want either an exact
     match or a section followed by a number.  *//*
  if (strncmp (sought->section_name, section->name, len) == 0
      && (section->name[len] == 0
	  || (section->name[len] == '.' && ISDIGIT (section->name[len + 1]))))
    {
      if (strtab == NULL)
	strtab = read_section_stabs (abfd, sought->string_section_name,
				     &stabstr_size);
      
      if (strtab)
	{
	  stabs = (bfd_byte *) read_section_stabs (abfd, section->name,
						   &stab_size);
	  if (stabs)
	    print_section_stabs (abfd, section->name, &sought->string_offset);
	}
    }
}  */
/*  static void
dump_stabs_section (bfd *abfd, char *stabsect_name, char *strsect_name)
{
  stab_section_names s;

  s.section_name = stabsect_name;
  s.string_section_name = strsect_name;
  s.string_offset = 0;

  bfd_map_over_sections (abfd, find_stabs_section, & s);

  free (strtab);
  strtab = NULL;
}  */
/* Dump the any sections containing stabs debugging information.  */
/*  static void
dump_stabs (bfd *abfd)
{
  dump_stabs_section (abfd, ".stab", ".stabstr");
  dump_stabs_section (abfd, ".stab.excl", ".stab.exclstr");
  dump_stabs_section (abfd, ".stab.index", ".stab.indexstr");

*//* For Darwin.  *//*
  dump_stabs_section (abfd, "LC_SYMTAB.stabs", "LC_SYMTAB.stabstr");

  dump_stabs_section (abfd, "$GDB_SYMBOLS$", "$GDB_STRINGS$");
}  */
/*  static void
dump_bfd_header (bfd *abfd)
{
  char *comma = "";

  printf (_("architecture: %s, "),
	  bfd_printable_arch_mach (bfd_get_arch (abfd),
				   bfd_get_mach (abfd)));
  printf (_("flags 0x%08x:\n"), abfd->flags & ~BFD_FLAGS_FOR_BFD_USE_MASK);

#define PF(x, y)    if (abfd->flags & x) {printf("%s%s", comma, y); comma=", ";}
  PF (HAS_RELOC, "HAS_RELOC");
  PF (EXEC_P, "EXEC_P");
  PF (HAS_LINENO, "HAS_LINENO");
  PF (HAS_DEBUG, "HAS_DEBUG");
  PF (HAS_SYMS, "HAS_SYMS");
  PF (HAS_LOCALS, "HAS_LOCALS");
  PF (DYNAMIC, "DYNAMIC");
  PF (WP_TEXT, "WP_TEXT");
  PF (D_PAGED, "D_PAGED");
  PF (BFD_IS_RELAXABLE, "BFD_IS_RELAXABLE");
  printf (_("\nstart address 0x"));
  bfd_printf_vma (abfd, abfd->start_address);
  printf ("\n");
}  */
/*  static void
dump_bfd_private_header (bfd *abfd)
{
  bfd_print_private_bfd_data (abfd, stdout);
}  */
/*  static void
dump_target_specific (bfd *abfd)
{
  const struct objdump_private_desc * const *desc;
  struct objdump_private_option *opt;
  char *e, *b;

*//* Find the desc.  *//*
  for (desc = objdump_private_vectors; *desc != NULL; desc++)
    if ((*desc)->filter (abfd))
      break;

  if (*desc == NULL)
    {
      non_fatal (_("option -P/--private not supported by this file"));
      return;
    }

*//* Clear all options.  *//*
  for (opt = (*desc)->options; opt->name; opt++)
    opt->selected = FALSE;

*//* Decode options.  *//*
  b = dump_private_options;
  do
    {
      e = strchr (b, ',');

      if (e)
        *e = 0;

      for (opt = (*desc)->options; opt->name; opt++)
        if (strcmp (opt->name, b) == 0)
          {
            opt->selected = TRUE;
            break;
          }
      if (opt->name == NULL)
        non_fatal (_("target specific dump '%s' not supported"), b);

      if (e)
        {
          *e = ',';
          b = e + 1;
        }
    }
  while (e != NULL);

*//* Dump.  *//*
  (*desc)->dump (abfd);
}  */
/* Display a section in hexadecimal format with associated characters.
   Each line prefixed by the zero padded address.  */
/*  static void
dump_section (bfd *abfd, asection *section, void *dummy ATTRIBUTE_UNUSED)
{
  bfd_byte *data = 0;
  bfd_size_type datasize;
  bfd_size_type addr_offset;
  bfd_size_type start_offset;
  bfd_size_type stop_offset;
  unsigned int opb = bfd_octets_per_byte (abfd);
*//* Bytes per line.  *//*
  const int onaline = 16;
  char buf[64];
  int count;
  int width;

  if ((section->flags & SEC_HAS_CONTENTS) == 0)
    return;

  if (! process_section_p (section))
    return;
  
  if ((datasize = bfd_section_size (abfd, section)) == 0)
    return;

*//* Compute the address range to display.  *//*
  if (start_address == (bfd_vma) -1
      || start_address < section->vma)
    start_offset = 0;
  else
    start_offset = start_address - section->vma;

  if (stop_address == (bfd_vma) -1)
    stop_offset = datasize / opb;
  else
    {
      if (stop_address < section->vma)
	stop_offset = 0;
      else
	stop_offset = stop_address - section->vma;

      if (stop_offset > datasize / opb)
	stop_offset = datasize / opb;
    }

  if (start_offset >= stop_offset)
    return;
  
  printf (_("Contents of section %s:"), section->name);
  if (display_file_offsets)
    printf (_("  (Starting at file offset: 0x%lx)"),
	    (unsigned long) (section->filepos + start_offset));
  printf ("\n");

  if (!bfd_get_full_section_contents (abfd, section, &data))
    {
      non_fatal (_("Reading section failed"));
      return;
    }

  width = 4;

  bfd_sprintf_vma (abfd, buf, start_offset + section->vma);
  if (strlen (buf) >= sizeof (buf))
    abort ();

  count = 0;
  while (buf[count] == '0' && buf[count+1] != '\0')
    count++;
  count = strlen (buf) - count;
  if (count > width)
    width = count;

  bfd_sprintf_vma (abfd, buf, stop_offset + section->vma - 1);
  if (strlen (buf) >= sizeof (buf))
    abort ();

  count = 0;
  while (buf[count] == '0' && buf[count+1] != '\0')
    count++;
  count = strlen (buf) - count;
  if (count > width)
    width = count;

  for (addr_offset = start_offset;
       addr_offset < stop_offset; addr_offset += onaline / opb)
    {
      bfd_size_type j;

      bfd_sprintf_vma (abfd, buf, (addr_offset + section->vma));
      count = strlen (buf);
      if ((size_t) count >= sizeof (buf))
	abort ();

      putchar (' ');
      while (count < width)
	{
	  putchar ('0');
	  count++;
	}
      fputs (buf + count - width, stdout);
      putchar (' ');

      for (j = addr_offset * opb;
	   j < addr_offset * opb + onaline; j++)
	{
	  if (j < stop_offset * opb)
	    printf ("%02x", (unsigned) (data[j]));
	  else
	    printf ("  ");
	  if ((j & 3) == 3)
	    printf (" ");
	}

      printf (" ");
      for (j = addr_offset * opb;
	   j < addr_offset * opb + onaline; j++)
	{
	  if (j >= stop_offset * opb)
	    printf (" ");
	  else
	    printf ("%c", ISPRINT (data[j]) ? data[j] : '.');
	}
      putchar ('\n');
    }
  free (data);
}  */
/* Actually display the various requested regions.  */
/*  static void
dump_data (bfd *abfd)
{
  bfd_map_over_sections (abfd, dump_section, NULL);
}  */
/* Should perhaps share code and display with nm?  */
/*  static void
dump_symbols (bfd *abfd ATTRIBUTE_UNUSED, bfd_boolean dynamic)
{
  asymbol **current;
  long max_count;
  long count;

  if (dynamic)
    {
      current = dynsyms;
      max_count = dynsymcount;
      printf ("DYNAMIC SYMBOL TABLE:\n");
    }
  else
    {
      current = syms;
      max_count = symcount;
      printf ("SYMBOL TABLE:\n");
    }

  if (max_count == 0)
    printf (_("no symbols\n"));

  for (count = 0; count < max_count; count++)
    {
      bfd *cur_bfd;

      if (*current == NULL)
	printf (_("no information for symbol number %ld\n"), count);

      else if ((cur_bfd = bfd_asymbol_bfd (*current)) == NULL)
	printf (_("could not determine the type of symbol number %ld\n"),
		count);

      else if (process_section_p ((* current)->section)
	       && (dump_special_syms
		   || !bfd_is_target_special_symbol (cur_bfd, *current)))
	{
	  const char *name = (*current)->name;

	  if (do_demangle && name != NULL && *name != '\0')
	    {
	      char *alloc;

	    *//* If we want to demangle the name, we demangle it
		 here, and temporarily clobber it while calling
		 bfd_print_symbol.  FIXME: This is a gross hack.  *//*
	      alloc = bfd_demangle (cur_bfd, name, DMGL_ANSI | DMGL_PARAMS);
	      if (alloc != NULL)
		(*current)->name = alloc;
	      bfd_print_symbol (cur_bfd, stdout, *current,
				bfd_print_symbol_all);
	      if (alloc != NULL)
		{
		  (*current)->name = name;
		  free (alloc);
		}
	    }
	  else
	    bfd_print_symbol (cur_bfd, stdout, *current,
			      bfd_print_symbol_all);
	  printf ("\n");
	}

      current++;
    }
  printf ("\n\n");
}  */
/*  static void
dump_reloc_set (bfd *abfd, asection *sec, arelent **relpp, long relcount)
{
  arelent **p;
  char *last_filename, *last_functionname;
  unsigned int last_line;
  unsigned int last_discriminator;

*//* Get column headers lined up reasonably. *//*
  {
    static int width;

    if (width == 0)
      {
	char buf[30];

	bfd_sprintf_vma (abfd, buf, (bfd_vma) -1);
	width = strlen (buf) - 7;
      }
    printf ("OFFSET %*s TYPE %*s VALUE \n", width, "", 12, "");
  }

  last_filename = NULL;
  last_functionname = NULL;
  last_line = 0;
  last_discriminator = 0;

  for (p = relpp; relcount && *p != NULL; p++, relcount--)
    {
      arelent *q = *p;
      const char *filename, *functionname;
      unsigned int linenumber;
      unsigned int discriminator;
      const char *sym_name;
      const char *section_name;
      bfd_vma addend2 = 0;

      if (start_address != (bfd_vma) -1
	  && q->address < start_address)
	continue;
      if (stop_address != (bfd_vma) -1
	  && q->address > stop_address)
	continue;

      if (with_line_numbers
	  && sec != NULL
	  && bfd_find_nearest_line_discriminator (abfd, sec, syms, q->address,
                                                  &filename, &functionname,
                                                  &linenumber, &discriminator))
	{
	  if (functionname != NULL
	      && (last_functionname == NULL
		  || strcmp (functionname, last_functionname) != 0))
	    {
	      printf ("%s():\n", functionname);
	      if (last_functionname != NULL)
		free (last_functionname);
	      last_functionname = xstrdup (functionname);
	    }

	  if (linenumber > 0
	      && (linenumber != last_line
		  || (filename != NULL
		      && last_filename != NULL
		      && filename_cmp (filename, last_filename) != 0)
                  || (discriminator != last_discriminator)))
	    {
              if (discriminator > 0)
                printf ("%s:%u\n", filename == NULL ? "???" : filename, linenumber);
              else
                printf ("%s:%u (discriminator %u)\n", filename == NULL ? "???" : filename,
                        linenumber, discriminator);
	      last_line = linenumber;
	      last_discriminator = discriminator;
	      if (last_filename != NULL)
		free (last_filename);
	      if (filename == NULL)
		last_filename = NULL;
	      else
		last_filename = xstrdup (filename);
	    }
	}

      if (q->sym_ptr_ptr && *q->sym_ptr_ptr)
	{
	  sym_name = (*(q->sym_ptr_ptr))->name;
	  section_name = (*(q->sym_ptr_ptr))->section->name;
	}
      else
	{
	  sym_name = NULL;
	  section_name = NULL;
	}

      bfd_printf_vma (abfd, q->address);
      if (q->howto == NULL)
	printf (" *unknown*         ");
      else if (q->howto->name)
	{
	  const char *name = q->howto->name;

	*//* R_SPARC_OLO10 relocations contain two addends.
	     But because 'arelent' lacks enough storage to
	     store them both, the 64-bit ELF Sparc backend
	     records this as two relocations.  One R_SPARC_LO10
	     and one R_SPARC_13, both pointing to the same
	     address.  This is merely so that we have some
	     place to store both addend fields.

	     Undo this transformation, otherwise the output
	     will be confusing.  *//*
	  if (abfd->xvec->flavour == bfd_target_elf_flavour
	      && elf_tdata(abfd)->elf_header->e_machine == EM_SPARCV9
	      && relcount > 1
	      && !strcmp (q->howto->name, "R_SPARC_LO10"))
	    {
	      arelent *q2 = *(p + 1);
	      if (q2 != NULL
		  && q2->howto
		  && q->address == q2->address
		  && !strcmp (q2->howto->name, "R_SPARC_13"))
		{
		  name = "R_SPARC_OLO10";
		  addend2 = q2->addend;
		  p++;
		}
	    }
	  printf (" %-16s  ", name);
	}
      else
	printf (" %-16d  ", q->howto->type);

      if (sym_name)
	{
	  objdump_print_symname (abfd, NULL, *q->sym_ptr_ptr);
	}
      else
	{
	  if (section_name == NULL)
	    section_name = "*unknown*";
	  printf ("[%s]", section_name);
	}

      if (q->addend)
	{
	  bfd_signed_vma addend = q->addend;
	  if (addend < 0)
	    {
	      printf ("-0x");
	      addend = -addend;
	    }
	  else
	    printf ("+0x");
	  bfd_printf_vma (abfd, addend);
	}
      if (addend2)
	{
	  printf ("+0x");
	  bfd_printf_vma (abfd, addend2);
	}

      printf ("\n");
    }

  if (last_filename != NULL)
    free (last_filename);
  if (last_functionname != NULL)
    free (last_functionname);
}  */
/*  static void
dump_relocs_in_section (bfd *abfd,
			asection *section,
			void *dummy ATTRIBUTE_UNUSED)
{
  arelent **relpp;
  long relcount;
  long relsize;

  if (   bfd_is_abs_section (section)
      || bfd_is_und_section (section)
      || bfd_is_com_section (section)
      || (! process_section_p (section))
      || ((section->flags & SEC_RELOC) == 0))
    return;

  relsize = bfd_get_reloc_upper_bound (abfd, section);
  if (relsize < 0)
    bfd_fatal (bfd_get_filename (abfd));

  printf ("RELOCATION RECORDS FOR [%s]:", section->name);

  if (relsize == 0)
    {
      printf (" (none)\n\n");
      return;
    }

  relpp = (arelent **) xmalloc (relsize);
  relcount = bfd_canonicalize_reloc (abfd, section, relpp, syms);

  if (relcount < 0)
    {
      printf ("\n");
      non_fatal (_("failed to read relocs in: %s"), bfd_get_filename (abfd));
      bfd_fatal (_("error message was"));
    }
  else if (relcount == 0)
    printf (" (none)\n\n");
  else
    {
      printf ("\n");
      dump_reloc_set (abfd, section, relpp, relcount);
      printf ("\n\n");
    }
  free (relpp);
}  */
/*  static void
dump_relocs (bfd *abfd)
{
  bfd_map_over_sections (abfd, dump_relocs_in_section, NULL);
}  */
/*  static void
dump_dynamic_relocs (bfd *abfd)
{
  long relsize;
  arelent **relpp;
  long relcount;

  relsize = bfd_get_dynamic_reloc_upper_bound (abfd);
  if (relsize < 0)
    bfd_fatal (bfd_get_filename (abfd));

  printf ("DYNAMIC RELOCATION RECORDS");

  if (relsize == 0)
    printf (" (none)\n\n");
  else
    {
      relpp = (arelent **) xmalloc (relsize);
      relcount = bfd_canonicalize_dynamic_reloc (abfd, relpp, dynsyms);

      if (relcount < 0)
	bfd_fatal (bfd_get_filename (abfd));
      else if (relcount == 0)
	printf (" (none)\n\n");
      else
	{
	  printf ("\n");
	  dump_reloc_set (abfd, NULL, relpp, relcount);
	  printf ("\n\n");
	}
      free (relpp);
    }
}  */
/* Creates a table of paths, to search for source files. */ 
/*  static void
add_include_path (const char *path)
{
  if (path[0] == 0)
    return;
  include_path_count++;
  include_paths = (const char **)
      xrealloc (include_paths, include_path_count * sizeof (*include_paths));
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  if (path[1] == ':' && path[2] == 0)
    path = concat (path, ".", (const char *) 0);
#endif
  include_paths[include_path_count - 1] = path;
}  */
/*  static void
adjust_addresses (bfd *abfd ATTRIBUTE_UNUSED,
		  asection *section,
		  void *arg)
{
  if ((section->flags & SEC_DEBUGGING) == 0)
    {
      bfd_boolean *has_reloc_p = (bfd_boolean *) arg;
      section->vma += adjust_section_vma;
      if (*has_reloc_p)
	section->lma += adjust_section_vma;
    }
}  */




/* Dump selected contents of ABFD. */

static void
dump_bfd (bfd *abfd, struct IMG **IMG_File)
{
  if (disassemble )
    { 
      syms = slurp_symtab (abfd);
    } 
  if (disassemble && bfd_get_dynamic_symtab_upper_bound (abfd) > 0) 
    {
      dynsyms = slurp_dynamic_symtab (abfd);
    } 
  if (disassemble)
    { 
      synthcount = bfd_get_synthetic_symtab (abfd, symcount, syms,
					     dynsymcount, dynsyms, &synthsyms);
      if (synthcount < 0)
	synthcount = 0;
    } 
  if (disassemble)
    { 
      disassemble_data (abfd, IMG_File);
    } 

  /* Free memory part. */
  if (syms)
    {
      free (syms);
      syms = NULL;
    } 

  if (dynsyms)
    {
      free (dynsyms);
      dynsyms = NULL;
    } 

  if (synthsyms)
    {
      free (synthsyms);
      synthsyms = NULL;
    } 

  symcount = 0;
  dynsymcount = 0;
  synthcount = 0; 
}

static void
display_object_bfd (bfd *abfd, struct IMG **IMG_File)
{
  char **matching;

  if (bfd_check_format_matches (abfd, bfd_object, &matching))
    {
	  dump_bfd (abfd, IMG_File);
      return;
    }

  if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
    {
      nonfatal (bfd_get_filename (abfd));
      list_matching_formats (matching);
      free (matching);
      return;
    }

  if (bfd_get_error () != bfd_error_file_not_recognized)
    {
      nonfatal (bfd_get_filename (abfd));
      return;
    }

  if (bfd_check_format_matches (abfd, bfd_core, &matching))
    {
      dump_bfd (abfd, IMG_File);
      return;
    }

  nonfatal (bfd_get_filename (abfd));

  if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
    {
      list_matching_formats (matching);
      free (matching);
    }
}

static void
display_any_bfd (bfd *file, int level, struct IMG **IMG_Tail)
{ 
  file->flags |= BFD_DECOMPRESS;
  /* If the file is an archive, process all of its elements. */
  if (bfd_check_format (file, bfd_archive))
    {
      bfd *arfile = NULL;
      bfd *last_arfile = NULL;

  /*  if (level == 0)
        printf (_("In archive %s:\n"), bfd_get_filename (file));
      else
        printf (_("In nested archive %s:\n"), bfd_get_filename (file));  */

      for (;;)
	{
	  bfd_set_error (bfd_error_no_error);

	  arfile = bfd_openr_next_archived_file (file, arfile);
	  if (arfile == NULL)
	    {
	      if (bfd_get_error () != bfd_error_no_more_archived_files)
		nonfatal (bfd_get_filename (file));
	      break;
	    }

	  display_any_bfd (arfile, level + 1, IMG_Tail);

	  if (last_arfile != NULL)
	    bfd_close (last_arfile);

	  last_arfile = arfile;
	} 

      if (last_arfile != NULL)
	bfd_close (last_arfile);
    }
  else 
    {
      /* Create an image and add into the image list. */ 
      struct IMG *IMG_File = (struct IMG *)malloc(sizeof(struct IMG));
      IMG_File->name = bfd_get_filename(file);
      IMG_File->id = (*IMG_Tail)->id + 1;
      IMG_File->prev = (*IMG_Tail);
      IMG_File->next = NULL;
      (*IMG_Tail)->next = IMG_File;
      *IMG_Tail = IMG_File;
    
      display_object_bfd (file, &IMG_File);
    } 
}

static struct IMG *
display_file (char *filename, char *target)
{
  bfd *file;

  if (get_file_size (filename) < 1)
    {
      exit_status = 1;
      return;
    }

  file = bfd_openr (filename, target);
  if (file == NULL)
    {
      nonfatal (filename);
      return;
    }
  
  /* Create an image list. */
  struct IMG *IMG_Head = (struct IMG *)malloc(sizeof(struct IMG));
  IMG_Head->id = 0;
  IMG_Head->prev = NULL;
  IMG_Head->next = NULL;
  struct IMG *IMG_Tail = IMG_Head;

  display_any_bfd (file, 0, &IMG_Tail);
  
  bfd_close (file);
  printf("---------------------------------------\n");
  printf("---------------------------------------\n");
  printf("---------------------------------------\n");
  
  struct IMG *IMG_P = IMG_Head;
  while (IMG_P->next != NULL) {
    
    printf("-----IMG: %s\t %d\t", IMG_P->next->name, IMG_P->next->id);
    printf("-----IMG Sec Num: %d\n", IMG_P->next->sec_num);
    printf("---------------------------------------\n");
    
    if (IMG_P->next->sec_num > 0)
    {
    struct SEC *SEC_P = IMG_P->next->sections_head;
    while (SEC_P->next != NULL) {
      
      printf("-----SEC: %s\t %d\t", SEC_P->next->name, SEC_P->next->id);
      printf("-----SEC Addr: %x\t Size: %d\t Type: %d\t", SEC_P->next->address, SEC_P->next->size, SEC_P->next->type);
      printf("-----SEC Rtn Num: %d\n", SEC_P->next->rtn_num);
      printf("---------------------------------------\n");
      
      if (SEC_P->next->rtn_num > 0 && SEC_P->next->type == 1)
      {
      struct RTN *RTN_P = SEC_P->next->routines_head;
      while (RTN_P->next != NULL) {
        
        printf("-----RTN: %s\t %d\t", RTN_P->next->name, RTN_P->next->id);
        printf("-----RTN Addr: %x\t Size: %d\t", RTN_P->next->address, RTN_P->next->size);
        printf("-----RTN Inst Num: %d\n", RTN_P->next->inst_num);
        printf("---------------------------------------\n");
        
        if (RTN_P->next->inst_num > 0)
        {
        struct INST *INST_P = RTN_P->next->instructions_head;
        while (INST_P->next != NULL) {
           
           printf("-----INST: %d\t", INST_P->next->id);
           printf("-----INST Addr: %x\t Size: %d\n", INST_P->next->address, INST_P->next->size);
           printf("---------------------------------------\n");
           INST_P = INST_P->next;
        }
        }
        RTN_P = RTN_P->next;
      }
      }
      SEC_P = SEC_P->next;      
    }
    }

    IMG_P = IMG_P->next;
  }
  
  return IMG_Head;
}

void main ()
{
 
  char *target = default_target;
  bfd_boolean seenflag = FALSE;
  bfd_init ();
  set_default_bfd_target (); //Initialize bfd
  
  disassemble = TRUE;
  seenflag = TRUE; //Initialize option
  
  char *file_name = "/home/sz/Desktop/Test/test3.out";
  //interface function
  struct IMG *IMG_List = display_file (file_name, target);
}
