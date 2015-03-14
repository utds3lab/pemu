/* lsmod.c: list the status of kernel modules.
    Copyright (C) 2002  Rusty Russell, IBM Corporation.

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <ctype.h>
#include <asm/unistd.h>

//#include "testing.h"

static void print_usage(const char *progname)
{
	fprintf(stderr, "Usage: %s\n", progname);
	exit(1);
}

int main(int argc, char *argv[])
{
	char line[4096];
	FILE *file;

	if (argc != 1)
		print_usage("lsmod");

	file = fopen("/proc/modules", "r");
	if (!file) {
		perror("Opening /proc/modules");
		exit(1);
	}

	printf("Module                  Size  Used by\n");
	while (fgets(line, sizeof(line), file)) {
		char *tok;

		tok = strtok(line, " \t");
		printf("%-19s", tok);
		tok = strtok(NULL, " \t\n");
		printf(" %8s", tok);
		tok = strtok(NULL, " \t\n");
		/* Null if no module unloading support. */
		if (tok) {
			printf("  %s", tok);
			tok = strtok(NULL, "\n");
			if (!tok)
				tok = "";
			/* New-style has commas, or -.  If so,
			   truncate (other fields might follow). */
			else if (strchr(tok, ',')) {
				tok = strtok(tok, "\t ");
				/* Strip trailing comma. */
				if (tok[strlen(tok)-1] == ',')
					tok[strlen(tok)-1] = '\0';
			} else if (tok[0] == '-'
				   && (tok[1] == '\0' || isspace(tok[1])))
				tok = "";
			printf(" %s", tok);
		}
		printf("\n");
	}
	fclose(file);
	exit(0);
}
