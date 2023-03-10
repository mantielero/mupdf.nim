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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/buffer, mupdf/fitz/stream,
#   mupdf/fitz/filter

## *
## 	Compression parameters used for buffers of compressed data;
## 	typically for the source data for images.
##














proc fzCompressedBufferSize*(buffer: ptr FzCompressedBuffer): csize_t {.cdecl,
    importc: "fz_compressed_buffer_size", header: "compressed-buffer.h".}
## *
## 	Open a stream to read the decompressed version of a buffer.
##

proc fzOpenCompressedBuffer*(ctx: ptr FzContext; a2: ptr FzCompressedBuffer): ptr FzStream {.
    cdecl, importc: "fz_open_compressed_buffer", header: "compressed-buffer.h".}
## *
## 	Open a stream to read the decompressed version of a buffer,
## 	with optional log2 subsampling.
##
## 	l2factor = NULL for no subsampling, or a pointer to an integer
## 	containing the maximum log2 subsample factor acceptable (0 =
## 	none, 1 = halve dimensions, 2 = quarter dimensions etc). If
## 	non-NULL, then *l2factor will be updated on exit with the actual
## 	log2 subsample factor achieved.
##

proc fzOpenImageDecompStreamFromBuffer*(ctx: ptr FzContext;
                                       a2: ptr FzCompressedBuffer;
                                       l2factor: ptr cint): ptr FzStream {.cdecl,
    importc: "fz_open_image_decomp_stream_from_buffer",
    header: "compressed-buffer.h".}
## *
## 	Open a stream to read the decompressed version of another stream
## 	with optional log2 subsampling.
##

proc fzOpenImageDecompStream*(ctx: ptr FzContext; a2: ptr FzStream;
                             a3: ptr FzCompressionParams; l2factor: ptr cint): ptr FzStream {.
    cdecl, importc: "fz_open_image_decomp_stream", header: "compressed-buffer.h".}
## *
## 	Recognise image format strings in the first 8 bytes from image
## 	data.
##

proc fzRecognizeImageFormat*(ctx: ptr FzContext; p: array[8, cuchar]): cint {.cdecl,
    importc: "fz_recognize_image_format", header: "compressed-buffer.h".}
const
  FZ_IMAGE_UNKNOWN* = 0         ##  Uncompressed samples
  FZ_IMAGE_RAW* = 1             ##  Compressed samples
  FZ_IMAGE_FAX* = 2
  FZ_IMAGE_FLATE* = 3
  FZ_IMAGE_LZW* = 4
  FZ_IMAGE_RLD* = 5             ##  Full image formats
  FZ_IMAGE_BMP* = 6
  FZ_IMAGE_GIF* = 7
  FZ_IMAGE_JBIG2* = 8
  FZ_IMAGE_JPEG* = 9
  FZ_IMAGE_JPX* = 10
  FZ_IMAGE_JXR* = 11
  FZ_IMAGE_PNG* = 12
  FZ_IMAGE_PNM* = 13
  FZ_IMAGE_TIFF* = 14

## *
## 	Drop a reference to a compressed buffer. Destroys the buffer
## 	and frees any storage/other references held by it.
##
## 	Never throws exceptions.
##

proc fzDropCompressedBuffer*(ctx: ptr FzContext; buf: ptr FzCompressedBuffer) {.cdecl,
    importc: "fz_drop_compressed_buffer", header: "compressed-buffer.h".}
