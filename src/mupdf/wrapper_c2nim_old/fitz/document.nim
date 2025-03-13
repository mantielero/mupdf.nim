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

## !!!Ignored construct:  # MUPDF_FITZ_DOCUMENT_H [NewLine] # MUPDF_FITZ_DOCUMENT_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/types.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/geometry.h [NewLine] # mupdf/fitz/device.h [NewLine] # mupdf/fitz/transition.h [NewLine] # mupdf/fitz/link.h [NewLine] # mupdf/fitz/outline.h [NewLine] # mupdf/fitz/separation.h [NewLine] typedef struct fz_document_handler fz_document_handler ;
## Error: identifier expected, but got: (!!!



proc fzMakeLocation*(chapter: cint; page: cint): FzLocation {.inline, cdecl.} =
  var loc: FzLocation
  return loc

const                         ##  6in at 4:3
  FZ_LAYOUT_KINDLE_W* = 260
  FZ_LAYOUT_KINDLE_H* = 346
  FZ_LAYOUT_KINDLE_EM* = 9      ##  4.25 x 6.87 in
  FZ_LAYOUT_US_POCKET_W* = 306
  FZ_LAYOUT_US_POCKET_H* = 495
  FZ_LAYOUT_US_POCKET_EM* = 10  ##  5.5 x 8.5 in
  FZ_LAYOUT_US_TRADE_W* = 396
  FZ_LAYOUT_US_TRADE_H* = 612
  FZ_LAYOUT_US_TRADE_EM* = 11   ##  110 x 178 mm
  FZ_LAYOUT_UK_A_FORMAT_W* = 312
  FZ_LAYOUT_UK_A_FORMAT_H* = 504
  FZ_LAYOUT_UK_A_FORMAT_EM* = 10 ##  129 x 198 mm
  FZ_LAYOUT_UK_B_FORMAT_W* = 366
  FZ_LAYOUT_UK_B_FORMAT_H* = 561
  FZ_LAYOUT_UK_B_FORMAT_EM* = 10 ##  135 x 216 mm
  FZ_LAYOUT_UK_C_FORMAT_W* = 382
  FZ_LAYOUT_UK_C_FORMAT_H* = 612
  FZ_LAYOUT_UK_C_FORMAT_EM* = 11 ##  148 x 210 mm
  FZ_LAYOUT_A5_W* = 420
  FZ_LAYOUT_A5_H* = 595
  FZ_LAYOUT_A5_EM* = 11         ##  Default to A5
  FZ_DEFAULT_LAYOUT_W* = FZ_LAYOUT_A5_W
  FZ_DEFAULT_LAYOUT_H* = FZ_LAYOUT_A5_H
  FZ_DEFAULT_LAYOUT_EM* = FZ_LAYOUT_A5_EM










































































proc fzRegisterDocumentHandler*(ctx: ptr FzContext; handler: ptr FzDocumentHandler) {.
    cdecl, importc: "fz_register_document_handler", header: "document.h".}
## *
## 	Register handlers
## 	for all the standard document types supported in
## 	this build.
##

proc fzRegisterDocumentHandlers*(ctx: ptr FzContext) {.cdecl,
    importc: "fz_register_document_handlers", header: "document.h".}
## *
## 	Given a magic find a document handler that can handle a
## 	document of this type.
##
## 	magic: Can be a filename extension (including initial period) or
## 	a mimetype.
##

proc fzRecognizeDocument*(ctx: ptr FzContext; magic: cstring): ptr FzDocumentHandler {.
    cdecl, importc: "fz_recognize_document", header: "document.h".}
## *
## 	Open a document file and read its basic structure so pages and
## 	objects can be located. MuPDF will try to repair broken
## 	documents (without actually changing the file contents).
##
## 	The returned fz_document is used when calling most other
## 	document related functions.
##
## 	filename: a path to a file as it would be given to open(2).
##

proc fzOpenDocument*(ctx: ptr FzContext; filename: cstring): ptr FzDocument {.cdecl,
    importc: "fz_open_document", header: "document.h".}
## *
## 	Open a document file and read its basic structure so pages and
## 	objects can be located. MuPDF will try to repair broken
## 	documents (without actually changing the file contents).
##
## 	The returned fz_document is used when calling most other
## 	document related functions.
##
## 	filename: a path to a file as it would be given to open(2).
##

proc fzOpenAcceleratedDocument*(ctx: ptr FzContext; filename: cstring; accel: cstring): ptr FzDocument {.
    cdecl, importc: "fz_open_accelerated_document", header: "document.h".}
## *
## 	Open a document using the specified stream object rather than
## 	opening a file on disk.
##
## 	magic: a string used to detect document type; either a file name
## 	or mime-type.
##

proc fzOpenDocumentWithStream*(ctx: ptr FzContext; magic: cstring;
                              stream: ptr FzStream): ptr FzDocument {.cdecl,
    importc: "fz_open_document_with_stream", header: "document.h".}
## *
## 	Open a document using the specified stream object rather than
## 	opening a file on disk.
##
## 	magic: a string used to detect document type; either a file name
## 	or mime-type.
##

proc fzOpenAcceleratedDocumentWithStream*(ctx: ptr FzContext; magic: cstring;
    stream: ptr FzStream; accel: ptr FzStream): ptr FzDocument {.cdecl,
    importc: "fz_open_accelerated_document_with_stream", header: "document.h".}
## *
## 	Query if the document supports the saving of accelerator data.
##

proc fzDocumentSupportsAccelerator*(ctx: ptr FzContext; doc: ptr FzDocument): cint {.
    cdecl, importc: "fz_document_supports_accelerator", header: "document.h".}
## *
## 	Save accelerator data for the document to a given file.
##

proc fzSaveAccelerator*(ctx: ptr FzContext; doc: ptr FzDocument; accel: cstring) {.cdecl,
    importc: "fz_save_accelerator", header: "document.h".}
## *
## 	Output accelerator data for the document to a given output
## 	stream.
##

proc fzOutputAccelerator*(ctx: ptr FzContext; doc: ptr FzDocument; accel: ptr FzOutput) {.
    cdecl, importc: "fz_output_accelerator", header: "document.h".}
## *
## 	New documents are typically created by calls like
## 	foo_new_document(fz_context *ctx, ...). These work by
## 	deriving a new document type from fz_document, for instance:
## 	typedef struct { fz_document base; ...extras... } foo_document;
## 	These are allocated by calling
## 	fz_new_derived_document(ctx, foo_document)
##

proc fzNewDocumentOfSize*(ctx: ptr FzContext; size: cint): pointer {.cdecl,
    importc: "fz_new_document_of_size", header: "document.h".}
## !!!Ignored construct:  # fz_new_derived_document ( C , M ) ( ( M * ) Memento_label ( fz_new_document_of_size ( C , sizeof ( M ) ) , # ) ) [NewLine] *
## 	Increment the document reference count. The same pointer is
## 	returned.
##
## 	Never throws exceptions.
##  fz_document * fz_keep_document ( fz_context * ctx , fz_document * doc ) ;
## Error: identifier expected, but got: (!!!

## *
## 	Decrement the document reference count. When the reference
## 	count reaches 0, the document and all it's references are
## 	freed.
##
## 	Never throws exceptions.
##

proc fzDropDocument*(ctx: ptr FzContext; doc: ptr FzDocument) {.cdecl,
    importc: "fz_drop_document", header: "document.h".}
## *
## 	Check if a document is encrypted with a
## 	non-blank password.
##

proc fzNeedsPassword*(ctx: ptr FzContext; doc: ptr FzDocument): cint {.cdecl,
    importc: "fz_needs_password", header: "document.h".}
## *
## 	Test if the given password can decrypt the document.
##
## 	password: The password string to be checked. Some document
## 	specifications do not specify any particular text encoding, so
## 	neither do we.
##
## 	Returns 0 for failure to authenticate, non-zero for success.
##
## 	For PDF documents, further information can be given by examining
## 	the bits in the return code.
##
## 		Bit 0 => No password required
## 		Bit 1 => User password authenticated
## 		Bit 2 => Owner password authenticated
##

proc fzAuthenticatePassword*(ctx: ptr FzContext; doc: ptr FzDocument; password: cstring): cint {.
    cdecl, importc: "fz_authenticate_password", header: "document.h".}
## *
## 	Load the hierarchical document outline.
##
## 	Should be freed by fz_drop_outline.
##

proc fzLoadOutline*(ctx: ptr FzContext; doc: ptr FzDocument): ptr FzOutline {.cdecl,
    importc: "fz_load_outline", header: "document.h".}
## *
## 	Get an iterator for the document outline.
##
## 	Should be freed by fz_drop_outline_iterator.
##

proc fzNewOutlineIterator*(ctx: ptr FzContext; doc: ptr FzDocument): ptr FzOutlineIterator {.
    cdecl, importc: "fz_new_outline_iterator", header: "document.h".}
## *
## 	Is the document reflowable.
##
## 	Returns 1 to indicate reflowable documents, otherwise 0.
##

proc fzIsDocumentReflowable*(ctx: ptr FzContext; doc: ptr FzDocument): cint {.cdecl,
    importc: "fz_is_document_reflowable", header: "document.h".}
## *
## 	Layout reflowable document types.
##
## 	w, h: Page size in points.
## 	em: Default font size in points.
##

proc fzLayoutDocument*(ctx: ptr FzContext; doc: ptr FzDocument; w: cfloat; h: cfloat;
                      em: cfloat) {.cdecl, importc: "fz_layout_document",
                                  header: "document.h".}
## *
## 	Create a bookmark for the given page, which can be used to find
## 	the same location after the document has been laid out with
## 	different parameters.
##

proc fzMakeBookmark*(ctx: ptr FzContext; doc: ptr FzDocument; loc: FzLocation): FzBookmark {.
    cdecl, importc: "fz_make_bookmark", header: "document.h".}
## *
## 	Find a bookmark and return its page number.
##

proc fzLookupBookmark*(ctx: ptr FzContext; doc: ptr FzDocument; mark: FzBookmark): FzLocation {.
    cdecl, importc: "fz_lookup_bookmark", header: "document.h".}
## *
## 	Return the number of pages in document
##
## 	May return 0 for documents with no pages.
##

proc fzCountPages*(ctx: ptr FzContext; doc: ptr FzDocument): cint {.cdecl,
    importc: "fz_count_pages", header: "document.h".}
## *
## 	Resolve an internal link to a page number, location, and possible viewing parameters.
##
## 	Returns location (-1,-1) if the URI cannot be resolved.
##

proc fzResolveLinkDest*(ctx: ptr FzContext; doc: ptr FzDocument; uri: cstring): FzLinkDest {.
    cdecl, importc: "fz_resolve_link_dest", header: "document.h".}
## *
## 	Format an internal link to a page number, location, and possible viewing parameters,
## 	suitable for use with fz_create_link.
##
## 	Returns a newly allocated string that the caller must free.
##

proc fzFormatLinkUri*(ctx: ptr FzContext; doc: ptr FzDocument; dest: FzLinkDest): cstring {.
    cdecl, importc: "fz_format_link_uri", header: "document.h".}
## *
## 	Resolve an internal link to a page number.
##
## 	xp, yp: Pointer to store coordinate of destination on the page.
##
## 	Returns (-1,-1) if the URI cannot be resolved.
##

proc fzResolveLink*(ctx: ptr FzContext; doc: ptr FzDocument; uri: cstring;
                   xp: ptr cfloat; yp: ptr cfloat): FzLocation {.cdecl,
    importc: "fz_resolve_link", header: "document.h".}
## *
## 	Function to get the location for the last page in the document.
## 	Using this can be far more efficient in some cases than calling
## 	fz_count_pages and using the page number.
##

proc fzLastPage*(ctx: ptr FzContext; doc: ptr FzDocument): FzLocation {.cdecl,
    importc: "fz_last_page", header: "document.h".}
## *
## 	Function to get the location of the next page (allowing for the
## 	end of chapters etc). If at the end of the document, returns the
## 	current location.
##

proc fzNextPage*(ctx: ptr FzContext; doc: ptr FzDocument; loc: FzLocation): FzLocation {.
    cdecl, importc: "fz_next_page", header: "document.h".}
## *
## 	Function to get the location of the previous page (allowing for
## 	the end of chapters etc). If already at the start of the
## 	document, returns the current page.
##

proc fzPreviousPage*(ctx: ptr FzContext; doc: ptr FzDocument; loc: FzLocation): FzLocation {.
    cdecl, importc: "fz_previous_page", header: "document.h".}
## *
## 	Clamps a location into valid chapter/page range. (First clamps
## 	the chapter into range, then the page into range).
##

proc fzClampLocation*(ctx: ptr FzContext; doc: ptr FzDocument; loc: FzLocation): FzLocation {.
    cdecl, importc: "fz_clamp_location", header: "document.h".}
## *
## 	Converts from page number to chapter+page. This may cause many
## 	chapters to be laid out in order to calculate the number of
## 	pages within those chapters.
##

proc fzLocationFromPageNumber*(ctx: ptr FzContext; doc: ptr FzDocument; number: cint): FzLocation {.
    cdecl, importc: "fz_location_from_page_number", header: "document.h".}
## *
## 	Converts from chapter+page to page number. This may cause many
## 	chapters to be laid out in order to calculate the number of
## 	pages within those chapters.
##

proc fzPageNumberFromLocation*(ctx: ptr FzContext; doc: ptr FzDocument; loc: FzLocation): cint {.
    cdecl, importc: "fz_page_number_from_location", header: "document.h".}
## *
## 	Load a given page number from a document. This may be much less
## 	efficient than loading by location (chapter+page) for some
## 	document types.
##

proc fzLoadPage*(ctx: ptr FzContext; doc: ptr FzDocument; number: cint): ptr FzPage {.
    cdecl, importc: "fz_load_page", header: "document.h".}
## *
## 	Return the number of chapters in the document.
## 	At least 1.
##

proc fzCountChapters*(ctx: ptr FzContext; doc: ptr FzDocument): cint {.cdecl,
    importc: "fz_count_chapters", header: "document.h".}
## *
## 	Return the number of pages in a chapter.
## 	May return 0.
##

proc fzCountChapterPages*(ctx: ptr FzContext; doc: ptr FzDocument; chapter: cint): cint {.
    cdecl, importc: "fz_count_chapter_pages", header: "document.h".}
## *
## 	Load a page.
##
## 	After fz_load_page is it possible to retrieve the size of the
## 	page using fz_bound_page, or to render the page using
## 	fz_run_page_*. Free the page by calling fz_drop_page.
##
## 	chapter: chapter number, 0 is the first chapter of the document.
## 	number: page number, 0 is the first page of the chapter.
##

proc fzLoadChapterPage*(ctx: ptr FzContext; doc: ptr FzDocument; chapter: cint;
                       page: cint): ptr FzPage {.cdecl,
    importc: "fz_load_chapter_page", header: "document.h".}
## *
## 	Load the list of links for a page.
##
## 	Returns a linked list of all the links on the page, each with
## 	its clickable region and link destination. Each link is
## 	reference counted so drop and free the list of links by
## 	calling fz_drop_link on the pointer return from fz_load_links.
##
## 	page: Page obtained from fz_load_page.
##

proc fzLoadLinks*(ctx: ptr FzContext; page: ptr FzPage): ptr FzLink {.cdecl,
    importc: "fz_load_links", header: "document.h".}
## *
## 	Different document types will be implemented by deriving from
## 	fz_page. This macro allocates such derived structures, and
## 	initialises the base sections.
##

proc fzNewPageOfSize*(ctx: ptr FzContext; size: cint; doc: ptr FzDocument): ptr FzPage {.
    cdecl, importc: "fz_new_page_of_size", header: "document.h".}
## !!!Ignored construct:  # fz_new_derived_page ( CTX , TYPE , DOC ) ( ( TYPE * ) Memento_label ( fz_new_page_of_size ( CTX , sizeof ( TYPE ) , DOC ) , # ) ) [NewLine] *
## 	Determine the size of a page at 72 dpi.
##  fz_rect fz_bound_page ( fz_context * ctx , fz_page * page ) ;
## Error: identifier expected, but got: (!!!

## *
## 	Run a page through a device.
##
## 	page: Page obtained from fz_load_page.
##
## 	dev: Device obtained from fz_new_*_device.
##
## 	transform: Transform to apply to page. May include for example
## 	scaling and rotation, see fz_scale, fz_rotate and fz_concat.
## 	Set to fz_identity if no transformation is desired.
##
## 	cookie: Communication mechanism between caller and library
## 	rendering the page. Intended for multi-threaded applications,
## 	while single-threaded applications set cookie to NULL. The
## 	caller may abort an ongoing rendering of a page. Cookie also
## 	communicates progress information back to the caller. The
## 	fields inside cookie are continually updated while the page is
## 	rendering.
##

proc fzRunPage*(ctx: ptr FzContext; page: ptr FzPage; dev: ptr FzDevice;
               transform: FzMatrix; cookie: ptr FzCookie) {.cdecl,
    importc: "fz_run_page", header: "document.h".}
## *
## 	Run a page through a device. Just the main
## 	page content, without the annotations, if any.
##
## 	page: Page obtained from fz_load_page.
##
## 	dev: Device obtained from fz_new_*_device.
##
## 	transform: Transform to apply to page. May include for example
## 	scaling and rotation, see fz_scale, fz_rotate and fz_concat.
## 	Set to fz_identity if no transformation is desired.
##
## 	cookie: Communication mechanism between caller and library
## 	rendering the page. Intended for multi-threaded applications,
## 	while single-threaded applications set cookie to NULL. The
## 	caller may abort an ongoing rendering of a page. Cookie also
## 	communicates progress information back to the caller. The
## 	fields inside cookie are continually updated while the page is
## 	rendering.
##

proc fzRunPageContents*(ctx: ptr FzContext; page: ptr FzPage; dev: ptr FzDevice;
                       transform: FzMatrix; cookie: ptr FzCookie) {.cdecl,
    importc: "fz_run_page_contents", header: "document.h".}
## *
## 	Run the annotations on a page through a device.
##

proc fzRunPageAnnots*(ctx: ptr FzContext; page: ptr FzPage; dev: ptr FzDevice;
                     transform: FzMatrix; cookie: ptr FzCookie) {.cdecl,
    importc: "fz_run_page_annots", header: "document.h".}
## *
## 	Run the widgets on a page through a device.
##

proc fzRunPageWidgets*(ctx: ptr FzContext; page: ptr FzPage; dev: ptr FzDevice;
                      transform: FzMatrix; cookie: ptr FzCookie) {.cdecl,
    importc: "fz_run_page_widgets", header: "document.h".}
## *
## 	Increment the reference count for the page. Returns the same
## 	pointer.
##
## 	Never throws exceptions.
##

proc fzKeepPage*(ctx: ptr FzContext; page: ptr FzPage): ptr FzPage {.cdecl,
    importc: "fz_keep_page", header: "document.h".}
## *
## 	Increment the reference count for the page. Returns the same
## 	pointer. Must only be used when the alloc lock is already taken.
##
## 	Never throws exceptions.
##

proc fzKeepPageLocked*(ctx: ptr FzContext; page: ptr FzPage): ptr FzPage {.cdecl,
    importc: "fz_keep_page_locked", header: "document.h".}
## *
## 	Decrements the reference count for the page. When the reference
## 	count hits 0, the page and its references are freed.
##
## 	Never throws exceptions.
##

proc fzDropPage*(ctx: ptr FzContext; page: ptr FzPage) {.cdecl, importc: "fz_drop_page",
    header: "document.h".}
## *
## 	Get the presentation details for a given page.
##
## 	transition: A pointer to a transition struct to fill out.
##
## 	duration: A pointer to a place to set the page duration in
## 	seconds. Will be set to 0 if no transition is specified for the
## 	page.
##
## 	Returns: a pointer to the transition structure, or NULL if there
## 	is no transition specified for the page.
##

proc fzPagePresentation*(ctx: ptr FzContext; page: ptr FzPage;
                        transition: ptr FzTransition; duration: ptr cfloat): ptr FzTransition {.
    cdecl, importc: "fz_page_presentation", header: "document.h".}
## *
## 	Check permission flags on document.
##

proc fzHasPermission*(ctx: ptr FzContext; doc: ptr FzDocument; p: FzPermission): cint {.
    cdecl, importc: "fz_has_permission", header: "document.h".}
## *
## 	Retrieve document meta data strings.
##
## 	doc: The document to query.
##
## 	key: Which meta data key to retrieve...
##
## 	Basic information:
## 		'format'	-- Document format and version.
## 		'encryption'	-- Description of the encryption used.
##
## 	From the document information dictionary:
## 		'info:Title'
## 		'info:Author'
## 		'info:Subject'
## 		'info:Keywords'
## 		'info:Creator'
## 		'info:Producer'
## 		'info:CreationDate'
## 		'info:ModDate'
##
## 	buf: The buffer to hold the results (a nul-terminated UTF-8
## 	string).
##
## 	size: Size of 'buf'.
##
## 	Returns the number of bytes need to store the string plus terminator
## 	(will be larger than 'size' if the output was truncated), or -1 if the
## 	key is not recognized or found.
##

proc fzLookupMetadata*(ctx: ptr FzContext; doc: ptr FzDocument; key: cstring;
                      buf: cstring; size: cint): cint {.cdecl,
    importc: "fz_lookup_metadata", header: "document.h".}
const
  FZ_META_FORMAT* = "format"
  FZ_META_ENCRYPTION* = "encryption"
  FZ_META_INFO* = "info:"
  FZ_META_INFO_TITLE* = "info:Title"
  FZ_META_INFO_AUTHOR* = "info:Author"
  FZ_META_INFO_SUBJECT* = "info:Subject"
  FZ_META_INFO_KEYWORDS* = "info:Keywords"
  FZ_META_INFO_CREATOR* = "info:Creator"
  FZ_META_INFO_PRODUCER* = "info:Producer"
  FZ_META_INFO_CREATIONDATE* = "info:CreationDate"
  FZ_META_INFO_MODIFICATIONDATE* = "info:ModDate"

proc fzSetMetadata*(ctx: ptr FzContext; doc: ptr FzDocument; key: cstring; value: cstring) {.
    cdecl, importc: "fz_set_metadata", header: "document.h".}
## *
## 	Find the output intent colorspace if the document has defined
## 	one.
##
## 	Returns a borrowed reference that should not be dropped, unless
## 	it is kept first.
##

proc fzDocumentOutputIntent*(ctx: ptr FzContext; doc: ptr FzDocument): ptr FzColorspace {.
    cdecl, importc: "fz_document_output_intent", header: "document.h".}
## *
## 	Get the separations details for a page.
## 	This will be NULL, unless the format specifically supports
## 	separations (such as PDF files). May be NULL even
## 	so, if there are no separations on a page.
##
## 	Returns a reference that must be dropped.
##

proc fzPageSeparations*(ctx: ptr FzContext; page: ptr FzPage): ptr FzSeparations {.cdecl,
    importc: "fz_page_separations", header: "document.h".}
## *
## 	Query if a given page requires overprint.
##

proc fzPageUsesOverprint*(ctx: ptr FzContext; page: ptr FzPage): cint {.cdecl,
    importc: "fz_page_uses_overprint", header: "document.h".}
## *
## 	Create a new link on a page.
##

proc fzCreateLink*(ctx: ptr FzContext; page: ptr FzPage; bbox: FzRect; uri: cstring): ptr FzLink {.
    cdecl, importc: "fz_create_link", header: "document.h".}
## *
## 	Delete an existing link on a page.
##

proc fzDeleteLink*(ctx: ptr FzContext; page: ptr FzPage; link: ptr FzLink) {.cdecl,
    importc: "fz_delete_link", header: "document.h".}
## *
## 	Iterates over all opened pages of the document, calling the
## 	provided callback for each page for processing. If the callback
## 	returns non-NULL then the iteration stops and that value is returned
## 	to the called of fz_process_opened_pages().
##
## 	The state pointer provided to fz_process_opened_pages() is
## 	passed on to the callback but is owned by the caller.
##
## 	Returns the first non-NULL value returned by the callback,
## 	or NULL if the callback returned NULL for all opened pages.
##

proc fzProcessOpenedPages*(ctx: ptr FzContext; doc: ptr FzDocument;
                          processOpenendPage: ptr FzProcessOpenedPageFn;
                          state: pointer): pointer {.cdecl,
    importc: "fz_process_opened_pages", header: "document.h".}
##  Implementation details: subject to change.
## *
## 	Structure definition is public so other classes can
## 	derive from it. Do not access the members directly.
##







