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

import
  mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/geometry, mupdf/fitz/store,
  mupdf/fitz/font, mupdf/fitz/path

## *
## 	Glyphs represent a run length encoded set of pixels for a 2
## 	dimensional region of a plane.
##



proc fzGlyphBbox*(ctx: ptr FzContext; glyph: ptr FzGlyph): FzIrect {.cdecl,
    importc: "fz_glyph_bbox", header: "glyph.h".}
proc fzGlyphBboxNoCtx*(src: ptr FzGlyph): FzIrect {.cdecl,
    importc: "fz_glyph_bbox_no_ctx", header: "glyph.h".}
## *
## 	Return the width of the glyph in pixels.
##

proc fzGlyphWidth*(ctx: ptr FzContext; glyph: ptr FzGlyph): cint {.cdecl,
    importc: "fz_glyph_width", header: "glyph.h".}
## *
## 	Return the height of the glyph in pixels.
##

proc fzGlyphHeight*(ctx: ptr FzContext; glyph: ptr FzGlyph): cint {.cdecl,
    importc: "fz_glyph_height", header: "glyph.h".}
## *
## 	Take a reference to a glyph.
##
## 	pix: The glyph to increment the reference for.
##
## 	Returns pix.
##

proc fzKeepGlyph*(ctx: ptr FzContext; pix: ptr FzGlyph): ptr FzGlyph {.cdecl,
    importc: "fz_keep_glyph", header: "glyph.h".}
## *
## 	Drop a reference and free a glyph.
##
## 	Decrement the reference count for the glyph. When no
## 	references remain the glyph will be freed.
##

proc fzDropGlyph*(ctx: ptr FzContext; pix: ptr FzGlyph) {.cdecl,
    importc: "fz_drop_glyph", header: "glyph.h".}
## *
## 	Look a glyph up from a font, and return the outline of the
## 	glyph using the given transform.
##
## 	The caller owns the returned path, and so is responsible for
## 	ensuring that it eventually gets dropped.
##

proc fzOutlineGlyph*(ctx: ptr FzContext; font: ptr FzFont; gid: cint; ctm: FzMatrix): ptr FzPath {.
    cdecl, importc: "fz_outline_glyph", header: "glyph.h".}
