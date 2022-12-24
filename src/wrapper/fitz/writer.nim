import fitz_types

##  Copyright (C) 2004-2021 Artifex Software, Inc.
##
##  This file is part of MuPDF.
##
##  MuPDF is free software: you can redistribute it and/or modify it under the
##  terms of the GNU Affero General Public License as published by the Free
##  Software Foundation, either version 3 of the License, or (at your option)
##  any later version.
##
##  MuPDF is distributed in the hope that it will be useful, but WITHOUT ANY
##  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
##  FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
##  details.
##
##  You should have received a copy of the GNU Affero General Public License
##  along with MuPDF. If not, see <https://www.gnu.org/licenses/agpl-3.0.en.html>
##
##  Alternative licensing terms are available from the licensor.
##  For commercial licensing, see <https://www.artifex.com/> or contact
##  Artifex Software, Inc., 1305 Grant Avenue - Suite 200, Novato,
##  CA 94945, U.S.A., +1(415)492-9861, for further information.

## !!!Ignored construct:  # MUPDF_FITZ_WRITER_H [NewLine] # MUPDF_FITZ_WRITER_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/output.h [NewLine] # mupdf/fitz/document.h [NewLine] # mupdf/fitz/device.h [NewLine] typedef struct fz_document_writer fz_document_writer ;
## Error: identifier expected, but got: (!!!

## *
## 	Function type to start
## 	the process of writing a page to a document.
##
## 	mediabox: page size rectangle in points.
##
## 	Returns a fz_device to write page contents to.
##










proc fzOptionEq*(a: cstring; b: cstring): cint {.cdecl, importc: "fz_option_eq",
    header: "writer.h".}
## *
## 	Copy an option (val) into a destination buffer (dest), of maxlen
## 	bytes.
##
## 	Returns the number of bytes (including terminator) that did not
## 	fit. If val is maxlen or greater bytes in size, it will be left
## 	unterminated.
##

proc fzCopyOption*(ctx: ptr FzContext; val: cstring; dest: cstring; maxlen: csize_t): csize_t {.
    cdecl, importc: "fz_copy_option", header: "writer.h".}
## *
## 	Create a new fz_document_writer, for a
## 	file of the given type.
##
## 	path: The document name to write (or NULL for default)
##
## 	format: Which format to write (currently cbz, html, pdf, pam,
## 	pbm, pgm, pkm, png, ppm, pnm, svg, text, xhtml, docx, odt)
##
## 	options: NULL, or pointer to comma separated string to control
## 	file generation.
##

proc fzNewDocumentWriter*(ctx: ptr FzContext; path: cstring; format: cstring;
                         options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_document_writer", header: "writer.h".}
## *
## 	Like fz_new_document_writer but takes a fz_output for writing
## 	the result. Only works for multi-page formats.
##

proc fzNewDocumentWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                                   format: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_document_writer_with_output", header: "writer.h".}
## *
## 	Document writers for various possible output formats.
##
## 	All of the "_with_output" variants pass the ownership of out in
## 	immediately upon calling. The writers are responsible for
## 	dropping the fz_output when they are finished with it (even
## 	if they throw an exception during creation).
##

proc fzNewPdfWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pdf_writer", header: "writer.h".}
proc fzNewPdfWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                              options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_pdf_writer_with_output", header: "writer.h".}
proc fzNewSvgWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_svg_writer", header: "writer.h".}
proc fzNewTextWriter*(ctx: ptr FzContext; format: cstring; path: cstring;
                     options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_text_writer", header: "writer.h".}
proc fzNewTextWriterWithOutput*(ctx: ptr FzContext; format: cstring;
                               `out`: ptr FzOutput; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_text_writer_with_output", header: "writer.h".}
proc fzNewOdtWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_odt_writer", header: "writer.h".}
proc fzNewOdtWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                              options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_odt_writer_with_output", header: "writer.h".}
proc fzNewDocxWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_docx_writer", header: "writer.h".}
proc fzNewDocxWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                               options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_docx_writer_with_output", header: "writer.h".}
proc fzNewPsWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_ps_writer", header: "writer.h".}
proc fzNewPsWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_ps_writer_with_output", header: "writer.h".}
proc fzNewPclWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pcl_writer", header: "writer.h".}
proc fzNewPclWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                              options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_pcl_writer_with_output", header: "writer.h".}
proc fzNewPclmWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pclm_writer", header: "writer.h".}
proc fzNewPclmWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                               options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_pclm_writer_with_output", header: "writer.h".}
proc fzNewPwgWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pwg_writer", header: "writer.h".}
proc fzNewPwgWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                              options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_pwg_writer_with_output", header: "writer.h".}
proc fzNewCbzWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_cbz_writer", header: "writer.h".}
proc fzNewCbzWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                              options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_cbz_writer_with_output", header: "writer.h".}
## *
## 	Used to report progress of the OCR operation.
##
## 	page: Current page being processed.
##
## 	percent: Progress of the OCR operation for the
## 	current page in percent. Whether it reaches 100
## 	once a page is finished, depends on the OCR engine.
##
## 	Return 0 to continue progress, return 1 to cancel the
## 	operation.
##


proc fzNewPdfocrWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pdfocr_writer", header: "writer.h".}
proc fzNewPdfocrWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput;
                                 options: cstring): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_pdfocr_writer_with_output", header: "writer.h".}
proc fzPdfocrWriterSetProgress*(ctx: ptr FzContext; writer: ptr FzDocumentWriter;
                               progress: ptr FzPdfocrProgressFn; a4: pointer) {.
    cdecl, importc: "fz_pdfocr_writer_set_progress", header: "writer.h".}
proc fzNewPngPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_png_pixmap_writer", header: "writer.h".}
proc fzNewPamPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pam_pixmap_writer", header: "writer.h".}
proc fzNewPnmPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pnm_pixmap_writer", header: "writer.h".}
proc fzNewPgmPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pgm_pixmap_writer", header: "writer.h".}
proc fzNewPpmPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_ppm_pixmap_writer", header: "writer.h".}
proc fzNewPbmPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pbm_pixmap_writer", header: "writer.h".}
proc fzNewPkmPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_pkm_pixmap_writer", header: "writer.h".}
## *
## 	Called to start the process of writing a page to
## 	a document.
##
## 	mediabox: page size rectangle in points.
##
## 	Returns a borrowed fz_device to write page contents to. This
## 	should be kept if required, and only dropped if it was kept.
##

proc fzBeginPage*(ctx: ptr FzContext; wri: ptr FzDocumentWriter; mediabox: FzRect): ptr FzDevice {.
    cdecl, importc: "fz_begin_page", header: "writer.h".}
## *
## 	Called to end the process of writing a page to a
## 	document.
##

proc fzEndPage*(ctx: ptr FzContext; wri: ptr FzDocumentWriter) {.cdecl,
    importc: "fz_end_page", header: "writer.h".}
## *
## 	Convenience function to feed all the pages of a document to
## 	fz_begin_page/fz_run_page/fz_end_page.
##

proc fzWriteDocument*(ctx: ptr FzContext; wri: ptr FzDocumentWriter;
                     doc: ptr FzDocument) {.cdecl, importc: "fz_write_document",
    header: "writer.h".}
## *
## 	Called to end the process of writing
## 	pages to a document.
##
## 	This writes any file level trailers required. After this
## 	completes successfully the file is up to date and complete.
##

proc fzCloseDocumentWriter*(ctx: ptr FzContext; wri: ptr FzDocumentWriter) {.cdecl,
    importc: "fz_close_document_writer", header: "writer.h".}
## *
## 	Called to discard a fz_document_writer.
## 	This may be called at any time during the process to release all
## 	the resources owned by the writer.
##
## 	Calling drop without having previously called close may leave
## 	the file in an inconsistent state.
##

proc fzDropDocumentWriter*(ctx: ptr FzContext; wri: ptr FzDocumentWriter) {.cdecl,
    importc: "fz_drop_document_writer", header: "writer.h".}
proc fzNewPixmapWriter*(ctx: ptr FzContext; path: cstring; options: cstring;
                       defaultPath: cstring; n: cint; save: proc (ctx: ptr FzContext;
    pix: ptr FzPixmap; filename: cstring) {.cdecl.}): ptr FzDocumentWriter {.cdecl,
    importc: "fz_new_pixmap_writer", header: "writer.h".}
## !!!Ignored construct:  FZ_DATA extern const char * fz_pdf_write_options_usage ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_svg_write_options_usage ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_pcl_write_options_usage ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_pclm_write_options_usage ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_pwg_write_options_usage ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_pdfocr_write_options_usage ;
## Error: token expected: ; but got: *!!!

##  Implementation details: subject to change.
## *
## 	Structure is public to allow other structures to
## 	be derived from it. Do not access members directly.
##




proc fzNewDocumentWriterOfSize*(ctx: ptr FzContext; size: csize_t;
                               beginPage: ptr FzDocumentWriterBeginPageFn;
                               endPage: ptr FzDocumentWriterEndPageFn;
                               close: ptr FzDocumentWriterCloseWriterFn;
                               drop: ptr FzDocumentWriterDropWriterFn): ptr FzDocumentWriter {.
    cdecl, importc: "fz_new_document_writer_of_size", header: "writer.h".}
