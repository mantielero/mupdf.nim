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

##  The Unicode character used to incoming character whose value is
##  unknown or unrepresentable.



## *
## 	Safe string functions
##
## *
## 	Return strlen(s), if that is less than maxlen, or maxlen if
## 	there is no null byte ('\0') among the first maxlen bytes.
##

proc fzStrnlen*(s: cstring; maxlen: csize_t): csize_t {.cdecl, importc: "fz_strnlen",
    header: "string-util.h".}
## *
## 	Given a pointer to a C string (or a pointer to NULL) break
## 	it at the first occurrence of a delimiter char (from a given
## 	set).
##
## 	stringp: Pointer to a C string pointer (or NULL). Updated on
## 	exit to point to the first char of the string after the
## 	delimiter that was found. The string pointed to by stringp will
## 	be corrupted by this call (as the found delimiter will be
## 	overwritten by 0).
##
## 	delim: A C string of acceptable delimiter characters.
##
## 	Returns a pointer to a C string containing the chars of stringp
## 	up to the first delimiter char (or the end of the string), or
## 	NULL.
##

proc fzStrsep*(stringp: cstringArray; delim: cstring): cstring {.cdecl,
    importc: "fz_strsep", header: "string-util.h".}
## *
## 	Copy at most n-1 chars of a string into a destination
## 	buffer with null termination, returning the real length of the
## 	initial string (excluding terminator).
##
## 	dst: Destination buffer, at least n bytes long.
##
## 	src: C string (non-NULL).
##
## 	n: Size of dst buffer in bytes.
##
## 	Returns the length (excluding terminator) of src.
##

proc fzStrlcpy*(dst: cstring; src: cstring; n: csize_t): csize_t {.cdecl,
    importc: "fz_strlcpy", header: "string-util.h".}
## *
## 	Concatenate 2 strings, with a maximum length.
##
## 	dst: pointer to first string in a buffer of n bytes.
##
## 	src: pointer to string to concatenate.
##
## 	n: Size (in bytes) of buffer that dst is in.
##
## 	Returns the real length that a concatenated dst + src would have
## 	been (not including terminator).
##

proc fzStrlcat*(dst: cstring; src: cstring; n: csize_t): csize_t {.cdecl,
    importc: "fz_strlcat", header: "string-util.h".}
## *
## 	Find the start of the first occurrence of the substring needle in haystack.
##

proc fzMemmem*(haystack: pointer; haystacklen: csize_t; needle: pointer;
              needlelen: csize_t): pointer {.cdecl, importc: "fz_memmem",
    header: "string-util.h".}
## *
## 	extract the directory component from a path.
##

proc fzDirname*(dir: cstring; path: cstring; dirsize: csize_t) {.cdecl,
    importc: "fz_dirname", header: "string-util.h".}
## *
## 	Find the filename component in a path.
##

proc fzBasename*(path: cstring): cstring {.cdecl, importc: "fz_basename",
                                       header: "string-util.h".}
## *
## 	decode url escapes.
##

proc fzUrldecode*(url: cstring): cstring {.cdecl, importc: "fz_urldecode",
                                       header: "string-util.h".}
## *
## 	create output file name using a template.
##
## 	If the path contains %[0-9]*d, the first such pattern will be
## 	replaced with the page number. If the template does not contain
## 	such a pattern, the page number will be inserted before the
## 	filename extension. If the template does not have a filename
## 	extension, the page number will be added to the end.
##

proc fzFormatOutputPath*(ctx: ptr FzContext; path: cstring; size: csize_t; fmt: cstring;
                        page: cint) {.cdecl, importc: "fz_format_output_path",
                                    header: "string-util.h".}
## *
## 	rewrite path to the shortest string that names the same path.
##
## 	Eliminates multiple and trailing slashes, interprets "." and
## 	"..". Overwrites the string in place.
##

proc fzCleanname*(name: cstring): cstring {.cdecl, importc: "fz_cleanname",
                                        header: "string-util.h".}
## *
## 	Resolve a path to an absolute file name.
## 	The resolved path buffer must be of at least PATH_MAX size.
##

proc fzRealpath*(path: cstring; resolvedPath: cstring): cstring {.cdecl,
    importc: "fz_realpath", header: "string-util.h".}
## *
## 	Case insensitive (ASCII only) string comparison.
##

proc fzStrcasecmp*(a: cstring; b: cstring): cint {.cdecl, importc: "fz_strcasecmp",
    header: "string-util.h".}
proc fzStrncasecmp*(a: cstring; b: cstring; n: csize_t): cint {.cdecl,
    importc: "fz_strncasecmp", header: "string-util.h".}
## *
## 	FZ_UTFMAX: Maximum number of bytes in a decoded rune (maximum
## 	length returned by fz_chartorune).
##

const
  FZ_UTFMAX* = 4

## *
## 	UTF8 decode a single rune from a sequence of chars.
##
## 	rune: Pointer to an int to assign the decoded 'rune' to.
##
## 	str: Pointer to a UTF8 encoded string.
##
## 	Returns the number of bytes consumed.
##

proc fzChartorune*(rune: ptr cint; str: cstring): cint {.cdecl,
    importc: "fz_chartorune", header: "string-util.h".}
## *
## 	UTF8 encode a rune to a sequence of chars.
##
## 	str: Pointer to a place to put the UTF8 encoded character.
##
## 	rune: Pointer to a 'rune'.
##
## 	Returns the number of bytes the rune took to output.
##

proc fzRunetochar*(str: cstring; rune: cint): cint {.cdecl, importc: "fz_runetochar",
    header: "string-util.h".}
## *
## 	Count how many chars are required to represent a rune.
##
## 	rune: The rune to encode.
##
## 	Returns the number of bytes required to represent this run in
## 	UTF8.
##

proc fzRunelen*(rune: cint): cint {.cdecl, importc: "fz_runelen",
                                header: "string-util.h".}
## *
## 	Compute the index of a rune in a string.
##
## 	str: Pointer to beginning of a string.
##
## 	p: Pointer to a char in str.
##
## 	Returns the index of the rune pointed to by p in str.
##

proc fzRuneidx*(str: cstring; p: cstring): cint {.cdecl, importc: "fz_runeidx",
    header: "string-util.h".}
## *
## 	Obtain a pointer to the char representing the rune
## 	at a given index.
##
## 	str: Pointer to beginning of a string.
##
## 	idx: Index of a rune to return a char pointer to.
##
## 	Returns a pointer to the char where the desired rune starts,
## 	or NULL if the string ends before the index is reached.
##

proc fzRuneptr*(str: cstring; idx: cint): cstring {.cdecl, importc: "fz_runeptr",
    header: "string-util.h".}
## *
## 	Count how many runes the UTF-8 encoded string
## 	consists of.
##
## 	s: The UTF-8 encoded, NUL-terminated text string.
##
## 	Returns the number of runes in the string.
##

proc fzUtflen*(s: cstring): cint {.cdecl, importc: "fz_utflen", header: "string-util.h".}
## *
## 	Locale-independent decimal to binary conversion. On overflow
## 	return (-)INFINITY and set errno to ERANGE. On underflow return
## 	0 and set errno to ERANGE. Special inputs (case insensitive):
## 	"NAN", "INF" or "INFINITY".
##

proc fzStrtof*(s: cstring; es: cstringArray): cfloat {.cdecl, importc: "fz_strtof",
    header: "string-util.h".}
proc fzGrisu*(f: cfloat; s: cstring; exp: ptr cint): cint {.cdecl, importc: "fz_grisu",
    header: "string-util.h".}
## *
## 	Check and parse string into page ranges:
## 		/,?(-?\d+|N)(-(-?\d+|N))?/
##

proc fzIsPageRange*(ctx: ptr FzContext; s: cstring): cint {.cdecl,
    importc: "fz_is_page_range", header: "string-util.h".}
proc fzParsePageRange*(ctx: ptr FzContext; s: cstring; a: ptr cint; b: ptr cint; n: cint): cstring {.
    cdecl, importc: "fz_parse_page_range", header: "string-util.h".}
## *
## 	Unicode aware tolower and toupper functions.
##

proc fzTolower*(c: cint): cint {.cdecl, importc: "fz_tolower", header: "string-util.h".}
proc fzToupper*(c: cint): cint {.cdecl, importc: "fz_toupper", header: "string-util.h".}