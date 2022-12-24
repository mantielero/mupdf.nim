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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/font, mupdf/fitz/path,
#   mupdf/fitz/bidi

## *
## 	Text buffer.
##
## 	The trm field contains the a, b, c and d coefficients.
## 	The e and f coefficients come from the individual elements,
## 	together they form the transform matrix for the glyph.
##
## 	Glyphs are referenced by glyph ID.
## 	The Unicode text equivalent is kept in a separate array
## 	with indexes into the glyph array.
##



template fz_Lang_Tag2*(c1, c2: untyped): untyped =
  ((c1 - 'a' + 1) + ((c2 - 'a' + 1) * 27))

template fz_Lang_Tag3*(c1, c2, c3: untyped): untyped =
  ((c1 - 'a' + 1) + ((c2 - 'a' + 1) * 27) + ((c3 - 'a' + 1) * 27 * 27))






proc fzNewText*(ctx: ptr FzContext): ptr FzText {.cdecl, importc: "fz_new_text",
    header: "text.h".}
## *
## 	Increment the reference count for the text object. The same
## 	pointer is returned.
##
## 	Never throws exceptions.
##

proc fzKeepText*(ctx: ptr FzContext; text: ptr FzText): ptr FzText {.cdecl,
    importc: "fz_keep_text", header: "text.h".}
## *
## 	Decrement the reference count for the text object. When the
## 	reference count hits zero, the text object is freed.
##
## 	Never throws exceptions.
##

proc fzDropText*(ctx: ptr FzContext; text: ptr FzText) {.cdecl, importc: "fz_drop_text",
    header: "text.h".}
## *
## 	Add a glyph/unicode value to a text object.
##
## 	text: Text object to add to.
##
## 	font: The font the glyph should be added in.
##
## 	trm: The transform to use for the glyph.
##
## 	glyph: The glyph id to add.
##
## 	unicode: The unicode character for the glyph.
##
## 	wmode: 1 for vertical mode, 0 for horizontal.
##
## 	bidi_level: The bidirectional level for this glyph.
##
## 	markup_dir: The direction of the text as specified in the
## 	markup.
##
## 	language: The language in use (if known, 0 otherwise)
## 	(e.g. FZ_LANG_zh_Hans).
##
## 	Throws exception on failure to allocate.
##

proc fzShowGlyph*(ctx: ptr FzContext; text: ptr FzText; font: ptr FzFont; trm: FzMatrix;
                 glyph: cint; unicode: cint; wmode: cint; bidiLevel: cint;
                 markupDir: FzBidiDirection; language: FzTextLanguage) {.cdecl,
    importc: "fz_show_glyph", header: "text.h".}
## *
## 	Add a UTF8 string to a text object.
##
## 	text: Text object to add to.
##
## 	font: The font the string should be added in.
##
## 	trm: The transform to use.
##
## 	s: The utf-8 string to add.
##
## 	wmode: 1 for vertical mode, 0 for horizontal.
##
## 	bidi_level: The bidirectional level for this glyph.
##
## 	markup_dir: The direction of the text as specified in the markup.
##
## 	language: The language in use (if known, 0 otherwise)
## 		(e.g. FZ_LANG_zh_Hans).
##
## 	Returns the transform updated with the advance width of the
## 	string.
##

proc fzShowString*(ctx: ptr FzContext; text: ptr FzText; font: ptr FzFont; trm: FzMatrix;
                  s: cstring; wmode: cint; bidiLevel: cint;
                  markupDir: FzBidiDirection; language: FzTextLanguage): FzMatrix {.
    cdecl, importc: "fz_show_string", header: "text.h".}
## *
## 	Measure the advance width of a UTF8 string should it be added to a text object.
##
## 	This uses the same layout algorithms as fz_show_string, and can be used
## 	to calculate text alignment adjustments.
##

proc fzMeasureString*(ctx: ptr FzContext; userFont: ptr FzFont; trm: FzMatrix;
                     s: cstring; wmode: cint; bidiLevel: cint;
                     markupDir: FzBidiDirection; language: FzTextLanguage): FzMatrix {.
    cdecl, importc: "fz_measure_string", header: "text.h".}
## *
## 	Find the bounds of a given text object.
##
## 	text: The text object to find the bounds of.
##
## 	stroke: Pointer to the stroke attributes (for stroked
## 	text), or NULL (for filled text).
##
## 	ctm: The matrix in use.
##
## 	r: pointer to storage for the bounds.
##
## 	Returns a pointer to r, which is updated to contain the
## 	bounding box for the text object.
##

proc fzBoundText*(ctx: ptr FzContext; text: ptr FzText; stroke: ptr FzStrokeState;
                 ctm: FzMatrix): FzRect {.cdecl, importc: "fz_bound_text",
                                       header: "text.h".}
## *
## 	Convert ISO 639 (639-{1,2,3,5}) language specification
## 	strings losslessly to a 15 bit fz_text_language code.
##
## 	No validation is carried out. Obviously invalid (out
## 	of spec) codes will be mapped to FZ_LANG_UNSET, but
## 	well-formed (but undefined) codes will be blithely
## 	accepted.
##

proc fzTextLanguageFromString*(str: cstring): FzTextLanguage {.cdecl,
    importc: "fz_text_language_from_string", header: "text.h".}
## *
## 	Recover ISO 639 (639-{1,2,3,5}) language specification
## 	strings losslessly from a 15 bit fz_text_language code.
##
## 	No validation is carried out. See note above.
##

proc fzStringFromTextLanguage*(str: array[8, char]; lang: FzTextLanguage): cstring {.
    cdecl, importc: "fz_string_from_text_language", header: "text.h".}
