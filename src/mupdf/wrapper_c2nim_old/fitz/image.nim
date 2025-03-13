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

## !!!Ignored construct:  # MUPDF_FITZ_IMAGE_H [NewLine] # MUPDF_FITZ_IMAGE_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/store.h [NewLine] # mupdf/fitz/pixmap.h [NewLine] # mupdf/fitz/buffer.h [NewLine] # mupdf/fitz/stream.h [NewLine] # mupdf/fitz/compressed-buffer.h [NewLine] *
## 	Images are storable objects from which we can obtain fz_pixmaps.
## 	These may be implemented as simple wrappers around a pixmap, or
## 	as more complex things that decode at different subsample
## 	settings on demand.
##  typedef struct fz_image fz_image ;
## Error: identifier expected, but got: (!!!



proc fzGetPixmapFromImage*(ctx: ptr FzContext; image: ptr FzImage;
                          subarea: ptr FzIrect; ctm: ptr FzMatrix; w: ptr cint;
                          h: ptr cint): ptr FzPixmap {.cdecl,
    importc: "fz_get_pixmap_from_image", header: "image.h".}
## *
## 	Calls fz_get_pixmap_from_image() with ctm, subarea, w and h all set to NULL.
##

proc fzGetUnscaledPixmapFromImage*(ctx: ptr FzContext; image: ptr FzImage): ptr FzPixmap {.
    cdecl, importc: "fz_get_unscaled_pixmap_from_image", header: "image.h".}
## *
## 	Increment the (normal) reference count for an image. Returns the
## 	same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepImage*(ctx: ptr FzContext; image: ptr FzImage): ptr FzImage {.cdecl,
    importc: "fz_keep_image", header: "image.h".}
## *
## 	Decrement the (normal) reference count for an image. When the
## 	total (normal + key) reference count reaches zero, the image and
## 	its resources are freed.
##
## 	Never throws exceptions.
##

proc fzDropImage*(ctx: ptr FzContext; image: ptr FzImage) {.cdecl,
    importc: "fz_drop_image", header: "image.h".}
## *
## 	Increment the store key reference for an image. Returns the same
## 	pointer. (This is the count of references for an image held by
## 	keys in the image store).
##
## 	Never throws exceptions.
##

proc fzKeepImageStoreKey*(ctx: ptr FzContext; image: ptr FzImage): ptr FzImage {.cdecl,
    importc: "fz_keep_image_store_key", header: "image.h".}
## *
## 	Decrement the store key reference count for an image. When the
## 	total (normal + key) reference count reaches zero, the image and
## 	its resources are freed.
##
## 	Never throws exceptions.
##

proc fzDropImageStoreKey*(ctx: ptr FzContext; image: ptr FzImage) {.cdecl,
    importc: "fz_drop_image_store_key", header: "image.h".}
## *
## 	Function type to destroy an images data
## 	when it's reference count reaches zero.
##







proc fzNewImageOfSize*(ctx: ptr FzContext; w: cint; h: cint; bpc: cint;
                      colorspace: ptr FzColorspace; xres: cint; yres: cint;
                      interpolate: cint; imagemask: cint; decode: ptr cfloat;
                      colorkey: ptr cint; mask: ptr FzImage; size: csize_t;
                      getPixmap: ptr FzImageGetPixmapFn;
                      getSize: ptr FzImageGetSizeFn; drop: ptr FzDropImageFn): ptr FzImage {.
    cdecl, importc: "fz_new_image_of_size", header: "image.h".}
## !!!Ignored construct:  # fz_new_derived_image ( CTX , W , H , B , CS , X , Y , I , IM , D , C , M , T , G , S , Z ) ( ( T * ) Memento_label ( fz_new_image_of_size ( CTX , W , H , B , CS , X , Y , I , IM , D , C , M , sizeof ( T ) , G , S , Z ) , # ) ) [NewLine] *
## 	Create an image based on
## 	the data in the supplied compressed buffer.
##
## 	w,h: Width and height of the created image.
##
## 	bpc: Bits per component.
##
## 	colorspace: The colorspace (determines the number of components,
## 	and any color conversions required while decoding).
##
## 	xres, yres: The X and Y resolutions respectively.
##
## 	interpolate: 1 if interpolation should be used when decoding
## 	this image, 0 otherwise.
##
## 	imagemask: 1 if this is an imagemask (i.e. transparency bitmap
## 	mask), 0 otherwise.
##
## 	decode: NULL, or a pointer to to a decode array. The default
## 	decode array is [0 1] (repeated n times, for n color components).
##
## 	colorkey: NULL, or a pointer to a colorkey array. The default
## 	colorkey array is [0 255] (repeated n times, for n color
## 	components).
##
## 	buffer: Buffer of compressed data and compression parameters.
## 	Ownership of this reference is passed in.
##
## 	mask: NULL, or another image to use as a mask for this one.
## 	A new reference is taken to this image. Supplying a masked
## 	image as a mask to another image is illegal!
##  fz_image * fz_new_image_from_compressed_buffer ( fz_context * ctx , int w , int h , int bpc , fz_colorspace * colorspace , int xres , int yres , int interpolate , int imagemask , float * decode , int * colorkey , fz_compressed_buffer * buffer , fz_image * mask ) ;
## Error: identifier expected, but got: (!!!

## *
## 	Create an image from the given
## 	pixmap.
##
## 	pixmap: The pixmap to base the image upon. A new reference
## 	to this is taken.
##
## 	mask: NULL, or another image to use as a mask for this one.
## 	A new reference is taken to this image. Supplying a masked
## 	image as a mask to another image is illegal!
##

proc fzNewImageFromPixmap*(ctx: ptr FzContext; pixmap: ptr FzPixmap; mask: ptr FzImage): ptr FzImage {.
    cdecl, importc: "fz_new_image_from_pixmap", header: "image.h".}
## *
## 	Create a new image from a
## 	buffer of data, inferring its type from the format
## 	of the data.
##

proc fzNewImageFromBuffer*(ctx: ptr FzContext; buffer: ptr FzBuffer): ptr FzImage {.
    cdecl, importc: "fz_new_image_from_buffer", header: "image.h".}
## *
## 	Create a new image from the contents
## 	of a file, inferring its type from the format of the
## 	data.
##

proc fzNewImageFromFile*(ctx: ptr FzContext; path: cstring): ptr FzImage {.cdecl,
    importc: "fz_new_image_from_file", header: "image.h".}
## *
## 	Internal destructor exposed for fz_store integration.
##

proc fzDropImageImp*(ctx: ptr FzContext; image: ptr FzStorable) {.cdecl,
    importc: "fz_drop_image_imp", header: "image.h".}
## *
## 	Internal destructor for the base image class members.
##
## 	Exposed to allow derived image classes to be written.
##

proc fzDropImageBase*(ctx: ptr FzContext; image: ptr FzImage) {.cdecl,
    importc: "fz_drop_image_base", header: "image.h".}
## *
## 	Decode a subarea of a compressed image. l2factor is the amount
## 	of subsampling inbuilt to the stream (i.e. performed by the
## 	decoder). If non NULL, l2extra is the extra amount of
## 	subsampling that should be performed by this routine. This will
## 	be updated on exit to the amount of subsampling that is still
## 	required to be done.
##
## 	Returns a kept reference.
##

proc fzDecompImageFromStream*(ctx: ptr FzContext; stm: ptr FzStream;
                             image: ptr FzCompressedImage; subarea: ptr FzIrect;
                             indexed: cint; l2factor: cint; l2extra: ptr cint): ptr FzPixmap {.
    cdecl, importc: "fz_decomp_image_from_stream", header: "image.h".}
## *
## 	Convert pixmap from indexed to base colorspace.
##
## 	This creates a new bitmap containing the converted pixmap data.
##

proc fzConvertIndexedPixmapToBase*(ctx: ptr FzContext; src: ptr FzPixmap): ptr FzPixmap {.
    cdecl, importc: "fz_convert_indexed_pixmap_to_base", header: "image.h".}
## *
## 	Convert pixmap from DeviceN/Separation to base colorspace.
##
## 	This creates a new bitmap containing the converted pixmap data.
##

proc fzConvertSeparationPixmapToBase*(ctx: ptr FzContext; src: ptr FzPixmap): ptr FzPixmap {.
    cdecl, importc: "fz_convert_separation_pixmap_to_base", header: "image.h".}
## *
## 	Return the size of the storage used by an image.
##

proc fzImageSize*(ctx: ptr FzContext; im: ptr FzImage): csize_t {.cdecl,
    importc: "fz_image_size", header: "image.h".}
## *
## 	Structure is public to allow other structures to
## 	be derived from it. Do not access members directly.
##




proc fzImageResolution*(image: ptr FzImage; xres: ptr cint; yres: ptr cint) {.cdecl,
    importc: "fz_image_resolution", header: "image.h".}
## *
## 	Request the natural orientation of an image.
##
## 	This is for images (such as JPEG) that can contain internal
## 	specifications of rotation/flips. This is ignored by all the
## 	internal decode/rendering routines, but can be used by callers
## 	(such as the image document handler) to respect such
## 	specifications.
##
## 	The values used by MuPDF are as follows, with the equivalent
## 	Exif specifications given for information:
##
## 	0: Undefined
## 	1: 0 degree ccw rotation. (Exif = 1)
## 	2: 90 degree ccw rotation. (Exif = 8)
## 	3: 180 degree ccw rotation. (Exif = 3)
## 	4: 270 degree ccw rotation. (Exif = 6)
## 	5: flip on X. (Exif = 2)
## 	6: flip on X, then rotate ccw by 90 degrees. (Exif = 5)
## 	7: flip on X, then rotate ccw by 180 degrees. (Exif = 4)
## 	8: flip on X, then rotate ccw by 270 degrees. (Exif = 7)
##

proc fzImageOrientation*(ctx: ptr FzContext; image: ptr FzImage): uint8T {.cdecl,
    importc: "fz_image_orientation", header: "image.h".}
proc fzImageOrientationMatrix*(ctx: ptr FzContext; image: ptr FzImage): FzMatrix {.
    cdecl, importc: "fz_image_orientation_matrix", header: "image.h".}
## *
## 	Retrieve the underlying compressed data for an image.
##
## 	Returns a pointer to the underlying data buffer for an image,
## 	or NULL if this image is not based upon a compressed data
## 	buffer.
##
## 	This is not a reference counted structure, so no reference is
## 	returned. Lifespan is limited to that of the image itself.
##

proc fzCompressedImageBuffer*(ctx: ptr FzContext; image: ptr FzImage): ptr FzCompressedBuffer {.
    cdecl, importc: "fz_compressed_image_buffer", header: "image.h".}
proc fzSetCompressedImageBuffer*(ctx: ptr FzContext; cimg: ptr FzCompressedImage;
                                buf: ptr FzCompressedBuffer) {.cdecl,
    importc: "fz_set_compressed_image_buffer", header: "image.h".}
## *
## 	Retrieve the underlying fz_pixmap for an image.
##
## 	Returns a pointer to the underlying fz_pixmap for an image,
## 	or NULL if this image is not based upon an fz_pixmap.
##
## 	No reference is returned. Lifespan is limited to that of
## 	the image itself. If required, use fz_keep_pixmap to take
## 	a reference to keep it longer.
##

proc fzPixmapImageTile*(ctx: ptr FzContext; cimg: ptr FzPixmapImage): ptr FzPixmap {.
    cdecl, importc: "fz_pixmap_image_tile", header: "image.h".}
proc fzSetPixmapImageTile*(ctx: ptr FzContext; cimg: ptr FzPixmapImage;
                          pix: ptr FzPixmap) {.cdecl,
    importc: "fz_set_pixmap_image_tile", header: "image.h".}
##  Implementation details: subject to change.
## *
## 	Exposed for PDF.
##

proc fzLoadJpx*(ctx: ptr FzContext; data: ptr cuchar; size: csize_t; cs: ptr FzColorspace): ptr FzPixmap {.
    cdecl, importc: "fz_load_jpx", header: "image.h".}
## *
## 	Exposed for CBZ.
##

proc fzLoadTiffSubimageCount*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t): cint {.
    cdecl, importc: "fz_load_tiff_subimage_count", header: "image.h".}
proc fzLoadTiffSubimage*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t;
                        subimage: cint): ptr FzPixmap {.cdecl,
    importc: "fz_load_tiff_subimage", header: "image.h".}
proc fzLoadPnmSubimageCount*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t): cint {.
    cdecl, importc: "fz_load_pnm_subimage_count", header: "image.h".}
proc fzLoadPnmSubimage*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t; subimage: cint): ptr FzPixmap {.
    cdecl, importc: "fz_load_pnm_subimage", header: "image.h".}
proc fzLoadJbig2SubimageCount*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t): cint {.
    cdecl, importc: "fz_load_jbig2_subimage_count", header: "image.h".}
proc fzLoadJbig2Subimage*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t;
                         subimage: cint): ptr FzPixmap {.cdecl,
    importc: "fz_load_jbig2_subimage", header: "image.h".}
proc fzLoadBmpSubimageCount*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t): cint {.
    cdecl, importc: "fz_load_bmp_subimage_count", header: "image.h".}
proc fzLoadBmpSubimage*(ctx: ptr FzContext; buf: ptr cuchar; len: csize_t; subimage: cint): ptr FzPixmap {.
    cdecl, importc: "fz_load_bmp_subimage", header: "image.h".}
