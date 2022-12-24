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

## !!!Ignored construct:  # MUPDF_FITZ_STRUCTURED_TEXT_H [NewLine] # MUPDF_FITZ_STRUCTURED_TEXT_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/types.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/geometry.h [NewLine] # mupdf/fitz/font.h [NewLine] # mupdf/fitz/image.h [NewLine] # mupdf/fitz/output.h [NewLine] # mupdf/fitz/device.h [NewLine] # mupdf/fitz/pool.h [NewLine] *
## 	Simple text layout (for use with annotation editing primarily).
##  typedef struct fz_layout_char { float x , advance ; const char * p ;  location in source text of character struct fz_layout_char * next ; } fz_layout_char ;
## Error: token expected: ; but got: *!!!





proc fzNewLayout*(ctx: ptr FzContext): ptr FzLayoutBlock {.cdecl,
    importc: "fz_new_layout", header: "structured-text.h".}
## *
## 	Drop layout block. Free the pool, and linked blocks.
##
## 	Never throws exceptions.
##

proc fzDropLayout*(ctx: ptr FzContext; `block`: ptr FzLayoutBlock) {.cdecl,
    importc: "fz_drop_layout", header: "structured-text.h".}
## *
## 	Add a new line to the end of the layout block.
##

proc fzAddLayoutLine*(ctx: ptr FzContext; `block`: ptr FzLayoutBlock; x: cfloat;
                     y: cfloat; h: cfloat; p: cstring) {.cdecl,
    importc: "fz_add_layout_line", header: "structured-text.h".}
## *
## 	Add a new char to the line at the end of the layout block.
##

proc fzAddLayoutChar*(ctx: ptr FzContext; `block`: ptr FzLayoutBlock; x: cfloat;
                     w: cfloat; p: cstring) {.cdecl, importc: "fz_add_layout_char",
    header: "structured-text.h".}
## *
## 	Text extraction device: Used for searching, format conversion etc.
##
## 	(In development - Subject to change in future versions)
##



const
  FZ_STEXT_PRESERVE_LIGATURES* = 1
  FZ_STEXT_PRESERVE_WHITESPACE* = 2
  FZ_STEXT_PRESERVE_IMAGES* = 4
  FZ_STEXT_INHIBIT_SPACES* = 8
  FZ_STEXT_DEHYPHENATE* = 16
  FZ_STEXT_PRESERVE_SPANS* = 32
  FZ_STEXT_MEDIABOX_CLIP* = 64

## *
## 	A text page is a list of blocks, together with an overall
## 	bounding box.
##



const
  FZ_STEXT_BLOCK_TEXT* = 0
  FZ_STEXT_BLOCK_IMAGE* = 1

## *
## 	A text block is a list of lines of text (typically a paragraph),
## 	or an image.
##














proc fzNewStextPage*(ctx: ptr FzContext; mediabox: FzRect): ptr FzStextPage {.cdecl,
    importc: "fz_new_stext_page", header: "structured-text.h".}
proc fzDropStextPage*(ctx: ptr FzContext; page: ptr FzStextPage) {.cdecl,
    importc: "fz_drop_stext_page", header: "structured-text.h".}
## *
## 	Output structured text to a file in HTML (visual) format.
##

proc fzPrintStextPageAsHtml*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            page: ptr FzStextPage; id: cint) {.cdecl,
    importc: "fz_print_stext_page_as_html", header: "structured-text.h".}
proc fzPrintStextHeaderAsHtml*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_print_stext_header_as_html", header: "structured-text.h".}
proc fzPrintStextTrailerAsHtml*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_print_stext_trailer_as_html", header: "structured-text.h".}
## *
## 	Output structured text to a file in XHTML (semantic) format.
##

proc fzPrintStextPageAsXhtml*(ctx: ptr FzContext; `out`: ptr FzOutput;
                             page: ptr FzStextPage; id: cint) {.cdecl,
    importc: "fz_print_stext_page_as_xhtml", header: "structured-text.h".}
proc fzPrintStextHeaderAsXhtml*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_print_stext_header_as_xhtml", header: "structured-text.h".}
proc fzPrintStextTrailerAsXhtml*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_print_stext_trailer_as_xhtml", header: "structured-text.h".}
## *
## 	Output structured text to a file in XML format.
##

proc fzPrintStextPageAsXml*(ctx: ptr FzContext; `out`: ptr FzOutput;
                           page: ptr FzStextPage; id: cint) {.cdecl,
    importc: "fz_print_stext_page_as_xml", header: "structured-text.h".}
## *
## 	Output structured text to a file in JSON format.
##

proc fzPrintStextPageAsJson*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            page: ptr FzStextPage; scale: cfloat) {.cdecl,
    importc: "fz_print_stext_page_as_json", header: "structured-text.h".}
## *
## 	Output structured text to a file in plain-text UTF-8 format.
##

proc fzPrintStextPageAsText*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            page: ptr FzStextPage) {.cdecl,
    importc: "fz_print_stext_page_as_text", header: "structured-text.h".}
## *
## 	Search for occurrence of 'needle' in text page.
##
## 	Return the number of hits and store hit quads in the passed in
## 	array.
##
## 	NOTE: This is an experimental interface and subject to change
## 	without notice.
##

proc fzSearchStextPage*(ctx: ptr FzContext; text: ptr FzStextPage; needle: cstring;
                       hitMark: ptr cint; hitBbox: ptr FzQuad; hitMax: cint): cint {.
    cdecl, importc: "fz_search_stext_page", header: "structured-text.h".}
## *
## 	Return a list of quads to highlight lines inside the selection
## 	points.
##

proc fzHighlightSelection*(ctx: ptr FzContext; page: ptr FzStextPage; a: FzPoint;
                          b: FzPoint; quads: ptr FzQuad; maxQuads: cint): cint {.cdecl,
    importc: "fz_highlight_selection", header: "structured-text.h".}
const
  FZ_SELECT_CHARS* = 0
  FZ_SELECT_WORDS* = 1
  FZ_SELECT_LINES* = 2

proc fzSnapSelection*(ctx: ptr FzContext; page: ptr FzStextPage; ap: ptr FzPoint;
                     bp: ptr FzPoint; mode: cint): FzQuad {.cdecl,
    importc: "fz_snap_selection", header: "structured-text.h".}
## *
## 	Return a newly allocated UTF-8 string with the text for a given
## 	selection.
##
## 	crlf: If true, write "\r\n" style line endings (otherwise "\n"
## 	only).
##

proc fzCopySelection*(ctx: ptr FzContext; page: ptr FzStextPage; a: FzPoint; b: FzPoint;
                     crlf: cint): cstring {.cdecl, importc: "fz_copy_selection",
    header: "structured-text.h".}
## *
## 	Return a newly allocated UTF-8 string with the text for a given
## 	selection rectangle.
##
## 	crlf: If true, write "\r\n" style line endings (otherwise "\n"
## 	only).
##

proc fzCopyRectangle*(ctx: ptr FzContext; page: ptr FzStextPage; area: FzRect; crlf: cint): cstring {.
    cdecl, importc: "fz_copy_rectangle", header: "structured-text.h".}
## *
## 	Options for creating a pixmap and draw device.
##




proc fzParseStextOptions*(ctx: ptr FzContext; opts: ptr FzStextOptions; string: cstring): ptr FzStextOptions {.
    cdecl, importc: "fz_parse_stext_options", header: "structured-text.h".}
## *
## 	Create a device to extract the text on a page.
##
## 	Gather the text on a page into blocks and lines.
##
## 	The reading order is taken from the order the text is drawn in
## 	the source file, so may not be accurate.
##
## 	page: The text page to which content should be added. This will
## 	usually be a newly created (empty) text page, but it can be one
## 	containing data already (for example when merging multiple
## 	pages, or watermarking).
##
## 	options: Options to configure the stext device.
##

proc fzNewStextDevice*(ctx: ptr FzContext; page: ptr FzStextPage;
                      options: ptr FzStextOptions): ptr FzDevice {.cdecl,
    importc: "fz_new_stext_device", header: "structured-text.h".}
## *
## 	Create a device to OCR the text on the page.
##
## 	Renders the page internally to a bitmap that is then OCRd. Text
## 	is then forwarded onto the target device.
##
## 	target: The target device to receive the OCRd text.
##
## 	ctm: The transform to apply to the mediabox to get the size for
## 	the rendered page image. Also used to calculate the resolution
## 	for the page image. In general, this will be the same as the CTM
## 	that you pass to fz_run_page (or fz_run_display_list) to feed
## 	this device.
##
## 	mediabox: The mediabox (in points). Combined with the CTM to get
## 	the bounds of the pixmap used internally for the rendered page
## 	image.
##
## 	with_list: If with_list is false, then all non-text operations
## 	are forwarded instantly to the target device. This results in
## 	the target device seeing all NON-text operations, followed by
## 	all the text operations (derived from OCR).
##
## 	If with_list is true, then all the marking operations are
## 	collated into a display list which is then replayed to the
## 	target device at the end.
##
## 	language: NULL (for "eng"), or a pointer to a string to describe
## 	the languages/scripts that should be used for OCR (e.g.
## 	"eng,ara").
##
## 	datadir: NULL (for ""), or a pointer to a path string otherwise
## 	provided to Tesseract in the TESSDATA_PREFIX environment variable.
##
## 	progress: NULL, or function to be called periodically to indicate
## 	progress. Return 0 to continue, or 1 to cancel. progress_arg is
## 	returned as the void *. The int is a value between 0 and 100 to
## 	indicate progress.
##
## 	progress_arg: A void * value to be parrotted back to the progress
## 	function.
##

proc fzNewOcrDevice*(ctx: ptr FzContext; target: ptr FzDevice; ctm: FzMatrix;
                    mediabox: FzRect; withList: cint; language: cstring;
                    datadir: cstring; progress: proc (a1: ptr FzContext; a2: pointer;
    a3: cint): cint {.cdecl.}; progressArg: pointer): ptr FzDevice {.cdecl,
    importc: "fz_new_ocr_device", header: "structured-text.h".}
proc fzOpenReflowedDocument*(ctx: ptr FzContext; underdoc: ptr FzDocument;
                            opts: ptr FzStextOptions): ptr FzDocument {.cdecl,
    importc: "fz_open_reflowed_document", header: "structured-text.h".}
