# 1 "<stdin>"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./include/libc-symbols.h" 1
# 54 "./include/libc-symbols.h"
# 1 "/home/yufei/qemu-1.5.3_new/plugins/glibc-2.13-new-build/config.h" 1
# 55 "./include/libc-symbols.h" 2
# 823 "./include/libc-symbols.h"
# 1 "sysdeps/wordsize-32/symbol-hacks.h" 1
# 824 "./include/libc-symbols.h" 2
# 1 "<command-line>" 2
# 1 "<stdin>"
# 1 "include/tls.h" 1





# 1 "nptl/sysdeps/i386/i686/tls.h" 1
# 34 "nptl/sysdeps/i386/i686/tls.h"
# 1 "nptl/sysdeps/i386/i686/../tls.h" 1
# 23 "nptl/sysdeps/i386/i686/../tls.h"
# 1 "nptl/sysdeps/unix/sysv/linux/i386/i686/dl-sysdep.h" 1
# 24 "nptl/sysdeps/i386/i686/../tls.h" 2
# 69 "nptl/sysdeps/i386/i686/../tls.h"
# 1 "/home/yufei/qemu-1.5.3_new/plugins/glibc-2.13-new-build/tcb-offsets.h" 1
# 70 "nptl/sysdeps/i386/i686/../tls.h" 2
# 35 "nptl/sysdeps/i386/i686/tls.h" 2
# 7 "include/tls.h" 2
# 2 "<stdin>" 2
libc {
  PEMU_LIBC_2.0 {
    __libc_init_first; __libc_start_main;




  }
  PEMU_LIBC_2.1 {
    gnu_get_libc_release; gnu_get_libc_version;
  }
  PEMU_LIBC_PRIVATE {

    errno;

  }
}
libc {
  PEMU_LIBC_2.1 {
    iconv_open; iconv; iconv_close;
  }
  PEMU_LIBC_PRIVATE {
    __gconv_get_alias_db; __gconv_get_modules_db; __gconv_get_cache;
  }
}
libBrokenLocale {
  PEMU_LIBC_2.0 {
    __ctype_get_mb_cur_max;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _libc_intl_domainname;
    __ctype_get_mb_cur_max;
    localeconv;
    nl_langinfo;
    setlocale;
  }
  PEMU_LIBC_2.1 {
    __newlocale; __duplocale; __freelocale;
    __isalnum_l; __isalpha_l; __isascii_l; __isblank_l; __iscntrl_l;
    __isdigit_l; __isgraph_l; __islower_l; __isprint_l; __ispunct_l;
    __isspace_l; __isupper_l; __iswalnum_l; __iswalpha_l; __iswblank_l;
    __iswcntrl_l; __iswctype_l; __iswdigit_l; __iswgraph_l; __iswlower_l;
    __iswprint_l; __iswpunct_l; __iswspace_l; __iswupper_l; __iswxdigit_l;
    __isxdigit_l; __strcasecmp_l; __strcoll_l; __strfmon_l; __strncasecmp_l;
    __strtod_l; __strtof_l; __strtol_l; __strtold_l; __strtoll_l; __strtoul_l;
    __strtoull_l; __strxfrm_l; __toascii_l; __tolower_l; __toupper_l;
    __towctrans_l; __towlower_l; __towupper_l; __wcscasecmp_l; __wcscoll_l;
    __wcsncasecmp_l; __wcstod_l; __wcstof_l; __wcstol_l; __wcstold_l;
    __wcstoll_l; __wcstoul_l; __wcstoull_l; __wcsxfrm_l; __wctype_l;
  }
  PEMU_LIBC_2.2 {
    localeconv;
    __wctrans_l;
    __nl_langinfo_l;
  }
  PEMU_LIBC_2.3 {
    newlocale; duplocale; freelocale; uselocale;
    __uselocale;
    isalnum_l; isalpha_l; isascii_l; isblank_l; iscntrl_l;
    isdigit_l; isgraph_l; islower_l; isprint_l; ispunct_l;
    isspace_l; isupper_l; iswalnum_l; iswalpha_l; iswblank_l;
    iswcntrl_l; iswctype_l; iswdigit_l; iswgraph_l; iswlower_l;
    iswprint_l; iswpunct_l; iswspace_l; iswupper_l; iswxdigit_l;
    isxdigit_l; strcasecmp_l; strcoll_l; strfmon_l; strncasecmp_l;
    strtod_l; strtof_l; strtol_l; strtold_l; strtoul_l;
    strxfrm_l; toascii_l; tolower_l; toupper_l;
    towctrans_l; towlower_l; towupper_l; wcscasecmp_l; wcscoll_l;
    wcsncasecmp_l; wcstod_l; wcstof_l; wcstol_l; wcstold_l;
    wcstoll_l; wcstoul_l; wcstoull_l; wcsxfrm_l; wctype_l;
    wctrans_l; nl_langinfo_l;
  }
  PEMU_LIBC_PRIVATE {
    __collate_element_hash; __collate_element_strings;
    __collate_symbol_classes; __collate_symbol_hash; __collate_symbol_strings;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __assert_fail; __assert_perror_fail;
  }
  PEMU_LIBC_2.2 {
    __assert;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __ctype_b; __ctype32_b; __ctype_tolower; __ctype_toupper;
    _tolower; _toupper;
    isalnum; isalpha; isascii; isblank; iscntrl; isdigit; isgraph; islower;
    isprint; ispunct; isspace; isupper; isxdigit;
    toascii; tolower; toupper;
  }
  PEMU_LIBC_2.2 {
    __ctype32_tolower; __ctype32_toupper;
  }
  PEMU_LIBC_2.3 {
    isctype; __isctype;
    __ctype_b_loc; __ctype_tolower_loc; __ctype_toupper_loc;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _nl_msg_cat_cntr; _nl_default_dirname; _nl_domain_bindings;
    __dcgettext;
    __dgettext;
    bindtextdomain;
    dcgettext; dgettext; gettext;
    textdomain;
  }
  PEMU_LIBC_2.2 {
    bind_textdomain_codeset;
    dcngettext; dngettext;
    ngettext;
  }
}
libc {
  PEMU_LIBC_2.0 {
    catclose; catgets; catopen;
  }
  PEMU_LIBC_PRIVATE {
    __open_catalog;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __isnan; __isnanf; __isnanl; __finite; __finitef; __finitel;
    __isinf; __isinff; __isinfl;
    __fpu_control;
    copysign; copysignf; copysignl;
    finite; finitef; finitel; frexp; frexpf; frexpl;
    isinf; isinff; isinfl; isnan; isnanf; isnanl; ldexp; ldexpf; ldexpl;
    modf; modff; modfl;
    scalbn; scalbnf; scalbnl;
  }
  PEMU_LIBC_2.1 {
    __signbit; __signbitf; __signbitl;
    scalbln; scalblnf; scalblnl;
  }
}
libm {
  PEMU_LIBC_2.0 {
    acos; acosf; acosl;
    acosh; acoshf; acoshl;
    asin; asinf; asinl;
    asinh; asinhf; asinhl;
    atan2; atan2f; atan2l;
    atan; atanf; atanl;
    atanh; atanhf; atanhl;
    cbrt; cbrtf; cbrtl;
    ceil; ceilf; ceill;
    copysign; copysignf; copysignl;
    cos; cosf; cosl;
    coshf; cosh; coshl;
    drem; dremf; dreml;
    erf; erff; erfl;
    erfc; erfcf; erfcl;
    exp; expf; expl;
    expm1; expm1f; expm1l;
    fabs; fabsf; fabsl;
    finite; finitef; finitel;
    floor; floorf; floorl;
    fmod; fmodf; fmodl;
    frexp; frexpf; frexpl;
    gamma; gammaf; gammal;
    gamma_r; gammaf_r; gammal_r;
    hypot; hypotf; hypotl;
    ilogb; ilogbf; ilogbl;
    j0; j0f; j0l;
    j1; j1f; j1l;
    jn; jnf; jnl;
    ldexp; ldexpf; ldexpl;
    lgamma; lgammaf; lgammal;
    lgamma_r; lgammaf_r; lgammal_r;
    log10; log10f; log10l;
    log1p; log1pf; log1pl;
    log; logf; logl;
    logb; logbf; logbl;
    matherr;
    modf; modff; modfl;
    nextafter; nextafterf; nextafterl;
    pow; powf; powl;
    remainder; remainderf; remainderl;
    rint; rintf; rintl;
    scalb; scalbf; scalbl;
    scalbn; scalbnf; scalbnl;
    significand; significandf; significandl;
    sin; sinf; sinl;
    sinh; sinhf; sinhl;
    sqrt; sqrtf; sqrtl;
    tan; tanf; tanl;
    tanh; tanhf; tanhl;
    y0; y0f; y0l;
    y1; y1f; y1l;
    yn; ynf; ynl;
    _LIB_VERSION; signgam;
  }
  PEMU_LIBC_2.1 {
    exp2; exp2f;
    exp10; exp10f; exp10l;
    fdim; fdimf; fdiml;
    fma; fmaf; fmal;
    fmax; fmaxf; fmaxl;
    fmin; fminf; fminl;
    log2; log2f; log2l;
    nan; nanf; nanl;
    nearbyint; nearbyintf; nearbyintl;
    nexttoward; nexttowardf; nexttowardl;
    pow10; pow10f; pow10l;
    remquo; remquof; remquol;
    lrint; lrintf; lrintl;
    llrint; llrintf; llrintl;
    round; roundf; roundl;
    lround; lroundf; lroundl;
    llround; llroundf; llroundl;
    scalbln; scalblnf; scalblnl;
    sincos; sincosf; sincosl;
    trunc; truncf; truncl;
    tgamma; tgammaf; tgammal;
    cabs; cabsf; cabsl;
    cacos; cacosf; cacosl;
    cacosh; cacoshf; cacoshl;
    carg; cargf; cargl;
    casin; casinf; casinl;
    casinh; casinhf; casinhl;
    catan; catanf; catanl;
    catanh; catanhf; catanhl;
    ccos; ccosf; ccosl;
    ccosh; ccoshf; ccoshl;
    cexp; cexpf; cexpl;
    cimag; cimagf; cimagl;
    clog; clogf; clogl;
    clog10; clog10f; clog10l;
    __clog10; __clog10f; __clog10l;
    conj; conjf; conjl;
    cpow; cpowf; cpowl;
    cproj; cprojf; cprojl;
    creal; crealf; creall;
    csin; csinf; csinl;
    csinh; csinhf; csinhl;
    csqrt; csqrtf; csqrtl;
    ctan; ctanf; ctanl;
    ctanh; ctanhf; ctanhl;
    feclearexcept; fegetenv; fegetexceptflag;
    fegetround; feholdexcept; feraiseexcept;
    fesetenv; fesetexceptflag; fesetround;
    fetestexcept; feupdateenv;
    __finite; __finitef; __finitel;
    __fpclassify; __fpclassifyf; __fpclassifyl;
    __signbit; __signbitf; __signbitl;
  }
  PEMU_LIBC_2.2 {
    feclearexcept; fegetenv; fegetexceptflag; feraiseexcept;
    fesetenv; fesetexceptflag; feupdateenv;
    feenableexcept; fedisableexcept; fegetexcept;
  }
  PEMU_LIBC_2.4 {
    exp2l;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _longjmp; __sigsetjmp; _setjmp;
    longjmp;
    setjmp;
  }
  PEMU_LIBC_PRIVATE {
    __libc_longjmp; __libc_siglongjmp;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __sigaddset; __sigdelset; __sigismember; __sysv_signal;
    __sigpause;
     __sigaction;
    bsd_signal;
    gsignal;
    kill; killpg;
    psignal;
    raise;
    sigaction; sigaddset; sigaltstack; sigandset; sigblock; sigdelset;
    sigemptyset; sigfillset; siggetmask; siginterrupt; sigisemptyset;
    sigismember; siglongjmp; signal; sigorset; sigpause; sigpending;
    sigprocmask; sigreturn; sigsetmask; sigstack; sigsuspend; sigvec;
    sigwait; ssignal;
  }
  PEMU_LIBC_2.1 {
    __libc_current_sigrtmin; __libc_current_sigrtmax; __libc_allocate_rtsig;
    sighold; sigrelse; sigignore; sigset; sysv_signal;
    sigqueue; sigtimedwait; sigwaitinfo;
  }
  PEMU_LIBC_2.1.3 {
    __sigsuspend;
  }
  PEMU_LIBC_2.2 {
    __xpg_sigpause;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __xpg_basename;
    __strto*_internal;
    __secure_getenv;
    a64l; abort; abs; atexit; atof; atoi; atol; atoll;
    bsearch;
    canonicalize_file_name; clearenv;
    div; drand48; drand48_r;
    erand48; erand48_r; exit;
    getenv; getsubopt;
    initstate; initstate_r;
    l64a; labs; lcong48; lcong48_r; ldiv; llabs; lldiv; lrand48; lrand48_r;
    mblen; mbrlen; mbrtowc; mbsinit; mbsnrtowcs; mbsrtowcs; mbstowcs;
    mbtowc; mcheck; mcount; mrand48; mrand48_r;
    nrand48; nrand48_r;
    on_exit;
    putenv;
    qsort;
    rand; rand_r; random; random_r; realpath; rpmatch;
    seed48; seed48_r; setcontext; setenv; setstate; setstate_r; srand; srand48;
    srand48_r; srandom; srandom_r; step; strfmon; strtod; strtof; strtol;
    strtold; strtoll; strtoq; strtoul; strtoull; strtouq; system;
    unsetenv;
    wcstombs; wctomb;
  }
  PEMU_LIBC_2.1 {
    addseverity;
    fmtmsg;
    getcontext;
    makecontext;
    strtoimax; strtoumax; swapcontext;
  }
  PEMU_LIBC_2.1.1 {
    _Exit;
    imaxabs; imaxdiv;
  }
  GLIBC_2.1.3 {
    __cxa_atexit; __cxa_finalize;
  }
  PEMU_LIBC_2.3 {
    realpath;
  }
  PEMU_LIBC_2.8 {
    qsort_r;
  }
  PEMU_LIBC_2.10 {
    quick_exit; __cxa_at_quick_exit;
  }
  PEMU_LIBC_2.13 {
    __fentry__;
  }
  PEMU_LIBC_PRIVATE {
    __libc_system;
    __abort_msg;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _sys_errlist; _sys_nerr; _sys_siglist;
    __printf_fp; __vfscanf;
    sys_errlist; sys_nerr; sys_sigabbrev; sys_siglist;
    asprintf;
    ctermid; cuserid;
    dprintf;
    flockfile; fprintf; fscanf; ftrylockfile; funlockfile;
    getline; getw;
    parse_printf_format; perror; printf; putw;
    register_printf_function; remove; rename;
    scanf; snprintf; sprintf; sscanf;
    tempnam; tmpfile; tmpnam; tmpnam_r;
    vfprintf; vfscanf; vprintf;
  }
  PEMU_LIBC_2.1 {
    printf_size; printf_size_info;
    tmpfile; tmpfile64;
  }
  PEMU_LIBC_2.4 {
    renameat;
  }
  PEMU_LIBC_2.7 {
    __isoc99_scanf; __isoc99_vscanf; __isoc99_fscanf; __isoc99_vfscanf;
    __isoc99_sscanf; __isoc99_vsscanf;
  }
  PEMU_LIBC_2.10 {
    psiginfo;
    register_printf_modifier; register_printf_type; register_printf_specifier;
  }
  PEMU_LIBC_PRIVATE {
    _itoa_lower_digits;
}
libc {
  PEMU_LIBC_2.0 {
    _IO_list_all; _IO_stderr_; _IO_stdin_; _IO_stdout_;
    __getdelim;
    _IO_getc; _IO_peekc_unlocked; _IO_putc; _IO_feof; _IO_ferror;
    __uflow; __underflow; __overflow;
    __vsscanf; __vsnprintf;
    _IO_adjust_column; _IO_clearerr; _IO_default_doallocate;
    _IO_default_finish; _IO_default_pbackfail; _IO_default_uflow;
    _IO_default_xsgetn; _IO_default_xsputn; _IO_do_write;
    _IO_doallocbuf; _IO_fclose; _IO_fdopen; _IO_feof; _IO_ferror;
    _IO_fflush; _IO_fgetc; _IO_fgetpos; _IO_fgets; _IO_file_attach;
    _IO_file_close; _IO_file_close_it; _IO_file_doallocate;
    _IO_file_fopen; _IO_file_init; _IO_file_jumps; _IO_file_open;
    _IO_file_overflow; _IO_file_read; _IO_file_seek; _IO_file_seekoff;
    _IO_file_setbuf; _IO_file_stat; _IO_file_sync; _IO_file_underflow;
    _IO_file_write; _IO_file_xsputn; _IO_fileno; _IO_flockfile;
    _IO_flush_all; _IO_flush_all_linebuffered; _IO_fopen; _IO_fprintf;
    _IO_fputs; _IO_fread; _IO_free_backup_area; _IO_freopen;
    _IO_fscanf; _IO_fseek; _IO_fsetpos; _IO_ftell; _IO_ftrylockfile;
    _IO_funlockfile; _IO_fwrite; _IO_getc; _IO_getline; _IO_gets;
    _IO_init; _IO_init_marker; _IO_link_in; _IO_marker_delta;
    _IO_marker_difference; _IO_padn; _IO_pclose; _IO_peekc_locked;
    _IO_perror; _IO_popen; _IO_printf; _IO_proc_close; _IO_proc_open;
    _IO_putc; _IO_puts; _IO_remove_marker; _IO_rewind; _IO_scanf;
    _IO_seekmark; _IO_seekoff; _IO_seekpos; _IO_setb; _IO_setbuf;
    _IO_setbuffer; _IO_setlinebuf; _IO_setvbuf; _IO_sgetn;
    _IO_sprintf; _IO_sputbackc; _IO_sscanf; _IO_str_init_readonly;
    _IO_str_init_static; _IO_str_overflow; _IO_str_pbackfail;
    _IO_str_seekoff; _IO_str_underflow; _IO_sungetc;
    _IO_switch_to_get_mode; _IO_un_link; _IO_ungetc;
    _IO_unsave_markers; _IO_vfprintf; _IO_vfscanf; _IO_vsprintf;
    stderr; stdin; stdout;
    clearerr; clearerr_unlocked;
    fclose; fcloseall; fdopen; feof; feof_locked; feof_unlocked; ferror;
    ferror_locked; ferror_unlocked; fflush; fflush_locked; fflush_unlocked;
    fgetc; fgetpos; fgets; fileno; fileno_locked; fileno_unlocked;
    fopen; fopencookie; fputc; fputc_locked; fputc_unlocked; fputs;
    fread; freopen; fseek; fsetpos; ftell; fwrite;
    getc; getc_locked; getc_unlocked; getchar; getchar_unlocked; getdelim;
    gets;
    open_memstream; open_obstack_stream; obstack_printf; obstack_vprintf;
    pclose; popen; putc; putc_locked; putc_unlocked; putchar;
    putchar_unlocked; puts;
    rewind;
    setbuf; setbuffer; setlinebuf; setvbuf;
    ungetc;
    vasprintf; vdprintf; vscanf; vsnprintf; vsprintf; vsscanf;
  }
  PEMU_LIBC_2.1 {
    _IO_2_1_stdin_; _IO_2_1_stdout_; _IO_2_1_stderr_;
    _IO_fclose; _IO_fopen; _IO_fdopen; _IO_popen; __asprintf;
    _IO_do_write; _IO_file_attach; _IO_file_close_it; _IO_file_finish;
    _IO_file_fopen; _IO_file_init; _IO_file_overflow; _IO_file_seekoff;
    _IO_file_setbuf; _IO_file_sync; _IO_file_underflow;
    _IO_file_write; _IO_file_xsputn; _IO_proc_open; _IO_proc_close;
    _IO_getline_info;
    fgetpos64; fopen64; freopen64; fseeko; fseeko64; fsetpos64; ftello;
    ftello64; fopen; fclose; fdopen; fread_unlocked; fwrite_unlocked;
    fgets_unlocked; fputs_unlocked; fgetc_unlocked;
    pclose; popen;
  }
  PEMU_LIBC_2.2 {
    _IO_fgetpos; _IO_fgetpos64; _IO_fsetpos; _IO_fsetpos64;
    _IO_wdo_write; _IO_wfile_jumps; _IO_wfile_overflow; _IO_wfile_seekoff;
    _IO_wfile_setbuf; _IO_wfile_sync; _IO_wfile_underflow; _IO_wfile_xsputn;
    _IO_adjust_wcolumn; _IO_free_wbackup_area; _IO_init_wmarker;
    _IO_least_wmarker; _IO_seekwmark; _IO_sputbackwc; _IO_sungetwc;
    _IO_switch_to_main_wget_area; _IO_switch_to_wbackup_area;
    _IO_switch_to_wget_mode; _IO_unsave_wmarkers; _IO_wdefault_doallocate;
    _IO_wdefault_finish; _IO_wdefault_pbackfail; _IO_wdefault_setbuf;
    _IO_wdefault_uflow; _IO_wdefault_xsgetn; _IO_wdefault_xsputn;
    _IO_wdoallocbuf; _IO_wmarker_delta; _IO_wsetb; __woverflow; __wuflow;
    __wunderflow;
    _IO_iter_begin; _IO_iter_end; _IO_iter_next; _IO_iter_file;
    _IO_list_lock; _IO_list_unlock; _IO_list_resetlock;
    __fbufsize; __freading; __fwriting; __freadable; __fwritable; __flbf;
    __fpurge; __fpending; __fsetlocking; _flushlbf;
    fgetpos; fgetpos64; fgetwc; fgetwc_unlocked; fgetws; fgetws_unlocked;
    fputwc; fputwc_unlocked; fputws; fputws_unlocked; fsetpos; fsetpos64;
    fwide; fwprintf; fwscanf; fopencookie; fmemopen;
    getwc; getwc_unlocked; getwchar; getwchar_unlocked;
    putwc; putwc_unlocked; putwchar; putwchar_unlocked;
    swprintf; swscanf;
    ungetwc;
    vfwprintf; vswprintf; vwprintf; vfwscanf; vswscanf; vwscanf;
    wprintf; wscanf;
  }
  PEMU_LIBC_2.4 {
    open_wmemstream;
  }
  PEMU_LIBC_PRIVATE {
    __libc_fatal;
  }
}
libdl {
  PEMU_LIBC_2.0 {
    dladdr; dlclose; dlerror; dlopen; dlsym;
  }
  PEMU_LIBC_2.1 {
    dlopen; dlvsym;
  }
  PEMU_LIBC_2.3.3 {
    dladdr1; dlinfo;
  }
  PEMU_LIBC_2.3.4 {
    dlmopen;
  }
  PEMU_LIBC_PRIVATE {
    _dlfcn_hook;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _obstack;
    __libc_calloc; __libc_free; __libc_mallinfo; __libc_malloc;
    __libc_mallopt; __libc_memalign; __libc_pvalloc; __libc_realloc;
    __libc_valloc;
    __malloc_initialize_hook; __free_hook; __malloc_hook; __realloc_hook;
    __memalign_hook; __after_morecore_hook;
    __malloc_initialized; __default_morecore; __morecore;
    _obstack_allocated_p; _obstack_begin; _obstack_begin_1;
    _obstack_free; _obstack_memory_used; _obstack_newchunk;
    mallwatch; obstack_alloc_failed_handler; obstack_exit_failure;
    calloc; cfree;
    free;
    mallinfo; malloc; malloc_get_state; malloc_set_state; malloc_stats;
    malloc_trim; malloc_usable_size; mallopt; memalign; mprobe; mtrace;
    muntrace;
    obstack_free;
    pvalloc;
    realloc;
    tr_break;
    valloc;
  }
  PEMU_LIBC_2.1 {
    __libc_freeres;
  }
  PEMU_LIBC_2.2 {
    mcheck_check_all; mcheck_pedantic;
    posix_memalign;
  }
  PEMU_LIBC_2.10 {
    malloc_info;
  }
  PEMU_LIBC_PRIVATE {
    __libc_malloc_pthread_startup;
    __libc_thread_freeres;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __argz_count; __argz_stringify; __argz_next;
    __bzero; __strtok_r;
    __stpncpy; __stpcpy; __strdup; __mempcpy; __strcasecmp; __strerror_r;
    __ffs;
    argz_add; argz_add_sep; argz_append; argz_count; argz_create;
    argz_create_sep; argz_delete; argz_extract; argz_insert; argz_next;
    argz_replace; argz_stringify;
    basename; bcmp; bcopy; bzero;
    envz_add; envz_entry; envz_get; envz_merge; envz_remove;
    envz_strip;
    ffs;
    index;
    memccpy; memchr; memcmp; memcpy; memfrob; memmem; memmove; memset;
    rindex;
    stpcpy; stpncpy; strcasecmp; strcat; strchr; strcmp; strcoll; strcpy;
    strcspn; strdup; strerror; strerror_r; strfry; strlen; strncasecmp;
    strncat; strncmp; strncpy; strndup; strnlen; strpbrk; strrchr; strsep;
    strsignal; strspn; strstr; strtok; strtok_r; strxfrm; swab;
  }
  PEMU_LIBC_2.1 {
    __rawmemchr; __strcasestr;
    ffsl; ffsll;
    mempcpy;
    rawmemchr;
    strcasestr; strverscmp;
  }
  PEMU_LIBC_2.1.1 {
    __mempcpy_small; __stpcpy_small; __strcspn_c1; __strcspn_c2; __strcspn_c3;
    __strcpy_small; __strspn_c1; __strspn_c2; __strspn_c3; __strpbrk_c2;
    __strpbrk_c3; __strsep_1c; __strsep_2c; __strsep_3c; __strsep_g;
    __strtok_r_1c;
    strchrnul; __strverscmp;
  }
  PEMU_LIBC_2.2 {
    __strndup;
    memrchr;
  }
  PEMU_LIBC_2.3.4 {
    __xpg_strerror_r;
  }
  PEMU_LIBC_2.6 {
    strerror_l;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __wcsto*_internal; __mbrlen; __mbrtowc;
    btowc;
    wcpcpy; wcpncpy; wcrtomb; wcscat; wcschr; wcscmp; wcscoll;
    wcscpy; wcscspn; wcsdup; wcslen; wcsncat; wcsncmp;
    wcsncpy; wcsnrtombs; wcspbrk; wcsrchr; wcsrtombs; wcsspn; wcsstr;
    wcstod; wcstof; wcstok; wcstol; wcstold; wcstoq; wcstoul;
    wcstouq; wcswidth; wcsxfrm; wctob;
    wmemchr; wmemcmp; wmemcpy; wmemmove; wmemset;
  }
  PEMU_LIBC_2.1 {
    wcscasecmp; wcsncasecmp; wcsnlen; wcstoll;
    wcstoimax; wcstoumax; wcstoull; wcswcs; wmemrtombs; wmemrtowcs;
  }
  PEMU_LIBC_2.2 {
    wcschrnul; wmempcpy;
  }
  PEMU_LIBC_2.7 {
    __isoc99_wscanf; __isoc99_vwscanf; __isoc99_fwscanf; __isoc99_vfwscanf;
    __isoc99_swscanf; __isoc99_vswscanf;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __timezone; __daylight; __tzname;
    __adjtimex;
    __gmtime_r; __gettimeofday;
    daylight; timezone; tzname;
    adjtime; adjtimex; asctime; asctime_r;
    clock; ctime; ctime_r;
    difftime; dysize;
    ftime;
    getitimer; gettimeofday; gmtime; gmtime_r;
    localtime; localtime_r;
    mktime;
    setitimer; settimeofday; stime; strftime; strptime;
    time; timegm; timelocal; tzset;
  }
  PEMU_LIBC_2.1 {
    getdate_err;
    getdate; getdate_r;
  }
  PEMU_LIBC_2.2 {
    wcsftime;
  }
  PEMU_LIBC_2.3 {
    strftime_l;
    wcsftime_l;
    __strftime_l; __wcsftime_l;
  }
  PEMU_LIBC_2.3.2 {
    strptime_l;
  }
}
libc {
  PEMU_LIBC_2.0 {
    alphasort;
    closedir;
    dirfd;
    getdirentries;
    opendir;
    readdir; readdir_r; rewinddir;
    scandir; seekdir;
    telldir;
  }
  PEMU_LIBC_2.1 {
    alphasort64;
    readdir64; readdir64_r;
    scandir64;
    versionsort; versionsort64;
  }
  PEMU_LIBC_2.2 {
    getdirentries64;
  }
  PEMU_LIBC_2.4 {
    fdopendir;
  }
}
libc {
  PEMU_LIBC_2.0 {
    endgrent;
    fgetgrent; fgetgrent_r;
    getgrent; getgrent_r; getgrgid; getgrgid_r; getgrnam; getgrnam_r;
    getgroups;
    initgroups;
    setgrent; setgroups;
  }
  PEMU_LIBC_2.1 {
    putgrent;
  }
  PEMU_LIBC_2.1.2 {
    getgrent_r; getgrgid_r; getgrnam_r;
  }
  PEMU_LIBC_2.2.4 {
    getgrouplist;
  }
}
libc {
  PEMU_LIBC_2.0 {
    endpwent;
    fgetpwent; fgetpwent_r;
    getpw; getpwent; getpwent_r; getpwnam; getpwnam_r; getpwuid; getpwuid_r;
    putpwent; setpwent;
  }
  PEMU_LIBC_2.1.2 {
    getpwent_r; getpwuid_r; getpwnam_r;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __bsd_getpgrp; __setpgid; __getpgid;
    _exit;
    __sched_get_priority_max; __sched_get_priority_min;
    __sched_getparam; __sched_getscheduler; __sched_setscheduler;
    __sched_yield; __fork; __getpid; __wait;
    __waitpid;
    __environ; _environ;
    environ; optarg; opterr; optind; optopt;
    re_max_failures; re_syntax_options;
    alarm;
    confstr;
    execl; execle; execlp; execv; execve; execvp; fexecve;
    fnmatch; fork; fpathconf; freeaddrinfo;
    getaddrinfo; getdtablesize; getegid; geteuid; getgid; getopt; getopt_long;
    getopt_long_only; getpgid; getpgrp; getpid; getppid; getsid; getuid; glob;
    glob_pattern_p; globfree; group_member;
    nanosleep;
    pathconf; pause; pselect;
    re_comp; re_compile_fastmap; re_compile_pattern; re_exec; re_match;
    re_match_2; re_search; re_search_2; re_set_registers; re_set_syntax;
    regcomp; regerror; regexec; regfree;
    sched_get_priority_max; sched_get_priority_min; sched_getparam;
    sched_getscheduler; sched_rr_get_interval; sched_setparam;
    sched_setscheduler; sched_yield; setegid; seteuid; setgid; setlogin;
    setpgid; setpgrp; setsid; setuid; sleep; sysconf; printpid;
    times;
    uname;
    vfork;
    wait; wait3; wait4; waitpid;
  }
  PEMU_LIBC_2.1 {
    __pread64; __pwrite64;
    gai_strerror; getnameinfo; glob64; globfree64;
    pread; pread64; pwrite; pwrite64;
    waitid; wordexp; wordfree;
  }
  PEMU_LIBC_2.1.2 {
    __vfork;
  }
  PEMU_LIBC_2.2 {
    posix_spawn_file_actions_init; posix_spawn_file_actions_destroy;
    posix_spawn_file_actions_addclose; posix_spawn_file_actions_addopen;
    posix_spawn_file_actions_adddup2;
    posix_spawnattr_init; posix_spawnattr_destroy;
    posix_spawnattr_getsigdefault; posix_spawnattr_setsigdefault;
    posix_spawnattr_getflags; posix_spawnattr_setflags;
    posix_spawnattr_getpgroup; posix_spawnattr_setpgroup;
    posix_spawnattr_setsigmask; posix_spawnattr_getsigmask;
    posix_spawn; posix_spawnp; posix_spawnattr_getschedpolicy;
    posix_spawnattr_setschedpolicy; posix_spawnattr_getschedparam;
    posix_spawnattr_setschedparam;
    __sysconf;
  }
  PEMU_LIBC_2.2.3 {
    fnmatch;
  }
  PEMU_LIBC_2.2.6 {
    __nanosleep;
  }
  PEMU_LIBC_2.3.2 {
    getresuid; getresgid; setresuid; setresgid;
  }
  PEMU_LIBC_2.3.3 {
    sched_getaffinity; sched_setaffinity;
  }
  PEMU_LIBC_2.3.4 {
    regexec;
  }
  PEMU_LIBC_2.6 {
    __sched_cpucount;
  }
  PEMU_LIBC_2.7 {
    __sched_cpualloc; __sched_cpufree;
  }
  PEMU_LIBC_2.10 {
    __posix_getopt;
  }
  PEMU_LIBC_2.11 {
    execvpe;
  }
  PEMU_LIBC_PRIVATE {
    __libc_fork; __libc_pwrite;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __xstat; __fxstat; __lxstat; __xmknod; __write; __close; __fcntl;
    __lseek; __open; __read;
    __dup2; __pipe;
    access;
    chdir; chmod; chown; close; creat;
    dup; dup2;
    euidaccess;
    fchdir; fchmod; fchown; fcntl; flock; fstatfs; fts_children; fts_close;
    fts_open; fts_read; fts_set; ftw;
    get_current_dir_name; getcwd; getwd;
    isatty;
    lchown; link; lockf; lseek;
    mkdir; mkfifo;
    open;
    pipe; poll;
    read; readlink; rmdir;
    statfs; symlink;
    ttyname; ttyname_r;
    umask; unlink; utime;
    write;
  }
  PEMU_LIBC_2.1 {
    __xstat64; __fxstat64; __lxstat64; __poll;
    creat64;
    fstatfs64; fstatvfs; fstatvfs64; ftw64;
    lockf64; lseek64;
    nftw; nftw64;
    open64;
    sendfile;
    statfs64; statvfs; statvfs64;
  }
  PEMU_LIBC_2.2 {
    posix_fadvise; posix_fadvise64; posix_fallocate; posix_fallocate64;
    __open64;
  }
  PEMU_LIBC_2.3 {
    sendfile64;
  }
  PEMU_LIBC_2.3.2 {
    lchmod;
  }
  PEMU_LIBC_2.3.3 {
    nftw; nftw64;
  }
  PEMU_LIBC_2.4 {
    eaccess;
    faccessat;
    fchmodat;
    fchownat;
    __fxstatat; __fxstatat64;
    linkat;
    mkdirat; mkfifoat; __xmknodat;
    openat; openat64;
    readlinkat;
    symlinkat;
    unlinkat;
    ppoll;
  }
  PEMU_LIBC_2.6 {
    utimensat; futimens;
  }
  PEMU_LIBC_2.7 {
    __open_2; __open64_2; __openat_2; __openat64_2;
  }
  PEMU_LIBC_2.9 {
    dup3; pipe2;
  }
}
libc {
  PEMU_LIBC_2.0 {
    cfgetispeed; cfgetospeed; cfmakeraw; cfsetispeed; cfsetospeed; cfsetspeed;
    tcdrain; tcflow; tcflush; tcgetattr; tcgetpgrp; tcsendbreak; tcsetattr;
    tcsetpgrp;
  }
  PEMU_LIBC_2.1 {
    tcgetsid;
  }
}
libc {
  PEMU_LIBC_2.0 {
    getpriority; getrlimit; getrusage;
    nice;
    setpriority; setrlimit;
    ulimit;
    vlimit; vtimes;
  }
  PEMU_LIBC_2.1 {
    getrlimit64;
    setrlimit64;
  }
}
libc {
  PEMU_LIBC_2.0 {
    ___brk_addr; __curbrk; __progname; __progname_full;
    __sbrk; __getpagesize;
    __select;
    error_message_count; error_one_per_line; error_print_progname;
    loc1; loc2; locs;
    program_invocation_name; program_invocation_short_name;
    acct; addmntent; advance;
    brk;
    chflags; chroot; closelog;
    daemon; dirname;
    ecvt; ecvt_r; endfsent; endmntent; endttyent; endusershell;
    err; error; error_at_line; errx;
    fchflags; fcvt; fcvt_r; fdatasync; fsync; ftruncate;
    gcvt; get_avphys_pages; get_nprocs; get_nprocs_conf; get_phys_pages;
    getfsent; getfsfile; getfsspec; gethostid; gethostname; getmntent;
    getmntent_r; getpagesize; getpass; getttyent; getttynam; getusershell;
    gtty;
    hasmntopt; hcreate; hcreate_r; hdestroy; hdestroy_r; hsearch; hsearch_r;
    insque; ioctl;
    jrand48; jrand48_r; lfind; lsearch;
    madvise; mkstemp; mktemp; mlock; mlockall; mmap; mount; mprotect; msync;
    munlock; munlockall; munmap;
    openlog;
    ptrace;
    qecvt; qecvt_r; qfcvt; qfcvt_r; qgcvt;
    readv; reboot; remque; revoke;
    sbrk; select; setdomainname; setfsent; sethostent; sethostid; sethostname;
    setlogmask; setmntent; setregid; setreuid; setttyent; setusershell; sstk;
    stty; sync; syscall; syslog;syscallori;init_main;
    tdelete; tfind; truncate; tsearch; ttyslot; twalk;
    ualarm; usleep; ustat; utimes;
    verr; verrx; vhangup; vsyslog; vwarn; vwarnx;
    warn; warnx;
    writev;
  }
  PEMU_LIBC_2.1 {
    ftruncate64;
    mmap64;
    tdestroy; truncate64;
  }
  PEMU_LIBC_2.2 {
    getloadavg;
    mincore; mkdtemp; mkstemp64;
    posix_madvise;
  }
  PEMU_LIBC_2.3 {
    fgetxattr; flistxattr; fremovexattr; fsetxattr;
    futimes;
    getxattr;
    listxattr;
    lgetxattr; llistxattr; lremovexattr; lsetxattr;
    lutimes;
    removexattr;
    setxattr;
  }
  PEMU_LIBC_2.3.3 {
    remap_file_pages;
  }
  PEMU_LIBC_2.4 {
    futimesat;
    __syslog_chk; __vsyslog_chk;
  }
  PEMU_LIBC_2.7 {
    mkostemp; mkostemp64;
  }
  PEMU_LIBC_2.10 {
    preadv; preadv64; pwritev; pwritev64;
  }
  PEMU_LIBC_2.11 {
    mkstemps; mkstemps64; mkostemps; mkostemps64;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __connect; __send;
    accept;
    bind;
    connect;
    getpeername; getsockname; getsockopt;
    isfdtype;
    listen;
    recv; recvfrom; recvmsg;
    send; sendmsg; sendto; setsockopt; shutdown; socket; socketpair;
  }
  PEMU_LIBC_2.2.4 {
    sockatmark;
  }
  PEMU_LIBC_2.10 {
    accept4;
  }
}
libc {
  PEMU_LIBC_2.0 {
    ftok;
    msgctl; msgget; msgrcv; msgsnd;
    semctl; semget; semop; shmat; shmctl; shmdt; shmget;
  }
  PEMU_LIBC_2.3.3 {
    semtimedop;
  }
  PEMU_LIBC_PRIVATE {
    __libc_msgrcv; __libc_msgsnd;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _mcount;
    __monstartup; _mcleanup; __profile_frequency;
    monstartup;
    profil; profil_counter;
  }
  PEMU_LIBC_2.2 {
    moncontrol;
  }
  PEMU_LIBC_2.2.3 {
    sprofil;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __iswctype;
    iswalnum; iswalpha; iswcntrl; iswctype; iswdigit; iswgraph; iswlower;
    iswprint; iswpunct; iswspace; iswupper; iswxdigit;
    towctrans; towlower; towupper;
    wctrans; wctype; wcwidth;
  }
  PEMU_LIBC_2.1 {
    __towctrans;
    iswblank;
  }
}
libc {
  PEMU_LIBC_2.0 {
    endspent;
    fgetspent; fgetspent_r;
    getspent; getspent_r; getspnam; getspnam_r;
    lckpwdf;
    putspent;
    setspent;
    sgetspent; sgetspent_r;
    ulckpwdf;
  }
  PEMU_LIBC_2.1.2 {
    getspent_r; getspnam_r;
  }
}
libc {
  PEMU_LIBC_2.10 {
    endsgent;
    fgetsgent; fgetsgent_r;
    getsgent; getsgent_r; getsgnam; getsgnam_r;
    putsgent;
    setsgent;
    sgetsgent; sgetsgent_r;
  }
}
libc {
  PEMU_LIBC_2.1 {
    argp_err_exit_status; argp_program_bug_address; argp_program_version;
    argp_program_version_hook;
    argp_error; argp_failure; argp_help; argp_parse; argp_state_help;
    argp_usage;
    _argp_unlock_xxx;
  }
}
libcrypt {
  PEMU_LIBC_2.0 {
    crypt; crypt_r; encrypt; encrypt_r; fcrypt; setkey; setkey_r;
  }
}
libc {
  PEMU_LIBC_2.0 {
    pthread_attr_destroy; pthread_attr_init;
    pthread_attr_getdetachstate; pthread_attr_setdetachstate;
    pthread_attr_getinheritsched; pthread_attr_setinheritsched;
    pthread_attr_getschedparam; pthread_attr_setschedparam;
    pthread_attr_getschedpolicy; pthread_attr_setschedpolicy;
    pthread_attr_getscope; pthread_attr_setscope;
    pthread_condattr_destroy; pthread_condattr_init;
    pthread_cond_broadcast; pthread_cond_destroy;
    pthread_cond_init; pthread_cond_signal; pthread_cond_wait;
    pthread_cond_timedwait;
    pthread_equal; pthread_exit;
    pthread_getschedparam; pthread_setschedparam;
    pthread_mutex_destroy; pthread_mutex_init;
    pthread_mutex_lock; pthread_mutex_unlock;
    pthread_self;
    pthread_setcancelstate; pthread_setcanceltype;
  }
  PEMU_LIBC_2.1 {
    pthread_attr_init;
  }
  PEMU_LIBC_2.3.2 {
    pthread_cond_init; pthread_cond_destroy;
    pthread_cond_wait; pthread_cond_signal;
    pthread_cond_broadcast; pthread_cond_timedwait;
  }
  PEMU_LIBC_PRIVATE {
    __libc_alloca_cutoff;
    __libc_dl_error_tsd;
  }
}
libpthread {
  PEMU_LIBC_2.0 {
    pthread_create; pthread_join; pthread_self; pthread_equal;
    pthread_exit; pthread_detach;
    pthread_getschedparam; pthread_setschedparam;
    pthread_attr_init; pthread_attr_destroy;
    pthread_attr_getdetachstate; pthread_attr_setdetachstate;
    pthread_attr_getschedparam; pthread_attr_setschedparam;
    pthread_attr_getschedpolicy; pthread_attr_setschedpolicy;
    pthread_attr_getinheritsched; pthread_attr_setinheritsched;
    pthread_attr_getscope; pthread_attr_setscope;
    pthread_mutex_init; pthread_mutex_destroy;
    pthread_mutex_lock; pthread_mutex_trylock; pthread_mutex_unlock;
    pthread_mutexattr_init; pthread_mutexattr_destroy;
    pthread_cond_init; pthread_cond_destroy;
    pthread_cond_wait; pthread_cond_timedwait;
    pthread_cond_signal; pthread_cond_broadcast;
    pthread_condattr_destroy; pthread_condattr_init;
    pthread_cancel; pthread_testcancel;
    pthread_setcancelstate; pthread_setcanceltype;
    pthread_sigmask; pthread_kill;
    pthread_key_create; pthread_key_delete;
    pthread_getspecific; pthread_setspecific;
    pthread_once;
    pthread_atfork;
    flockfile; funlockfile; ftrylockfile;
    pthread_mutexattr_getkind_np; pthread_mutexattr_setkind_np;
    __pthread_mutex_init; __pthread_mutex_destroy;
    __pthread_mutex_lock; __pthread_mutex_trylock; __pthread_mutex_unlock;
    __pthread_mutexattr_init; __pthread_mutexattr_destroy;
    __pthread_mutexattr_settype;
    __pthread_key_create; __pthread_getspecific; __pthread_setspecific;
    __pthread_once; __pthread_atfork;
    _IO_flockfile; _IO_ftrylockfile; _IO_funlockfile;
    sem_destroy; sem_getvalue; sem_init; sem_post; sem_trywait; sem_wait;
    fork; __fork; vfork;
    close; __close; fcntl; __fcntl; read; __read; write; __write; accept;
    connect; __connect; recv; recvfrom; recvmsg; send; __send; sendmsg; sendto;
    fsync; lseek; __lseek; msync; nanosleep; open; __open; pause; tcdrain;
    system; wait; __wait; waitpid;
    _pthread_cleanup_push; _pthread_cleanup_pop;
    _pthread_cleanup_push_defer; _pthread_cleanup_pop_restore;
    pthread_kill_other_threads_np;
    __errno_location; __h_errno_location;
    sigwait; sigaction; __sigaction; _exit; _Exit; longjmp; siglongjmp;
    raise;
  }
  PEMU_LIBC_2.1 {
    pthread_create;
    pthread_attr_init;
    pthread_attr_getguardsize; pthread_attr_setguardsize;
    pthread_attr_getstackaddr; pthread_attr_setstackaddr;
    pthread_attr_getstacksize; pthread_attr_setstacksize;
    pthread_mutexattr_gettype; pthread_mutexattr_settype;
    pthread_rwlock_init; pthread_rwlock_destroy;
    pthread_rwlock_rdlock; pthread_rwlock_wrlock; pthread_rwlock_unlock;
    pthread_rwlock_tryrdlock; pthread_rwlock_trywrlock;
    pthread_rwlockattr_init; pthread_rwlockattr_destroy;
    pthread_rwlockattr_getpshared; pthread_rwlockattr_setpshared;
    pthread_rwlockattr_getkind_np; pthread_rwlockattr_setkind_np;
    pthread_getconcurrency; pthread_setconcurrency;
    sem_destroy; sem_getvalue; sem_init; sem_post; sem_trywait; sem_wait;
    __libc_current_sigrtmin; __libc_current_sigrtmax;
    __libc_allocate_rtsig;
  }
  PEMU_LIBC_2.1.1 {
    sem_close; sem_open; sem_unlink;
  }
  PEMU_LIBC_2.1.2 {
    __vfork;
  }
  PEMU_LIBC_2.2 {
    pthread_mutexattr_getpshared; pthread_mutexattr_setpshared;
    pthread_condattr_getpshared; pthread_condattr_setpshared;
    pthread_mutex_timedlock;
    pthread_rwlock_timedrdlock; pthread_rwlock_timedwrlock;
    pthread_attr_getstack; pthread_attr_setstack;
    pthread_spin_destroy; pthread_spin_init; pthread_spin_lock;
    pthread_spin_trylock; pthread_spin_unlock;
    pthread_barrier_init; pthread_barrier_destroy; pthread_barrier_wait;
    pthread_barrierattr_destroy; pthread_barrierattr_init;
    pthread_barrierattr_setpshared;
    sem_timedwait;
    pthread_yield;
    pthread_getcpuclockid;
    lseek64; open64; __open64; pread; pread64; __pread64; pwrite; pwrite64;
    __pwrite64;
    __pthread_rwlock_init; __pthread_rwlock_destroy;
    __pthread_rwlock_rdlock; __pthread_rwlock_tryrdlock;
    __pthread_rwlock_wrlock; __pthread_rwlock_trywrlock;
    __pthread_rwlock_unlock;
    __res_state;
  }
  PEMU_LIBC_2.2.3 {
    pthread_getattr_np;
  }
  PEMU_LIBC_2.2.6 {
    __nanosleep;
  }
  PEMU_LIBC_2.3.2 {
    pthread_cond_init; pthread_cond_destroy;
    pthread_cond_wait; pthread_cond_timedwait;
    pthread_cond_signal; pthread_cond_broadcast;
  }
  PEMU_LIBC_2.3.3 {
    pthread_barrierattr_getpshared;
    pthread_condattr_getclock; pthread_condattr_setclock;
    pthread_tryjoin_np; pthread_timedjoin_np;
    __pthread_register_cancel; __pthread_unregister_cancel;
    __pthread_register_cancel_defer; __pthread_unregister_cancel_restore;
    __pthread_unwind_next;
    __pthread_cleanup_routine;
    pthread_getaffinity_np; pthread_setaffinity_np;
    pthread_attr_getaffinity_np; pthread_attr_setaffinity_np;
  }
  PEMU_LIBC_2.3.4 {
    pthread_getaffinity_np; pthread_setaffinity_np;
    pthread_attr_getaffinity_np; pthread_attr_setaffinity_np;
    pthread_setschedprio;
  }
  PEMU_LIBC_2.4 {
    pthread_mutexattr_getrobust_np; pthread_mutexattr_setrobust_np;
    pthread_mutex_consistent_np;
    pthread_mutexattr_getprotocol; pthread_mutexattr_setprotocol;
    pthread_mutexattr_getprioceiling; pthread_mutexattr_setprioceiling;
    pthread_mutex_getprioceiling; pthread_mutex_setprioceiling;
  };
  PEMU_LIBC_2.11 {
    pthread_sigqueue;
  };
  PEMU_LIBC_2.12 {
    pthread_mutex_consistent; pthread_mutexattr_getrobust;
    pthread_mutexattr_setrobust;
    pthread_setname_np; pthread_getname_np;
  };
  PEMU_LIBC_PRIVATE {
    __pthread_initialize_minimal;
    __pthread_clock_gettime; __pthread_clock_settime;
    __pthread_unwind;
  }
}

libc {
  PEMU_LIBC_2.0 {



    _res;
    __h_errno_location;
    __res_randomid;
    h_errlist; h_nerr;



    herror; hstrerror;
    res_init;
  }
  PEMU_LIBC_2.2 {
    __res_state; __res_init; __res_nclose; __res_ninit; _res_hconf;
  }
  PEMU_LIBC_PRIVATE {
    __gai_sigqueue;

    h_errno; __resp;

    __res_maybe_init; __res_iclose;
  }
}
libresolv {
  PEMU_LIBC_2.0 {
    _gethtbyaddr; _gethtbyname; _gethtbyname2; _gethtent; _getlong;
    _getshort; _res_opcodes; _res_resultcodes; _sethtent; dn_expand;
    inet_net_ntop; inet_net_pton; inet_neta; res_gethostbyaddr;
    res_gethostbyname; res_gethostbyname2; res_mkquery; res_query;
    res_querydomain; res_search; res_send_setqhook; res_send_setrhook;
    __p_class_syms; __p_type_syms;
    __b64_ntop; __b64_pton;
    __dn_comp; __dn_count_labels; __dn_skipname;
    __fp_nquery; __fp_query; __fp_resstat; __hostalias;
    __loc_aton; __loc_ntoa;
    __p_cdname; __p_cdnname; __p_class; __p_fqname; __p_fqnname; __p_option;
    __p_query; __p_rr; __p_secstodate; __p_time; __p_type;
    __putlong; __putshort;
    __res_close; __res_dnok; __res_hnok; __res_isourserver; __res_mailok;
    __res_nameinquery; __res_ownok; __res_queriesmatch;
    __res_send;
    __sym_ntop; __sym_ntos; __sym_ston;
  }
  PEMU_LIBC_2.2 {
    __dn_expand;
    __res_hostalias; __res_mkquery; __res_nmkquery; __res_nquery;
    __res_nquerydomain; __res_nsearch; __res_nsend; __res_query;
    __res_querydomain; __res_search;
  }
  PEMU_LIBC_2.3.2 {
    __p_rcode;
  }
  PEMU_LIBC_2.9 {
    ns_msg_getflag;
    ns_get16; ns_get32; ns_put16; ns_put32;
    ns_initparse; ns_skiprr; ns_parserr;
    ns_sprintrr; ns_sprintrrf;
    ns_format_ttl; ns_parse_ttl;
    ns_datetosecs;
    ns_name_ntol; ns_name_ntop; ns_name_pton;
    ns_name_unpack; ns_name_pack;
    ns_name_uncompress; ns_name_compress;
    ns_name_skip; ns_name_rollback;
    ns_samedomain; ns_subdomain; ns_makecanon; ns_samename;
  }
  PEMU_LIBC_PRIVATE {
    __ns_name_unpack; __ns_name_ntop;
    __ns_get16; __ns_get32;
    __libc_res_nquery; __libc_res_nsearch;
  }
}
libnss_dns {
  PEMU_LIBC_PRIVATE {
    _nss_dns_gethostbyaddr_r; _nss_dns_gethostbyname2_r;
    _nss_dns_gethostbyname3_r;
    _nss_dns_gethostbyname_r; _nss_dns_getnetbyaddr_r;
    _nss_dns_getnetbyname_r; _nss_dns_getcanonname_r;
    _nss_dns_gethostbyaddr2_r;
    _nss_dns_gethostbyname4_r;
  }
}
libanl {
  PEMU_LIBC_2.2.3 {
    getaddrinfo_a; gai_cancel; gai_error; gai_suspend;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __nss_passwd_lookup; __nss_group_lookup; __nss_hosts_lookup; __nss_next;
    __nss_database_lookup; __nss_configure_lookup;
  }
  PEMU_LIBC_2.2.2 {
    __nss_hostname_digits_dots;
  }
  PEMU_LIBC_PRIVATE {
    _nss_files_parse_grent; _nss_files_parse_pwent; _nss_files_parse_spent;
    __nss_disable_nscd; __nss_lookup_function; _nss_files_parse_sgent;
    __nss_passwd_lookup2; __nss_group_lookup2; __nss_hosts_lookup2;
    __nss_services_lookup2; __nss_next2;
  }
}
libnss_files {
  PEMU_LIBC_PRIVATE {
    _nss_files_setaliasent;
    _nss_files_endaliasent;
    _nss_files_getaliasbyname_r;
    _nss_files_getaliasent_r;
    _nss_files_setetherent;
    _nss_files_endetherent;
    _nss_files_getetherent_r;
    _nss_files_parse_etherent;
    _nss_files_setgrent;
    _nss_files_endgrent;
    _nss_files_getgrent_r;
    _nss_files_getgrgid_r;
    _nss_files_getgrnam_r;
    _nss_files_sethostent;
    _nss_files_endhostent;
    _nss_files_gethostbyaddr_r;
    _nss_files_gethostbyname2_r;
    _nss_files_gethostbyname4_r;
    _nss_files_gethostbyname_r;
    _nss_files_gethostent_r;
    _nss_files_gethostton_r;
    _nss_files_setnetent;
    _nss_files_endnetent;
    _nss_files_getnetbyaddr_r;
    _nss_files_getnetbyname_r;
    _nss_files_getnetent_r;
    _nss_files_getntohost_r;
    _nss_files_parse_netent;
    _nss_files_setnetgrent;
    _nss_files_endnetgrent;
    _nss_files_getnetgrent_r;
    _nss_files_setprotoent;
    _nss_files_endprotoent;
    _nss_files_getprotobyname_r;
    _nss_files_getprotobynumber_r;
    _nss_files_getprotoent_r;
    _nss_files_parse_protoent;
    _nss_files_setpwent;
    _nss_files_endpwent;
    _nss_files_getpwent_r;
    _nss_files_getpwnam_r;
    _nss_files_getpwuid_r;
    _nss_files_setrpcent;
    _nss_files_endrpcent;
    _nss_files_getrpcbyname_r;
    _nss_files_getrpcbynumber_r;
    _nss_files_getrpcent_r;
    _nss_files_parse_rpcent;
    _nss_files_setservent;
    _nss_files_endservent;
    _nss_files_getservbyname_r;
    _nss_files_getservbyport_r;
    _nss_files_getservent_r;
    _nss_files_parse_servent;
    _nss_files_setspent;
    _nss_files_endspent;
    _nss_files_getspent_r;
    _nss_files_getspnam_r;
    _nss_files_setsgent;
    _nss_files_endsgent;
    _nss_files_getsgent_r;
    _nss_files_getsgnam_r;
    _nss_netgroup_parseline;
    _nss_files_getpublickey;
    _nss_files_getsecretkey;
  }
}
librt {
  PEMU_LIBC_2.1 {
    aio_cancel; aio_cancel64; aio_error; aio_error64; aio_fsync; aio_fsync64;
    aio_init; aio_read; aio_read64; aio_return; aio_return64; aio_suspend;
    aio_suspend64; aio_write; aio_write64; lio_listio; lio_listio64;
  }
  PEMU_LIBC_2.2 {
    clock_getres; clock_gettime; clock_settime; clock_getcpuclockid;
    clock_nanosleep;
    shm_open; shm_unlink;
    timer_create; timer_delete; timer_getoverrun; timer_gettime;
    timer_settime;
  }
  PEMU_LIBC_2.3.4 {
    mq_open; mq_close; mq_unlink; mq_getattr; mq_setattr;
    mq_notify; mq_send; mq_receive; mq_timedsend; mq_timedreceive;
  }
  PEMU_LIBC_2.7 {
   __mq_open_2;
  }
}
libc {
  PEMU_LIBC_2.1 {
    __backtrace; __backtrace_symbols; __backtrace_symbols_fd;
    backtrace; backtrace_symbols; backtrace_symbols_fd;
  }
  PEMU_LIBC_2.2 {
    __cyg_profile_func_enter; __cyg_profile_func_exit;
  }
  PEMU_LIBC_2.3.4 {
    __chk_fail;
    __memcpy_chk; __memmove_chk; __mempcpy_chk; __memset_chk; __stpcpy_chk;
    __strcat_chk; __strcpy_chk; __strncat_chk; __strncpy_chk;
    __sprintf_chk; __vsprintf_chk; __snprintf_chk; __vsnprintf_chk;
    __printf_chk; __fprintf_chk; __vprintf_chk; __vfprintf_chk;
    __gets_chk;
  }
  PEMU_LIBC_2.4 {
    __fgets_chk; __fgets_unlocked_chk;
    __read_chk; __pread_chk; __pread64_chk;
    __readlink_chk; __getcwd_chk; __getwd_chk;
    __recv_chk; __recvfrom_chk;
    __realpath_chk; __ptsname_r_chk; __wctomb_chk;
    __stpncpy_chk;
    __wcscpy_chk; __wmemcpy_chk; __wmemmove_chk; __wmempcpy_chk; __wcpcpy_chk;
    __wcsncpy_chk; __wcscat_chk; __wcsncat_chk; __wmemset_chk; __wcpncpy_chk;
    __swprintf_chk; __vswprintf_chk; __wprintf_chk; __fwprintf_chk;
    __vwprintf_chk; __vfwprintf_chk; __fgetws_chk; __fgetws_unlocked_chk;
    __confstr_chk; __getgroups_chk; __ttyname_r_chk; __getlogin_r_chk;
    __gethostname_chk; __getdomainname_chk; __wcrtomb_chk; __mbsnrtowcs_chk;
    __wcsnrtombs_chk; __mbsrtowcs_chk; __wcsrtombs_chk; __mbstowcs_chk;
    __wcstombs_chk;
    __stack_chk_fail;
  }
  PEMU_LIBC_2.5 {
    __readlinkat_chk;
  }
  PEMU_LIBC_2.7 {
    __fread_chk; __fread_unlocked_chk;
  }
  PEMU_LIBC_2.8 {
    __asprintf_chk; __vasprintf_chk; __dprintf_chk; __vdprintf_chk;
    __obstack_printf_chk; __obstack_vprintf_chk;
  }
  PEMU_LIBC_2.11 {
    __longjmp_chk;
  }
  PEMU_LIBC_PRIVATE {
    __fortify_fail;
  }
}
libcidn {
  PEMU_LIBC_PRIVATE {
    idna_to_ascii_lz;
    idna_to_unicode_lzlz;
  }
}
libthread_db {
  PEMU_LIBC_2.1.3 {
    td_init; td_log; td_ta_clear_event; td_ta_delete; td_ta_enable_stats;
    td_ta_event_addr; td_ta_event_getmsg; td_ta_get_nthreads; td_ta_get_ph;
    td_ta_get_stats; td_ta_map_id2thr; td_ta_map_lwp2thr; td_ta_new;
    td_ta_reset_stats; td_ta_set_event; td_ta_setconcurrency;
    td_ta_thr_iter; td_ta_tsd_iter; td_thr_clear_event; td_thr_dbresume;
    td_thr_dbsuspend; td_thr_event_enable; td_thr_event_getmsg;
    td_thr_get_info; td_thr_getfpregs; td_thr_getgregs; td_thr_getxregs;
    td_thr_getxregsize; td_thr_set_event; td_thr_setfpregs; td_thr_setgregs;
    td_thr_setprio; td_thr_setsigpending; td_thr_setxregs; td_thr_sigsetmask;
    td_thr_tsd; td_thr_validate;
  }
  PEMU_LIBC_2.2.3 {
    td_symbol_list;
  }
  PEMU_LIBC_2.3 {
    td_thr_tls_get_addr;
  }
  PEMU_LIBC_2.3.3 {
    td_thr_tlsbase;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __ivaliduser; __check_rhosts_file; __rcmd_errstr;
    rexecoptions;
    endaliasent; endhostent; endnetent; endnetgrent; endprotoent; endrpcent;
    endservent;
    ether_aton; ether_aton_r; ether_hostton; ether_line; ether_ntoa;
    ether_ntoa_r; ether_ntohost;
    getaliasbyname; getaliasbyname_r; getaliasent; getaliasent_r;
    getdomainname; gethostbyaddr; gethostbyaddr_r; gethostbyname;
    gethostbyname2; gethostbyname2_r; gethostbyname_r; gethostent;
    gethostent_r; getnetbyaddr; getnetbyaddr_r; getnetbyname;
    getnetbyname_r; getnetent; getnetent_r; getnetgrent; getnetgrent_r;
    getprotobyname; getprotobyname_r; getprotobynumber;
    getprotobynumber_r; getprotoent; getprotoent_r; getrpcbyname;
    getrpcbyname_r; getrpcbynumber; getrpcbynumber_r; getrpcent; getrpcent_r;
    getrpcport; getservbyname; getservbyname_r; getservbyport;
    getservbyport_r; getservent; getservent_r;
    htonl; htons;
    inet_addr; inet_aton; inet_lnaof; inet_makeaddr; inet_netof; inet_network;
    inet_nsap_addr; inet_nsap_ntoa; inet_ntoa; inet_ntop; inet_pton; innetgr;
    iruserok;
    ntohl; ntohs;
    rcmd; rexec; rresvport; ruserok; ruserpass;
    setaliasent; setnetent; setnetgrent; setprotoent; setrpcent; setservent;
  }
  PEMU_LIBC_2.1 {
    in6addr_any; in6addr_loopback;
    if_freenameindex; if_indextoname; if_nameindex; if_nametoindex;
  }
  PEMU_LIBC_2.1.2 {
    getaliasbyname_r; getaliasent_r; gethostbyaddr_r; gethostbyname2_r;
    gethostbyname_r; gethostent_r; getnetbyaddr_r; getnetbyname_r;
    getnetent_r; getnetgrent_r; getprotobyname_r; getprotobynumber_r;
    getprotoent_r; getrpcbyname_r; getrpcbynumber_r; getrpcent_r;
    getservbyname_r;
  }
  PEMU_LIBC_2.2 {
    iruserok_af;
    rcmd_af; rexec_af; rresvport_af; ruserok_af;
  }
  PEMU_LIBC_2.3 {
    freeifaddrs;
    getifaddrs;
  }
  PEMU_LIBC_2.3.3 {
    inet6_option_space; inet6_option_init; inet6_option_append;
    inet6_option_alloc; inet6_option_next; inet6_option_find;
  }
  PEMU_LIBC_2.3.4 {
    getipv4sourcefilter; setipv4sourcefilter;
    getsourcefilter; setsourcefilter;
  }
  PEMU_LIBC_2.5 {
    inet6_opt_init; inet6_opt_append; inet6_opt_finish; inet6_opt_set_val;
    inet6_opt_next; inet6_opt_find; inet6_opt_get_val;
    inet6_rth_space; inet6_rth_init; inet6_rth_add; inet6_rth_reverse;
    inet6_rth_segments; inet6_rth_getaddr;
  }
  PEMU_LIBC_PRIVATE {
    __internal_endnetgrent; __internal_getnetgrent_r;
    __internal_setnetgrent;
  }
}
libnss_hesiod {
  PEMU_LIBC_PRIVATE {
    _nss_hesiod_setpwent; _nss_hesiod_endpwent;
    _nss_hesiod_getpwnam_r; _nss_hesiod_getpwuid_r;
    _nss_hesiod_setgrent; _nss_hesiod_endgrent;
    _nss_hesiod_getgrnam_r; _nss_hesiod_getgrgid_r;
    _nss_hesiod_setservent; _nss_hesiod_endservent;
    _nss_hesiod_getservbyname_r;
    _nss_hesiod_initgroups_dyn;
    _nss_hesiod_getservbyport_r;
    _nss_hesiod_setprotoent; _nss_hesiod_endprotoent;
    _nss_hesiod_getprotobyname_r; _nss_hesiod_getprotobynumber_r;
  }
}
libc {
  PEMU_LIBC_2.0 {
    _null_auth;
    _rpc_dtablesize; _seterr_reply;
    rpc_createerr; svc_fdset; svcauthdes_stats;
    authnone_create; authunix_create; authunix_create_default;
    bindresvport;
    callrpc;
    clnt_broadcast; clnt_create; clnt_pcreateerror; clnt_perrno;
    clnt_perror; clnt_spcreateerror; clnt_sperrno; clnt_sperror;
    clntraw_create; clnttcp_create; clntudp_bufcreate; clntudp_create;
    get_myaddress; getpublickey; getsecretkey;
    pmap_getmaps; pmap_getport; pmap_rmtcall; pmap_set; pmap_unset;
    registerrpc;
    svc_exit; svc_getreq; svc_getreqset; svc_register; svc_run;
    svc_sendreply; svc_unregister; svcerr_auth; svcerr_decode;
    svcerr_noproc; svcerr_noprog; svcerr_progvers; svcerr_systemerr;
    svcerr_weakauth; svcfd_create; svcraw_create; svctcp_create;
    svcudp_bufcreate; svcudp_create; svcudp_enablecache;
    xdr_accepted_reply; xdr_array; xdr_authunix_parms; xdr_bool; xdr_bytes;
    xdr_callhdr; xdr_callmsg; xdr_char; xdr_cryptkeyarg; xdr_cryptkeyarg2;
    xdr_cryptkeyres; xdr_des_block; xdr_double; xdr_enum; xdr_float;
    xdr_free; xdr_int; xdr_key_netstarg; xdr_key_netstres; xdr_keybuf;
    xdr_keystatus; xdr_long; xdr_netobj; xdr_opaque; xdr_opaque_auth;
    xdr_pmap; xdr_pmaplist; xdr_pointer; xdr_reference; xdr_rejected_reply;
    xdr_replymsg; xdr_rmtcall_args; xdr_rmtcallres; xdr_short; xdr_string;
    xdr_u_char; xdr_u_int; xdr_u_long; xdr_u_short; xdr_union; xdr_vector;
    xdr_void; xdr_wrapstring; xdrmem_create; xdrrec_create;
    xdrrec_endofrecord; xdrrec_eof; xdrrec_skiprecord; xdrstdio_create;
    xencrypt; xprt_register; xprt_unregister;
  }
  PEMU_LIBC_2.1 {
    __key_decryptsession_pk_LOCAL; __key_encryptsession_pk_LOCAL;
    __key_gendes_LOCAL;
    _authenticate;
    authdes_create; authdes_getucred; authdes_pk_create;
    cbc_crypt; clntunix_create;
    des_setparity;
    ecb_crypt;
    getnetname;
    host2netname;
    key_decryptsession; key_decryptsession_pk; key_encryptsession;
    key_encryptsession_pk; key_gendes; key_get_conv; key_secretkey_is_set;
    key_setnet; key_setsecret;
    netname2host; netname2user;
    passwd2des;
    rtime;
    svcunix_create; svcunixfd_create;
    user2netname;
    xdecrypt; xdr_authdes_cred; xdr_authdes_verf;
    xdr_getcredres; xdr_int16_t; xdr_int32_t; xdr_int8_t;
    xdr_netnamestr; xdr_sizeof;
    xdr_uint16_t; xdr_uint32_t; xdr_uint8_t; xdr_unixcred;
  }
  PEMU_LIBC_2.1.1 {
    xdr_hyper; xdr_u_hyper; xdr_longlong_t; xdr_u_longlong_t;
    xdr_int64_t; xdr_uint64_t;
  }
  PEMU_LIBC_2.2 {
    svc_getreq_common; svc_getreq_poll; svc_max_pollfd; svc_pollfd;
  }
  PEMU_LIBC_2.2.3 {
    __rpc_thread_svc_fdset; __rpc_thread_createerr;
    __rpc_thread_svc_pollfd; __rpc_thread_svc_max_pollfd;
  }
  PEMU_LIBC_2.3.4 {
    xdr_quad_t; xdr_u_quad_t;
  }
  PEMU_LIBC_PRIVATE {
    __libc_clntudp_bufcreate; __libc_rpc_getport;
  }
}
libnsl {
  PEMU_LIBC_2.0 {
    xdr_domainname; xdr_keydat; xdr_mapname;
    xdr_peername; xdr_valdat; xdr_yp_buf;
    xdr_ypbind_binding; xdr_ypbind_resp; xdr_ypbind_resptype;
    xdr_ypbind_setdom; xdr_ypdelete_args; xdr_ypmap_parms;
    xdr_ypmaplist; xdr_yppush_status; xdr_yppushresp_xfr;
    xdr_ypreq_key; xdr_ypreq_nokey; xdr_ypreq_xfr;
    xdr_ypresp_all; xdr_ypresp_key_val; xdr_ypresp_maplist;
    xdr_ypresp_master; xdr_ypresp_order; xdr_ypresp_val;
    xdr_ypresp_xfr; xdr_ypstat; xdr_ypupdate_args;
    xdr_ypxfrstat;
    __yp_check;
    yp_all; yp_bind; yp_first;
    yp_get_default_domain; yp_maplist; yp_master;
    yp_match; yp_next; yp_order;
    yp_unbind; yp_update; ypbinderr_string;
    yperr_string; ypprot_err;
  }
  PEMU_LIBC_2.1 {
    nis_add; nis_add_entry; nis_addmember;
    nis_checkpoint; nis_clone_directory; nis_clone_object;
    nis_clone_result; nis_creategroup; nis_destroy_object;
    nis_destroygroup; nis_dir_cmp; nis_domain_of;
    nis_domain_of_r; nis_first_entry; nis_free_directory;
    nis_free_object; nis_free_request; nis_freenames;
    nis_freeresult; nis_freeservlist; nis_freetags;
    nis_getnames; nis_getservlist; nis_ismember;
    nis_leaf_of; nis_leaf_of_r; nis_lerror;
    nis_list; nis_local_directory; nis_local_group;
    nis_local_host; nis_local_principal; nis_lookup;
    nis_mkdir; nis_modify; nis_modify_entry;
    nis_name_of; nis_name_of_r; nis_next_entry;
    nis_perror; nis_ping; nis_print_directory;
    nis_print_entry; nis_print_group; nis_print_group_entry;
    nis_print_link; nis_print_object; nis_print_result;
    nis_print_rights; nis_print_table; nis_read_obj;
    nis_remove; nis_remove_entry; nis_removemember;
    nis_rmdir; nis_servstate; nis_sperrno;
    nis_sperror; nis_sperror_r; nis_stats;
    nis_verifygroup; nis_write_obj;
    xdr_cback_data; xdr_obj_p;
    __free_fdresult; __nis_default_access; __nis_default_group;
    __nis_default_owner; __nis_default_ttl; __nis_finddirectory;
    __nis_hash; __nisbind_connect; __nisbind_create;
    __nisbind_destroy; __nisbind_next;
    readColdStartFile; writeColdStartFile;
  }
  PEMU_LIBC_2.2 {
    xdr_ypall;
  }
  PEMU_LIBC_PRIVATE {
    _nsl_default_nss; __prepare_niscall; __follow_path; __do_niscall3;
    __create_ib_request; _xdr_ib_request; _xdr_nis_result;
  }
}
libnss_compat {
  PEMU_LIBC_PRIVATE {
    _nss_compat_endgrent; _nss_compat_endpwent; _nss_compat_endspent;
    _nss_compat_getgrent_r; _nss_compat_getgrgid_r; _nss_compat_getgrnam_r;
    _nss_compat_getpwent_r; _nss_compat_getpwnam_r; _nss_compat_getpwuid_r;
    _nss_compat_getspent_r; _nss_compat_getspnam_r;
    _nss_compat_setgrent; _nss_compat_setpwent; _nss_compat_setspent;
    _nss_compat_initgroups_dyn;
  }
}
libnss_nis {
  PEMU_LIBC_PRIVATE {
    _nss_nis_endaliasent; _nss_nis_endetherent; _nss_nis_endgrent;
    _nss_nis_endhostent; _nss_nis_endnetent; _nss_nis_endnetgrent;
    _nss_nis_endprotoent; _nss_nis_endpwent; _nss_nis_endrpcent;
    _nss_nis_endservent; _nss_nis_endspent; _nss_nis_getaliasbyname_r;
    _nss_nis_getaliasent_r; _nss_nis_getetherent_r; _nss_nis_getgrent_r;
    _nss_nis_getgrgid_r; _nss_nis_getgrnam_r; _nss_nis_gethostbyaddr_r;
    _nss_nis_gethostbyname2_r; _nss_nis_gethostbyname_r; _nss_nis_gethostent_r;
    _nss_nis_gethostton_r; _nss_nis_getnetbyaddr_r; _nss_nis_getnetbyname_r;
    _nss_nis_getnetent_r; _nss_nis_getnetgrent_r; _nss_nis_getntohost_r;
    _nss_nis_getprotobyname_r; _nss_nis_getprotobynumber_r;
    _nss_nis_getprotoent_r; _nss_nis_getpublickey; _nss_nis_getpwent_r;
    _nss_nis_getpwnam_r; _nss_nis_getpwuid_r; _nss_nis_getrpcbyname_r;
    _nss_nis_getrpcbynumber_r; _nss_nis_getrpcent_r; _nss_nis_getsecretkey;
    _nss_nis_getservbyname_r; _nss_nis_getservbyport_r; _nss_nis_getservent_r;
    _nss_nis_getspent_r; _nss_nis_getspnam_r;
    _nss_nis_netname2user; _nss_nis_setaliasent; _nss_nis_setetherent;
    _nss_nis_setgrent; _nss_nis_sethostent; _nss_nis_setnetent;
    _nss_nis_setnetgrent; _nss_nis_setprotoent; _nss_nis_setpwent;
    _nss_nis_setrpcent; _nss_nis_setservent; _nss_nis_setspent;
    _nss_nis_initgroups_dyn; _nss_nis_gethostbyname4_r;
  }
}
libnss_nisplus {
  PEMU_LIBC_PRIVATE {
    _nss_nisplus_endaliasent; _nss_nisplus_endetherent; _nss_nisplus_endgrent;
    _nss_nisplus_endhostent; _nss_nisplus_endnetent; _nss_nisplus_endnetgrent;
    _nss_nisplus_endprotoent; _nss_nisplus_endpwent; _nss_nisplus_endrpcent;
    _nss_nisplus_endservent; _nss_nisplus_endspent;
    _nss_nisplus_getaliasbyname_r; _nss_nisplus_getaliasent_r;
    _nss_nisplus_getetherent_r; _nss_nisplus_getgrent_r;
    _nss_nisplus_getgrgid_r; _nss_nisplus_getgrnam_r;
    _nss_nisplus_gethostbyaddr_r; _nss_nisplus_gethostbyname2_r;
    _nss_nisplus_gethostbyname_r; _nss_nisplus_gethostent_r;
    _nss_nisplus_gethostton_r; _nss_nisplus_getnetbyaddr_r;
    _nss_nisplus_getnetbyname_r; _nss_nisplus_getnetent_r;
    _nss_nisplus_getnetgrent_r; _nss_nisplus_getntohost_r;
    _nss_nisplus_getprotobyname_r; _nss_nisplus_getprotobynumber_r;
    _nss_nisplus_getprotoent_r; _nss_nisplus_getpublickey;
    _nss_nisplus_getpwent_r; _nss_nisplus_getpwnam_r; _nss_nisplus_getpwuid_r;
    _nss_nisplus_getrpcbyname_r; _nss_nisplus_getrpcbynumber_r;
    _nss_nisplus_getrpcent_r; _nss_nisplus_getsecretkey;
    _nss_nisplus_getservbyname_r; _nss_nisplus_getservbynumber_r;
    _nss_nisplus_getservent_r; _nss_nisplus_getspent_r;
    _nss_nisplus_getspnam_r; _nss_nisplus_netname2user;
    _nss_nisplus_setaliasent;
    _nss_nisplus_setetherent; _nss_nisplus_setgrent; _nss_nisplus_sethostent;
    _nss_nisplus_setnetent; _nss_nisplus_setnetgrent; _nss_nisplus_setprotoent;
    _nss_nisplus_setpwent; _nss_nisplus_setrpcent; _nss_nisplus_setservent;
    _nss_nisplus_setspent; _nss_nisplus_initgroups_dyn;
    _nss_nisplus_gethostbyname4_r;
  }
}
libc {
  PEMU_LIBC_2.1 {
    fattach; fdetach;
    getmsg; getpmsg;
    isastream;
    putmsg; putpmsg;
  }
}
libc {
  PEMU_LIBC_2.0 {
    endutent;
    getlogin; getlogin_r; getutent; getutent_r; getutid; getutid_r; getutline;
    getutline_r;
    pututline;
    setutent;
    updwtmp; utmpname;
  }
  PEMU_LIBC_2.1 {
    endutxent;
    getpt; getutxent; getutxid; getutxline; grantpt;
    ptsname; ptsname_r; pututxline;
    setutxent;
    unlockpt; updwtmpx; utmpxname;
  }
  PEMU_LIBC_2.1.1 {
    getutmpx; getutmp;
  }
  PEMU_LIBC_2.2.1 {
    posix_openpt;
  }
}
libutil {
  PEMU_LIBC_2.0 {
    forkpty; login; login_tty; logout; logwtmp; openpty;
  }
}
libc {
  PEMU_LIBC_2.0 {

    __register_frame_info; __deregister_frame_info;

  }
  PEMU_LIBC_2.1 {
    _dl_mcount_wrapper; _dl_mcount_wrapper_check;
  }
  PEMU_LIBC_2.2.4 {
    dl_iterate_phdr;
  }

  GCC_3.0 {
    __register_frame_info_bases; __deregister_frame_info_bases;
    __register_frame_info_table_bases; _Unwind_Find_FDE;
  }

  PEMU_LIBC_PRIVATE {
    _dl_addr;
    _dl_sym; _dl_vsym;
    _dl_open_hook;
    __libc_dlopen_mode; __libc_dlsym; __libc_dlclose;
  }
}
ld {
  PEMU_LIBC_2.0 {
    calloc; free; malloc; realloc; __libc_memalign;
    _r_debug;
  }
  PEMU_LIBC_2.1 {
    _dl_mcount;
    __libc_stack_end;
  }
  PEMU_LIBC_2.3 {
    __tls_get_addr;
  }
  PEMU_LIBC_2.4 {
    __stack_chk_guard;
  }
  PEMU_LIBC_PRIVATE {
    __libc_enable_secure;
    _dl_argv;
    _dl_out_of_memory;
    _dl_starting_up;
    _rtld_global; _rtld_global_ro;
    _dl_allocate_tls; _dl_deallocate_tls;
    _dl_get_tls_static_info; _dl_allocate_tls_init;
    _dl_tls_setup; _dl_rtld_di_serinfo;
    _dl_make_stack_executable;
    _dl_debug_state;
    __pointer_chk_guard;
  }
}
ld {
  PEMU_LIBC_2.3 {
    ___tls_get_addr;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __register_frame; __register_frame_table; __deregister_frame;
    __frame_state_for; __register_frame_info_table;
    ioperm; iopl;
    vm86;
  }
  PEMU_LIBC_2.1 {
    modify_ldt;
  }
  PEMU_LIBC_2.2 {
    __xstat64; __fxstat64; __lxstat64;
    alphasort64;
    glob64;
    getrlimit; setrlimit; getrlimit64;
    readdir64; readdir64_r;
    scandir64;
    versionsort64;
  }
  PEMU_LIBC_2.3.3 {
    posix_fadvise64; posix_fallocate64;
  }
  PEMU_LIBC_2.3.4 {
    vm86;
  }
  PEMU_LIBC_2.11 {
    fallocate64;
  }
  PEMU_LIBC_PRIVATE {
    __modify_ldt;
  }
}
libc {
  PEMU_LIBC_2.3.2 {
    __register_atfork;
  }
  PEMU_LIBC_PRIVATE {
    __libc_pthread_init;
    __libc_current_sigrtmin_private; __libc_current_sigrtmax_private;
    __libc_allocate_rtsig_private;
  }
}
libpthread {
  PEMU_LIBC_2.0 {
    fork; __fork;
  }
}
librt {
  PEMU_LIBC_2.4 {
    lio_listio; lio_listio64;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __cmsg_nxthdr;
    __clone;
    __errno_location;
    bdflush;
    clone; create_module;
    delete_module;
    get_kernel_syms; getresgid; getresuid;
    init_module;
    klogctl;
    llseek;
    mremap;
    nfsservctl;
    personality; prctl;
    query_module; quotactl;
    setfsgid; setfsuid;
    setresgid; setresuid; swapoff; swapon; sysctl;
    umount; uselib;
    _sys_errlist; sys_errlist; _sys_nerr; sys_nerr;
  }
  PEMU_LIBC_2.1 {
    __libc_sa_len;
    _sys_siglist; sys_siglist; sys_sigabbrev;
    _sys_errlist; sys_errlist; _sys_nerr; sys_nerr;
    chown;
    pthread_attr_init;
    capget; capset;
    ntp_adjtime; ntp_gettime;
    umount2;
    _sys_errlist; sys_errlist; _sys_nerr; sys_nerr;
  }
  PEMU_LIBC_2.2 {
    __endmntent; __getmntent_r; __setmntent; __statfs; __sysctl;
    semctl; shmctl; msgctl;
  }
  PEMU_LIBC_2.2.1 {
    pivot_root;
  }
  PEMU_LIBC_2.3 {
    readahead;
    _sys_errlist; sys_errlist; _sys_nerr; sys_nerr;
  }
  PEMU_LIBC_2.3.2 {
    epoll_create; epoll_ctl; epoll_wait;
  }
  PEMU_LIBC_2.3.3 {
    gnu_dev_major; gnu_dev_minor; gnu_dev_makedev;
  }
  PEMU_LIBC_2.3.4 {
    sched_getaffinity; sched_setaffinity;
  }
  PEMU_LIBC_2.4 {
    inotify_init; inotify_add_watch; inotify_rm_watch;
    unshare;
    _sys_errlist; sys_errlist; _sys_nerr; sys_nerr;
  }
  PEMU_LIBC_2.5 {
    splice; tee; vmsplice;
  }
  PEMU_LIBC_2.6 {
    epoll_pwait; sync_file_range; sched_getcpu;
  }
  PEMU_LIBC_2.7 {
    eventfd; eventfd_read; eventfd_write; signalfd;
  }
  PEMU_LIBC_2.8 {
    timerfd_create; timerfd_settime; timerfd_gettime;
  }
  PEMU_LIBC_2.9 {
    epoll_create1; inotify_init1;
  }
  PEMU_LIBC_2.10 {
    fallocate;
  }
  PEMU_LIBC_2.12 {
    _sys_errlist; sys_errlist; _sys_nerr; sys_nerr;
    ntp_gettimex;
    recvmmsg;
  }
  PEMU_LIBC_2.13 {
    prlimit; prlimit64;
    fanotify_init; fanotify_mark;
  }
  PEMU_LIBC_PRIVATE {
    __syscall_rt_sigqueueinfo;
  }
}
libc {
  PEMU_LIBC_2.0 {
    sysinfo;
  }
}
libc {
  PEMU_LIBC_PRIVATE {
    __get_cpu_features;
  }
}
libc {
  PEMU_LIBC_2.1.1 {
    __memcpy_by2; __memcpy_by4; __memcpy_g; __mempcpy_by2; __mempcpy_by4;
    __mempcpy_byn; __memset_ccn_by2; __memset_ccn_by4; __memset_gcn_by2;
    __memset_gcn_by4; __stpcpy_g; __strcat_c; __strcat_g; __strchr_c;
    __strchr_g; __strchrnul_c; __strchrnul_g; __strcmp_gg; __strcpy_g;
    __strcspn_c1; __strcspn_cg; __strcspn_g; __strlen_g; __strncat_g;
    __strncmp_g; __strncpy_by2; __strncpy_by4; __strncpy_byn; __strncpy_gg;
    __strpbrk_cg; __strpbrk_g; __strrchr_c; __strrchr_g; __strspn_c1;
    __strspn_cg; __strspn_g; __strstr_cg; __strstr_g;
  }
}
libm {
  PEMU_LIBC_2.2 {
    __expl; __expm1l;
  }
}
libc {
  PEMU_LIBC_2.0 {
    __divdi3; __moddi3; __udivdi3; __umoddi3;
  }
  PEMU_LIBC_2.1 {
    _fp_hw;
  }
  PEMU_LIBC_2.1.1 {
    __memcpy_c; __memset_cc; __memset_cg; __memset_gg;
    __memcpy_by2; __memcpy_by4; __memcpy_g; __mempcpy_by2; __mempcpy_by4;
    __mempcpy_byn; __memset_ccn_by2; __memset_ccn_by4; __memset_gcn_by2;
    __memset_gcn_by4; __stpcpy_g; __strcat_c; __strcat_g; __strchr_c;
    __strchr_g; __strchrnul_c; __strchrnul_g; __strcmp_gg; __strcpy_g;
    __strcspn_c1; __strcspn_cg; __strcspn_g; __strlen_g; __strncat_g;
    __strncmp_g; __strncpy_by2; __strncpy_by4; __strncpy_byn; __strncpy_gg;
    __strpbrk_cg; __strpbrk_g; __strrchr_c; __strrchr_g; __strspn_c1;
    __strspn_cg; __strspn_g; __strstr_cg; __strstr_g;
  }
}
libm {
  PEMU_LIBC_2.1 {
    exp2l;
  }
}
libc {
  PEMU_LIBC_2.3 {
    strtoll_l; strtoull_l;
  }
}
