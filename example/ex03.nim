import mupdf/pdf
import std/strformat

var 
  ctx:ptr fz_context
  alloc:ptr fz_alloc_context = nil
  locks:ptr fz_locks_context = nil
ctx = fz_new_context_imp( alloc, locks, FZ_STORE_UNLIMITED.csize_t,  FZ_VERSION)



#fz_try(ctx)
fz_register_document_handlers(ctx)
#fz_catch(ctx)

#fz_try(ctx)
var doc:ptr fz_document = fz_open_document(ctx, "helloworld.pdf")
#fz_catch(ctx)

#fz_try(ctx)
var page_count = fz_count_pages(ctx, doc)
#fz_catch(ctx)
echo "Page count: ", page_count


# Compute a transformation matrix for the zoom and rotation desired.
# The default resolution without scaling is 72 dpi.
var zoom   = 100
var rotate = 0.0
var ctm = fz_scale(zoom / 100, zoom / 100)
ctm = fz_pre_rotate(ctm, rotate)

# /* Render page to an RGB pixmap. */
# fz_try(ctx)
var page_number:cint = 0
var pix:ptr fz_pixmap = fz_new_pixmap_from_page_number(ctx, doc, page_number, ctm, fz_device_rgb(ctx), 0)
# fz_catch(ctx)
# {
# 	fprintf(stderr, "cannot render page: %s\n", fz_caught_message(ctx));
# 	fz_drop_document(ctx, doc);
# 	fz_drop_context(ctx);
# 	return EXIT_FAILURE;
# }


# Print image data in ascii PPM format.
echo "P3"
echo pix.w, " ", pix.h
echo "255"
var n = pix.n.int
for y in 0 ..< pix.h:
  var val = y * pix.stride
  #echo val
  #echo pix.n
  #var p:uint = cast[uint](pix.samples + val)
  var tmp = pix.samples[] + val.uint8
  var p = cast[ptr UncheckedArray[uint8]]( tmp.uint8)
  #echo p[0]
# 	unsigned char *p = &pix->samples[y * pix->stride];
  var row = ""
  for x in 0 ..< pix.w:
    if x > 0:
      row &= "  "
    
    row &= fmt"{p[x*n + 0]} {p[x*n + 1]} {p[x*n + 2]}"
  echo row
# 		p += pix->n;

# 	printf("\n");




#[
#include <stdio.h>
#include <mupdf/pdf.h>

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Uso: %s <archivo.pdf>\n", argv[0]);
        return 1;
    }

    const char *filename = argv[1];

    // Inicializar el contexto de MuPDF
    fz_context *ctx = fz_new_context(NULL, NULL, FZ_STORE_UNLIMITED);
    if (!ctx) {
        fprintf(stderr, "No se pudo crear el contexto de MuPDF.\n");
        return 1;
    }

    // Registrar los manejadores de documentos
    fz_register_document_handlers(ctx);

    // Abrir el documento PDF
    fz_document *doc = fz_open_document(ctx, filename);
    if (!doc) {
        fprintf(stderr, "No se pudo abrir el documento: %s\n", filename);
        fz_drop_context(ctx);
        return 1;
    }

    // Obtener el número de páginas del documento
    int page_count = fz_count_pages(ctx, doc);
    printf("El documento tiene %d páginas.\n", page_count);

    // Liberar recursos
    fz_drop_document(ctx, doc);
    fz_drop_context(ctx);

    return 0;
}
]#


#[
#include <stdio.h>
#include <stdlib.h>
#include <mupdf/fitz.h>
#include <mupdf/pdf.h>

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("Uso: %s <archivo.pdf>\n", argv[0]);
        return 1;
    }

    char *filename = argv[1];
    
    // Inicializa el contexto de MuPDF
    fz_context *ctx = fz_new_context(NULL, NULL, FZ_STORE_UNLIMITED);
    if (!ctx) {
        fprintf(stderr, "Error: No se pudo inicializar el contexto de MuPDF.\n");
        return 1;
    }

    // Abre el documento PDF
    pdf_document *doc = pdf_open_document(ctx, filename);
    if (!doc || pdf_needs_password(doc)) {
        fprintf(stderr, "Error: No se pudo abrir el documento o requiere contraseña.\n");
        fz_drop_context(ctx);
        return 1;
    }

    // Obtiene el número total de páginas
    int page_count = pdf_count_pages(doc);
    printf("El documento tiene %d páginas.\n", page_count);

    // Itera sobre todas las páginas y muestra información
    for (int i = 0; i < page_count; i++) {
        pdf_page *page = pdf_load_page(doc, i);
        if (!page) {
            printf("No se pudo cargar la página %d.\n", i + 1);
            continue;
        }

        fz_rect bbox;
        pdf_bound_page(doc, page, &bbox);
        printf("Página %d: Tamaño [%.2f x %.2f]\n", i + 1, bbox.x1 - bbox.x0, bbox.y1 - bbox.y0);

        pdf_drop_page(doc, page); // Libera la memoria de la página
    }

    // Limpieza
    pdf_close_document(doc);
    fz_drop_context(ctx);

    return 0;
}

]#