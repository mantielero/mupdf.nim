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

## !!!Ignored construct:  # MUPDF_FITZ_OUTLINE_H [NewLine] # MUPDF_FITZ_OUTLINE_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/types.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/link.h [NewLine] # mupdf/fitz/output.h [NewLine]  Outline typedef struct { char * title ; char * uri ; int is_open ; } fz_outline_item ;
## Error: identifier expected, but got: (!!!



proc fzOutlineIteratorItem*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): ptr FzOutlineItem {.
    cdecl, importc: "fz_outline_iterator_item", header: "outline.h".}
## *
## 	Calls to move the iterator position.
##
## 	A negative return value means we could not move as requested. Otherwise:
## 	0 = the final position has a valid item.
## 	1 = not a valid item, but we can insert an item here.
##

proc fzOutlineIteratorNext*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
    cdecl, importc: "fz_outline_iterator_next", header: "outline.h".}
proc fzOutlineIteratorPrev*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
    cdecl, importc: "fz_outline_iterator_prev", header: "outline.h".}
proc fzOutlineIteratorUp*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
    cdecl, importc: "fz_outline_iterator_up", header: "outline.h".}
proc fzOutlineIteratorDown*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
    cdecl, importc: "fz_outline_iterator_down", header: "outline.h".}
## *
## 	Call to insert a new item BEFORE the current point.
##
## 	Ownership of pointers are retained by the caller. The item data will be copied.
##
## 	After an insert, we do not change where we are pointing.
## 	The return code is the same as for next, it indicates the current iterator position.
##

proc fzOutlineIteratorInsert*(ctx: ptr FzContext; iter: ptr FzOutlineIterator;
                             item: ptr FzOutlineItem): cint {.cdecl,
    importc: "fz_outline_iterator_insert", header: "outline.h".}
## *
## 	Delete the current item.
##
## 	This implicitly moves us to the 'next' item, and the return code is as for fz_outline_iterator_next.
##

proc fzOutlineIteratorDelete*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
    cdecl, importc: "fz_outline_iterator_delete", header: "outline.h".}
## *
## 	Update the current item properties according to the given item.
##

proc fzOutlineIteratorUpdate*(ctx: ptr FzContext; iter: ptr FzOutlineIterator;
                             item: ptr FzOutlineItem) {.cdecl,
    importc: "fz_outline_iterator_update", header: "outline.h".}
## *
## 	Drop the current iterator.
##

proc fzDropOutlineIterator*(ctx: ptr FzContext; iter: ptr FzOutlineIterator) {.cdecl,
    importc: "fz_drop_outline_iterator", header: "outline.h".}
## * Structure based API
## *
## 	fz_outline is a tree of the outline of a document (also known
## 	as table of contents).
##
## 	title: Title of outline item using UTF-8 encoding. May be NULL
## 	if the outline item has no text string.
##
## 	uri: Destination in the document to be displayed when this
## 	outline item is activated. May be an internal or external
## 	link, or NULL if the outline item does not have a destination.
##
## 	page: The page number of an internal link, or -1 for external
## 	links or links with no destination.
##
## 	next: The next outline item at the same level as this outline
## 	item. May be NULL if no more outline items exist at this level.
##
## 	down: The outline items immediate children in the hierarchy.
## 	May be NULL if no children exist.
##




proc fzNewOutline*(ctx: ptr FzContext): ptr FzOutline {.cdecl,
    importc: "fz_new_outline", header: "outline.h".}
## *
## 	Increment the reference count. Returns the same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepOutline*(ctx: ptr FzContext; outline: ptr FzOutline): ptr FzOutline {.cdecl,
    importc: "fz_keep_outline", header: "outline.h".}
## *
## 	Decrements the reference count. When the reference point
## 	reaches zero, the outline is freed.
##
## 	When freed, it will drop linked	outline entries (next and down)
## 	too, thus a whole outline structure can be dropped by dropping
## 	the top entry.
##
## 	Never throws exceptions.
##

proc fzDropOutline*(ctx: ptr FzContext; outline: ptr FzOutline) {.cdecl,
    importc: "fz_drop_outline", header: "outline.h".}
## *
## 	Routine to implement the old Structure based API from an iterator.
##

proc fzLoadOutlineFromIterator*(ctx: ptr FzContext; iter: ptr FzOutlineIterator): ptr FzOutline {.
    cdecl, importc: "fz_load_outline_from_iterator", header: "outline.h".}
## *
## 	Implementation details.
## 	Of use to people coding new document handlers.
##
## *
## 	Function type for getting the current item.
##
## 	Can return NULL. The item is only valid until the next call.
##













proc fzOutlineIteratorFromOutline*(ctx: ptr FzContext; outline: ptr FzOutline): ptr FzOutlineIterator {.
    cdecl, importc: "fz_outline_iterator_from_outline", header: "outline.h".}


