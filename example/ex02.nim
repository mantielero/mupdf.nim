import mupdf
import std/strformat
#[

How to use MuPDF to render a single page and print the result as
a PPM to stdout.

To build this example in a source tree and render first page at
100% zoom with no rotation, run:
make examples
./build/debug/example document.pdf 1 100 0 > page1.ppm


./example document.pdf 1 100 0 > page1.ppm

]#






#proc fz_new_context(alloc: ptr fz_alloc_context; locks: ptr fz_locks_context;
#                        max_store: uint):ptr fz_context = fz_new_context_imp(alloc, locks, max_store.uint, FZ_VERSION)
# Create a context to hold the exception stack and various caches. 
var
  alloc:ptr FzAllocContext = nil
  locks:ptr FzLocksContext = nil

var ctx:ptr FzContext = fzNewContext( alloc, locks, FZ_STORE_UNLIMITED.uint )
if ctx == nil:
  raise newException(ValueError, "cannot create mupdf context")


#fzTry(ctx)
fzRegisterDocumentHandlers(ctx)
#fzCatch(ctx)

#fz_try(ctx)
var doc:ptr FzDocument = fzOpenDocument(ctx, "helloworld.pdf")
#fz_catch(ctx)

#fz_try(ctx)
var page_count = fz_count_pages(ctx, doc)
#fz_catch(ctx)

# Compute a transformation matrix for the zoom and rotation desired.
# The default resolution without scaling is 72 dpi.
var zoom   = 100
var rotate = 0.0
var ctm:FzMatrix = fz_scale(zoom / 100, zoom / 100)
ctm = fz_pre_rotate(ctm, rotate)

# Render page to an RGB pixmap.
# fz_try(ctx)
var page_number:cint = 0
var pix:ptr FzPixmap = fzNewPixmapFromPageNumber(ctx, doc, page_number, ctm, fz_device_rgb(ctx), 0)
# fz_catch(ctx)
# {
# 	fprintf(stderr, "cannot render page: %s\n", fz_caught_message(ctx));
# 	fz_drop_document(ctx, doc);
# 	fz_drop_context(ctx);
# 	return EXIT_FAILURE;
# }


# Print image data in ascii PPM format.
var data = pix.exportPPM()
"borrame.ppm".writeFile(data)

# 		p += pix->n;

# 	printf("\n");


#[
	if (argc < 3)
	{
		fprintf(stderr, "usage: example input-file page-number [ zoom [ rotate ] ]\n");
		fprintf(stderr, "\tinput-file: path of PDF, XPS, CBZ or EPUB document to open\n");
		fprintf(stderr, "\tPage numbering starts from one.\n");
		fprintf(stderr, "\tZoom level is in percent (100 percent is 72 dpi).\n");
		fprintf(stderr, "\tRotation is in degrees clockwise.\n");
		return EXIT_FAILURE;
	}

	input = argv[1];
	page_number = atoi(argv[2]) - 1;
	zoom = argc > 3 ? atof(argv[3]) : 100;
	rotate = argc > 4 ? atof(argv[4]) : 0;
]#

#[

	/* Register the default file types to handle. */
	fz_try(ctx)
		fz_register_document_handlers(ctx);
	fz_catch(ctx)
	{
		fprintf(stderr, "cannot register document handlers: %s\n", fz_caught_message(ctx));
		fz_drop_context(ctx);
		return EXIT_FAILURE;
	}

	/* Open the document. */
	fz_try(ctx)
		doc = fz_open_document(ctx, input);
	fz_catch(ctx)
	{
		fprintf(stderr, "cannot open document: %s\n", fz_caught_message(ctx));
		fz_drop_context(ctx);
		return EXIT_FAILURE;
	}

	/* Count the number of pages. */
	fz_try(ctx)
		page_count = fz_count_pages(ctx, doc);
	fz_catch(ctx)
	{
		fprintf(stderr, "cannot count number of pages: %s\n", fz_caught_message(ctx));
		fz_drop_document(ctx, doc);
		fz_drop_context(ctx);
		return EXIT_FAILURE;
	}

	if (page_number < 0 || page_number >= page_count)
	{
		fprintf(stderr, "page number out of range: %d (page count %d)\n", page_number + 1, page_count);
		fz_drop_document(ctx, doc);
		fz_drop_context(ctx);
		return EXIT_FAILURE;
	}

	/* Compute a transformation matrix for the zoom and rotation desired. */
	/* The default resolution without scaling is 72 dpi. */
	ctm = fz_scale(zoom / 100, zoom / 100);
	ctm = fz_pre_rotate(ctm, rotate);

	/* Render page to an RGB pixmap. */
	fz_try(ctx)
		pix = fz_new_pixmap_from_page_number(ctx, doc, page_number, ctm, fz_device_rgb(ctx), 0);
	fz_catch(ctx)
	{
		fprintf(stderr, "cannot render page: %s\n", fz_caught_message(ctx));
		fz_drop_document(ctx, doc);
		fz_drop_context(ctx);
		return EXIT_FAILURE;
	}



	/* Clean up. */
	fz_drop_pixmap(ctx, pix);
	fz_drop_document(ctx, doc);
	fz_drop_context(ctx);
	return EXIT_SUCCESS;
}    
]#

# TODO: should this be handled by means of `=destroy`?
fzDropPixmap(ctx, pix)
fzDropDocument(ctx, doc)
fzDropContext(ctx)
#echo "ok"