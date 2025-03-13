import fitz_types
##  Copyright (C) 2004-2022 Artifex Software, Inc.
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

# import
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/geometry, mupdf/fitz/document,
#   mupdf/fitz/pixmap, mupdf/fitz/structured-text, mupdf/fitz/buffer, mupdf/fitz/xml,
#   mupdf/fitz/archive, mupdf/fitz/display-list

## *
## 	Create a display list.
##
## 	Ownership of the display list is returned to the caller.
##

proc fzNewDisplayListFromPage*(ctx: ptr FzContext; page: ptr FzPage): ptr FzDisplayList {.
    cdecl, importc: "fz_new_display_list_from_page", header: "util.h".}
proc fzNewDisplayListFromPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument;
                                    number: cint): ptr FzDisplayList {.cdecl,
    importc: "fz_new_display_list_from_page_number", header: "util.h".}
## *
## 	Create a display list from page contents (no annotations).
##
## 	Ownership of the display list is returned to the caller.
##

proc fzNewDisplayListFromPageContents*(ctx: ptr FzContext; page: ptr FzPage): ptr FzDisplayList {.
    cdecl, importc: "fz_new_display_list_from_page_contents", header: "util.h".}
## *
## 	Render the page to a pixmap using the transform and colorspace.
##
## 	Ownership of the pixmap is returned to the caller.
##

proc fzNewPixmapFromDisplayList*(ctx: ptr FzContext; list: ptr FzDisplayList;
                                ctm: FzMatrix; cs: ptr FzColorspace; alpha: cint): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_from_display_list", header: "util.h".}
proc fzNewPixmapFromPage*(ctx: ptr FzContext; page: ptr FzPage; ctm: FzMatrix;
                         cs: ptr FzColorspace; alpha: cint): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap_from_page", header: "util.h".}
proc fzNewPixmapFromPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument; number: cint;
                               ctm: FzMatrix; cs: ptr FzColorspace; alpha: cint): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_from_page_number", header: "util.h".}
## *
## 	Render the page contents without annotations.
##
## 	Ownership of the pixmap is returned to the caller.
##

proc fzNewPixmapFromPageContents*(ctx: ptr FzContext; page: ptr FzPage; ctm: FzMatrix;
                                 cs: ptr FzColorspace; alpha: cint): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_from_page_contents", header: "util.h".}
## *
## 	Render the page contents with control over spot colors.
##
## 	Ownership of the pixmap is returned to the caller.
##

proc fzNewPixmapFromDisplayListWithSeparations*(ctx: ptr FzContext;
    list: ptr FzDisplayList; ctm: FzMatrix; cs: ptr FzColorspace;
    seps: ptr FzSeparations; alpha: cint): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap_from_display_list_with_separations", header: "util.h".}
proc fzNewPixmapFromPageWithSeparations*(ctx: ptr FzContext; page: ptr FzPage;
                                        ctm: FzMatrix; cs: ptr FzColorspace;
                                        seps: ptr FzSeparations; alpha: cint): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_from_page_with_separations", header: "util.h".}
proc fzNewPixmapFromPageNumberWithSeparations*(ctx: ptr FzContext;
    doc: ptr FzDocument; number: cint; ctm: FzMatrix; cs: ptr FzColorspace;
    seps: ptr FzSeparations; alpha: cint): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap_from_page_number_with_separations", header: "util.h".}
proc fzNewPixmapFromPageContentsWithSeparations*(ctx: ptr FzContext;
    page: ptr FzPage; ctm: FzMatrix; cs: ptr FzColorspace; seps: ptr FzSeparations;
    alpha: cint): ptr FzPixmap {.cdecl, importc: "fz_new_pixmap_from_page_contents_with_separations",
                             header: "util.h".}
## *
## 	Extract text from page.
##
## 	Ownership of the fz_stext_page is returned to the caller.
##

proc fzNewStextPageFromPage*(ctx: ptr FzContext; page: ptr FzPage;
                            options: ptr FzStextOptions): ptr FzStextPage {.cdecl,
    importc: "fz_new_stext_page_from_page", header: "util.h".}
proc fzNewStextPageFromPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument;
                                  number: cint; options: ptr FzStextOptions): ptr FzStextPage {.
    cdecl, importc: "fz_new_stext_page_from_page_number", header: "util.h".}
proc fzNewStextPageFromChapterPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument;
    chapter: cint; number: cint; options: ptr FzStextOptions): ptr FzStextPage {.cdecl,
    importc: "fz_new_stext_page_from_chapter_page_number", header: "util.h".}
proc fzNewStextPageFromDisplayList*(ctx: ptr FzContext; list: ptr FzDisplayList;
                                   options: ptr FzStextOptions): ptr FzStextPage {.
    cdecl, importc: "fz_new_stext_page_from_display_list", header: "util.h".}
## *
## 	Convert structured text into plain text.
##

proc fzNewBufferFromStextPage*(ctx: ptr FzContext; text: ptr FzStextPage): ptr FzBuffer {.
    cdecl, importc: "fz_new_buffer_from_stext_page", header: "util.h".}
proc fzNewBufferFromPage*(ctx: ptr FzContext; page: ptr FzPage;
                         options: ptr FzStextOptions): ptr FzBuffer {.cdecl,
    importc: "fz_new_buffer_from_page", header: "util.h".}
proc fzNewBufferFromPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument; number: cint;
                               options: ptr FzStextOptions): ptr FzBuffer {.cdecl,
    importc: "fz_new_buffer_from_page_number", header: "util.h".}
proc fzNewBufferFromDisplayList*(ctx: ptr FzContext; list: ptr FzDisplayList;
                                options: ptr FzStextOptions): ptr FzBuffer {.cdecl,
    importc: "fz_new_buffer_from_display_list", header: "util.h".}
## *
## 	Search for the 'needle' text on the page.
## 	Record the hits in the hit_bbox array and return the number of
## 	hits. Will stop looking once it has filled hit_max rectangles.
##

proc fzSearchPage*(ctx: ptr FzContext; page: ptr FzPage; needle: cstring;
                  hitMark: ptr cint; hitBbox: ptr FzQuad; hitMax: cint): cint {.cdecl,
    importc: "fz_search_page", header: "util.h".}
proc fzSearchPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument; number: cint;
                        needle: cstring; hitMark: ptr cint; hitBbox: ptr FzQuad;
                        hitMax: cint): cint {.cdecl,
    importc: "fz_search_page_number", header: "util.h".}
proc fzSearchChapterPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument; chapter: cint;
                               page: cint; needle: cstring; hitMark: ptr cint;
                               hitBbox: ptr FzQuad; hitMax: cint): cint {.cdecl,
    importc: "fz_search_chapter_page_number", header: "util.h".}
proc fzSearchDisplayList*(ctx: ptr FzContext; list: ptr FzDisplayList; needle: cstring;
                         hitMark: ptr cint; hitBbox: ptr FzQuad; hitMax: cint): cint {.
    cdecl, importc: "fz_search_display_list", header: "util.h".}
## *
## 	Parse an SVG document into a display-list.
##

proc fzNewDisplayListFromSvg*(ctx: ptr FzContext; buf: ptr FzBuffer; baseUri: cstring;
                             zip: ptr FzArchive; w: ptr cfloat; h: ptr cfloat): ptr FzDisplayList {.
    cdecl, importc: "fz_new_display_list_from_svg", header: "util.h".}
## *
## 	Create a scalable image from an SVG document.
##

proc fzNewImageFromSvg*(ctx: ptr FzContext; buf: ptr FzBuffer; baseUri: cstring;
                       zip: ptr FzArchive): ptr FzImage {.cdecl,
    importc: "fz_new_image_from_svg", header: "util.h".}
## *
## 	Parse an SVG document into a display-list.
##

proc fzNewDisplayListFromSvgXml*(ctx: ptr FzContext; xmldoc: ptr FzXmlDoc;
                                xml: ptr FzXml; baseUri: cstring; zip: ptr FzArchive;
                                w: ptr cfloat; h: ptr cfloat): ptr FzDisplayList {.
    cdecl, importc: "fz_new_display_list_from_svg_xml", header: "util.h".}
## *
## 	Create a scalable image from an SVG document.
##

proc fzNewImageFromSvgXml*(ctx: ptr FzContext; xmldoc: ptr FzXmlDoc; xml: ptr FzXml;
                          baseUri: cstring; zip: ptr FzArchive): ptr FzImage {.cdecl,
    importc: "fz_new_image_from_svg_xml", header: "util.h".}
## *
## 	Write image as a data URI (for HTML and SVG output).
##

proc fzWriteImageAsDataUri*(ctx: ptr FzContext; `out`: ptr FzOutput; image: ptr FzImage) {.
    cdecl, importc: "fz_write_image_as_data_uri", header: "util.h".}
proc fzWritePixmapAsDataUri*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            pixmap: ptr FzPixmap) {.cdecl,
    importc: "fz_write_pixmap_as_data_uri", header: "util.h".}
proc fzAppendImageAsDataUri*(ctx: ptr FzContext; `out`: ptr FzBuffer;
                            image: ptr FzImage) {.cdecl,
    importc: "fz_append_image_as_data_uri", header: "util.h".}
proc fzAppendPixmapAsDataUri*(ctx: ptr FzContext; `out`: ptr FzBuffer;
                             pixmap: ptr FzPixmap) {.cdecl,
    importc: "fz_append_pixmap_as_data_uri", header: "util.h".}
## *
## 	Use text extraction to convert the input document into XHTML,
## 	then open the result as a new document that can be reflowed.
##

proc fzNewXhtmlDocumentFromDocument*(ctx: ptr FzContext; oldDoc: ptr FzDocument;
                                    opts: ptr FzStextOptions): ptr FzDocument {.
    cdecl, importc: "fz_new_xhtml_document_from_document", header: "util.h".}
## *
## 	Returns an fz_buffer containing a page after conversion to specified format.
##
## 	page: The page to convert.
## 	format, options: Passed to fz_new_document_writer_with_output() internally.
## 	transform, cookie: Passed to fz_run_page() internally.
##

proc fzNewBufferFromPageWithFormat*(ctx: ptr FzContext; page: ptr FzPage;
                                   format: cstring; options: cstring;
                                   transform: FzMatrix; cookie: ptr FzCookie): ptr FzBuffer {.
    cdecl, importc: "fz_new_buffer_from_page_with_format", header: "util.h".}