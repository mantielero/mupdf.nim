// gcc $(pkg-config --cflags --libs --static mupdf) ex00.c -o ex00
// gcc -g -o ex00  ex00.c /usr/lib/libmupdf.a  /usr/lib/libmupdf-third.a -lfreetype -lmujs -lopenjpeg -ljbig2dec -lopenjp2  -ljpeg -lz -lm -lgumbo 
#include "mupdf/fitz.h"
#include "mupdf/pdf.h"

#include <stdlib.h>
#include <stdio.h>

int main(int argc, char **argv)
{
    fz_context *ctx;

    ctx = fz_new_context(NULL, NULL, FZ_STORE_UNLIMITED);
    if (!ctx)
    {
        fprintf(stderr, "cannot initialise context\n");
        exit(1);
    }

    return 0;
}
