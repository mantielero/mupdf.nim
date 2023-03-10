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

## !!!Ignored construct:  # MUPDF_FITZ_FONT_H [NewLine] # MUPDF_FITZ_FONT_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/geometry.h [NewLine] # mupdf/fitz/buffer.h [NewLine] # mupdf/fitz/color.h [NewLine]  forward declaration for circular dependency struct fz_device ;
## Error: token expected: ; but got: *!!!

##  Various font encoding tables and lookup functions

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_adobe_standard [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_iso8859_7 [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_koi8u [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_mac_expert [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_mac_roman [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_win_ansi [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const char * fz_glyph_name_from_windows_1252 [ 256 ] ;
## Error: token expected: ; but got: *!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_iso8859_1 [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_iso8859_7 [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_koi8u [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_pdf_doc_encoding [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_windows_1250 [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_windows_1251 [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const unsigned short fz_unicode_from_windows_1252 [ 256 ] ;
## Error: token expected: ; but got: [identifier]!!!

proc fzIso88591FromUnicode*(u: cint): cint {.cdecl,
    importc: "fz_iso8859_1_from_unicode", header: "font.h".}
proc fzIso88597FromUnicode*(u: cint): cint {.cdecl,
    importc: "fz_iso8859_7_from_unicode", header: "font.h".}
proc fzKoi8uFromUnicode*(u: cint): cint {.cdecl, importc: "fz_koi8u_from_unicode",
                                      header: "font.h".}
proc fzWindows1250FromUnicode*(u: cint): cint {.cdecl,
    importc: "fz_windows_1250_from_unicode", header: "font.h".}
proc fzWindows1251FromUnicode*(u: cint): cint {.cdecl,
    importc: "fz_windows_1251_from_unicode", header: "font.h".}
proc fzWindows1252FromUnicode*(u: cint): cint {.cdecl,
    importc: "fz_windows_1252_from_unicode", header: "font.h".}
proc fzUnicodeFromGlyphName*(name: cstring): cint {.cdecl,
    importc: "fz_unicode_from_glyph_name", header: "font.h".}
proc fzUnicodeFromGlyphNameStrict*(name: cstring): cint {.cdecl,
    importc: "fz_unicode_from_glyph_name_strict", header: "font.h".}
proc fzDuplicateGlyphNamesFromUnicode*(unicode: cint): cstringArray {.cdecl,
    importc: "fz_duplicate_glyph_names_from_unicode", header: "font.h".}
proc fzGlyphNameFromUnicodeSc*(unicode: cint): cstring {.cdecl,
    importc: "fz_glyph_name_from_unicode_sc", header: "font.h".}
## *
## 	An abstract font handle.
##



proc fzFontFtFace*(ctx: ptr FzContext; font: ptr FzFont): pointer {.cdecl,
    importc: "fz_font_ft_face", header: "font.h".}
## *
## 	Retrieve the Type3 procs
## 	for a font.
##
## 	font: The font to query
##
## 	Returns the t3_procs pointer. Will be NULL for a
## 	non type-3 font.
##

proc fzFontT3Procs*(ctx: ptr FzContext; font: ptr FzFont): ptr ptr FzBuffer {.cdecl,
    importc: "fz_font_t3_procs", header: "font.h".}
##  common CJK font collections

const
  FZ_ADOBE_CNS* = 0
  FZ_ADOBE_GB* = 1
  FZ_ADOBE_JAPAN* = 2
  FZ_ADOBE_KOREA* = 3

## *
## 	Every fz_font carries a set of flags
## 	within it, in a fz_font_flags_t structure.
##




proc fzFontFlags*(font: ptr FzFont): ptr FzFontFlagsT {.cdecl,
    importc: "fz_font_flags", header: "font.h".}
## *
## 	In order to shape a given font, we need to
## 	declare it to a shaper library (harfbuzz, by default, but others
## 	are possible). To avoid redeclaring it every time we need to
## 	shape, we hold a shaper handle and the destructor for it within
## 	the font itself. The handle is initialised by the caller when
## 	first required and the destructor is called when the fz_font is
## 	destroyed.
##




proc fzFontShaperData*(ctx: ptr FzContext; font: ptr FzFont): ptr FzShaperDataT {.cdecl,
    importc: "fz_font_shaper_data", header: "font.h".}
## *
## 	Retrieve a pointer to the name of the font.
##
## 	font: The font to query.
##
## 	Returns a pointer to an internal copy of the font name.
## 	Will never be NULL, but may be the empty string.
##

proc fzFontName*(ctx: ptr FzContext; font: ptr FzFont): cstring {.cdecl,
    importc: "fz_font_name", header: "font.h".}
## *
## 	Query whether the font flags say that this font is bold.
##

proc fzFontIsBold*(ctx: ptr FzContext; font: ptr FzFont): cint {.cdecl,
    importc: "fz_font_is_bold", header: "font.h".}
## *
## 	Query whether the font flags say that this font is italic.
##

proc fzFontIsItalic*(ctx: ptr FzContext; font: ptr FzFont): cint {.cdecl,
    importc: "fz_font_is_italic", header: "font.h".}
## *
## 	Query whether the font flags say that this font is serif.
##

proc fzFontIsSerif*(ctx: ptr FzContext; font: ptr FzFont): cint {.cdecl,
    importc: "fz_font_is_serif", header: "font.h".}
## *
## 	Query whether the font flags say that this font is monospaced.
##

proc fzFontIsMonospaced*(ctx: ptr FzContext; font: ptr FzFont): cint {.cdecl,
    importc: "fz_font_is_monospaced", header: "font.h".}
## *
## 	Retrieve the font bbox.
##
## 	font: The font to query.
##
## 	Returns the font bbox by value; it is valid only if
## 	fz_font_flags(font)->invalid_bbox is zero.
##

proc fzFontBbox*(ctx: ptr FzContext; font: ptr FzFont): FzRect {.cdecl,
    importc: "fz_font_bbox", header: "font.h".}
## *
## 	Type for user supplied system font loading hook.
##
## 	name: The name of the font to load.
##
## 	bold: 1 if a bold font desired, 0 otherwise.
##
## 	italic: 1 if an italic font desired, 0 otherwise.
## 	needs_exact_metrics: 1 if an exact metric match is required for
## 	the font requested.
##
## 	Returns a new font handle, or NULL if no font found (or on error).
##







proc fzInstallLoadSystemFontFuncs*(ctx: ptr FzContext; f: ptr FzLoadSystemFontFn;
                                  fCjk: ptr FzLoadSystemCjkFontFn;
                                  fFallback: ptr FzLoadSystemFallbackFontFn) {.
    cdecl, importc: "fz_install_load_system_font_funcs", header: "font.h".}
## *
## 	Attempt to load a given font from the system.
##
## 	name: The name of the desired font.
##
## 	bold: 1 if bold desired, 0 otherwise.
##
## 	italic: 1 if italic desired, 0 otherwise.
##
## 	needs_exact_metrics: 1 if an exact metrical match is required,
## 	0 otherwise.
##
## 	Returns a new font handle, or NULL if no matching font was found
## 	(or on error).
##

proc fzLoadSystemFont*(ctx: ptr FzContext; name: cstring; bold: cint; italic: cint;
                      needsExactMetrics: cint): ptr FzFont {.cdecl,
    importc: "fz_load_system_font", header: "font.h".}
## *
## 	Attempt to load a given font from
## 	the system.
##
## 	name: The name of the desired font.
##
## 	ordering: The ordering to load the font from (e.g. FZ_ADOBE_KOREA)
##
## 	serif: 1 if serif desired, 0 otherwise.
##
## 	Returns a new font handle, or NULL if no matching font was found
## 	(or on error).
##

proc fzLoadSystemCjkFont*(ctx: ptr FzContext; name: cstring; ordering: cint; serif: cint): ptr FzFont {.
    cdecl, importc: "fz_load_system_cjk_font", header: "font.h".}
## *
## 	Search the builtin fonts for a match.
## 	Whether a given font is present or not will depend on the
## 	configuration in which MuPDF is built.
##
## 	name: The name of the font desired.
##
## 	bold: 1 if bold desired, 0 otherwise.
##
## 	italic: 1 if italic desired, 0 otherwise.
##
## 	len: Pointer to a place to receive the length of the discovered
## 	font buffer.
##
## 	Returns a pointer to the font file data, or NULL if not present.
##

proc fzLookupBuiltinFont*(ctx: ptr FzContext; name: cstring; bold: cint; italic: cint;
                         len: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_builtin_font", header: "font.h".}
## *
## 	Search the builtin base14 fonts for a match.
## 	Whether a given font is present or not will depend on the
## 	configuration in which MuPDF is built.
##
## 	name: The name of the font desired.
##
## 	len: Pointer to a place to receive the length of the discovered
## 	font buffer.
##
## 	Returns a pointer to the font file data, or NULL if not present.
##

proc fzLookupBase14Font*(ctx: ptr FzContext; name: cstring; len: ptr cint): ptr cuchar {.
    cdecl, importc: "fz_lookup_base14_font", header: "font.h".}
## *
## 	Search the builtin cjk fonts for a match.
## 	Whether a font is present or not will depend on the
## 	configuration in which MuPDF is built.
##
## 	ordering: The desired ordering of the font (e.g. FZ_ADOBE_KOREA).
##
## 	len: Pointer to a place to receive the length of the discovered
## 	font buffer.
##
## 	Returns a pointer to the font file data, or NULL if not present.
##

proc fzLookupCjkFont*(ctx: ptr FzContext; ordering: cint; len: ptr cint; index: ptr cint): ptr cuchar {.
    cdecl, importc: "fz_lookup_cjk_font", header: "font.h".}
## *
## 	Search the builtin cjk fonts for a match for a given language.
## 	Whether a font is present or not will depend on the
## 	configuration in which MuPDF is built.
##
## 	lang: Pointer to a (case sensitive) language string (e.g.
## 	"ja", "ko", "zh-Hant" etc).
##
## 	len: Pointer to a place to receive the length of the discovered
## 	font buffer.
##
## 	subfont: Pointer to a place to store the subfont index of the
## 	discovered font.
##
## 	Returns a pointer to the font file data, or NULL if not present.
##

proc fzLookupCjkFontByLanguage*(ctx: ptr FzContext; lang: cstring; len: ptr cint;
                               subfont: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_cjk_font_by_language", header: "font.h".}
## *
## 	Return the matching FZ_ADOBE_* ordering
## 	for the given language tag, such as "zh-Hant", "zh-Hans", "ja", or "ko".
##

proc fzLookupCjkOrderingByLanguage*(name: cstring): cint {.cdecl,
    importc: "fz_lookup_cjk_ordering_by_language", header: "font.h".}
## *
## 	Search the builtin noto fonts for a match.
## 	Whether a font is present or not will depend on the
## 	configuration in which MuPDF is built.
##
## 	script: The script desired (e.g. UCDN_SCRIPT_KATAKANA).
##
## 	lang: The language desired (e.g. FZ_LANG_ja).
##
## 	len: Pointer to a place to receive the length of the discovered
## 	font buffer.
##
## 	Returns a pointer to the font file data, or NULL if not present.
##

proc fzLookupNotoFont*(ctx: ptr FzContext; script: cint; lang: cint; len: ptr cint;
                      subfont: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_noto_font", header: "font.h".}
## *
## 	Search the builtin noto fonts specific symbol fonts.
## 	Whether a font is present or not will depend on the
## 	configuration in which MuPDF is built.
##

proc fzLookupNotoMathFont*(ctx: ptr FzContext; len: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_noto_math_font", header: "font.h".}
proc fzLookupNotoMusicFont*(ctx: ptr FzContext; len: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_noto_music_font", header: "font.h".}
proc fzLookupNotoSymbol1Font*(ctx: ptr FzContext; len: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_noto_symbol1_font", header: "font.h".}
proc fzLookupNotoSymbol2Font*(ctx: ptr FzContext; len: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_noto_symbol2_font", header: "font.h".}
proc fzLookupNotoEmojiFont*(ctx: ptr FzContext; len: ptr cint): ptr cuchar {.cdecl,
    importc: "fz_lookup_noto_emoji_font", header: "font.h".}
## *
## 	Try to load a fallback font for the
## 	given combination of font attributes. Whether a font is
## 	present or not will depend on the configuration in which
## 	MuPDF is built.
##
## 	script: The script desired (e.g. UCDN_SCRIPT_KATAKANA).
##
## 	language: The language desired (e.g. FZ_LANG_ja).
##
## 	serif: 1 if serif desired, 0 otherwise.
##
## 	bold: 1 if bold desired, 0 otherwise.
##
## 	italic: 1 if italic desired, 0 otherwise.
##
## 	Returns a new font handle, or NULL if not available.
##

proc fzLoadFallbackFont*(ctx: ptr FzContext; script: cint; language: cint; serif: cint;
                        bold: cint; italic: cint): ptr FzFont {.cdecl,
    importc: "fz_load_fallback_font", header: "font.h".}
## *
## 	Create a new (empty) type3 font.
##
## 	name: Name of font (or NULL).
##
## 	matrix: Font matrix.
##
## 	Returns a new font handle, or throws exception on
## 	allocation failure.
##

proc fzNewType3Font*(ctx: ptr FzContext; name: cstring; matrix: FzMatrix): ptr FzFont {.
    cdecl, importc: "fz_new_type3_font", header: "font.h".}
## *
## 	Create a new font from a font
## 	file in memory.
##
## 	name: Name of font (leave NULL to use name from font).
##
## 	data: Pointer to the font file data.
##
## 	len: Length of the font file data.
##
## 	index: Which font from the file to load (0 for default).
##
## 	use_glyph_box: 1 if we should use the glyph bbox, 0 otherwise.
##
## 	Returns new font handle, or throws exception on error.
##

proc fzNewFontFromMemory*(ctx: ptr FzContext; name: cstring; data: ptr cuchar; len: cint;
                         index: cint; useGlyphBbox: cint): ptr FzFont {.cdecl,
    importc: "fz_new_font_from_memory", header: "font.h".}
## *
## 	Create a new font from a font file in a fz_buffer.
##
## 	name: Name of font (leave NULL to use name from font).
##
## 	buffer: Buffer to load from.
##
## 	index: Which font from the file to load (0 for default).
##
## 	use_glyph_box: 1 if we should use the glyph bbox, 0 otherwise.
##
## 	Returns new font handle, or throws exception on error.
##

proc fzNewFontFromBuffer*(ctx: ptr FzContext; name: cstring; buffer: ptr FzBuffer;
                         index: cint; useGlyphBbox: cint): ptr FzFont {.cdecl,
    importc: "fz_new_font_from_buffer", header: "font.h".}
## *
## 	Create a new font from a font file.
##
## 	name: Name of font (leave NULL to use name from font).
##
## 	path: File path to load from.
##
## 	index: Which font from the file to load (0 for default).
##
## 	use_glyph_box: 1 if we should use the glyph bbox, 0 otherwise.
##
## 	Returns new font handle, or throws exception on error.
##

proc fzNewFontFromFile*(ctx: ptr FzContext; name: cstring; path: cstring; index: cint;
                       useGlyphBbox: cint): ptr FzFont {.cdecl,
    importc: "fz_new_font_from_file", header: "font.h".}
## *
## 	Create a new font from one of the built-in fonts.
##

proc fzNewBase14Font*(ctx: ptr FzContext; name: cstring): ptr FzFont {.cdecl,
    importc: "fz_new_base14_font", header: "font.h".}
proc fzNewCjkFont*(ctx: ptr FzContext; ordering: cint): ptr FzFont {.cdecl,
    importc: "fz_new_cjk_font", header: "font.h".}
proc fzNewBuiltinFont*(ctx: ptr FzContext; name: cstring; isBold: cint; isItalic: cint): ptr FzFont {.
    cdecl, importc: "fz_new_builtin_font", header: "font.h".}
## *
## 	Add a reference to an existing fz_font.
##
## 	font: The font to add a reference to.
##
## 	Returns the same font.
##

proc fzKeepFont*(ctx: ptr FzContext; font: ptr FzFont): ptr FzFont {.cdecl,
    importc: "fz_keep_font", header: "font.h".}
## *
## 	Drop a reference to a fz_font, destroying the
## 	font when the last reference is dropped.
##
## 	font: The font to drop a reference to.
##

proc fzDropFont*(ctx: ptr FzContext; font: ptr FzFont) {.cdecl, importc: "fz_drop_font",
    header: "font.h".}
## *
## 	Set the font bbox.
##
## 	font: The font to set the bbox for.
##
## 	xmin, ymin, xmax, ymax: The bounding box.
##

proc fzSetFontBbox*(ctx: ptr FzContext; font: ptr FzFont; xmin: cfloat; ymin: cfloat;
                   xmax: cfloat; ymax: cfloat) {.cdecl, importc: "fz_set_font_bbox",
    header: "font.h".}
## *
## 	Return a bbox for a given glyph in a font.
##
## 	font: The font to look for the glyph in.
##
## 	gid: The glyph to bound.
##
## 	trm: The matrix to apply to the glyph before bounding.
##
## 	Returns rectangle by value containing the bounds of the given
## 	glyph.
##

proc fzBoundGlyph*(ctx: ptr FzContext; font: ptr FzFont; gid: cint; trm: FzMatrix): FzRect {.
    cdecl, importc: "fz_bound_glyph", header: "font.h".}
## *
## 	Determine if a given glyph in a font
## 	is cacheable. Certain glyphs in a type 3 font cannot safely
## 	be cached, as their appearance depends on the enclosing
## 	graphic state.
##
## 	font: The font to look for the glyph in.
##
## 	gif: The glyph to query.
##
## 	Returns non-zero if cacheable, 0 if not.
##

proc fzGlyphCacheable*(ctx: ptr FzContext; font: ptr FzFont; gid: cint): cint {.cdecl,
    importc: "fz_glyph_cacheable", header: "font.h".}
## *
## 	Run a glyph from a Type3 font to
## 	a given device.
##
## 	font: The font to find the glyph in.
##
## 	gid: The glyph to run.
##
## 	trm: The transform to apply.
##
## 	dev: The device to render onto.
##

proc fzRunT3Glyph*(ctx: ptr FzContext; font: ptr FzFont; gid: cint; trm: FzMatrix;
                  dev: ptr FzDevice) {.cdecl, importc: "fz_run_t3_glyph",
                                    header: "font.h".}
## *
## 	Return the advance for a given glyph.
##
## 	font: The font to look for the glyph in.
##
## 	glyph: The glyph to find the advance for.
##
## 	wmode: 1 for vertical mode, 0 for horizontal.
##
## 	Returns the advance for the glyph.
##

proc fzAdvanceGlyph*(ctx: ptr FzContext; font: ptr FzFont; glyph: cint; wmode: cint): cfloat {.
    cdecl, importc: "fz_advance_glyph", header: "font.h".}
## *
## 	Find the glyph id for a given unicode
## 	character within a font.
##
## 	font: The font to look for the unicode character in.
##
## 	unicode: The unicode character to encode.
##
## 	Returns the glyph id for the given unicode value, or 0 if
## 	unknown.
##

proc fzEncodeCharacter*(ctx: ptr FzContext; font: ptr FzFont; unicode: cint): cint {.
    cdecl, importc: "fz_encode_character", header: "font.h".}
## *
## 	Encode character, preferring small-caps variant if available.
##
## 	font: The font to look for the unicode character in.
##
## 	unicode: The unicode character to encode.
##
## 	Returns the glyph id for the given unicode value, or 0 if
## 	unknown.
##

proc fzEncodeCharacterSc*(ctx: ptr FzContext; font: ptr FzFont; unicode: cint): cint {.
    cdecl, importc: "fz_encode_character_sc", header: "font.h".}
## *
## 	Encode character.
##
## 	Either by direct lookup of glyphname within a font, or, failing
## 	that, by mapping glyphname to unicode and thence to the glyph
## 	index within the given font.
##
## 	Returns zero for type3 fonts.
##

proc fzEncodeCharacterByGlyphName*(ctx: ptr FzContext; font: ptr FzFont;
                                  glyphname: cstring): cint {.cdecl,
    importc: "fz_encode_character_by_glyph_name", header: "font.h".}
## *
## 	Find the glyph id for
## 	a given unicode character within a font, falling back to
## 	an alternative if not found.
##
## 	font: The font to look for the unicode character in.
##
## 	unicode: The unicode character to encode.
##
## 	script: The script in use.
##
## 	language: The language in use.
##
## 	out_font: The font handle in which the given glyph represents
## 	the requested unicode character. The caller does not own the
## 	reference it is passed, so should call fz_keep_font if it is
## 	not simply to be used immediately.
##
## 	Returns the glyph id for the given unicode value in the supplied
## 	font (and sets *out_font to font) if it is present. Otherwise
## 	an alternative fallback font (based on script/language) is
## 	searched for. If the glyph is found therein, *out_font is set
## 	to this reference, and the glyph reference is returned. If it
## 	cannot be found anywhere, the function returns 0.
##

proc fzEncodeCharacterWithFallback*(ctx: ptr FzContext; font: ptr FzFont;
                                   unicode: cint; script: cint; language: cint;
                                   outFont: ptr ptr FzFont): cint {.cdecl,
    importc: "fz_encode_character_with_fallback", header: "font.h".}
## *
## 	Find the name of a glyph
##
## 	font: The font to look for the glyph in.
##
## 	glyph: The glyph id to look for.
##
## 	buf: Pointer to a buffer for the name to be inserted into.
##
## 	size: The size of the buffer.
##
## 	If a font contains a name table, then the name of the glyph
## 	will be returned in the supplied buffer. Otherwise a name
## 	is synthesised. The name will be truncated to fit in
## 	the buffer.
##

proc fzGetGlyphName*(ctx: ptr FzContext; font: ptr FzFont; glyph: cint; buf: cstring;
                    size: cint) {.cdecl, importc: "fz_get_glyph_name",
                                header: "font.h".}
## *
## 	Retrieve font ascender in ems.
##

proc fzFontAscender*(ctx: ptr FzContext; font: ptr FzFont): cfloat {.cdecl,
    importc: "fz_font_ascender", header: "font.h".}
## *
## 	Retrieve font descender in ems.
##

proc fzFontDescender*(ctx: ptr FzContext; font: ptr FzFont): cfloat {.cdecl,
    importc: "fz_font_descender", header: "font.h".}
## *
## 	Retrieve the MD5 digest for the font's data.
##

proc fzFontDigest*(ctx: ptr FzContext; font: ptr FzFont; digest: array[16, cuchar]) {.
    cdecl, importc: "fz_font_digest", header: "font.h".}
##  Implementation details: subject to change.

proc fzDecoupleType3Font*(ctx: ptr FzContext; font: ptr FzFont; t3doc: pointer) {.cdecl,
    importc: "fz_decouple_type3_font", header: "font.h".}
## *
## 	map an FT error number to a
## 	static string.
##
## 	err: The error number to lookup.
##
## 	Returns a pointer to a static textual representation
## 	of a freetype error.
##

proc ftErrorString*(err: cint): cstring {.cdecl, importc: "ft_error_string",
                                      header: "font.h".}
proc ftCharIndex*(face: pointer; cid: cint): cint {.cdecl, importc: "ft_char_index",
    header: "font.h".}
proc ftNameIndex*(face: pointer; name: cstring): cint {.cdecl,
    importc: "ft_name_index", header: "font.h".}
## *
## 	Internal functions for our Harfbuzz integration
## 	to work around the lack of thread safety.
##
## *
## 	Lock against Harfbuzz being called
## 	simultaneously in several threads. This reuses
## 	FZ_LOCK_FREETYPE.
##

proc fzHbLock*(ctx: ptr FzContext) {.cdecl, importc: "fz_hb_lock", header: "font.h".}
## *
## 	Unlock after a Harfbuzz call. This reuses
## 	FZ_LOCK_FREETYPE.
##

proc fzHbUnlock*(ctx: ptr FzContext) {.cdecl, importc: "fz_hb_unlock", header: "font.h".}


