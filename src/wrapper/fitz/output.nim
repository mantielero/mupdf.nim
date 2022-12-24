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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/buffer, mupdf/fitz/string-util,
#   mupdf/fitz/stream

## *
## 	Generic output streams - generalise between outputting to a
## 	file, a buffer, etc.
##
## *
## 	A function type for use when implementing
## 	fz_outputs. The supplied function of this type is called
## 	whenever data is written to the output.
##
## 	state: The state for the output stream.
##
## 	data: a pointer to a buffer of data to write.
##
## 	n: The number of bytes of data to write.
##
















proc fzNewOutput*(ctx: ptr FzContext; bufsiz: cint; state: pointer;
                 write: ptr FzOutputWriteFn; close: ptr FzOutputCloseFn;
                 drop: ptr FzOutputDropFn): ptr FzOutput {.cdecl,
    importc: "fz_new_output", header: "output.h".}
## *
## 	Open an output stream that writes to a
## 	given path.
##
## 	filename: The filename to write to (specified in UTF-8).
##
## 	append: non-zero if we should append to the file, rather than
## 	overwriting it.
##

proc fzNewOutputWithPath*(a1: ptr FzContext; filename: cstring; append: cint): ptr FzOutput {.
    cdecl, importc: "fz_new_output_with_path", header: "output.h".}
## *
## 	Open an output stream that appends
## 	to a buffer.
##
## 	buf: The buffer to append to.
##

proc fzNewOutputWithBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer): ptr FzOutput {.cdecl,
    importc: "fz_new_output_with_buffer", header: "output.h".}
## *
## 	Retrieve an fz_output that directs to stdout.
##
## 	Optionally may be fz_dropped when finished with.
##

proc fzStdout*(ctx: ptr FzContext): ptr FzOutput {.cdecl, importc: "fz_stdout",
    header: "output.h".}
## *
## 	Retrieve an fz_output that directs to stdout.
##
## 	Optionally may be fz_dropped when finished with.
##

proc fzStderr*(ctx: ptr FzContext): ptr FzOutput {.cdecl, importc: "fz_stderr",
     header: "output.h".}

when defined(WIN32):
  ## *
  ## 	Retrieve an fz_output that directs to OutputDebugString.
  ##
  ## 	Optionally may be fz_dropped when finished with.
  ##
  proc fzStdods*(ctx: ptr FzContext): ptr FzOutput {.cdecl, importc: "fz_stdods",
      header: "output.h".}
## *
## 	Set the output stream to be used for fz_stddbg. Set to NULL to
## 	reset to default (stderr).
##

proc fzSetStddbg*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_set_stddbg", header: "output.h".}
## *
## 	Retrieve an fz_output for the default debugging stream. On
## 	Windows this will be OutputDebugString for non-console apps.
## 	Otherwise, it is always fz_stderr.
##
## 	Optionally may be fz_dropped when finished with.
##

proc fzStddbg*(ctx: ptr FzContext): ptr FzOutput {.cdecl, importc: "fz_stddbg",
    header: "output.h".}
## *
## 	Format and write data to an output stream.
## 	See fz_format_string for formatting details.
##

proc fzWritePrintf*(ctx: ptr FzContext; `out`: ptr FzOutput; fmt: cstring) {.varargs,
    cdecl, importc: "fz_write_printf", header: "output.h".}
## *
## 	va_list version of fz_write_printf.
##

# proc fzWriteVprintf*(ctx: ptr FzContext; `out`: ptr FzOutput; fmt: cstring; ap: VaList) {.
#     cdecl, importc: "fz_write_vprintf", header: "output.h".}
## *
## 	Seek to the specified file position.
## 	See fseek for arguments.
##
## 	Throw an error on unseekable outputs.
##

proc fzSeekOutput*(ctx: ptr FzContext; `out`: ptr FzOutput; off: int64; whence: cint) {.
    cdecl, importc: "fz_seek_output", header: "output.h".}
## *
## 	Return the current file position.
##
## 	Throw an error on untellable outputs.
##

proc fzTellOutput*(ctx: ptr FzContext; `out`: ptr FzOutput): int64 {.cdecl,
    importc: "fz_tell_output", header: "output.h".}
## *
## 	Flush unwritten data.
##

proc fzFlushOutput*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_flush_output", header: "output.h".}
## *
## 	Flush pending output and close an output stream.
##

proc fzCloseOutput*(a1: ptr FzContext; a2: ptr FzOutput) {.cdecl,
    importc: "fz_close_output", header: "output.h".}
## *
## 	Free an output stream. Don't forget to close it first!
##

proc fzDropOutput*(a1: ptr FzContext; a2: ptr FzOutput) {.cdecl,
    importc: "fz_drop_output", header: "output.h".}
## *
## 	Query whether a given fz_output supports fz_stream_from_output.
##

proc fzOutputSupportsStream*(ctx: ptr FzContext; `out`: ptr FzOutput): cint {.cdecl,
    importc: "fz_output_supports_stream", header: "output.h".}
## *
## 	Obtain the fz_output in the form of a fz_stream.
##
## 	This allows data to be read back from some forms of fz_output
## 	object. When finished reading, the fz_stream should be released
## 	by calling fz_drop_stream. Until the fz_stream is dropped, no
## 	further operations should be performed on the fz_output object.
##

proc fzStreamFromOutput*(a1: ptr FzContext; a2: ptr FzOutput): ptr FzStream {.cdecl,
    importc: "fz_stream_from_output", header: "output.h".}
## *
## 	Truncate the output at the current position.
##
## 	This allows output streams which have seeked back from the end
## 	of their storage to be truncated at the current point.
##

proc fzTruncateOutput*(a1: ptr FzContext; a2: ptr FzOutput) {.cdecl,
    importc: "fz_truncate_output", header: "output.h".}
## *
## 	Write data to output.
##
## 	data: Pointer to data to write.
## 	size: Size of data to write in bytes.
##

proc fzWriteData*(ctx: ptr FzContext; `out`: ptr FzOutput; data: pointer; size: csize_t) {.
    cdecl, importc: "fz_write_data", header: "output.h".}
proc fzWriteBuffer*(ctx: ptr FzContext; `out`: ptr FzOutput; data: ptr FzBuffer) {.cdecl,
    importc: "fz_write_buffer", header: "output.h".}
## *
## 	Write a string. Does not write zero terminator.
##

proc fzWriteString*(ctx: ptr FzContext; `out`: ptr FzOutput; s: cstring) {.cdecl,
    importc: "fz_write_string", header: "output.h".}
## *
## 	Write different sized data to an output stream.
##

proc fzWriteInt32Be*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cint) {.cdecl,
    importc: "fz_write_int32_be", header: "output.h".}
proc fzWriteInt32Le*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cint) {.cdecl,
    importc: "fz_write_int32_le", header: "output.h".}
proc fzWriteUint32Be*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cuint) {.cdecl,
    importc: "fz_write_uint32_be", header: "output.h".}
proc fzWriteUint32Le*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cuint) {.cdecl,
    importc: "fz_write_uint32_le", header: "output.h".}
proc fzWriteInt16Be*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cint) {.cdecl,
    importc: "fz_write_int16_be", header: "output.h".}
proc fzWriteInt16Le*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cint) {.cdecl,
    importc: "fz_write_int16_le", header: "output.h".}
proc fzWriteUint16Be*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cuint) {.cdecl,
    importc: "fz_write_uint16_be", header: "output.h".}
proc fzWriteUint16Le*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cuint) {.cdecl,
    importc: "fz_write_uint16_le", header: "output.h".}
proc fzWriteChar*(ctx: ptr FzContext; `out`: ptr FzOutput; x: char) {.cdecl,
    importc: "fz_write_char", header: "output.h".}
proc fzWriteByte*(ctx: ptr FzContext; `out`: ptr FzOutput; x: cuchar) {.cdecl,
    importc: "fz_write_byte", header: "output.h".}
proc fzWriteFloatBe*(ctx: ptr FzContext; `out`: ptr FzOutput; f: cfloat) {.cdecl,
    importc: "fz_write_float_be", header: "output.h".}
proc fzWriteFloatLe*(ctx: ptr FzContext; `out`: ptr FzOutput; f: cfloat) {.cdecl,
    importc: "fz_write_float_le", header: "output.h".}
## *
## 	Write a UTF-8 encoded unicode character.
##

proc fzWriteRune*(ctx: ptr FzContext; `out`: ptr FzOutput; rune: cint) {.cdecl,
    importc: "fz_write_rune", header: "output.h".}
## *
## 	Write a base64 encoded data block, optionally with periodic
## 	newlines.
##

proc fzWriteBase64*(ctx: ptr FzContext; `out`: ptr FzOutput; data: ptr cuchar;
                   size: csize_t; newline: cint) {.cdecl, importc: "fz_write_base64",
    header: "output.h".}
## *
## 	Write a base64 encoded fz_buffer, optionally with periodic
## 	newlines.
##

proc fzWriteBase64Buffer*(ctx: ptr FzContext; `out`: ptr FzOutput; data: ptr FzBuffer;
                         newline: cint) {.cdecl, importc: "fz_write_base64_buffer",
                                        header: "output.h".}
## *
## 	Write num_bits of data to the end of the output stream, assumed to be packed
## 	most significant bits first.
##

proc fzWriteBits*(ctx: ptr FzContext; `out`: ptr FzOutput; data: cuint; numBits: cint) {.
    cdecl, importc: "fz_write_bits", header: "output.h".}
## *
## 	Sync to byte boundary after writing bits.
##

proc fzWriteBitsSync*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_write_bits_sync", header: "output.h".}
## *
## 	Our customised 'printf'-like string formatter.
## 	Takes %c, %d, %s, %u, %x, as usual.
## 	Modifiers are not supported except for zero-padding ints (e.g.
## 	%02d, %03u, %04x, etc).
## 	%g output in "as short as possible hopefully lossless
## 	non-exponent" form, see fz_ftoa for specifics.
## 	%f and %e output as usual.
## 	%C outputs a utf8 encoded int.
## 	%M outputs a fz_matrix*.
## 	%R outputs a fz_rect*.
## 	%P outputs a fz_point*.
## 	%n outputs a PDF name (with appropriate escaping).
## 	%q and %( output escaped strings in C/PDF syntax.
## 	%l{d,u,x} indicates that the values are int64_t.
## 	%z{d,u,x} indicates that the value is a size_t.
##
## 	user: An opaque pointer that is passed to the emit function.
##
## 	emit: A function pointer called to emit output bytes as the
## 	string is being formatted.
##

# proc fzFormatString*(ctx: ptr FzContext; user: pointer; emit: proc (ctx: ptr FzContext;
#     user: pointer; c: cint) {.cdecl.}; fmt: cstring; args: VaList) {.cdecl,
#     importc: "fz_format_string", header: "output.h".}
## *
## 	A vsnprintf work-alike, using our custom formatter.
##

proc fzVsnprintf*(buffer: cstring; space: csize_t; fmt: cstring; args: VaList): csize_t {.
    cdecl, importc: "fz_vsnprintf", header: "output.h".}
## *
## 	The non va_list equivalent of fz_vsnprintf.
##

proc fzSnprintf*(buffer: cstring; space: csize_t; fmt: cstring): csize_t {.varargs,
    cdecl, importc: "fz_snprintf", header: "output.h".}
## *
## 	Allocated sprintf.
##
## 	Returns a null terminated allocated block containing the
## 	formatted version of the format string/args.
##

proc fzAsprintf*(ctx: ptr FzContext; fmt: cstring): cstring {.varargs, cdecl,
    importc: "fz_asprintf", header: "output.h".}
## *
## 	Save the contents of a buffer to a file.
##

proc fzSaveBuffer*(ctx: ptr FzContext; buf: ptr FzBuffer; filename: cstring) {.cdecl,
    importc: "fz_save_buffer", header: "output.h".}
## *
## 	Compression and other filtering outputs.
##
## 	These outputs write encoded data to another output. Create a
## 	filter output with the destination, write to the filter, then
## 	close and drop it when you're done. These can also be chained
## 	together, for example to write ASCII Hex encoded, Deflate
## 	compressed, and RC4 encrypted data to a buffer output.
##
## 	Output streams don't use reference counting, so make sure to
## 	close all of the filters in the reverse order of creation so
## 	that data is flushed properly.
##
## 	Accordingly, ownership of 'chain' is never passed into the
## 	following functions, but remains with the caller, whose
## 	responsibility it is to ensure they exist at least until
## 	the returned fz_output is dropped.
##

proc fzNewAsciihexOutput*(ctx: ptr FzContext; chain: ptr FzOutput): ptr FzOutput {.cdecl,
    importc: "fz_new_asciihex_output", header: "output.h".}
proc fzNewAscii85Output*(ctx: ptr FzContext; chain: ptr FzOutput): ptr FzOutput {.cdecl,
    importc: "fz_new_ascii85_output", header: "output.h".}
proc fzNewRleOutput*(ctx: ptr FzContext; chain: ptr FzOutput): ptr FzOutput {.cdecl,
    importc: "fz_new_rle_output", header: "output.h".}
proc fzNewArc4Output*(ctx: ptr FzContext; chain: ptr FzOutput; key: ptr cuchar;
                     keylen: csize_t): ptr FzOutput {.cdecl,
    importc: "fz_new_arc4_output", header: "output.h".}
proc fzNewDeflateOutput*(ctx: ptr FzContext; chain: ptr FzOutput; effort: cint; raw: cint): ptr FzOutput {.
    cdecl, importc: "fz_new_deflate_output", header: "output.h".}
