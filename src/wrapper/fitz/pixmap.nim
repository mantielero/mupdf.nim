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
#   mupdf/fitz/separation

## *
## 	Pixmaps represent a set of pixels for a 2 dimensional region of
## 	a plane. Each pixel has n components per pixel. The components
## 	are in the order process-components, spot-colors, alpha, where
## 	there can be 0 of any of those types. The data is in
## 	premultiplied alpha when rendering, but non-premultiplied for
## 	colorspace conversions and rescaling.
##



proc fzPixmapBbox*(ctx: ptr FzContext; pix: ptr FzPixmap): FzIrect {.cdecl,
    importc: "fz_pixmap_bbox", header: "pixmap.h".}
## *
## 	Return the width of the pixmap in pixels.
##

proc fzPixmapWidth*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_width", header: "pixmap.h".}
## *
## 	Return the height of the pixmap in pixels.
##

proc fzPixmapHeight*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_height", header: "pixmap.h".}
## *
## 	Return the x value of the pixmap in pixels.
##

proc fzPixmapX*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_x", header: "pixmap.h".}
## *
## 	Return the y value of the pixmap in pixels.
##

proc fzPixmapY*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_y", header: "pixmap.h".}
## *
## 	Create a new pixmap, with its origin at (0,0)
##
## 	cs: The colorspace to use for the pixmap, or NULL for an alpha
## 	plane/mask.
##
## 	w: The width of the pixmap (in pixels)
##
## 	h: The height of the pixmap (in pixels)
##
## 	seps: Details of separations.
##
## 	alpha: 0 for no alpha, 1 for alpha.
##
## 	Returns a pointer to the new pixmap. Throws exception on failure
## 	to allocate.
##

proc fzNewPixmap*(ctx: ptr FzContext; cs: ptr FzColorspace; w: cint; h: cint;
                 seps: ptr FzSeparations; alpha: cint): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap", header: "pixmap.h".}
## *
## 	Create a pixmap of a given size, location and pixel format.
##
## 	The bounding box specifies the size of the created pixmap and
## 	where it will be located. The colorspace determines the number
## 	of components per pixel. Alpha is always present. Pixmaps are
## 	reference counted, so drop references using fz_drop_pixmap.
##
## 	colorspace: Colorspace format used for the created pixmap. The
## 	pixmap will keep a reference to the colorspace.
##
## 	bbox: Bounding box specifying location/size of created pixmap.
##
## 	seps: Details of separations.
##
## 	alpha: 0 for no alpha, 1 for alpha.
##
## 	Returns a pointer to the new pixmap. Throws exception on failure
## 	to allocate.
##

proc fzNewPixmapWithBbox*(ctx: ptr FzContext; colorspace: ptr FzColorspace;
                         bbox: FzIrect; seps: ptr FzSeparations; alpha: cint): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_with_bbox", header: "pixmap.h".}
## *
## 	Create a new pixmap, with its origin at
## 	(0,0) using the supplied data block.
##
## 	cs: The colorspace to use for the pixmap, or NULL for an alpha
## 	plane/mask.
##
## 	w: The width of the pixmap (in pixels)
##
## 	h: The height of the pixmap (in pixels)
##
## 	seps: Details of separations.
##
## 	alpha: 0 for no alpha, 1 for alpha.
##
## 	stride: The byte offset from the pixel data in a row to the
## 	pixel data in the next row.
##
## 	samples: The data block to keep the samples in.
##
## 	Returns a pointer to the new pixmap. Throws exception on failure to
## 	allocate.
##

proc fzNewPixmapWithData*(ctx: ptr FzContext; colorspace: ptr FzColorspace; w: cint;
                         h: cint; seps: ptr FzSeparations; alpha: cint; stride: cint;
                         samples: ptr cuchar): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap_with_data", header: "pixmap.h".}
## *
## 	Create a pixmap of a given size, location and pixel format,
## 	using the supplied data block.
##
## 	The bounding box specifies the size of the created pixmap and
## 	where it will be located. The colorspace determines the number
## 	of components per pixel. Alpha is always present. Pixmaps are
## 	reference counted, so drop references using fz_drop_pixmap.
##
## 	colorspace: Colorspace format used for the created pixmap. The
## 	pixmap will keep a reference to the colorspace.
##
## 	rect: Bounding box specifying location/size of created pixmap.
##
## 	seps: Details of separations.
##
## 	alpha: Number of alpha planes (0 or 1).
##
## 	samples: The data block to keep the samples in.
##
## 	Returns a pointer to the new pixmap. Throws exception on failure
## 	to allocate.
##

proc fzNewPixmapWithBboxAndData*(ctx: ptr FzContext; colorspace: ptr FzColorspace;
                                rect: FzIrect; seps: ptr FzSeparations; alpha: cint;
                                samples: ptr cuchar): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap_with_bbox_and_data", header: "pixmap.h".}
## *
## 	Create a new pixmap that represents a subarea of the specified
## 	pixmap. A reference is taken to this pixmap that will be dropped
## 	on destruction.
##
## 	The supplied rectangle must be wholly contained within the
## 	original pixmap.
##
## 	Returns a pointer to the new pixmap. Throws exception on failure
## 	to allocate.
##

proc fzNewPixmapFromPixmap*(ctx: ptr FzContext; pixmap: ptr FzPixmap; rect: ptr FzIrect): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_from_pixmap", header: "pixmap.h".}
## *
## 	Clone a pixmap, copying the pixels and associated data to new
## 	storage.
##
## 	The reference count of 'old' is unchanged.
##

proc fzClonePixmap*(ctx: ptr FzContext; old: ptr FzPixmap): ptr FzPixmap {.cdecl,
    importc: "fz_clone_pixmap", header: "pixmap.h".}
## *
## 	Increment the reference count for the pixmap. The same pointer
## 	is returned.
##
## 	Never throws exceptions.
##

proc fzKeepPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap): ptr FzPixmap {.cdecl,
    importc: "fz_keep_pixmap", header: "pixmap.h".}
## *
## 	Decrement the reference count for the pixmap. When the
## 	reference count hits 0, the pixmap is freed.
##
## 	Never throws exceptions.
##

proc fzDropPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap) {.cdecl,
    importc: "fz_drop_pixmap", header: "pixmap.h".}
## *
## 	Return the colorspace of a pixmap
##
## 	Returns colorspace.
##

proc fzPixmapColorspace*(ctx: ptr FzContext; pix: ptr FzPixmap): ptr FzColorspace {.
    cdecl, importc: "fz_pixmap_colorspace", header: "pixmap.h".}
## *
## 	Return the number of components in a pixmap.
##
## 	Returns the number of components (including spots and alpha).
##

proc fzPixmapComponents*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_components", header: "pixmap.h".}
## *
## 	Return the number of colorants in a pixmap.
##
## 	Returns the number of colorants (components, less any spots and
## 	alpha).
##

proc fzPixmapColorants*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_colorants", header: "pixmap.h".}
## *
## 	Return the number of spots in a pixmap.
##
## 	Returns the number of spots (components, less colorants and
## 	alpha). Does not throw exceptions.
##

proc fzPixmapSpots*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_spots", header: "pixmap.h".}
## *
## 	Return the number of alpha planes in a pixmap.
##
## 	Returns the number of alphas. Does not throw exceptions.
##

proc fzPixmapAlpha*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_alpha", header: "pixmap.h".}
## *
## 	Returns a pointer to the pixel data of a pixmap.
##
## 	Returns the pointer.
##

proc fzPixmapSamples*(ctx: ptr FzContext; pix: ptr FzPixmap): ptr cuchar {.cdecl,
    importc: "fz_pixmap_samples", header: "pixmap.h".}
## *
## 	Return the number of bytes in a row in the pixmap.
##

proc fzPixmapStride*(ctx: ptr FzContext; pix: ptr FzPixmap): cint {.cdecl,
    importc: "fz_pixmap_stride", header: "pixmap.h".}
## *
## 	Set the pixels per inch resolution of the pixmap.
##

proc fzSetPixmapResolution*(ctx: ptr FzContext; pix: ptr FzPixmap; xres: cint; yres: cint) {.
    cdecl, importc: "fz_set_pixmap_resolution", header: "pixmap.h".}
## *
## 	Clears a pixmap with the given value.
##
## 	pix: The pixmap to clear.
##
## 	value: Values in the range 0 to 255 are valid. Each component
## 	sample for each pixel in the pixmap will be set to this value,
## 	while alpha will always be set to 255 (non-transparent).
##
## 	This function is horrible, and should be removed from the
## 	API and replaced with a less magic one.
##

proc fzClearPixmapWithValue*(ctx: ptr FzContext; pix: ptr FzPixmap; value: cint) {.cdecl,
    importc: "fz_clear_pixmap_with_value", header: "pixmap.h".}
## *
## 	Fill pixmap with solid color.
##

proc fzFillPixmapWithColor*(ctx: ptr FzContext; pix: ptr FzPixmap;
                           colorspace: ptr FzColorspace; color: ptr cfloat;
                           colorParams: FzColorParams) {.cdecl,
    importc: "fz_fill_pixmap_with_color", header: "pixmap.h".}
## *
## 	Clears a subrect of a pixmap with the given value.
##
## 	pix: The pixmap to clear.
##
## 	value: Values in the range 0 to 255 are valid. Each component
## 	sample for each pixel in the pixmap will be set to this value,
## 	while alpha will always be set to 255 (non-transparent).
##
## 	r: the rectangle.
##

proc fzClearPixmapRectWithValue*(ctx: ptr FzContext; pix: ptr FzPixmap; value: cint;
                                r: FzIrect) {.cdecl,
    importc: "fz_clear_pixmap_rect_with_value", header: "pixmap.h".}
## *
## 	Sets all components (including alpha) of
## 	all pixels in a pixmap to 0.
##
## 	pix: The pixmap to clear.
##

proc fzClearPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap) {.cdecl,
    importc: "fz_clear_pixmap", header: "pixmap.h".}
## *
## 	Invert all the pixels in a pixmap. All components (process and
## 	spots) of all pixels are inverted (except alpha, which is
## 	unchanged).
##

proc fzInvertPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap) {.cdecl,
    importc: "fz_invert_pixmap", header: "pixmap.h".}
## *
## 	Invert the alpha fo all the pixels in a pixmap.
##

proc fzInvertPixmapAlpha*(ctx: ptr FzContext; pix: ptr FzPixmap) {.cdecl,
    importc: "fz_invert_pixmap_alpha", header: "pixmap.h".}
## *
## 	Transform the pixels in a pixmap so that luminance of each
## 	pixel is inverted, and the chrominance remains unchanged (as
## 	much as accuracy allows).
##
## 	All components of all pixels are inverted (except alpha, which
## 	is unchanged). Only supports Grey and RGB bitmaps.
##

proc fzInvertPixmapLuminance*(ctx: ptr FzContext; pix: ptr FzPixmap) {.cdecl,
    importc: "fz_invert_pixmap_luminance", header: "pixmap.h".}
## *
## 	Tint all the pixels in an RGB, BGR, or Gray pixmap.
##
## 	black: Map black to this hexadecimal RGB color.
##
## 	white: Map white to this hexadecimal RGB color.
##

proc fzTintPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap; black: cint; white: cint) {.
    cdecl, importc: "fz_tint_pixmap", header: "pixmap.h".}
## *
## 	Invert all the pixels in a given rectangle of a
## 	pixmap. All components of all pixels in the rectangle are
## 	inverted (except alpha, which is unchanged).
##

proc fzInvertPixmapRect*(ctx: ptr FzContext; image: ptr FzPixmap; rect: FzIrect) {.cdecl,
    importc: "fz_invert_pixmap_rect", header: "pixmap.h".}
## *
## 	Apply gamma correction to a pixmap. All components
## 	of all pixels are modified (except alpha, which is unchanged).
##
## 	gamma: The gamma value to apply; 1.0 for no change.
##

proc fzGammaPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap; gamma: cfloat) {.cdecl,
    importc: "fz_gamma_pixmap", header: "pixmap.h".}
## *
## 	Convert an existing pixmap to a desired
## 	colorspace. Other properties of the pixmap, such as resolution
## 	and position are copied to the converted pixmap.
##
## 	pix: The pixmap to convert.
##
## 	default_cs: If NULL pix->colorspace is used. It is possible that
## 	the data may need to be interpreted as one of the color spaces
## 	in default_cs.
##
## 	cs_des: Desired colorspace, may be NULL to denote alpha-only.
##
## 	prf: Proofing color space through which we need to convert.
##
## 	color_params: Parameters that may be used in conversion (e.g.
## 	ri).
##
## 	keep_alpha: If 0 any alpha component is removed, otherwise
## 	alpha is kept if present in the pixmap.
##

proc fzConvertPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap; csDes: ptr FzColorspace;
                     prf: ptr FzColorspace; defaultCs: ptr FzDefaultColorspaces;
                     colorParams: FzColorParams; keepAlpha: cint): ptr FzPixmap {.
    cdecl, importc: "fz_convert_pixmap", header: "pixmap.h".}
## *
## 	Check if the pixmap is a 1-channel image containing samples with
## 	only values 0 and 255
##

proc fzIsPixmapMonochrome*(ctx: ptr FzContext; pixmap: ptr FzPixmap): cint {.cdecl,
    importc: "fz_is_pixmap_monochrome", header: "pixmap.h".}
##  Implementation details: subject to change.

proc fzAlphaFromGray*(ctx: ptr FzContext; gray: ptr FzPixmap): ptr FzPixmap {.cdecl,
    importc: "fz_alpha_from_gray", header: "pixmap.h".}
proc fzDecodeTile*(ctx: ptr FzContext; pix: ptr FzPixmap; decode: ptr cfloat) {.cdecl,
    importc: "fz_decode_tile", header: "pixmap.h".}
proc fzMd5Pixmap*(ctx: ptr FzContext; pixmap: ptr FzPixmap; digest: array[16, cuchar]) {.
    cdecl, importc: "fz_md5_pixmap", header: "pixmap.h".}
proc fzUnpackStream*(ctx: ptr FzContext; src: ptr FzStream; depth: cint; w: cint; h: cint;
                    n: cint; indexed: cint; pad: cint; skip: cint): ptr FzStream {.cdecl,
    importc: "fz_unpack_stream", header: "pixmap.h".}
## *
## 	Pixmaps represent a set of pixels for a 2 dimensional region of
## 	a plane. Each pixel has n components per pixel. The components
## 	are in the order process-components, spot-colors, alpha, where
## 	there can be 0 of any of those types. The data is in
## 	premultiplied alpha when rendering, but non-premultiplied for
## 	colorspace conversions and rescaling.
##
## 	x, y: The minimum x and y coord of the region in pixels.
##
## 	w, h: The width and height of the region in pixels.
##
## 	n: The number of color components in the image.
## 		n = num composite colors + num spots + num alphas
##
## 	s: The number of spot channels in the image.
##
## 	alpha: 0 for no alpha, 1 for alpha present.
##
## 	flags: flag bits.
## 		Bit 0: If set, draw the image with linear interpolation.
## 		Bit 1: If set, free the samples buffer when the pixmap
## 		is destroyed.
##
## 	stride: The byte offset from the data for any given pixel
## 	to the data for the same pixel on the row below.
##
## 	seps: NULL, or a pointer to a separations structure. If NULL,
## 	s should be 0.
##
## 	xres, yres: Image resolution in dpi. Default is 96 dpi.
##
## 	colorspace: Pointer to a colorspace object describing the
## 	colorspace the pixmap is in. If NULL, the image is a mask.
##
## 	samples: Pointer to the first byte of the pixmap sample data.
## 	This is typically a simple block of memory w * h * n bytes of
## 	memory in which the components are stored linearly, but with the
## 	use of appropriate stride values, scanlines can be stored in
## 	different orders, and have different amounts of padding. The
## 	first n bytes are components 0 to n-1 for the pixel at (x,y).
## 	Each successive n bytes gives another pixel in scanline order
## 	as we move across the line. The start of each scanline is offset
## 	the start of the previous one by stride bytes.
##



const
  FZ_PIXMAP_FLAG_INTERPOLATE* = 1
  FZ_PIXMAP_FLAG_FREE_SAMPLES* = 2

##  Create a new pixmap from a warped section of another.
##
##  Colorspace, resolution etc are inherited from the original.
##  points give the corner points within the original pixmap of a
##  (convex) quadrilateral. These corner points will be 'warped' to be
##  the corner points of the returned bitmap, which will have the given
##  width/height.
##

proc fzWarpPixmap*(ctx: ptr FzContext; src: ptr FzPixmap; points: array[4, FzPoint];
                  width: cint; height: cint): ptr FzPixmap {.cdecl,
    importc: "fz_warp_pixmap", header: "pixmap.h".}
##
## 	Convert between different separation results.
##

proc fzClonePixmapAreaWithDifferentSeps*(ctx: ptr FzContext; src: ptr FzPixmap;
                                        bbox: ptr FzIrect; dcs: ptr FzColorspace;
                                        seps: ptr FzSeparations;
                                        colorParams: FzColorParams;
                                        defaultCs: ptr FzDefaultColorspaces): ptr FzPixmap {.
    cdecl, importc: "fz_clone_pixmap_area_with_different_seps", header: "pixmap.h".}
##
##  Extract alpha channel as a separate pixmap.
##  Returns NULL if there is no alpha channel in the source.
##

proc fzNewPixmapFromAlphaChannel*(ctx: ptr FzContext; src: ptr FzPixmap): ptr FzPixmap {.
    cdecl, importc: "fz_new_pixmap_from_alpha_channel", header: "pixmap.h".}
##
##  Combine a pixmap without an alpha channel with a soft mask.
##

proc fzNewPixmapFromColorAndMask*(ctx: ptr FzContext; color: ptr FzPixmap;
                                 mask: ptr FzPixmap): ptr FzPixmap {.cdecl,
    importc: "fz_new_pixmap_from_color_and_mask", header: "pixmap.h".}
