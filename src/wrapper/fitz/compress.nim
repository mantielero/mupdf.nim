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
#   mupdf/fitz/system, mupdf/fitz/buffer




proc fzDeflateBound*(ctx: ptr FzContext; size: csize_t): csize_t {.cdecl,
    importc: "fz_deflate_bound", header: "compress.h".}
## *
## 	Compress source_length bytes of data starting
## 	at source, into a buffer of length *destLen, starting at dest.
## compressed_length will be updated on exit to contain the size
## 	actually used.
##

proc fzDeflate*(ctx: ptr FzContext; dest: ptr cuchar; compressedLength: ptr csize_t;
               source: ptr cuchar; sourceLength: csize_t; level: FzDeflateLevel) {.
    cdecl, importc: "fz_deflate", header: "compress.h".}
## *
## 	Compress source_length bytes of data starting
## 	at source, into a new memory block malloced for that purpose.
## compressed_length is updated on exit to contain the size used.
## 	Ownership of the block is returned from this function, and the
## 	caller is therefore responsible for freeing it. The block may be
## 	considerably larger than is actually required. The caller is
## 	free to fz_realloc it down if it wants to.
##

proc fzNewDeflatedData*(ctx: ptr FzContext; compressedLength: ptr csize_t;
                       source: ptr cuchar; sourceLength: csize_t;
                       level: FzDeflateLevel): ptr cuchar {.cdecl,
    importc: "fz_new_deflated_data", header: "compress.h".}
## *
## 	Compress the contents of a fz_buffer into a
## 	new block malloced for that purpose. *compressed_length is
## 	updated on exit to contain the size used. Ownership of the block
## 	is returned from this function, and the caller is therefore
## 	responsible for freeing it. The block may be considerably larger
## 	than is actually required. The caller is free to fz_realloc it
## 	down if it wants to.
##

proc fzNewDeflatedDataFromBuffer*(ctx: ptr FzContext; compressedLength: ptr csize_t;
                                 buffer: ptr FzBuffer; level: FzDeflateLevel): ptr cuchar {.
    cdecl, importc: "fz_new_deflated_data_from_buffer", header: "compress.h".}
## *
## 	Compress bitmap data as CCITT Group 3 1D fax image.
## 	Creates a stream assuming the default PDF parameters,
## 	except the number of columns.
##

proc fzCompressCcittFaxG3*(ctx: ptr FzContext; data: ptr cuchar; columns: cint;
                          rows: cint): ptr FzBuffer {.cdecl,
    importc: "fz_compress_ccitt_fax_g3", header: "compress.h".}
## *
## 	Compress bitmap data as CCITT Group 4 2D fax image.
## 	Creates a stream assuming the default PDF parameters, except
## 	K=-1 and the number of columns.
##

proc fzCompressCcittFaxG4*(ctx: ptr FzContext; data: ptr cuchar; columns: cint;
                          rows: cint): ptr FzBuffer {.cdecl,
    importc: "fz_compress_ccitt_fax_g4", header: "compress.h".}
