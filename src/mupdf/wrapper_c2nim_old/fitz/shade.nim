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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/geometry, mupdf/fitz/store,
#   mupdf/fitz/pixmap, mupdf/fitz/compressed-buffer

## *
##  The shading code uses gouraud shaded triangle meshes.
##

const
  FZ_FUNCTION_BASED* = 1
  FZ_LINEAR* = 2
  FZ_RADIAL* = 3
  FZ_MESH_TYPE4* = 4
  FZ_MESH_TYPE5* = 5
  FZ_MESH_TYPE6* = 6
  FZ_MESH_TYPE7* = 7

## *
## 	Structure is public to allow derived classes. Do not
## 	access the members directly.
##








proc fzKeepShade*(ctx: ptr FzContext; shade: ptr FzShade): ptr FzShade {.cdecl,
    importc: "fz_keep_shade", header: "shade.h".}
## *
## 	Decrement the reference count for the shade structure. When
## 	the reference count hits zero, the structure is freed.
##
## 	Never throws exceptions.
##

proc fzDropShade*(ctx: ptr FzContext; shade: ptr FzShade) {.cdecl,
    importc: "fz_drop_shade", header: "shade.h".}
## *
## 	Bound a given shading.
##
## 	shade: The shade to bound.
##
## 	ctm: The transform to apply to the shade before bounding.
##
## 	r: Pointer to storage to put the bounds in.
##
## 	Returns r, updated to contain the bounds for the shading.
##

proc fzBoundShade*(ctx: ptr FzContext; shade: ptr FzShade; ctm: FzMatrix): FzRect {.cdecl,
    importc: "fz_bound_shade", header: "shade.h".}

proc fzDropShadeColorCache*(ctx: ptr FzContext; cache: ptr FzShadeColorCache) {.cdecl,
    importc: "fz_drop_shade_color_cache", header: "shade.h".}
## *
## 	Render a shade to a given pixmap.
##
## 	shade: The shade to paint.
##
## 	override_cs: NULL, or colorspace to override the shades
## 	inbuilt colorspace.
##
## 	ctm: The transform to apply.
##
## 	dest: The pixmap to render into.
##
## 	color_params: The color rendering settings
##
## 	bbox: Pointer to a bounding box to limit the rendering
## 	of the shade.
##
## 	eop: NULL, or pointer to overprint bitmap.
##
## 	cache: *cache is used to cache color information. If *cache is NULL it
## 	is set to point to a new fz_shade_color_cache. If cache is NULL it is
## 	ignored.
##

proc fzPaintShade*(ctx: ptr FzContext; shade: ptr FzShade;
                  overrideCs: ptr FzColorspace; ctm: FzMatrix; dest: ptr FzPixmap;
                  colorParams: FzColorParams; bbox: FzIrect; eop: ptr FzOverprint;
                  cache: ptr ptr FzShadeColorCache) {.cdecl,
    importc: "fz_paint_shade", header: "shade.h".}
## *
## 	Handy routine for processing mesh based shades
##








proc fzProcessShade*(ctx: ptr FzContext; shade: ptr FzShade; ctm: FzMatrix;
                    scissor: FzRect; prepare: ptr FzShadePrepareFn;
                    process: ptr FzShadeProcessFn; processArg: pointer) {.cdecl,
    importc: "fz_process_shade", header: "shade.h".}
##  Implementation details: subject to change.
## *
## 	Internal function to destroy a
## 	shade. Only exposed for use with the fz_store.
##
## 	shade: The reference to destroy.
##

proc fzDropShadeImp*(ctx: ptr FzContext; shade: ptr FzStorable) {.cdecl,
    importc: "fz_drop_shade_imp", header: "shade.h".}
