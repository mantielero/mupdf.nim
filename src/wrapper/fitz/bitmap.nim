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

# import
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/pixmap

## *
## 	Bitmaps have 1 bit per component. Only used for creating
## 	halftoned versions of contone buffers, and saving out. Samples
## 	are stored msb first, akin to pbms.
##
## 	The internals of this struct are considered implementation
## 	details and subject to change. Where possible, accessor
## 	functions should be used in preference.
##




proc fzKeepBitmap*(ctx: ptr FzContext; bit: ptr FzBitmap): ptr FzBitmap {.cdecl,
    importc: "fz_keep_bitmap", header: "bitmap.h".}
## *
## 	Drop a reference to the bitmap. When the reference count reaches
## 	zero, the bitmap will be destroyed.
##
## 	Never throws exceptions.
##

proc fzDropBitmap*(ctx: ptr FzContext; bit: ptr FzBitmap) {.cdecl,
    importc: "fz_drop_bitmap", header: "bitmap.h".}
## *
## 	A halftone is a set of threshold tiles, one per component. Each
## 	threshold tile is a pixmap, possibly of varying sizes and
## 	phases. Currently, we only provide one 'default' halftone tile
## 	for operating on 1 component plus alpha pixmaps (where the alpha
## 	is ignored). This is signified by a fz_halftone pointer to NULL.
##



proc fzNewBitmapFromPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap; ht: ptr FzHalftone): ptr FzBitmap {.
    cdecl, importc: "fz_new_bitmap_from_pixmap", header: "bitmap.h".}
## *
## 	Make a bitmap from a pixmap and a
## 	halftone, allowing for the position of the pixmap within an
## 	overall banded rendering.
##
## 	pix: The pixmap to generate from. Currently must be a single
## 	color component with no alpha.
##
## 	ht: The halftone to use. NULL implies the default halftone.
##
## 	band_start: Vertical offset within the overall banded rendering
## 	(in pixels)
##
## 	Returns the resultant bitmap. Throws exceptions in the case of
## 	failure to allocate.
##

proc fzNewBitmapFromPixmapBand*(ctx: ptr FzContext; pix: ptr FzPixmap;
                               ht: ptr FzHalftone; bandStart: cint): ptr FzBitmap {.
    cdecl, importc: "fz_new_bitmap_from_pixmap_band", header: "bitmap.h".}
## *
## 	Create a new bitmap.
##
## 	w, h: Width and Height for the bitmap
##
## 	n: Number of color components (assumed to be a divisor of 8)
##
## 	xres, yres: X and Y resolutions (in pixels per inch).
##
## 	Returns pointer to created bitmap structure. The bitmap
## 	data is uninitialised.
##

proc fzNewBitmap*(ctx: ptr FzContext; w: cint; h: cint; n: cint; xres: cint; yres: cint): ptr FzBitmap {.
    cdecl, importc: "fz_new_bitmap", header: "bitmap.h".}
## *
## 	Retrieve details of a given bitmap.
##
## 	bitmap: The bitmap to query.
##
## 	w: Pointer to storage to retrieve width (or NULL).
##
## 	h: Pointer to storage to retrieve height (or NULL).
##
## 	n: Pointer to storage to retrieve number of color components (or
## 	NULL).
##
## 	stride: Pointer to storage to retrieve bitmap stride (or NULL).
##

proc fzBitmapDetails*(bitmap: ptr FzBitmap; w: ptr cint; h: ptr cint; n: ptr cint;
                     stride: ptr cint) {.cdecl, importc: "fz_bitmap_details",
                                      header: "bitmap.h".}
## *
## 	Set the entire bitmap to 0.
##
## 	Never throws exceptions.
##

proc fzClearBitmap*(ctx: ptr FzContext; bit: ptr FzBitmap) {.cdecl,
    importc: "fz_clear_bitmap", header: "bitmap.h".}
## *
## 	Create a 'default' halftone structure
## 	for the given number of components.
##
## 	num_comps: The number of components to use.
##
## 	Returns a simple default halftone. The default halftone uses
## 	the same halftone tile for each plane, which may not be ideal
## 	for all purposes.
##

proc fzDefaultHalftone*(ctx: ptr FzContext; numComps: cint): ptr FzHalftone {.cdecl,
    importc: "fz_default_halftone", header: "bitmap.h".}
## *
## 	Take an additional reference to the halftone. The same pointer
## 	is returned.
##
## 	Never throws exceptions.
##

proc fzKeepHalftone*(ctx: ptr FzContext; half: ptr FzHalftone): ptr FzHalftone {.cdecl,
    importc: "fz_keep_halftone", header: "bitmap.h".}
## *
## 	Drop a reference to the halftone. When the reference count
## 	reaches zero, the halftone is destroyed.
##
## 	Never throws exceptions.
##

proc fzDropHalftone*(ctx: ptr FzContext; ht: ptr FzHalftone) {.cdecl,
    importc: "fz_drop_halftone", header: "bitmap.h".}
