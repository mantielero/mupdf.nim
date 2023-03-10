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

# import
#   mupdf/fitz/system, mupdf/fitz/context

## *
## 	fz_buffer is a wrapper around a dynamically allocated array of
## 	bytes.
##
## 	Buffers have a capacity (the number of bytes storage immediately
## 	available) and a current size.
##
## 	The contents of the structure are considered implementation
## 	details and are subject to change. Users should use the accessor
## 	functions in preference.
##




proc fzKeepBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer): ptr FzBuffer {.cdecl,
    importc: "fz_keep_buffer", header: "buffer.h".}
## *
## 	Drop a reference to the buffer. When the reference count reaches
## 	zero, the buffer is destroyed.
##
## 	Never throws exceptions.
##

proc fzDropBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer) {.cdecl,
    importc: "fz_drop_buffer", header: "buffer.h".}
## *
## 	Retrieve internal memory of buffer.
##
## 	datap: Output parameter that will be pointed to the data.
##
## 	Returns the current size of the data in bytes.
##

proc fzBufferStorage*(ctx: ptr FzContext; buf: ptr FzBuffer; datap: ptr ptr cuchar): csize_t {.
    cdecl, importc: "fz_buffer_storage", header: "buffer.h".}
## *
## 	Ensure that a buffer's data ends in a
## 	0 byte, and return a pointer to it.
##

proc fzStringFromBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer): cstring {.cdecl,
    importc: "fz_string_from_buffer", header: "buffer.h".}
proc fzNewBuffer*(ctx: ptr FzContext; capacity: csize_t): ptr FzBuffer {.cdecl,
    importc: "fz_new_buffer", header: "buffer.h".}
## *
## 	Create a new buffer with existing data.
##
## 	data: Pointer to existing data.
## 	size: Size of existing data.
##
## 	Takes ownership of data. Does not make a copy. Calls fz_free on
## 	the data when the buffer is deallocated. Do not use 'data' after
## 	passing to this function.
##
## 	Returns pointer to new buffer. Throws exception on allocation
## 	failure.
##

proc fzNewBufferFromData*(ctx: ptr FzContext; data: ptr cuchar; size: csize_t): ptr FzBuffer {.
    cdecl, importc: "fz_new_buffer_from_data", header: "buffer.h".}
## *
## 	Like fz_new_buffer, but does not take ownership.
##

proc fzNewBufferFromSharedData*(ctx: ptr FzContext; data: ptr cuchar; size: csize_t): ptr FzBuffer {.
    cdecl, importc: "fz_new_buffer_from_shared_data", header: "buffer.h".}
## *
## 	Create a new buffer containing a copy of the passed data.
##

proc fzNewBufferFromCopiedData*(ctx: ptr FzContext; data: ptr cuchar; size: csize_t): ptr FzBuffer {.
    cdecl, importc: "fz_new_buffer_from_copied_data", header: "buffer.h".}
## *
## 	Create a new buffer with data decoded from a base64 input string.
##

proc fzNewBufferFromBase64*(ctx: ptr FzContext; data: cstring; size: csize_t): ptr FzBuffer {.
    cdecl, importc: "fz_new_buffer_from_base64", header: "buffer.h".}
## *
## 	Ensure that a buffer has a given capacity,
## 	truncating data if required.
##
## 	capacity: The desired capacity for the buffer. If the current
## 	size of the buffer contents is smaller than capacity, it is
## 	truncated.
##

proc fzResizeBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer; capacity: csize_t) {.cdecl,
    importc: "fz_resize_buffer", header: "buffer.h".}
## *
## 	Make some space within a buffer (i.e. ensure that
## 	capacity > size).
##

proc fzGrowBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer) {.cdecl,
    importc: "fz_grow_buffer", header: "buffer.h".}
## *
## 	Trim wasted capacity from a buffer by resizing internal memory.
##

proc fzTrimBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer) {.cdecl,
    importc: "fz_trim_buffer", header: "buffer.h".}
## *
## 	Empties the buffer. Storage is not freed, but is held ready
## 	to be reused as the buffer is refilled.
##
## 	Never throws exceptions.
##

proc fzClearBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer) {.cdecl,
    importc: "fz_clear_buffer", header: "buffer.h".}
## *
## 	Append the contents of the source buffer onto the end of the
## 	destination buffer, extending automatically as required.
##
## 	Ownership of buffers does not change.
##

proc fzAppendBuffer*(ctx: ptr FzContext; destination: ptr FzBuffer;
                    source: ptr FzBuffer) {.cdecl, importc: "fz_append_buffer",
    header: "buffer.h".}
## *
## 	Write a base64 encoded data block, optionally with periodic newlines.
##

proc fzAppendBase64*(ctx: ptr FzContext; `out`: ptr FzBuffer; data: ptr cuchar;
                    size: csize_t; newline: cint) {.cdecl,
    importc: "fz_append_base64", header: "buffer.h".}
## *
## 	Append a base64 encoded fz_buffer, optionally with periodic newlines.
##

proc fzAppendBase64Buffer*(ctx: ptr FzContext; `out`: ptr FzBuffer; data: ptr FzBuffer;
                          newline: cint) {.cdecl,
    importc: "fz_append_base64_buffer", header: "buffer.h".}
## *
## 	fz_append_*: Append data to a buffer.
##
## 	The buffer will automatically grow as required.
##

proc fzAppendData*(ctx: ptr FzContext; buf: ptr FzBuffer; data: pointer; len: csize_t) {.
    cdecl, importc: "fz_append_data", header: "buffer.h".}
proc fzAppendString*(ctx: ptr FzContext; buf: ptr FzBuffer; data: cstring) {.cdecl,
    importc: "fz_append_string", header: "buffer.h".}
proc fzAppendByte*(ctx: ptr FzContext; buf: ptr FzBuffer; c: cint) {.cdecl,
    importc: "fz_append_byte", header: "buffer.h".}
proc fzAppendRune*(ctx: ptr FzContext; buf: ptr FzBuffer; c: cint) {.cdecl,
    importc: "fz_append_rune", header: "buffer.h".}
proc fzAppendInt32Le*(ctx: ptr FzContext; buf: ptr FzBuffer; x: cint) {.cdecl,
    importc: "fz_append_int32_le", header: "buffer.h".}
proc fzAppendInt16Le*(ctx: ptr FzContext; buf: ptr FzBuffer; x: cint) {.cdecl,
    importc: "fz_append_int16_le", header: "buffer.h".}
proc fzAppendInt32Be*(ctx: ptr FzContext; buf: ptr FzBuffer; x: cint) {.cdecl,
    importc: "fz_append_int32_be", header: "buffer.h".}
proc fzAppendInt16Be*(ctx: ptr FzContext; buf: ptr FzBuffer; x: cint) {.cdecl,
    importc: "fz_append_int16_be", header: "buffer.h".}
proc fzAppendBits*(ctx: ptr FzContext; buf: ptr FzBuffer; value: cint; count: cint) {.
    cdecl, importc: "fz_append_bits", header: "buffer.h".}
proc fzAppendBitsPad*(ctx: ptr FzContext; buf: ptr FzBuffer) {.cdecl,
    importc: "fz_append_bits_pad", header: "buffer.h".}
## *
## 	fz_append_pdf_string: Append a string with PDF syntax quotes and
## 	escapes.
##
## 	The buffer will automatically grow as required.
##

proc fzAppendPdfString*(ctx: ptr FzContext; buffer: ptr FzBuffer; text: cstring) {.cdecl,
    importc: "fz_append_pdf_string", header: "buffer.h".}
## *
## 	fz_append_printf: Format and append data to buffer using
## 	printf-like formatting (see fz_vsnprintf).
##
## 	The buffer will automatically grow as required.
##

proc fzAppendPrintf*(ctx: ptr FzContext; buffer: ptr FzBuffer; fmt: cstring) {.varargs,
    cdecl, importc: "fz_append_printf", header: "buffer.h".}
## *
## 	fz_append_vprintf: Format and append data to buffer using
## 	printf-like formatting with varargs (see fz_vsnprintf).
##

# proc fzAppendVprintf*(ctx: ptr FzContext; buffer: ptr FzBuffer; fmt: cstring;
#                      args: VaList) {.cdecl, importc: "fz_append_vprintf",
#                                    header: "buffer.h".}
## *
## 	Zero-terminate buffer in order to use as a C string.
##
## 	This byte is invisible and does not affect the length of the
## 	buffer as returned by fz_buffer_storage. The zero byte is
## 	written *after* the data, and subsequent writes will overwrite
## 	the terminating byte.
##
## 	Subsequent changes to the size of the buffer (such as by
## 	fz_buffer_trim, fz_buffer_grow, fz_resize_buffer, etc) may
## 	invalidate this.
##

proc fzTerminateBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer) {.cdecl,
    importc: "fz_terminate_buffer", header: "buffer.h".}
## *
## 	Create an MD5 digest from buffer contents.
##
## 	Never throws exceptions.
##

proc fzMd5Buffer*(ctx: ptr FzContext; buffer: ptr FzBuffer; digest: array[16, cuchar]) {.
    cdecl, importc: "fz_md5_buffer", header: "buffer.h".}
## *
## 	Take ownership of buffer contents.
##
## 	Performs the same task as fz_buffer_storage, but ownership of
## 	the data buffer returns with this call. The buffer is left
## 	empty.
##
## 	Note: Bad things may happen if this is called on a buffer with
## 	multiple references that is being used from multiple threads.
##
## 	data: Pointer to place to retrieve data pointer.
##
## 	Returns length of stream.
##

proc fzBufferExtract*(ctx: ptr FzContext; buf: ptr FzBuffer; data: ptr ptr cuchar): csize_t {.
    cdecl, importc: "fz_buffer_extract", header: "buffer.h".}
