/**
 *
 * Build: 
 *   system([matlabroot '/bin/mex -f ' matlabroot '/bin/engopts.sh mscript.c'])
 * 
 * or
 *
 *   make all  # change Makefile settign if required.
 *
 * @license: The MIT License (MIT)
 * Copyright (c) 2014 Yauhen Yakimovich <yauhen.yakimovich@uzh.ch>    
 * 
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "engine.h"

#define  BUFSIZE 4194304
#define  STRSIZE 4096

int main( int argc, char *argv[] )
{
    FILE *input;
	Engine *ep;
    char str[STRSIZE+1];
    char output_buffer[BUFSIZE+1];
    
	
    if (argc > 1) {
        if ((input = fopen(argv[1],"r")) == NULL) {        
            fprintf(stderr, "\nCannot open file: %s\n", argv[1]);
            return EXIT_FAILURE;
        }
    } else {
        /* assume STDIN */
        input = stdin;
    }
    
	/*
	 * Call engOpen with a NULL string. This starts a MATLAB process 
     * on the current host using the command "matlab".
	 */
	if (!(ep = engOpen("matlab -nodesktop -nosplash"))) {
		fprintf(stderr, "\nCan't start MATLAB engine.\n");
		return EXIT_FAILURE;
	}
	/* Set output buffer */
    output_buffer[BUFSIZE] = '\0';
	engOutputBuffer(ep, output_buffer, BUFSIZE);
    
    /* Input loop */	    
	while( fgets(str, STRSIZE, input) ) {	
		/* puts(&str[0]); */
		/* Eval matlab code string */
		engEvalString(ep, str);
    	/* Print output buffer to stdout */
    	/* First three characters are always the double prompt and space (>> ).*/
		printf("%s", output_buffer + 3);
		/* TODO: error messages start with ??? */
	}   

	/* Close MATLAB engine and exit. */
	fclose(input);
    engClose(ep);
	
	return EXIT_SUCCESS;
}
