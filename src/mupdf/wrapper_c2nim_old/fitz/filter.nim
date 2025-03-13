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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/buffer, mupdf/fitz/store,
#   mupdf/fitz/stream




proc fzOpenNullFilter*(ctx: ptr FzContext; chain: ptr FzStream; len: uint64T;
                      offset: int64T): ptr FzStream {.cdecl,
    importc: "fz_open_null_filter", header: "filter.h".}
## *
## 	The range filter copies data from specified ranges of the
## 	chained stream.
##

proc fzOpenRangeFilter*(ctx: ptr FzContext; chain: ptr FzStream; ranges: ptr FzRange;
                       nranges: cint): ptr FzStream {.cdecl,
    importc: "fz_open_range_filter", header: "filter.h".}
## *
## 	The endstream filter reads a PDF substream, and starts to look
## 	for an 'endstream' token after the specified length.
##

proc fzOpenEndstreamFilter*(ctx: ptr FzContext; chain: ptr FzStream; len: uint64T;
                           offset: int64T): ptr FzStream {.cdecl,
    importc: "fz_open_endstream_filter", header: "filter.h".}
## *
## 	Concat filter concatenates several streams into one.
##

proc fzOpenConcat*(ctx: ptr FzContext; max: cint; pad: cint): ptr FzStream {.cdecl,
    importc: "fz_open_concat", header: "filter.h".}
## *
## 	Add a chained stream to the end of the concatenate filter.
##
## 	Ownership of chain is passed in.
##

proc fzConcatPushDrop*(ctx: ptr FzContext; concat: ptr FzStream; chain: ptr FzStream) {.
    cdecl, importc: "fz_concat_push_drop", header: "filter.h".}
## *
## 	arc4 filter performs RC4 decoding of data read from the chained
## 	filter using the supplied key.
##

proc fzOpenArc4*(ctx: ptr FzContext; chain: ptr FzStream; key: ptr cuchar; keylen: cuint): ptr FzStream {.
    cdecl, importc: "fz_open_arc4", header: "filter.h".}
## *
## 	aesd filter performs AES decoding of data read from the chained
## 	filter using the supplied key.
##

proc fzOpenAesd*(ctx: ptr FzContext; chain: ptr FzStream; key: ptr cuchar; keylen: cuint): ptr FzStream {.
    cdecl, importc: "fz_open_aesd", header: "filter.h".}
## *
## 	a85d filter performs ASCII 85 Decoding of data read
## 	from the chained filter.
##

proc fzOpenA85d*(ctx: ptr FzContext; chain: ptr FzStream): ptr FzStream {.cdecl,
    importc: "fz_open_a85d", header: "filter.h".}
## *
## 	ahxd filter performs ASCII Hex decoding of data read
## 	from the chained filter.
##

proc fzOpenAhxd*(ctx: ptr FzContext; chain: ptr FzStream): ptr FzStream {.cdecl,
    importc: "fz_open_ahxd", header: "filter.h".}
## *
## 	rld filter performs Run Length Decoding of data read
## 	from the chained filter.
##

proc fzOpenRld*(ctx: ptr FzContext; chain: ptr FzStream): ptr FzStream {.cdecl,
    importc: "fz_open_rld", header: "filter.h".}
## *
## 	dctd filter performs DCT (JPEG) decoding of data read
## 	from the chained filter.
##
## 	color_transform implements the PDF color_transform option;
## 	use -1 (unset) as a default.
##
## 	For subsampling on decode, set l2factor to the log2 of the
## 	reduction required (therefore 0 = full size decode).
##
## 	jpegtables is an optional stream from which the JPEG tables
## 	can be read. Use NULL if not required.
##

proc fzOpenDctd*(ctx: ptr FzContext; chain: ptr FzStream; colorTransform: cint;
                l2factor: cint; jpegtables: ptr FzStream): ptr FzStream {.cdecl,
    importc: "fz_open_dctd", header: "filter.h".}
## *
## 	faxd filter performs FAX decoding of data read from
## 	the chained filter.
##
## 	k: see fax specification (fax default is 0).
##
## 	end_of_line: whether we expect end of line markers (fax default
## 	is 0).
##
## 	encoded_byte_align: whether we align to bytes after each line
## 	(fax default is 0).
##
## 	columns: how many columns in the image (fax default is 1728).
##
## 	rows: 0 for unspecified or the number of rows of data to expect.
##
## 	end_of_block: whether we expect end of block markers (fax
## 	default is 1).
##
## 	black_is_1: determines the polarity of the image (fax default is
## 	0).
##

proc fzOpenFaxd*(ctx: ptr FzContext; chain: ptr FzStream; k: cint; endOfLine: cint;
                encodedByteAlign: cint; columns: cint; rows: cint; endOfBlock: cint;
                blackIs1: cint): ptr FzStream {.cdecl, importc: "fz_open_faxd",
    header: "filter.h".}
## *
## 	flated filter performs LZ77 decoding (inflating) of data read
## 	from the chained filter.
##
## 	window_bits: How large a decompression window to use. Typically
## 	15. A negative number, -n, means to use n bits, but to expect
## 	raw data with no header.
##

proc fzOpenFlated*(ctx: ptr FzContext; chain: ptr FzStream; windowBits: cint): ptr FzStream {.
    cdecl, importc: "fz_open_flated", header: "filter.h".}
## *
## 	lzwd filter performs LZW decoding of data read from the chained
## 	filter.
##
## 	early_change: (Default 1) specifies whether to change codes 1
## 	bit early.
##
## 	min_bits: (Default 9) specifies the minimum number of bits to
## 	use.
##
## 	reverse_bits: (Default 0) allows for compatibility with gif and
## 	old style tiffs (1).
##
## 	old_tiff: (Default 0) allows for different handling of the clear
## 	code, as found in old style tiffs.
##

proc fzOpenLzwd*(ctx: ptr FzContext; chain: ptr FzStream; earlyChange: cint;
                minBits: cint; reverseBits: cint; oldTiff: cint): ptr FzStream {.cdecl,
    importc: "fz_open_lzwd", header: "filter.h".}
## *
## 	predict filter performs pixel prediction on data read from
## 	the chained filter.
##
## 	predictor: 1 = copy, 2 = tiff, other = inline PNG predictor
##
## 	columns: width of image in pixels
##
## 	colors: number of components.
##
## 	bpc: bits per component (typically 8)
##

proc fzOpenPredict*(ctx: ptr FzContext; chain: ptr FzStream; predictor: cint;
                   columns: cint; colors: cint; bpc: cint): ptr FzStream {.cdecl,
    importc: "fz_open_predict", header: "filter.h".}
## *
## 	Open a filter that performs jbig2 decompression on the chained
## 	stream, using the optional globals record.
##

proc fzOpenJbig2d*(ctx: ptr FzContext; chain: ptr FzStream;
                  globals: ptr FzJbig2Globals; embedded: cint): ptr FzStream {.cdecl,
    importc: "fz_open_jbig2d", header: "filter.h".}
## *
## 	Create a jbig2 globals record from a buffer.
##
## 	Immutable once created.
##

proc fzLoadJbig2Globals*(ctx: ptr FzContext; buf: ptr FzBuffer): ptr FzJbig2Globals {.
    cdecl, importc: "fz_load_jbig2_globals", header: "filter.h".}
## *
## 	Increment the reference count for a jbig2 globals record.
##
## 	Never throws an exception.
##

proc fzKeepJbig2Globals*(ctx: ptr FzContext; globals: ptr FzJbig2Globals): ptr FzJbig2Globals {.
    cdecl, importc: "fz_keep_jbig2_globals", header: "filter.h".}
## *
## 	Decrement the reference count for a jbig2 globals record.
## 	When the reference count hits zero, the record is freed.
##
## 	Never throws an exception.
##

proc fzDropJbig2Globals*(ctx: ptr FzContext; globals: ptr FzJbig2Globals) {.cdecl,
    importc: "fz_drop_jbig2_globals", header: "filter.h".}
## *
## 	Special jbig2 globals drop function for use in implementing
## 	store support.
##

proc fzDropJbig2GlobalsImp*(ctx: ptr FzContext; globals: ptr FzStorable) {.cdecl,
    importc: "fz_drop_jbig2_globals_imp", header: "filter.h".}
## *
## 	Return buffer containing jbig2 globals data stream.
##

proc fzJbig2GlobalsData*(ctx: ptr FzContext; globals: ptr FzJbig2Globals): ptr FzBuffer {.
    cdecl, importc: "fz_jbig2_globals_data", header: "filter.h".}
##  Extra filters for tiff
## *
## 	SGI Log 16bit (greyscale) decode from the chained filter.
## 	Decodes lines of w pixels to 8bpp greyscale.
##

proc fzOpenSgilog16*(ctx: ptr FzContext; chain: ptr FzStream; w: cint): ptr FzStream {.
    cdecl, importc: "fz_open_sgilog16", header: "filter.h".}
## *
## 	SGI Log 24bit (LUV) decode from the chained filter.
## 	Decodes lines of w pixels to 8bpc rgb.
##

proc fzOpenSgilog24*(ctx: ptr FzContext; chain: ptr FzStream; w: cint): ptr FzStream {.
    cdecl, importc: "fz_open_sgilog24", header: "filter.h".}
## *
## 	SGI Log 32bit (LUV) decode from the chained filter.
## 	Decodes lines of w pixels to 8bpc rgb.
##

proc fzOpenSgilog32*(ctx: ptr FzContext; chain: ptr FzStream; w: cint): ptr FzStream {.
    cdecl, importc: "fz_open_sgilog32", header: "filter.h".}
## *
## 	4bit greyscale Thunderscan decoding from the chained filter.
## 	Decodes lines of w pixels to 8bpp greyscale.
##

proc fzOpenThunder*(ctx: ptr FzContext; chain: ptr FzStream; w: cint): ptr FzStream {.
    cdecl, importc: "fz_open_thunder", header: "filter.h".}
