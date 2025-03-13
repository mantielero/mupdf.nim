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

## !!!Ignored construct:  # MUPDF_FITZ_LINK_H [NewLine] # MUPDF_FITZ_LINK_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/geometry.h [NewLine] # mupdf/fitz/types.h [NewLine] typedef struct fz_link fz_link ;
## Error: identifier expected, but got: (!!!







proc fzMakeLinkDestNone*(): FzLinkDest {.cdecl, importc: "fz_make_link_dest_none",
                                      header: "link.h".}
proc fzMakeLinkDestXyz*(chapter: cint; page: cint; x: cfloat; y: cfloat; z: cfloat): FzLinkDest {.
    cdecl, importc: "fz_make_link_dest_xyz", header: "link.h".}
## *
## 	Create a new link record.
##
## 	next is set to NULL with the expectation that the caller will
## 	handle the linked list setup. Internal function.
##
## 	Different document types will be implemented by deriving from
## 	fz_link. This macro allocates such derived structures, and
## 	initialises the base sections.
##

proc fzNewLinkOfSize*(ctx: ptr FzContext; size: cint; rect: FzRect; uri: cstring): ptr FzLink {.
    cdecl, importc: "fz_new_link_of_size", header: "link.h".}
## !!!Ignored construct:  # fz_new_derived_link ( CTX , TYPE , RECT , URI ) ( ( TYPE * ) Memento_label ( fz_new_link_of_size ( CTX , sizeof ( TYPE ) , RECT , URI ) , # ) ) [NewLine] *
## 	Increment the reference count for a link. The same pointer is
## 	returned.
##
## 	Never throws exceptions.
##  fz_link * fz_keep_link ( fz_context * ctx , fz_link * link ) ;
## Error: identifier expected, but got: (!!!

## *
## 	Decrement the reference count for a link. When the reference
## 	count reaches zero, the link is destroyed.
##
## 	When a link is freed, the reference for any linked link (next)
## 	is dropped too, thus an entire linked list of fz_link's can be
## 	freed by just dropping the head.
##

proc fzDropLink*(ctx: ptr FzContext; link: ptr FzLink) {.cdecl, importc: "fz_drop_link",
    header: "link.h".}
## *
## 	Query whether a link is external to a document (determined by
## 	uri containing a ':', intended to match with '://' which
## 	separates the scheme from the scheme specific parts in URIs).
##

proc fzIsExternalLink*(ctx: ptr FzContext; uri: cstring): cint {.cdecl,
    importc: "fz_is_external_link", header: "link.h".}
proc fzSetLinkRect*(ctx: ptr FzContext; link: ptr FzLink; rect: FzRect) {.cdecl,
    importc: "fz_set_link_rect", header: "link.h".}
proc fzSetLinkUri*(ctx: ptr FzContext; link: ptr FzLink; uri: cstring) {.cdecl,
    importc: "fz_set_link_uri", header: "link.h".}
