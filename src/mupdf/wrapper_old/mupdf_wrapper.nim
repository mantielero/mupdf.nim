# Resetting /home/jose/src/mupdf.nim

{.passC: "-I/usr/include".}
# Overriding sigjmp_buf
# Importing /home/jose/src/mupdf.nim/build/include/mupdf/fitz.h
# Generated at 2020-09-30T21:51:34+02:00
# Command line:
#   /home/jose/.nimble/pkgs/nimterop-#head/nimterop/toast --preprocess -m:c --recurse -f:ast2 --includeDirs+=/home/jose/src/mupdf.nim/build/include --pnim --symOverride=FZ_LANG_ur,FZ_LANG_urd,FZ_LANG_ko,FZ_LANG_ja,FZ_LANG_zh,FZ_LANG_zh_Hans,FZ_LANG_zh_Hant,sigjmp_buf --nim:/home/jose/.choosenim/toolchains/nim-1.2.6/bin/nim --pluginSourcePath=/home/jose/.cache/nim/nimterop/cPlugins/nimterop_463012537.nim /home/jose/src/mupdf.nim/build/include/mupdf/fitz.h

{.hint[ConvFromXtoItselfNotNeeded]: off.}

import nimterop/types

# const 'MEMENTO_UNDERLYING_MALLOC' has invalid value 'malloc'
# const 'MEMENTO_UNDERLYING_FREE' has invalid value 'free'
# const 'MEMENTO_UNDERLYING_REALLOC' has invalid value 'realloc'
# const 'MEMENTO_UNDERLYING_CALLOC' has invalid value 'calloc'
# const 'Memento_malloc' has invalid value 'MEMENTO_UNDERLYING_MALLOC'
# const 'Memento_free' has invalid value 'MEMENTO_UNDERLYING_FREE'
# const 'Memento_realloc' has invalid value 'MEMENTO_UNDERLYING_REALLOC'
# const 'Memento_calloc' has invalid value 'MEMENTO_UNDERLYING_CALLOC'
# const 'fz_jmp_buf' has invalid value 'sigjmp_buf'
# const 'inline' has invalid value '__inline'
# const 'FZ_RESTRICT' has invalid value '__restrict'
# const 'FZ_NORETURN' has invalid value '__attribute__((noreturn))'
# const 'FZ_UNUSED' has invalid value '__attribute__((__unused__))'
# type 'fz_context' is duplicate, skipped
# type 'fz_stream' is duplicate, skipped
# type 'fz_storable' is duplicate, skipped
# type 'fz_archive' is duplicate, skipped
# proc 'fz_colorspace_type' is duplicate, skipped
# type 'fz_colorspace' is duplicate, skipped
# type 'fz_pixmap' is duplicate, skipped
# type 'fz_image' is duplicate, skipped
# type 'fz_font' is duplicate, skipped
# type 'fz_text_span' is duplicate, skipped
# type 'fz_device' is duplicate, skipped
# type 'fz_device' is duplicate, skipped
# type 'fz_layout_char' is duplicate, skipped
# type 'fz_layout_line' is duplicate, skipped
# type 'fz_stext_block' is duplicate, skipped
# type 'fz_stext_line' is duplicate, skipped
# type 'fz_stext_char' is duplicate, skipped
# type 'fz_link' is duplicate, skipped
# type 'fz_outline' is duplicate, skipped
# type 'fz_page' is duplicate, skipped
# type 'fz_document' is duplicate, skipped
# type 'fz_document_handler' is duplicate, skipped
# type 'fz_document_writer' is duplicate, skipped
# type 'fz_band_writer' is duplicate, skipped

defineEnum(Enum_fitzh1)
defineEnum(Enum_fitzh2)
defineEnum(Enum_fitzh3) ## ::
                       ##   
                       ##   	Specifies the maximum size in bytes of the resource store in
                       ##   	fz_context. Given as argument to fz_new_context.
                       ##   
                       ##   	FZ_STORE_UNLIMITED: Let resource store grow unbounded.
                       ##   
                       ##   	FZ_STORE_DEFAULT: A reasonable upper bound on the size, for
                       ##   	devices that are not memory constrained.
defineEnum(Enum_fitzh4) ## ::
                       ##   
                       ##   	FZ_UTFMAX: Maximum number of bytes in a decoded rune (maximum
                       ##   	length returned by fz_chartorune).
defineEnum(fz_bidi_direction)
defineEnum(fz_bidi_flags)
defineEnum(fz_deflate_level)
defineEnum(Enum_fitzh5)
defineEnum(Enum_fitzh6)
defineEnum(Enum_fitzh7) ## ::
                       ##   
                       ##   	The maximum number of colorants available in any given
                       ##   	color/colorspace (not including alpha).
                       ##   
                       ##   	Changing this value will alter the amount of memory being used
                       ##   	(both stack and heap space), but not hugely. Speed should
                       ##   	(largely) be determined by the number of colors actually used.
defineEnum(fz_colorspace_type)
defineEnum(Enum_fitzh8)
defineEnum(Enum_fitzh9)
defineEnum(fz_separation_behavior)
defineEnum(Enum_fitzh10)
defineEnum(Enum_fitzh11)
defineEnum(Enum_fitzh12)      ## ::
                        ##    common CJK font collections
defineEnum(fz_linecap)
defineEnum(fz_linejoin)
defineEnum(fz_text_language)
defineEnum(Enum_fitzh13)
defineEnum(Enum_fitzh14)
defineEnum(Enum_fitzh15)
defineEnum(Enum_fitzh16)
defineEnum(Enum_fitzh17)
defineEnum(Enum_fitzh18) ## ::
                        ##   
                        ##   	FZ_STEXT_PRESERVE_LIGATURES: If this option is activated
                        ##   	ligatures are passed through to the application in their
                        ##   	original form. If this option is deactivated ligatures are
                        ##   	expanded into their constituent parts, e.g. the ligature ffi is
                        ##   	expanded into three separate characters f, f and i.
                        ##   
                        ##   	FZ_STEXT_PRESERVE_WHITESPACE: If this option is activated
                        ##   	whitespace is passed through to the application in its original
                        ##   	form. If this option is deactivated any type of horizontal
                        ##   	whitespace (including horizontal tabs) will be replaced with
                        ##   	space characters of variable width.
                        ##   
                        ##   	FZ_STEXT_PRESERVE_IMAGES: If this option is set, then images
                        ##   	will be stored in the structured text structure. The default is
                        ##   	to ignore all images.
                        ##   
                        ##   	FZ_STEXT_INHIBIT_SPACES: If this option is set, we will not try
                        ##   	to add missing space characters where there are large gaps
                        ##   	between characters.
                        ##   
                        ##   	FZ_STEXT_DEHYPHENATE: If this option is set, hyphens at the
                        ##   	end of a line will be removed and the lines will be merged.
                        ##   
                        ##   	FZ_STEXT_PRESERVE_SPANS: If this option is set, spans on the same line
                        ##   	will not be merged. Each line will thus be a span of text with the same
                        ##   	font, colour, and size.
defineEnum(Enum_fitzh19)
defineEnum(Enum_fitzh20)
defineEnum(Enum_fitzh21)      ## ::
                        ##    Transition support
defineEnum(Enum_fitzh22)
defineEnum(fz_permission)
defineEnum(Enum_fitzh23)
const
  headerfitz* = "/usr/include/mupdf/fitz.h"
  FZ_VERSION* = "1.17.0"
  FZ_VERSION_MAJOR* = 1
  FZ_VERSION_MINOR* = 17
  FZ_VERSION_PATCH* = 0
  FZ_ENABLE_SPOT_RENDERING* = 1
  FZ_PLOTTERS_N* = 1
  FZ_PLOTTERS_G* = 1
  FZ_PLOTTERS_RGB* = 1
  FZ_PLOTTERS_CMYK* = 1
  FZ_ENABLE_PDF* = 1
  FZ_ENABLE_XPS* = 1
  FZ_ENABLE_SVG* = 1
  FZ_ENABLE_CBZ* = 1
  FZ_ENABLE_IMG* = 1
  FZ_ENABLE_HTML* = 1
  FZ_ENABLE_EPUB* = 1
  FZ_ENABLE_JPX* = 1
  FZ_ENABLE_JS* = 1
  FZ_ENABLE_ICC* = 1
  MEMENTO_MAXALIGN* = (sizeof(cint))
  MEMENTO_PREFILL* = 0x000000A6
  MEMENTO_POSTFILL* = 0x000000A7
  MEMENTO_ALLOCFILL* = 0x000000A8
  MEMENTO_FREEFILL* = 0x000000A9
  MEMENTO_FREELIST_MAX* = 0x02000000
  FZ_PI* = 3.14159265'f64
  FZ_RADIAN* = 57.2957795'f64
  FZ_DEGREE* = 0.017453292'f64
  FZ_SQRT2* = 1.41421356'f64
  FZ_LN2* = 0.69314718'f64
  HAVE_SIGSETJMP* = 1
  FZ_ERROR_NONE* = (0).Enum_fitzh1
  FZ_ERROR_MEMORY* = (1).Enum_fitzh1
  FZ_ERROR_GENERIC* = (2).Enum_fitzh1
  FZ_ERROR_SYNTAX* = (3).Enum_fitzh1
  FZ_ERROR_MINOR* = (4).Enum_fitzh1
  FZ_ERROR_TRYLATER* = (5).Enum_fitzh1
  FZ_ERROR_ABORT* = (6).Enum_fitzh1
  FZ_ERROR_COUNT* = (FZ_ERROR_ABORT + 1).Enum_fitzh1
  FZ_LOCK_ALLOC* = (0).Enum_fitzh2
  FZ_LOCK_FREETYPE* = (FZ_LOCK_ALLOC + 1).Enum_fitzh2
  FZ_LOCK_GLYPHCACHE* = (FZ_LOCK_FREETYPE + 1).Enum_fitzh2
  FZ_LOCK_MAX* = (FZ_LOCK_GLYPHCACHE + 1).Enum_fitzh2
  FZ_STORE_UNLIMITED* = (0).Enum_fitzh3
  FZ_STORE_DEFAULT* = (256 shl typeof(256)(20)).Enum_fitzh3
  FZ_REPLACEMENT_CHARACTER* = 0x0000FFFD
  FZ_UTFMAX* = (4).Enum_fitzh4
  FZ_AES_DECRYPT* = 0
  FZ_AES_ENCRYPT* = 1
  FZ_BIDI_LTR* = (0).fz_bidi_direction
  FZ_BIDI_RTL* = (1).fz_bidi_direction
  FZ_BIDI_NEUTRAL* = (2).fz_bidi_direction
  FZ_BIDI_CLASSIFY_WHITE_SPACE* = (1).fz_bidi_flags
  FZ_BIDI_REPLACE_TAB* = (2).fz_bidi_flags
  FZ_DEFLATE_NONE* = (0).fz_deflate_level
  FZ_DEFLATE_BEST_SPEED* = (1).fz_deflate_level
  FZ_DEFLATE_BEST* = (9).fz_deflate_level
  FZ_DEFLATE_DEFAULT* = (-1).fz_deflate_level
  FZ_IMAGE_UNKNOWN* = (0).Enum_fitzh5
  FZ_IMAGE_RAW* = (FZ_IMAGE_UNKNOWN + 1).Enum_fitzh5 ## ::
                                                ##    Uncompressed samples
  FZ_IMAGE_FAX* = (FZ_IMAGE_RAW + 1).Enum_fitzh5 ## ::
                                            ##    Compressed samples
  FZ_IMAGE_FLATE* = (FZ_IMAGE_FAX + 1).Enum_fitzh5
  FZ_IMAGE_LZW* = (FZ_IMAGE_FLATE + 1).Enum_fitzh5
  FZ_IMAGE_RLD* = (FZ_IMAGE_LZW + 1).Enum_fitzh5
  FZ_IMAGE_BMP* = (FZ_IMAGE_RLD + 1).Enum_fitzh5 ## ::
                                            ##    Full image formats
  FZ_IMAGE_GIF* = (FZ_IMAGE_BMP + 1).Enum_fitzh5
  FZ_IMAGE_JBIG2* = (FZ_IMAGE_GIF + 1).Enum_fitzh5
  FZ_IMAGE_JPEG* = (FZ_IMAGE_JBIG2 + 1).Enum_fitzh5
  FZ_IMAGE_JPX* = (FZ_IMAGE_JPEG + 1).Enum_fitzh5
  FZ_IMAGE_JXR* = (FZ_IMAGE_JPX + 1).Enum_fitzh5
  FZ_IMAGE_PNG* = (FZ_IMAGE_JXR + 1).Enum_fitzh5
  FZ_IMAGE_PNM* = (FZ_IMAGE_PNG + 1).Enum_fitzh5
  FZ_IMAGE_TIFF* = (FZ_IMAGE_PNM + 1).Enum_fitzh5
  FZ_RI_PERCEPTUAL* = (0).Enum_fitzh6 ## ::
                                   ##    Same order as needed by lcms
  FZ_RI_RELATIVE_COLORIMETRIC* = (FZ_RI_PERCEPTUAL + 1).Enum_fitzh6
  FZ_RI_SATURATION* = (FZ_RI_RELATIVE_COLORIMETRIC + 1).Enum_fitzh6
  FZ_RI_ABSOLUTE_COLORIMETRIC* = (FZ_RI_SATURATION + 1).Enum_fitzh6
  FZ_MAX_COLORS* = (32).Enum_fitzh7
  FZ_COLORSPACE_NONE* = (0).fz_colorspace_type
  FZ_COLORSPACE_GRAY* = (FZ_COLORSPACE_NONE + 1).fz_colorspace_type
  FZ_COLORSPACE_RGB* = (FZ_COLORSPACE_GRAY + 1).fz_colorspace_type
  FZ_COLORSPACE_BGR* = (FZ_COLORSPACE_RGB + 1).fz_colorspace_type
  FZ_COLORSPACE_CMYK* = (FZ_COLORSPACE_BGR + 1).fz_colorspace_type
  FZ_COLORSPACE_LAB* = (FZ_COLORSPACE_CMYK + 1).fz_colorspace_type
  FZ_COLORSPACE_INDEXED* = (FZ_COLORSPACE_LAB + 1).fz_colorspace_type
  FZ_COLORSPACE_SEPARATION* = (FZ_COLORSPACE_INDEXED + 1).fz_colorspace_type
  FZ_COLORSPACE_IS_DEVICE* = (1).Enum_fitzh8
  FZ_COLORSPACE_IS_ICC* = (2).Enum_fitzh8
  FZ_COLORSPACE_HAS_CMYK* = (4).Enum_fitzh8
  FZ_COLORSPACE_HAS_SPOTS* = (8).Enum_fitzh8
  FZ_COLORSPACE_HAS_CMYK_AND_SPOTS* = (4 or typeof(4)(8)).Enum_fitzh8
  FZ_MAX_SEPARATIONS* = (64).Enum_fitzh9
  FZ_SEPARATION_COMPOSITE* = (0).fz_separation_behavior ## ::
                                                     ##    "Composite" separations are rendered using process
                                                     ##   	 colors using the equivalent colors
  FZ_SEPARATION_SPOT* = (1).fz_separation_behavior ## ::
                                                ##    Spot colors are rendered into their own spot plane.
  FZ_SEPARATION_DISABLED* = (2).fz_separation_behavior ## ::
                                                    ##    Disabled colors are not rendered at all in the final
                                                    ##   	 output.
  FZ_PIXMAP_FLAG_INTERPOLATE* = (1).Enum_fitzh10
  FZ_PIXMAP_FLAG_FREE_SAMPLES* = (2).Enum_fitzh10
  FZ_FUNCTION_BASED* = (1).Enum_fitzh11
  FZ_LINEAR* = (2).Enum_fitzh11
  FZ_RADIAL* = (3).Enum_fitzh11
  FZ_MESH_TYPE4* = (4).Enum_fitzh11
  FZ_MESH_TYPE5* = (5).Enum_fitzh11
  FZ_MESH_TYPE6* = (6).Enum_fitzh11
  FZ_MESH_TYPE7* = (7).Enum_fitzh11
  FZ_ADOBE_CNS* = (0).Enum_fitzh12
  FZ_ADOBE_GB* = (FZ_ADOBE_CNS + 1).Enum_fitzh12
  FZ_ADOBE_JAPAN* = (FZ_ADOBE_GB + 1).Enum_fitzh12
  FZ_ADOBE_KOREA* = (FZ_ADOBE_JAPAN + 1).Enum_fitzh12
  FZ_LINECAP_BUTT* = (0).fz_linecap
  FZ_LINECAP_ROUND* = (1).fz_linecap
  FZ_LINECAP_SQUARE* = (2).fz_linecap
  FZ_LINECAP_TRIANGLE* = (3).fz_linecap
  FZ_LINEJOIN_MITER* = (0).fz_linejoin
  FZ_LINEJOIN_ROUND* = (1).fz_linejoin
  FZ_LINEJOIN_BEVEL* = (2).fz_linejoin
  FZ_LINEJOIN_MITER_XPS* = (3).fz_linejoin
  FZ_LANG_UNSET* = (0).fz_text_language
  FZ_DEVFLAG_MASK* = (1).Enum_fitzh13 ## ::
                                   ##    Flags
  FZ_DEVFLAG_COLOR* = (2).Enum_fitzh13
  FZ_DEVFLAG_UNCACHEABLE* = (4).Enum_fitzh13
  FZ_DEVFLAG_FILLCOLOR_UNDEFINED* = (8).Enum_fitzh13
  FZ_DEVFLAG_STROKECOLOR_UNDEFINED* = (16).Enum_fitzh13
  FZ_DEVFLAG_STARTCAP_UNDEFINED* = (32).Enum_fitzh13
  FZ_DEVFLAG_DASHCAP_UNDEFINED* = (64).Enum_fitzh13
  FZ_DEVFLAG_ENDCAP_UNDEFINED* = (128).Enum_fitzh13
  FZ_DEVFLAG_LINEJOIN_UNDEFINED* = (256).Enum_fitzh13
  FZ_DEVFLAG_MITERLIMIT_UNDEFINED* = (512).Enum_fitzh13
  FZ_DEVFLAG_LINEWIDTH_UNDEFINED* = (1024).Enum_fitzh13 ## ::
                                                     ##    Arguably we should have a bit for the dash pattern itself
                                                     ##   	 being undefined, but that causes problems; do we assume that
                                                     ##   	 it should always be set to non-dashing at the start of every
                                                     ##   	 glyph?
  FZ_DEVFLAG_BBOX_DEFINED* = (2048).Enum_fitzh13 ## ::
                                              ##    Arguably we should have a bit for the dash pattern itself
                                              ##   	 being undefined, but that causes problems; do we assume that
                                              ##   	 it should always be set to non-dashing at the start of every
                                              ##   	 glyph?
  FZ_DEVFLAG_GRIDFIT_AS_TILED* = (4096).Enum_fitzh13
  FZ_BLEND_NORMAL* = (0).Enum_fitzh14 ## ::
                                   ##    PDF 1.4 -- standard separable
  FZ_BLEND_MULTIPLY* = (FZ_BLEND_NORMAL + 1).Enum_fitzh14
  FZ_BLEND_SCREEN* = (FZ_BLEND_MULTIPLY + 1).Enum_fitzh14
  FZ_BLEND_OVERLAY* = (FZ_BLEND_SCREEN + 1).Enum_fitzh14
  FZ_BLEND_DARKEN* = (FZ_BLEND_OVERLAY + 1).Enum_fitzh14
  FZ_BLEND_LIGHTEN* = (FZ_BLEND_DARKEN + 1).Enum_fitzh14
  FZ_BLEND_COLOR_DODGE* = (FZ_BLEND_LIGHTEN + 1).Enum_fitzh14
  FZ_BLEND_COLOR_BURN* = (FZ_BLEND_COLOR_DODGE + 1).Enum_fitzh14
  FZ_BLEND_HARD_LIGHT* = (FZ_BLEND_COLOR_BURN + 1).Enum_fitzh14
  FZ_BLEND_SOFT_LIGHT* = (FZ_BLEND_HARD_LIGHT + 1).Enum_fitzh14
  FZ_BLEND_DIFFERENCE* = (FZ_BLEND_SOFT_LIGHT + 1).Enum_fitzh14
  FZ_BLEND_EXCLUSION* = (FZ_BLEND_DIFFERENCE + 1).Enum_fitzh14
  FZ_BLEND_HUE* = (FZ_BLEND_EXCLUSION + 1).Enum_fitzh14 ## ::
                                                   ##    PDF 1.4 -- standard non-separable
  FZ_BLEND_SATURATION* = (FZ_BLEND_HUE + 1).Enum_fitzh14
  FZ_BLEND_COLOR* = (FZ_BLEND_SATURATION + 1).Enum_fitzh14
  FZ_BLEND_LUMINOSITY* = (FZ_BLEND_COLOR + 1).Enum_fitzh14
  FZ_BLEND_MODEMASK* = (15).Enum_fitzh14 ## ::
                                      ##    For packing purposes
  FZ_BLEND_ISOLATED* = (16).Enum_fitzh14
  FZ_BLEND_KNOCKOUT* = (32).Enum_fitzh14
  fz_device_container_stack_is_clip* = (0).Enum_fitzh15
  fz_device_container_stack_is_mask* = (fz_device_container_stack_is_clip + 1).Enum_fitzh15
  fz_device_container_stack_is_group* = (fz_device_container_stack_is_mask + 1).Enum_fitzh15
  fz_device_container_stack_is_tile* = (fz_device_container_stack_is_group + 1).Enum_fitzh15
  FZ_DONT_INTERPOLATE_IMAGES* = (1).Enum_fitzh16 ## ::
                                              ##    Hints
  FZ_NO_CACHE* = (2).Enum_fitzh16
  FZ_TEST_OPT_IMAGES* = (1).Enum_fitzh17 ## ::
                                      ##    If set, test every pixel of images exhaustively.
                                      ##   	 If clear, just look at colorspaces for images.
  FZ_TEST_OPT_SHADINGS* = (2).Enum_fitzh17 ## ::
                                        ##    If set, test every pixel of shadings.
                                        ##    If clear, just look at colorspaces for shadings.
  FZ_STEXT_PRESERVE_LIGATURES* = (1).Enum_fitzh18
  FZ_STEXT_PRESERVE_WHITESPACE* = (2).Enum_fitzh18
  FZ_STEXT_PRESERVE_IMAGES* = (4).Enum_fitzh18
  FZ_STEXT_INHIBIT_SPACES* = (8).Enum_fitzh18
  FZ_STEXT_DEHYPHENATE* = (16).Enum_fitzh18
  FZ_STEXT_PRESERVE_SPANS* = (32).Enum_fitzh18
  FZ_STEXT_BLOCK_TEXT* = (0).Enum_fitzh19
  FZ_STEXT_BLOCK_IMAGE* = (1).Enum_fitzh19
  FZ_SELECT_CHARS* = (0).Enum_fitzh20
  FZ_SELECT_WORDS* = (FZ_SELECT_CHARS + 1).Enum_fitzh20
  FZ_SELECT_LINES* = (FZ_SELECT_WORDS + 1).Enum_fitzh20
  FZ_TRANSITION_NONE* = (0).Enum_fitzh21 ## ::
                                      ##    aka 'R' or 'REPLACE'
  FZ_TRANSITION_SPLIT* = (FZ_TRANSITION_NONE + 1).Enum_fitzh21 ## ::
                                                          ##    aka 'R' or 'REPLACE'
  FZ_TRANSITION_BLINDS* = (FZ_TRANSITION_SPLIT + 1).Enum_fitzh21
  FZ_TRANSITION_BOX* = (FZ_TRANSITION_BLINDS + 1).Enum_fitzh21
  FZ_TRANSITION_WIPE* = (FZ_TRANSITION_BOX + 1).Enum_fitzh21
  FZ_TRANSITION_DISSOLVE* = (FZ_TRANSITION_WIPE + 1).Enum_fitzh21
  FZ_TRANSITION_GLITTER* = (FZ_TRANSITION_DISSOLVE + 1).Enum_fitzh21
  FZ_TRANSITION_FLY* = (FZ_TRANSITION_GLITTER + 1).Enum_fitzh21
  FZ_TRANSITION_PUSH* = (FZ_TRANSITION_FLY + 1).Enum_fitzh21
  FZ_TRANSITION_COVER* = (FZ_TRANSITION_PUSH + 1).Enum_fitzh21
  FZ_TRANSITION_UNCOVER* = (FZ_TRANSITION_COVER + 1).Enum_fitzh21
  FZ_TRANSITION_FADE* = (FZ_TRANSITION_UNCOVER + 1).Enum_fitzh21
  FZ_LAYOUT_KINDLE_W* = (260).Enum_fitzh22 ## ::
                                        ##    6in at 4:3
  FZ_LAYOUT_KINDLE_H* = (346).Enum_fitzh22
  FZ_LAYOUT_KINDLE_EM* = (9).Enum_fitzh22
  FZ_LAYOUT_US_POCKET_W* = (306).Enum_fitzh22 ## ::
                                           ##    4.25 x 6.87 in
  FZ_LAYOUT_US_POCKET_H* = (495).Enum_fitzh22
  FZ_LAYOUT_US_POCKET_EM* = (10).Enum_fitzh22
  FZ_LAYOUT_US_TRADE_W* = (396).Enum_fitzh22 ## ::
                                          ##    5.5 x 8.5 in
  FZ_LAYOUT_US_TRADE_H* = (612).Enum_fitzh22
  FZ_LAYOUT_US_TRADE_EM* = (11).Enum_fitzh22
  FZ_LAYOUT_UK_A_FORMAT_W* = (312).Enum_fitzh22 ## ::
                                             ##    110 x 178 mm
  FZ_LAYOUT_UK_A_FORMAT_H* = (504).Enum_fitzh22
  FZ_LAYOUT_UK_A_FORMAT_EM* = (10).Enum_fitzh22
  FZ_LAYOUT_UK_B_FORMAT_W* = (366).Enum_fitzh22 ## ::
                                             ##    129 x 198 mm
  FZ_LAYOUT_UK_B_FORMAT_H* = (561).Enum_fitzh22
  FZ_LAYOUT_UK_B_FORMAT_EM* = (10).Enum_fitzh22
  FZ_LAYOUT_UK_C_FORMAT_W* = (382).Enum_fitzh22 ## ::
                                             ##    135 x 216 mm
  FZ_LAYOUT_UK_C_FORMAT_H* = (612).Enum_fitzh22
  FZ_LAYOUT_UK_C_FORMAT_EM* = (11).Enum_fitzh22
  FZ_LAYOUT_A5_W* = (420).Enum_fitzh22 ## ::
                                    ##    148 x 210 mm
  FZ_LAYOUT_A5_H* = (595).Enum_fitzh22
  FZ_LAYOUT_A5_EM* = (11).Enum_fitzh22
  FZ_DEFAULT_LAYOUT_W* = (FZ_LAYOUT_A5_W.Enum_fitzh22).Enum_fitzh22 ## ::
                                                                 ##    Default to A5
  FZ_DEFAULT_LAYOUT_H* = (FZ_LAYOUT_A5_H.Enum_fitzh22).Enum_fitzh22
  FZ_DEFAULT_LAYOUT_EM* = (FZ_LAYOUT_A5_EM.Enum_fitzh22).Enum_fitzh22
  FZ_PERMISSION_PRINT* = ('p').fz_permission
  FZ_PERMISSION_COPY* = ('c').fz_permission
  FZ_PERMISSION_EDIT* = ('e').fz_permission
  FZ_PERMISSION_ANNOTATE* = ('n').fz_permission
  FZ_META_FORMAT* = "format"
  FZ_META_ENCRYPTION* = "encryption"
  FZ_META_INFO_AUTHOR* = "info:Author"
  FZ_META_INFO_TITLE* = "info:Title"
  FZ_META_INFO_CREATOR* = "info:Creator"
  FZ_META_INFO_PRODUCER* = "info:Producer"
  FZ_SVG_TEXT_AS_PATH* = (0).Enum_fitzh23
  FZ_SVG_TEXT_AS_TEXT* = (1).Enum_fitzh23
{.pragma: impfitzHdr, header: headerfitz.}
type
  sigjmp_buf = object
  fz_point* {.bycopy, importc, impfitzHdr.} = object ## ::
                                               ##   
                                               ##   	fz_point is a point in a two-dimensional space.
    x*: cfloat
    y*: cfloat

  fz_rect* {.bycopy, importc, impfitzHdr.} = object ## ::
                                              ##   
                                              ##   	fz_rect is a rectangle represented by two diagonally opposite
                                              ##   	corners at arbitrary coordinates.
                                              ##   
                                              ##   	Rectangles are always axis-aligned with the X- and Y- axes.
                                              ##   	The relationship between the coordinates are that x0 <= x1 and
                                              ##   	y0 <= y1 in all cases except for infinite rectangles. The area
                                              ##   	of a rectangle is defined as (x1 - x0) (y1 - y0). If either
                                              ##   	x0 > x1 or y0 > y1 is true for a given rectangle then it is
                                              ##   	defined to be infinite.
                                              ##   
                                              ##   	To check for empty or infinite rectangles use fz_is_empty_rect
                                              ##   	and fz_is_infinite_rect.
                                              ##   
                                              ##   	x0, y0: The top left corner.
                                              ##   
                                              ##   	x1, y1: The bottom right corner.
    x0*: cfloat
    y0*: cfloat
    x1*: cfloat
    y1*: cfloat

  fz_irect* {.bycopy, importc, impfitzHdr.} = object ## ::
                                               ##   
                                               ##   	fz_irect is a rectangle using integers instead of floats.
                                               ##   
                                               ##   	It's used in the draw device and for pixmap dimensions.
    x0*: cint
    y0*: cint
    x1*: cint
    y1*: cint

  fz_matrix* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##   
                                                ##   	fz_matrix is a row-major 3x3 matrix used for representing
                                                ##   	transformations of coordinates throughout MuPDF.
                                                ##   
                                                ##   	Since all points reside in a two-dimensional space, one vector
                                                ##   	is always a constant unit vector; hence only some elements may
                                                ##   	vary in a matrix. Below is how the elements map between
                                                ##   	different representations.
                                                ##   
                                                ##   	/ a b 0 	| c d 0 | normally represented as [ a b c d e f ].
                                                ##   .
                                                ##   	\ e f 1 /
    a*: cfloat
    b*: cfloat
    c*: cfloat
    d*: cfloat
    e*: cfloat
    f*: cfloat

  fz_quad* {.bycopy, importc, impfitzHdr.} = object ## ::
                                              ##   
                                              ##   	A representation for a region defined by 4 points.
                                              ##   
                                              ##   	The significant difference between quads and rects is that
                                              ##   	the edges of quads are not axis aligned.
    ul*: fz_point
    ur*: fz_point
    ll*: fz_point
    lr*: fz_point

  fz_font_context* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_colorspace_context* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_style_context* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_tuning_context* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_store* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_glyph_cache* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_document_handler_context* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_context* {.importc, impfitzHdr, bycopy.} = object
    user*: pointer
    alloc*: fz_alloc_context
    locks*: fz_locks_context
    error*: fz_error_context
    warn*: fz_warn_context
    aa*: fz_aa_context         ## ::
                     ##    unshared contexts
    seed48*: array[7, uint16]
    icc_enabled*: cint
    handler*: ptr fz_document_handler_context ## ::
                                           ##    TODO: should these be unshared?
    style*: ptr fz_style_context
    tuning*: ptr fz_tuning_context
    font*: ptr fz_font_context  ## ::
                            ##    shared contexts
    colorspace*: ptr fz_colorspace_context
    store*: ptr fz_store
    glyph_cache*: ptr fz_glyph_cache

  fz_alloc_context* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                       ##   
                                                       ##   	Allocator structure; holds callbacks and private data pointer.
    user*: pointer
    malloc*: proc (a1: pointer; a2: uint): pointer {.cdecl.}
    realloc*: proc (a1: pointer; a2: pointer; a3: uint): pointer {.cdecl.}
    free*: proc (a1: pointer; a2: pointer) {.cdecl.}

  fz_locks_context* {.bycopy, importc, impfitzHdr.} = object
    user*: pointer
    lock*: proc (user: pointer; lock: cint) {.cdecl.}
    unlock*: proc (user: pointer; lock: cint) {.cdecl.}

  fz_tune_image_decode_fn* {.importc, impfitzHdr.} = proc (arg: pointer; w: cint;
      h: cint; l2factor: cint; subarea: ptr fz_irect) {.cdecl.}
  fz_tune_image_scale_fn* {.importc, impfitzHdr.} = proc (arg: pointer; dst_w: cint;
      dst_h: cint; src_w: cint; src_h: cint): cint {.cdecl.}
  fz_error_stack_slot* {.bycopy, importc, impfitzHdr.} = object
    state*: cint
    code*: cint
    buffer*: sigjmp_buf

  fz_error_context* {.bycopy, importc, impfitzHdr.} = object
    top*: ptr fz_error_stack_slot
    stack*: array[256, fz_error_stack_slot]
    errcode*: cint
    print_user*: pointer
    print*: proc (user: pointer; message: cstring) {.cdecl.}
    message*: array[256, cchar]

  fz_warn_context* {.bycopy, importc, impfitzHdr.} = object
    print_user*: pointer
    print*: proc (user: pointer; message: cstring) {.cdecl.}
    count*: cint
    message*: array[256, cchar]

  fz_aa_context* {.bycopy, importc, impfitzHdr.} = object
    hscale*: cint
    vscale*: cint
    scale*: cint
    bits*: cint
    text_bits*: cint
    min_line_width*: cfloat

  fz_buffer* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##   
                                                ##   	fz_buffer is a wrapper around a dynamically allocated array of
                                                ##   	bytes.
                                                ##   
                                                ##   	Buffers have a capacity (the number of bytes storage immediately
                                                ##   	available) and a current size.
                                                ##   
                                                ##   	The contents of the structure are considered implementation
                                                ##   	details and are subject to change. Users should use the accessor
                                                ##   	functions in preference.
    refs*: cint
    data*: ptr cuchar
    cap*: uint
    len*: uint
    unused_bits*: cint
    shared*: cint

  fz_stream* {.importc, impfitzHdr, bycopy.} = object
    refs*: cint
    error*: cint
    eof*: cint
    progressive*: cint
    pos*: int64
    avail*: cint
    bits*: cint
    rp*: ptr cuchar
    wp*: ptr cuchar
    state*: pointer
    next*: ptr fz_stream_next_fn
    drop*: ptr fz_stream_drop_fn
    seek*: ptr fz_stream_seek_fn

  fz_stream_next_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      stm: ptr fz_stream; max: uint): cint {.cdecl.}
  fz_stream_drop_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context; state: pointer) {.
      cdecl.}
  fz_stream_seek_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      stm: ptr fz_stream; offset: int64; whence: cint) {.cdecl.}
  fz_output_write_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      state: pointer; data: pointer; n: uint) {.cdecl.}
  fz_output_seek_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      state: pointer; offset: int64; whence: cint) {.cdecl.}
  fz_output_tell_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context; state: pointer): int64 {.
      cdecl.}
  fz_output_close_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      state: pointer) {.cdecl.}
  fz_output_drop_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context; state: pointer) {.
      cdecl.}
  fz_stream_from_output_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      state: pointer): ptr fz_stream {.cdecl.}
  fz_truncate_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context; state: pointer) {.
      cdecl.}
  fz_output* {.bycopy, importc, impfitzHdr.} = object
    state*: pointer
    write*: ptr fz_output_write_fn
    seek*: ptr fz_output_seek_fn
    tell*: ptr fz_output_tell_fn
    close*: ptr fz_output_close_fn
    drop*: ptr fz_output_drop_fn
    as_stream*: ptr fz_stream_from_output_fn
    truncate*: ptr fz_truncate_fn
    bp*: cstring
    wp*: cstring
    ep*: cstring

  fz_md5* {.bycopy, importc, impfitzHdr.} = object ## ::
                                             ##    md5 digests
                                             ##   
                                             ##   	Structure definition is public to enable stack
                                             ##   	based allocation. Do not access the members directly.
    state*: array[4, cuint]
    count*: array[2, cuint]
    buffer*: array[64, cuchar]

  Union_fitzh1* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh1".} = object
    u8*: array[64, cuchar]
    u32*: array[16, cuint]

  fz_sha256* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##    sha-256 digests
                                                ##   
                                                ##   	Structure definition is public to enable stack
                                                ##   	based allocation. Do not access the members directly.
    state*: array[8, cuint]
    count*: array[2, cuint]
    buffer*: Union_fitzh1

  Union_fitzh2* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh2".} = object
    u8*: array[128, cuchar]
    u64*: array[16, uint64]

  fz_sha512* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##    sha-512 digests
                                                ##   
                                                ##   	Structure definition is public to enable stack
                                                ##   	based allocation. Do not access the members directly.
    state*: array[8, uint64]
    count*: array[2, cuint]
    buffer*: Union_fitzh2

  fz_sha384* {.importc, impfitzHdr.} = fz_sha512
  fz_arc4* {.bycopy, importc, impfitzHdr.} = object ## ::
                                              ##    arc4 crypto
                                              ##   
                                              ##   	Structure definition is public to enable stack
                                              ##   	based allocation. Do not access the members directly.
    x*: cuint
    y*: cuint
    state*: array[256, cuchar]

  fz_aes* {.bycopy, importc, impfitzHdr.} = object ## ::
                                             ##    AES block cipher implementation from XYSSL
                                             ##   
                                             ##   	Structure definitions are public to enable stack
                                             ##   	based allocation. Do not access the members directly.
    nr*: cint                  ## ::
            ##    number of rounds
    rk*: ptr culong             ## ::
                 ##    AES round keys
    buf*: array[68, culong]     ## ::
                         ##    unaligned data
  
  fz_hash_table* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_hash_table_drop_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      val: pointer) {.cdecl.}
  fz_hash_table_for_each_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      state: pointer; key: pointer; keylen: cint; val: pointer) {.cdecl.}
  fz_pool* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_tree* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_bidi_fragment_fn* {.importc, impfitzHdr.} = proc (fragment: ptr uint32;
      fragmentLen: uint; bidiLevel: cint; script: cint; arg: pointer) {.cdecl.}
  fz_xml_doc* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_xml* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_storable* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                  ##   
                                                  ##   	Any storable object should include an fz_storable structure
                                                  ##   	at the start (by convention at least) of their structure.
                                                  ##   	(Unless it starts with an fz_key_storable, see below).
    refs*: cint
    drop*: ptr fz_store_drop_fn

  fz_store_drop_fn* {.importc, impfitzHdr.} = proc (a1: ptr fz_context;
      a2: ptr fz_storable) {.cdecl.}
  fz_key_storable* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                      ##   
                                                      ##   	Any storable object that can appear in the key of another
                                                      ##   	storable object should include an fz_key_storable structure
                                                      ##   	at the start (by convention at least) of their structure.
    storable*: fz_storable
    store_key_refs*: cshort

  Type_fitzh1* {.bycopy, impfitzHdr, importc: "struct Type_fitzh1".} = object
    `ptr`*: pointer
    i*: cint

  Type_fitzh2* {.bycopy, impfitzHdr, importc: "struct Type_fitzh2".} = object ## ::
                                                                       ##    8 or 12 bytes
    `ptr`*: pointer
    i*: cint
    r*: fz_irect

  Type_fitzh3* {.bycopy, impfitzHdr, importc: "struct Type_fitzh3".} = object ## ::
                                                                       ##    24 or 28 bytes
    id*: cint
    has_shape*: cchar
    has_group_alpha*: cchar
    m*: array[4, cfloat]
    `ptr`*: pointer

  Type_fitzh4* {.bycopy, impfitzHdr, importc: "struct Type_fitzh4".} = object ## ::
                                                                       ##    24 or 28 bytes
    src_md5*: array[16, cuchar]
    dst_md5*: array[16, cuchar]
    ri* {.bitsize: 2.}: cuint
    bp* {.bitsize: 1.}: cuint
    format* {.bitsize: 1.}: cuint
    proof* {.bitsize: 1.}: cuint
    src_extras* {.bitsize: 5.}: cuint
    dst_extras* {.bitsize: 5.}: cuint
    copy_spots* {.bitsize: 1.}: cuint
    bgr* {.bitsize: 1.}: cuint

  Union_fitzh3* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh3".} = object
    pi*: Type_fitzh1
    pir*: Type_fitzh2          ## ::
                    ##    8 or 12 bytes
    im*: Type_fitzh3           ## ::
                   ##    24 or 28 bytes
    link*: Type_fitzh4         ## ::
                     ##    24 or 28 bytes
  
  fz_store_hash* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                    ##   
                                                    ##   	The store can be seen as a dictionary that maps keys to
                                                    ##   	fz_storable values. In order to allow keys of different types to
                                                    ##   	be stored, we have a structure full of functions for each key
                                                    ##   	'type'; this fz_store_type pointer is stored with each key, and
                                                    ##   	tells the store how to perform certain operations (like taking/
                                                    ##   	dropping a reference, comparing two keys, outputting details for
                                                    ##   	debugging etc).
                                                    ##   
                                                    ##   	The store uses a hash table internally for speed where possible.
                                                    ##   	In order for this to work, we need a mechanism for turning a
                                                    ##   	generic 'key' into 'a hashable string'. For this purpose the
                                                    ##   	type structure contains a make_hash_key function pointer that
                                                    ##   	maps from a void to a fz_store_hash structure. If
                                                    ##   	make_hash_key function returns 0, then the key is determined not
                                                    ##   	to be hashable, and the value is not stored in the hash table.
                                                    ##   
                                                    ##   	Some objects can be used both as values within the store, and as
                                                    ##   	a component of keys within the store. We refer to these objects
                                                    ##   	as "key storable" objects. In this case, we need to take
                                                    ##   	additional care to ensure that we do not end up keeping an item
                                                    ##   	within the store, purely because its value is referred to by
                                                    ##   	another key in the store.
                                                    ##   
                                                    ##   	An example of this are fz_images in PDF files. Each fz_image is
                                                    ##   	placed into the	store to enable it to be easily reused. When the
                                                    ##   	image is rendered, a pixmap is generated from the image, and the
                                                    ##   	pixmap is placed into the store so it can be reused on
                                                    ##   	subsequent renders. The image forms part of the key for the
                                                    ##   	pixmap.
                                                    ##   
                                                    ##   	When we close the pdf document (and any associated pages/display
                                                    ##   	lists etc), we drop the images from the store. This may leave us
                                                    ##   	in the position of the images having non-zero reference counts
                                                    ##   	purely because they are used as part of the keys for the
                                                    ##   	pixmaps.
                                                    ##   
                                                    ##   	We therefore use special reference counting functions to keep
                                                    ##   	track of these "key storable" items, and hence store the number
                                                    ##   	of references to these items that are used in keys.
                                                    ##   
                                                    ##   	When the number of references to an object == the number of
                                                    ##   	references to an object from keys in the store, we know that we
                                                    ##   	can remove all the items which have that object as part of the
                                                    ##   	key. This is done by running a pass over the store, 'reaping'
                                                    ##   	those items.
                                                    ##   
                                                    ##   	Reap passes are slower than we would like as they touch every
                                                    ##   	item in the store. We therefore provide a way to 'batch' such
                                                    ##   	reap passes together, using fz_defer_reap_start/
                                                    ##   	fz_defer_reap_end to bracket a region in which many may be
                                                    ##   	triggered.
    drop*: ptr fz_store_drop_fn
    u*: Union_fitzh3

  fz_store_type* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                    ##    40 or 44 bytes
                                                    ##   
                                                    ##   	Every type of object to be placed into the store defines an
                                                    ##   	fz_store_type. This contains the pointers to functions to
                                                    ##   	make hashes, manipulate keys, and check for needing reaping.
    name*: cstring
    make_hash_key*: proc (ctx: ptr fz_context; hash: ptr fz_store_hash; key: pointer): cint {.
        cdecl.}
    keep_key*: proc (ctx: ptr fz_context; key: pointer): pointer {.cdecl.}
    drop_key*: proc (ctx: ptr fz_context; key: pointer) {.cdecl.}
    cmp_key*: proc (ctx: ptr fz_context; a: pointer; b: pointer): cint {.cdecl.}
    format_key*: proc (ctx: ptr fz_context; buf: cstring; size: uint; key: pointer) {.cdecl.}
    needs_reap*: proc (ctx: ptr fz_context; key: pointer): cint {.cdecl.}

  fz_store_filter_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context; arg: pointer;
      key: pointer): cint {.cdecl.}
  fz_jbig2_globals* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_range* {.bycopy, importc, impfitzHdr.} = object
    offset*: int64
    length*: uint

  Type_fitzh5* {.bycopy, impfitzHdr, importc: "struct Type_fitzh5".} = object
    color_transform*: cint     ## ::
                         ##    Use -1 for unset
  
  Type_fitzh6* {.bycopy, impfitzHdr, importc: "struct Type_fitzh6".} = object
    smask_in_data*: cint

  Type_fitzh7* {.bycopy, impfitzHdr, importc: "struct Type_fitzh7".} = object
    globals*: ptr fz_jbig2_globals

  Type_fitzh8* {.bycopy, impfitzHdr, importc: "struct Type_fitzh8".} = object
    columns*: cint
    rows*: cint
    k*: cint
    end_of_line*: cint
    encoded_byte_align*: cint
    end_of_block*: cint
    black_is_1*: cint
    damaged_rows_before_error*: cint

  Type_fitzh9* {.bycopy, impfitzHdr, importc: "struct Type_fitzh9".} = object
    columns*: cint
    colors*: cint
    predictor*: cint
    bpc*: cint

  Type_fitzh10* {.bycopy, impfitzHdr, importc: "struct Type_fitzh10".} = object
    columns*: cint
    colors*: cint
    predictor*: cint
    bpc*: cint
    early_change*: cint

  Union_fitzh4* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh4".} = object
    jpeg*: Type_fitzh5
    jpx*: Type_fitzh6
    jbig2*: Type_fitzh7
    fax*: Type_fitzh8
    flate*: Type_fitzh9
    lzw*: Type_fitzh10

  fz_compression_params* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                            ##   
                                                            ##   	Compression parameters used for buffers of compressed data;
                                                            ##   	typically for the source data for images.
    `type`*: cint
    u*: Union_fitzh4

  fz_compressed_buffer* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                           ##   
                                                           ##   	Buffers of compressed data; typically for the source data
                                                           ##   	for images.
    params*: fz_compression_params
    buffer*: ptr fz_buffer

  fz_archive* {.importc, impfitzHdr, bycopy.} = object
    file*: ptr fz_stream
    format*: cstring
    drop_archive*: proc (ctx: ptr fz_context; arch: ptr fz_archive) {.cdecl.}
    count_entries*: proc (ctx: ptr fz_context; arch: ptr fz_archive): cint {.cdecl.}
    list_entry*: proc (ctx: ptr fz_context; arch: ptr fz_archive; idx: cint): cstring {.
        cdecl.}
    has_entry*: proc (ctx: ptr fz_context; arch: ptr fz_archive; name: cstring): cint {.
        cdecl.}
    read_entry*: proc (ctx: ptr fz_context; arch: ptr fz_archive; name: cstring): ptr fz_buffer {.
        cdecl.}
    open_entry*: proc (ctx: ptr fz_context; arch: ptr fz_archive; name: cstring): ptr fz_stream {.
        cdecl.}

  fz_zip_writer* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_icc_profile* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_colorspace* {.importc, impfitzHdr, bycopy.} = object
    key_storable*: fz_key_storable
    `type`*: fz_colorspace_type
    flags*: cint
    n*: cint
    name*: cstring
    u*: Union_fitzh5

  fz_pixmap* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                ##   
                                                ##   	Pixmaps represent a set of pixels for a 2 dimensional region of
                                                ##   	a plane. Each pixel has n components per pixel. The components
                                                ##   	are in the order process-components, spot-colors, alpha, where
                                                ##   	there can be 0 of any of those types. The data is in
                                                ##   	premultiplied alpha when rendering, but non-premultiplied for
                                                ##   	colorspace conversions and rescaling.
                                                ##   
                                                ##   	x, y: The minimum x and y coord of the region in pixels.
                                                ##   
                                                ##   	w, h: The width and height of the region in pixels.
                                                ##   
                                                ##   	n: The number of color components in the image.
                                                ##   		n = num composite colors + num spots + num alphas
                                                ##   
                                                ##   	s: The number of spot channels in the image.
                                                ##   
                                                ##   	alpha: 0 for no alpha, 1 for alpha present.
                                                ##   
                                                ##   	flags: flag bits.
                                                ##   		Bit 0: If set, draw the image with linear interpolation.
                                                ##   		Bit 1: If set, free the samples buffer when the pixmap
                                                ##   		is destroyed.
                                                ##   
                                                ##   	stride: The byte offset from the data for any given pixel
                                                ##   	to the data for the same pixel on the row below.
                                                ##   
                                                ##   	seps: NULL, or a pointer to a separations structure. If NULL,
                                                ##   	s should be 0.
                                                ##   
                                                ##   	xres, yres: Image resolution in dpi. Default is 96 dpi.
                                                ##   
                                                ##   	colorspace: Pointer to a colorspace object describing the
                                                ##   	colorspace the pixmap is in. If NULL, the image is a mask.
                                                ##   
                                                ##   	samples: Pointer to the first byte of the pixmap sample data.
                                                ##   	This is typically a simple block of memory w h n bytes of
                                                ##   	memory in which the components are stored linearly, but with the
                                                ##   	use of appropriate stride values, scanlines can be stored in
                                                ##   	different orders, and have different amounts of padding. The
                                                ##   	first n bytes are components 0 to n-1 for the pixel at (x,y).
                                                ##   	Each successive n bytes gives another pixel in scanline order
                                                ##   	as we move across the line. The start of each scanline is offset
                                                ##   	the start of the previous one by stride bytes.
    storable*: fz_storable
    x*: cint
    y*: cint
    w*: cint
    h*: cint
    n*: cuchar
    s*: cuchar
    alpha*: cuchar
    flags*: cuchar
    stride*: ptrdiff_t
    seps*: ptr fz_separations
    xres*: cint
    yres*: cint
    colorspace*: ptr fz_colorspace
    samples*: ptr cuchar
    underlying*: ptr fz_pixmap

  fz_color_params* {.bycopy, importc, impfitzHdr.} = object
    ri*: uint8                 ## ::
             ##    rendering intent
    bp*: uint8                 ## ::
             ##    black point compensation
    op*: uint8                 ## ::
             ##    overprinting
    opm*: uint8                ## ::
              ##    overprint mode
  
  fz_default_colorspaces* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                             ##    Default (fallback) colorspace handling
                                                             ##   
                                                             ##   	Structure to hold default colorspaces.
    refs*: cint
    gray*: ptr fz_colorspace
    rgb*: ptr fz_colorspace
    cmyk*: ptr fz_colorspace
    oi*: ptr fz_colorspace

  Type_fitzh11* {.bycopy, impfitzHdr, importc: "struct Type_fitzh11".} = object
    buffer*: ptr fz_buffer
    md5*: array[16, cuchar]
    profile*: ptr fz_icc_profile

  Type_fitzh12* {.bycopy, impfitzHdr, importc: "struct Type_fitzh12".} = object
    base*: ptr fz_colorspace
    high*: cint
    lookup*: ptr cuchar

  Type_fitzh13* {.bycopy, impfitzHdr, importc: "struct Type_fitzh13".} = object
    base*: ptr fz_colorspace
    eval*: proc (ctx: ptr fz_context; tint: pointer; s: ptr cfloat; sn: cint; d: ptr cfloat;
               dn: cint) {.cdecl.}
    drop*: proc (ctx: ptr fz_context; tint: pointer) {.cdecl.}
    tint*: pointer
    colorant*: array[FZ_MAX_COLORS, cstring]

  Union_fitzh5* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh5".} = object
    icc*: Type_fitzh11
    indexed*: Type_fitzh12
    separation*: Type_fitzh13

  fz_separations* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_overprint* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_bitmap* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##   
                                                ##   	Bitmaps have 1 bit per component. Only used for creating
                                                ##   	halftoned versions of contone buffers, and saving out. Samples
                                                ##   	are stored msb first, akin to pbms.
                                                ##   
                                                ##   	The internals of this struct are considered implementation
                                                ##   	details and subject to change. Where possible, accessor
                                                ##   	functions should be used in preference.
    refs*: cint
    w*: cint
    h*: cint
    stride*: cint
    n*: cint
    xres*: cint
    yres*: cint
    samples*: ptr cuchar

  fz_halftone* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_image* {.importc, impfitzHdr, bycopy.} = object ## ::
                                               ##   
                                               ##   	Structure is public to allow other structures to
                                               ##   	be derived from it. Do not access members directly.
    key_storable*: fz_key_storable
    w*: cint
    h*: cint
    n*: uint8
    bpc*: uint8
    imagemask* {.bitsize: 1.}: cuint
    interpolate* {.bitsize: 1.}: cuint
    use_colorkey* {.bitsize: 1.}: cuint
    use_decode* {.bitsize: 1.}: cuint
    invert_cmyk_jpeg* {.bitsize: 1.}: cuint
    decoded* {.bitsize: 1.}: cuint
    scalable* {.bitsize: 1.}: cuint
    mask*: ptr fz_image
    xres*: cint                ## ::
              ##    As given in the image, not necessarily as rendered
    yres*: cint                ## ::
              ##    As given in the image, not necessarily as rendered
    colorspace*: ptr fz_colorspace ## ::
                                ##    As given in the image, not necessarily as rendered
    drop_image*: ptr fz_drop_image_fn
    get_pixmap*: ptr fz_image_get_pixmap_fn
    get_size*: ptr fz_image_get_size_fn
    colorkey*: array[FZ_MAX_COLORS * typeof(FZ_MAX_COLORS)(2), cint]
    decode*: array[FZ_MAX_COLORS * typeof(FZ_MAX_COLORS)(2), cfloat]

  fz_compressed_image* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_pixmap_image* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_drop_image_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      image: ptr fz_image) {.cdecl.}
  fz_image_get_pixmap_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      im: ptr fz_image; subarea: ptr fz_irect; w: cint; h: cint; l2factor: ptr cint): ptr fz_pixmap {.
      cdecl.}
  fz_image_get_size_fn* {.importc, impfitzHdr.} = proc (a1: ptr fz_context;
      a2: ptr fz_image): uint {.cdecl.}
  Type_fitzh14* {.bycopy, impfitzHdr, importc: "struct Type_fitzh14".} = object
    extend*: array[2, cint]
    coords*: array[2, array[3, cfloat]] ## ::
                                    ##    (x,y,r) twice
  
  Type_fitzh15* {.bycopy, impfitzHdr, importc: "struct Type_fitzh15".} = object
    vprow*: cint
    bpflag*: cint
    bpcoord*: cint
    bpcomp*: cint
    x0*: cfloat
    x1*: cfloat
    y0*: cfloat
    y1*: cfloat
    c0*: array[FZ_MAX_COLORS, cfloat]
    c1*: array[FZ_MAX_COLORS, cfloat]

  Type_fitzh16* {.bycopy, impfitzHdr, importc: "struct Type_fitzh16".} = object
    matrix*: fz_matrix
    xdivs*: cint
    ydivs*: cint
    domain*: array[2, array[2, cfloat]]
    fn_vals*: ptr cfloat

  Union_fitzh6* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh6".} = object ## ::
                                                                              ##    function, linear, radial, mesh
    l_or_r*: Type_fitzh14
    m*: Type_fitzh15
    f*: Type_fitzh16

  fz_shade* {.bycopy, importc, impfitzHdr.} = object ## ::
                                               ##   
                                               ##   	Structure is public to allow derived classes. Do not
                                               ##   	access the members directly.
    storable*: fz_storable
    bbox*: fz_rect             ## ::
                 ##    can be fz_infinite_rect
    colorspace*: ptr fz_colorspace ## ::
                                ##    can be fz_infinite_rect
    matrix*: fz_matrix         ## ::
                     ##    matrix from pattern dict
    use_background*: cint      ## ::
                        ##    background color for fills but not 'sh'
    background*: array[FZ_MAX_COLORS, cfloat] ## ::
                                           ##    background color for fills but not 'sh'
    use_function*: cint ## ::
                      ##    Just to be confusing, PDF Shadings of Type 1 (Function Based
                      ##   	 Shadings), do NOT use_function, but all the others do. This
                      ##   	 is because Type 1 shadings take 2 inputs, whereas all the
                      ##   	 others (when used with a function take 1 input. The type 1
                      ##   	 data is in the 'f' field of the union below.
    function*: array[256, array[FZ_MAX_COLORS + typeof(FZ_MAX_COLORS)(1), cfloat]]
    `type`*: cint              ## ::
                ##    function, linear, radial, mesh
    u*: Union_fitzh6           ## ::
                   ##    function, linear, radial, mesh
    buffer*: ptr fz_compressed_buffer

  fz_vertex* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##   
                                                ##   	Handy routine for processing mesh based shades
    p*: fz_point
    c*: array[FZ_MAX_COLORS, cfloat]

  fz_shade_prepare_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      arg: pointer; v: ptr fz_vertex; c: ptr cfloat) {.cdecl.}
  fz_shade_process_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      arg: pointer; av: ptr fz_vertex; bv: ptr fz_vertex; cv: ptr fz_vertex) {.cdecl.}
  fz_device* {.bycopy, impfitzHdr, importc: "struct fz_device".} = object
    refs*: cint
    hints*: cint
    flags*: cint
    close_device*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    drop_device*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    fill_path*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_path;
                    even_odd: cint; a5: fz_matrix; a6: ptr fz_colorspace;
                    color: ptr cfloat; alpha: cfloat; a9: fz_color_params) {.cdecl.}
    stroke_path*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_path;
                      a4: ptr fz_stroke_state; a5: fz_matrix; a6: ptr fz_colorspace;
                      color: ptr cfloat; alpha: cfloat; a9: fz_color_params) {.cdecl.}
    clip_path*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_path;
                    even_odd: cint; a5: fz_matrix; scissor: fz_rect) {.cdecl.}
    clip_stroke_path*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_path;
                           a4: ptr fz_stroke_state; a5: fz_matrix; scissor: fz_rect) {.
        cdecl.}
    fill_text*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_text;
                    a4: fz_matrix; a5: ptr fz_colorspace; color: ptr cfloat;
                    alpha: cfloat; a8: fz_color_params) {.cdecl.}
    stroke_text*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_text;
                      a4: ptr fz_stroke_state; a5: fz_matrix; a6: ptr fz_colorspace;
                      color: ptr cfloat; alpha: cfloat; a9: fz_color_params) {.cdecl.}
    clip_text*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_text;
                    a4: fz_matrix; scissor: fz_rect) {.cdecl.}
    clip_stroke_text*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_text;
                           a4: ptr fz_stroke_state; a5: fz_matrix; scissor: fz_rect) {.
        cdecl.}
    ignore_text*: proc (a1: ptr fz_context; a2: ptr fz_device; a3: ptr fz_text;
                      a4: fz_matrix) {.cdecl.}
    fill_shade*: proc (a1: ptr fz_context; a2: ptr fz_device; shd: ptr fz_shade;
                     ctm: fz_matrix; alpha: cfloat; color_params: fz_color_params) {.
        cdecl.}
    fill_image*: proc (a1: ptr fz_context; a2: ptr fz_device; img: ptr fz_image;
                     ctm: fz_matrix; alpha: cfloat; color_params: fz_color_params) {.
        cdecl.}
    fill_image_mask*: proc (a1: ptr fz_context; a2: ptr fz_device; img: ptr fz_image;
                          ctm: fz_matrix; a5: ptr fz_colorspace; color: ptr cfloat;
                          alpha: cfloat; color_params: fz_color_params) {.cdecl.}
    clip_image_mask*: proc (a1: ptr fz_context; a2: ptr fz_device; img: ptr fz_image;
                          ctm: fz_matrix; scissor: fz_rect) {.cdecl.}
    pop_clip*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    begin_mask*: proc (a1: ptr fz_context; a2: ptr fz_device; area: fz_rect;
                     luminosity: cint; a5: ptr fz_colorspace; bc: ptr cfloat;
                     a7: fz_color_params) {.cdecl.}
    end_mask*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    begin_group*: proc (a1: ptr fz_context; a2: ptr fz_device; area: fz_rect;
                      cs: ptr fz_colorspace; isolated: cint; knockout: cint;
                      blendmode: cint; alpha: cfloat) {.cdecl.}
    end_group*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    begin_tile*: proc (a1: ptr fz_context; a2: ptr fz_device; area: fz_rect;
                     view: fz_rect; xstep: cfloat; ystep: cfloat; ctm: fz_matrix;
                     id: cint): cint {.cdecl.}
    end_tile*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    render_flags*: proc (a1: ptr fz_context; a2: ptr fz_device; set: cint; clear: cint) {.
        cdecl.}
    set_default_colorspaces*: proc (a1: ptr fz_context; a2: ptr fz_device;
                                  a3: ptr fz_default_colorspaces) {.cdecl.}
    begin_layer*: proc (a1: ptr fz_context; a2: ptr fz_device; layer_name: cstring) {.
        cdecl.}
    end_layer*: proc (a1: ptr fz_context; a2: ptr fz_device) {.cdecl.}
    d1_rect*: fz_rect
    container_len*: cint
    container_cap*: cint
    container*: ptr fz_device_container_stack

  fz_font* {.importc, impfitzHdr, bycopy.} = object
    refs*: cint
    name*: array[32, cchar]
    buffer*: ptr fz_buffer
    flags*: fz_font_flags_t
    ft_face*: pointer          ## ::
                    ##    has an FT_Face if used
    shaper_data*: fz_shaper_data_t ## ::
                                 ##    has an FT_Face if used
    t3matrix*: fz_matrix
    t3resources*: pointer
    t3procs*: ptr ptr fz_buffer  ## ::
                            ##    has 256 entries if used
    t3lists*: ptr ptr fz_display_list ## ::
                                  ##    has 256 entries if used
    t3widths*: ptr cfloat       ## ::
                       ##    has 256 entries if used
    t3flags*: ptr cushort       ## ::
                       ##    has 256 entries if used
    t3doc*: pointer            ## ::
                  ##    a pdf_document for the callback
    t3run*: proc (ctx: ptr fz_context; doc: pointer; resources: pointer;
                contents: ptr fz_buffer; dev: ptr fz_device; ctm: fz_matrix;
                gstate: pointer; default_cs: ptr fz_default_colorspaces) {.cdecl.} ## ::
                                                                             ##    a pdf_document for the callback
    t3freeres*: proc (ctx: ptr fz_context; doc: pointer; resources: pointer) {.cdecl.}
    bbox*: fz_rect             ## ::
                 ##    font bbox is used only for t3 fonts
    glyph_count*: cint
    bbox_table*: ptr fz_rect    ## ::
                          ##    per glyph bounding box cache
    width_count*: cint         ## ::
                     ##    substitute metrics
    width_default*: cshort     ## ::
                         ##    in 1000 units
    width_table*: ptr cshort    ## ::
                          ##    in 1000 units
                          ##    cached glyph metrics
    advance_cache*: ptr cfloat  ## ::
                            ##    in 1000 units
                            ##    cached glyph metrics
    encoding_cache*: array[256, ptr uint16] ## ::
                                        ##    cached encoding lookup
    has_digest*: cint          ## ::
                    ##    cached md5sum for caching
    digest*: array[16, cuchar]

  fz_font_flags_t* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                      ##   
                                                      ##   	Every fz_font carries a set of flags
                                                      ##   	within it, in a fz_font_flags_t structure.
    is_mono* {.bitsize: 1.}: cuint
    is_serif* {.bitsize: 1.}: cuint
    is_bold* {.bitsize: 1.}: cuint
    is_italic* {.bitsize: 1.}: cuint
    ft_substitute* {.bitsize: 1.}: cuint ## ::
                                     ##    use substitute metrics
    ft_stretch* {.bitsize: 1.}: cuint ## ::
                                  ##    stretch to match PDF metrics
    fake_bold* {.bitsize: 1.}: cuint ## ::
                                 ##    synthesize bold
    fake_italic* {.bitsize: 1.}: cuint ## ::
                                   ##    synthesize italic
    has_opentype* {.bitsize: 1.}: cuint ## ::
                                    ##    has opentype shaping tables
    invalid_bbox* {.bitsize: 1.}: cuint ## ::
                                    ##    has opentype shaping tables
  
  fz_shaper_data_t* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                       ##   
                                                       ##   	In order to shape a given font, we need to
                                                       ##   	declare it to a shaper library (harfbuzz, by default, but others
                                                       ##   	are possible). To avoid redeclaring it every time we need to
                                                       ##   	shape, we hold a shaper handle and the destructor for it within
                                                       ##   	the font itself. The handle is initialised by the caller when
                                                       ##   	first required and the destructor is called when the fz_font is
                                                       ##   	destroyed.
    shaper_handle*: pointer
    destroy*: proc (ctx: ptr fz_context; a2: pointer) {.cdecl.} ## ::
                                                        ##    Destructor for shape_handle
  
  fz_load_system_font_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      name: cstring; bold: cint; italic: cint; needs_exact_metrics: cint): ptr fz_font {.
      cdecl.}
  fz_load_system_cjk_font_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      name: cstring; ordering: cint; serif: cint): ptr fz_font {.cdecl.}
  fz_load_system_fallback_font_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; script: cint; language: cint; serif: cint; bold: cint;
      italic: cint): ptr fz_font {.cdecl.}
  fz_path* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_stroke_state* {.bycopy, importc, impfitzHdr.} = object
    refs*: cint
    start_cap*: fz_linecap
    dash_cap*: fz_linecap
    end_cap*: fz_linecap
    linejoin*: fz_linejoin
    linewidth*: cfloat
    miterlimit*: cfloat
    dash_phase*: cfloat
    dash_len*: cint
    dash_list*: array[32, cfloat]

  fz_path_walker* {.bycopy, importc, impfitzHdr.} = object
    moveto*: proc (ctx: ptr fz_context; arg: pointer; x: cfloat; y: cfloat) {.cdecl.} ## ::
                                                                          ##    Compulsory ones
    lineto*: proc (ctx: ptr fz_context; arg: pointer; x: cfloat; y: cfloat) {.cdecl.}
    curveto*: proc (ctx: ptr fz_context; arg: pointer; x1: cfloat; y1: cfloat; x2: cfloat;
                  y2: cfloat; x3: cfloat; y3: cfloat) {.cdecl.}
    closepath*: proc (ctx: ptr fz_context; arg: pointer) {.cdecl.} ## ::
                                                           ##    Optional ones
    quadto*: proc (ctx: ptr fz_context; arg: pointer; x1: cfloat; y1: cfloat; x2: cfloat;
                 y2: cfloat) {.cdecl.} ## ::
                                    ##    Optional ones
    curvetov*: proc (ctx: ptr fz_context; arg: pointer; x2: cfloat; y2: cfloat; x3: cfloat;
                   y3: cfloat) {.cdecl.}
    curvetoy*: proc (ctx: ptr fz_context; arg: pointer; x1: cfloat; y1: cfloat; x3: cfloat;
                   y3: cfloat) {.cdecl.}
    rectto*: proc (ctx: ptr fz_context; arg: pointer; x1: cfloat; y1: cfloat; x2: cfloat;
                 y2: cfloat) {.cdecl.}

  fz_text_item* {.bycopy, importc, impfitzHdr.} = object
    x*: cfloat
    y*: cfloat
    gid*: cint                 ## ::
             ##    -1 for one gid to many ucs mappings
    ucs*: cint                 ## ::
             ##    -1 for one ucs to many gid mappings
  
  fz_text_span* {.bycopy, impfitzHdr, importc: "struct fz_text_span".} = object
    font*: ptr fz_font
    trm*: fz_matrix
    wmode* {.bitsize: 1.}: cuint ## ::
                             ##    0 horizontal, 1 vertical
    bidi_level* {.bitsize: 7.}: cuint ## ::
                                  ##    The bidirectional level of text
    markup_dir* {.bitsize: 2.}: cuint ## ::
                                  ##    The direction of text as marked in the original document
    language* {.bitsize: 15.}: cuint ## ::
                                 ##    The language as marked in the original document
    len*: cint                 ## ::
             ##    The language as marked in the original document
    cap*: cint                 ## ::
             ##    The language as marked in the original document
    items*: ptr fz_text_item
    next*: ptr fz_text_span

  fz_text* {.bycopy, importc, impfitzHdr.} = object
    refs*: cint
    head*: ptr fz_text_span
    tail*: ptr fz_text_span

  fz_glyph* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_device_container_stack* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                                ##   
                                                                ##   	The device structure is public to allow devices to be
                                                                ##   	implemented outside of fitz.
                                                                ##   
                                                                ##   	Device methods should always be called using e.g.
                                                                ##   	fz_fill_path(ctx, dev, ...) rather than
                                                                ##   	dev->fill_path(ctx, dev, ...)
                                                                ##   
                                                                ##   
                                                                ##   	Devices can keep track of containers (clips/masks/groups/tiles)
                                                                ##   	as they go to save callers having to do it.
    scissor*: fz_rect
    `type`*: cint
    user*: cint

  fz_cookie* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                ##   
                                                ##   	Cookie support - simple communication channel between app/library.
                                                ##   
                                                ##   
                                                ##   	Provide two-way communication between application and library.
                                                ##   	Intended for multi-threaded applications where one thread is
                                                ##   	rendering pages and another thread wants to read progress
                                                ##   	feedback or abort a job that takes a long time to finish. The
                                                ##   	communication is unsynchronized without locking.
                                                ##   
                                                ##   	abort: The application should set this field to 0 before
                                                ##   	calling fz_run_page to render a page. At any point when the
                                                ##   	page is being rendered the application my set this field to 1
                                                ##   	which will cause the rendering to finish soon. This field is
                                                ##   	checked periodically when the page is rendered, but exactly
                                                ##   	when is not known, therefore there is no upper bound on
                                                ##   	exactly when the rendering will abort. If the application
                                                ##   	did not provide a set of locks to fz_new_context, it must also
                                                ##   	await the completion of fz_run_page before issuing another
                                                ##   	call to fz_run_page. Note that once the application has set
                                                ##   	this field to 1 after it called fz_run_page it may not change
                                                ##   	the value again.
                                                ##   
                                                ##   	progress: Communicates rendering progress back to the
                                                ##   	application and is read only. Increments as a page is being
                                                ##   	rendered. The value starts out at 0 and is limited to less
                                                ##   	than or equal to progress_max, unless progress_max is -1.
                                                ##   
                                                ##   	progress_max: Communicates the known upper bound of rendering
                                                ##   	back to the application and is read only. The maximum value
                                                ##   	that the progress field may take. If there is no known upper
                                                ##   	bound on how long the rendering may take this value is -1 and
                                                ##   	progress is not limited. Note that the value of progress_max
                                                ##   	may change from -1 to a positive value once an upper bound is
                                                ##   	known, so take this into consideration when comparing the
                                                ##   	value of progress to that of progress_max.
                                                ##   
                                                ##   	errors: count of errors during current rendering.
                                                ##   
                                                ##   	incomplete: Initially should be set to 0. Will be set to
                                                ##   	non-zero if a TRYLATER error is thrown during rendering.
    abort*: cint
    progress*: cint
    progress_max*: uint        ## ::
                      ##    (size_t)-1 for unknown
    errors*: cint              ## ::
                ##    (size_t)-1 for unknown
    incomplete*: cint

  fz_draw_options* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                      ##   
                                                      ##   	struct fz_draw_options: Options for creating a pixmap and draw
                                                      ##   	device.
    rotate*: cint
    x_resolution*: cint
    y_resolution*: cint
    width*: cint
    height*: cint
    colorspace*: ptr fz_colorspace
    alpha*: cint
    graphics*: cint
    text*: cint

  fz_display_list* {.importc, impfitzHdr, incompleteStruct.} = object
  fz_layout_char* {.bycopy, impfitzHdr, importc: "struct fz_layout_char".} = object ## ::
                                                                             ##   
                                                                             ##   	Simple text layout (for use with annotation editing primarily).
    x*: cfloat
    w*: cfloat
    p*: cstring                ## ::
              ##    location in source text of character
    next*: ptr fz_layout_char   ## ::
                           ##    location in source text of character
  
  fz_layout_line* {.bycopy, impfitzHdr, importc: "struct fz_layout_line".} = object
    x*: cfloat
    y*: cfloat
    h*: cfloat
    p*: cstring                ## ::
              ##    location in source text of start of line
    text*: ptr fz_layout_char   ## ::
                           ##    location in source text of start of line
    next*: ptr fz_layout_line

  fz_layout_block* {.bycopy, importc, impfitzHdr.} = object
    pool*: ptr fz_pool
    matrix*: fz_matrix
    inv_matrix*: fz_matrix
    head*: ptr fz_layout_line
    tailp*: ptr ptr fz_layout_line
    text_tailp*: ptr ptr fz_layout_char

  fz_stext_char* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                    ##   
                                                    ##   	A text char is a unicode character, the style in which is
                                                    ##   	appears, and the point at which it is positioned.
    c*: cint
    color*: cint               ## ::
               ##    sRGB hex color
    origin*: fz_point          ## ::
                    ##    sRGB hex color
    quad*: fz_quad
    size*: cfloat
    font*: ptr fz_font
    next*: ptr fz_stext_char

  fz_stext_line* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                    ##   
                                                    ##   	A text line is a list of characters that share a common baseline.
    wmode*: cint               ## ::
               ##    0 for horizontal, 1 for vertical
    dir*: fz_point             ## ::
                 ##    normalized direction of baseline
    bbox*: fz_rect             ## ::
                 ##    normalized direction of baseline
    first_char*: ptr fz_stext_char
    last_char*: ptr fz_stext_char
    prev*: ptr fz_stext_line
    next*: ptr fz_stext_line

  fz_stext_block* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                     ##   
                                                     ##   	A text block is a list of lines of text (typically a paragraph),
                                                     ##   	or an image.
    `type`*: cint
    bbox*: fz_rect
    u*: Union_fitzh7
    prev*: ptr fz_stext_block
    next*: ptr fz_stext_block

  fz_stext_page* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                    ##   
                                                    ##   	A text page is a list of blocks, together with an overall
                                                    ##   	bounding box.
    pool*: ptr fz_pool
    mediabox*: fz_rect
    first_block*: ptr fz_stext_block
    last_block*: ptr fz_stext_block

  Type_fitzh17* {.bycopy, impfitzHdr, importc: "struct Type_fitzh17".} = object
    first_line*: ptr fz_stext_line
    last_line*: ptr fz_stext_line

  Type_fitzh18* {.bycopy, impfitzHdr, importc: "struct Type_fitzh18".} = object
    transform*: fz_matrix
    image*: ptr fz_image

  Union_fitzh7* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh7".} = object
    t*: Type_fitzh17
    i*: Type_fitzh18

  fz_stext_options* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                       ##   
                                                       ##   	Options for creating a pixmap and draw device.
    flags*: cint

  fz_transition* {.bycopy, importc, impfitzHdr.} = object
    `type`*: cint
    duration*: cfloat          ## ::
                    ##    Effect duration (seconds)
                    ##    Parameters controlling the effect
    vertical*: cint            ## ::
                  ##    0 or 1
    outwards*: cint            ## ::
                  ##    0 or 1
    direction*: cint           ## ::
                   ##    Degrees
                   ##    Potentially more to come
                   ##    State variables for use of the transition code
    state0*: cint              ## ::
                ##    Degrees
                ##    Potentially more to come
                ##    State variables for use of the transition code
    state1*: cint

  fz_link* {.bycopy, impfitzHdr, importc: "struct fz_link".} = object ## ::
                                                               ##   
                                                               ##   	fz_link is a list of interactive links on a page.
                                                               ##   
                                                               ##   	There is no relation between the order of the links in the
                                                               ##   	list and the order they appear on the page. The list of links
                                                               ##   	for a given page can be obtained from fz_load_links.
                                                               ##   
                                                               ##   	A link is reference counted. Dropping a reference to a link is
                                                               ##   	done by calling fz_drop_link.
                                                               ##   
                                                               ##   	rect: The hot zone. The area that can be clicked in
                                                               ##   	untransformed coordinates.
                                                               ##   
                                                               ##   	uri: Link destinations come in two forms: internal and external.
                                                               ##   	Internal links refer to other pages in the same document.
                                                               ##   	External links are URLs to other documents.
                                                               ##   
                                                               ##   	doc: Typically a pointer to the enclosing document. Note that
                                                               ##   	this pointer is opaque, and NOT a counted reference. Beware of
                                                               ##   	lifespan issues.
                                                               ##   
                                                               ##   	next: A pointer to the next link on the same page.
    refs*: cint
    next*: ptr fz_link
    rect*: fz_rect
    doc*: pointer
    uri*: cstring

  fz_outline* {.bycopy, impfitzHdr, importc: "struct fz_outline".} = object ## ::
                                                                     ##    Outline
                                                                     ##   
                                                                     ##   	fz_outline is a tree of the outline of a document (also known
                                                                     ##   	as table of contents).
                                                                     ##   
                                                                     ##   	title: Title of outline item using UTF-8 encoding. May be NULL
                                                                     ##   	if the outline item has no text string.
                                                                     ##   
                                                                     ##   	uri: Destination in the document to be displayed when this
                                                                     ##   	outline item is activated. May be an internal or external
                                                                     ##   	link, or NULL if the outline item does not have a destination.
                                                                     ##   
                                                                     ##   	page: The page number of an internal link, or -1 for external
                                                                     ##   	links or links with no destination.
                                                                     ##   
                                                                     ##   	next: The next outline item at the same level as this outline
                                                                     ##   	item. May be NULL if no more outline items exist at this level.
                                                                     ##   
                                                                     ##   	down: The outline items immediate children in the hierarchy.
                                                                     ##   	May be NULL if no children exist.
    refs*: cint
    title*: cstring
    uri*: cstring
    page*: cint
    x*: cfloat
    y*: cfloat
    next*: ptr fz_outline
    down*: ptr fz_outline
    is_open*: cint

  fz_document* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                  ##   
                                                  ##   	Structure definition is public so other classes can
                                                  ##   	derive from it. Callers should not access the members
                                                  ##   	directly, though implementations will need initialize
                                                  ##   	functions directly.
    refs*: cint
    drop_document*: ptr fz_document_drop_fn
    needs_password*: ptr fz_document_needs_password_fn
    authenticate_password*: ptr fz_document_authenticate_password_fn
    has_permission*: ptr fz_document_has_permission_fn
    load_outline*: ptr fz_document_load_outline_fn
    layout*: ptr fz_document_layout_fn
    make_bookmark*: ptr fz_document_make_bookmark_fn
    lookup_bookmark*: ptr fz_document_lookup_bookmark_fn
    resolve_link*: ptr fz_document_resolve_link_fn
    count_chapters*: ptr fz_document_count_chapters_fn
    count_pages*: ptr fz_document_count_pages_fn
    load_page*: ptr fz_document_load_page_fn
    lookup_metadata*: ptr fz_document_lookup_metadata_fn
    get_output_intent*: ptr fz_document_output_intent_fn
    output_accelerator*: ptr fz_document_output_accelerator_fn
    did_layout*: cint
    is_reflowable*: cint
    open*: ptr fz_page          ## ::
                    ##    linked list of currently open pages
  
  fz_document_handler* {.importc, impfitzHdr, bycopy.} = object
    recognize*: ptr fz_document_recognize_fn
    open*: ptr fz_document_open_fn
    open_with_stream*: ptr fz_document_open_with_stream_fn
    extensions*: ptr cstring
    mimetypes*: ptr cstring
    open_accel*: ptr fz_document_open_accel_fn
    open_accel_with_stream*: ptr fz_document_open_accel_with_stream_fn

  fz_page* {.importc, impfitzHdr, bycopy.} = object ## ::
                                              ##    Implementation details: subject to change.
                                              ##   
                                              ##   	Structure definition is public so other classes can
                                              ##   	derive from it. Do not access the members directly.
    refs*: cint
    chapter*: cint             ## ::
                 ##    chapter number
    number*: cint              ## ::
                ##    page number in chapter
    incomplete*: cint          ## ::
                    ##    incomplete from progressive loading; don't cache!
    drop_page*: ptr fz_page_drop_page_fn ## ::
                                      ##    incomplete from progressive loading; don't cache!
    bound_page*: ptr fz_page_bound_page_fn
    run_page_contents*: ptr fz_page_run_page_fn
    run_page_annots*: ptr fz_page_run_page_fn
    run_page_widgets*: ptr fz_page_run_page_fn
    load_links*: ptr fz_page_load_links_fn
    page_presentation*: ptr fz_page_page_presentation_fn
    control_separation*: ptr fz_page_control_separation_fn
    separation_disabled*: ptr fz_page_separation_disabled_fn
    separations*: ptr fz_page_separations_fn
    overprint*: ptr fz_page_uses_overprint_fn
    prev*: ptr ptr fz_page       ## ::
                       ##    linked list of currently open pages
    next*: ptr fz_page          ## ::
                    ##    linked list of currently open pages
  
  fz_bookmark* {.importc, impfitzHdr.} = ptr int
  fz_location* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                  ##   
                                                  ##   	Locations within the document are referred to in terms of
                                                  ##   	chapter and page, rather than just a page number. For some
                                                  ##   	documents (such as epub documents with large numbers of pages
                                                  ##   	broken into many chapters) this can make navigation much faster
                                                  ##   	as only the required chapter needs to be decoded at a time.
    chapter*: cint
    page*: cint

  fz_document_drop_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document) {.cdecl.}
  fz_document_needs_password_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document): cint {.cdecl.}
  fz_document_authenticate_password_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; doc: ptr fz_document; password: cstring): cint {.cdecl.}
  fz_document_has_permission_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document; permission: fz_permission): cint {.cdecl.}
  fz_document_load_outline_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document): ptr fz_outline {.cdecl.}
  fz_document_layout_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document; w: cfloat; h: cfloat; em: cfloat) {.cdecl.}
  fz_document_resolve_link_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document; uri: cstring; xp: ptr cfloat; yp: ptr cfloat): fz_location {.
      cdecl.}
  fz_document_count_chapters_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document): cint {.cdecl.}
  fz_document_count_pages_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document; chapter: cint): cint {.cdecl.}
  fz_document_load_page_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document; chapter: cint; page: cint): ptr fz_page {.cdecl.}
  fz_document_lookup_metadata_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; doc: ptr fz_document; key: cstring; buf: cstring; size: cint): cint {.
      cdecl.}
  fz_document_output_intent_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document): ptr fz_colorspace {.cdecl.}
  fz_document_output_accelerator_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; doc: ptr fz_document; `out`: ptr fz_output) {.cdecl.}
  fz_document_make_bookmark_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      doc: ptr fz_document; loc: fz_location): fz_bookmark {.cdecl.}
  fz_document_lookup_bookmark_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; doc: ptr fz_document; mark: fz_bookmark): fz_location {.cdecl.}
  fz_page_drop_page_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page) {.cdecl.}
  fz_page_bound_page_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page): fz_rect {.cdecl.}
  fz_page_run_page_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page; dev: ptr fz_device; transform: fz_matrix; cookie: ptr fz_cookie) {.
      cdecl.}
  fz_page_load_links_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page): ptr fz_link {.cdecl.}
  fz_page_page_presentation_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page; transition: ptr fz_transition; duration: ptr cfloat): ptr fz_transition {.
      cdecl.}
  fz_page_control_separation_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page; separation: cint; disable: cint) {.cdecl.}
  fz_page_separation_disabled_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; page: ptr fz_page; separation: cint): cint {.cdecl.}
  fz_page_separations_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page): ptr fz_separations {.cdecl.}
  fz_page_uses_overprint_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      page: ptr fz_page): cint {.cdecl.}
  fz_document_open_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      filename: cstring): ptr fz_document {.cdecl.}
  fz_document_open_with_stream_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; stream: ptr fz_stream): ptr fz_document {.cdecl.}
  fz_document_open_accel_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      filename: cstring; accel: cstring): ptr fz_document {.cdecl.}
  fz_document_open_accel_with_stream_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; stream: ptr fz_stream; accel: ptr fz_stream): ptr fz_document {.
      cdecl.}
  fz_document_recognize_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      magic: cstring): cint {.cdecl.}
  fz_document_writer* {.importc, impfitzHdr, bycopy.} = object ## ::
                                                         ##    Implementation details: subject to change.
                                                         ##   
                                                         ##   	Structure is public to allow other structures to
                                                         ##   	be derived from it. Do not access members directly.
    begin_page*: ptr fz_document_writer_begin_page_fn
    end_page*: ptr fz_document_writer_end_page_fn
    close_writer*: ptr fz_document_writer_close_writer_fn
    drop_writer*: ptr fz_document_writer_drop_writer_fn
    dev*: ptr fz_device

  fz_document_writer_begin_page_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; wri: ptr fz_document_writer; mediabox: fz_rect): ptr fz_device {.
      cdecl.}
  fz_document_writer_end_page_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; wri: ptr fz_document_writer; dev: ptr fz_device) {.cdecl.}
  fz_document_writer_close_writer_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; wri: ptr fz_document_writer) {.cdecl.}
  fz_document_writer_drop_writer_fn* {.importc, impfitzHdr.} = proc (
      ctx: ptr fz_context; wri: ptr fz_document_writer) {.cdecl.}
  fz_band_writer* {.importc, impfitzHdr, bycopy.} = object
    drop*: ptr fz_drop_band_writer_fn
    header*: ptr fz_write_header_fn
    band*: ptr fz_write_band_fn
    trailer*: ptr fz_write_trailer_fn
    `out`*: ptr fz_output
    w*: cint
    h*: cint
    n*: cint
    s*: cint
    alpha*: cint
    xres*: cint
    yres*: cint
    pagenum*: cint
    line*: cint
    seps*: ptr fz_separations

  fz_write_header_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      writer: ptr fz_band_writer; cs: ptr fz_colorspace) {.cdecl.}
  fz_write_band_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      writer: ptr fz_band_writer; stride: cint; band_start: cint; band_height: cint;
      samples: ptr cuchar) {.cdecl.}
  fz_write_trailer_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      writer: ptr fz_band_writer) {.cdecl.}
  fz_drop_band_writer_fn* {.importc, impfitzHdr.} = proc (ctx: ptr fz_context;
      writer: ptr fz_band_writer) {.cdecl.}
  fz_pcl_options* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                     ##   
                                                     ##   	PCL output
    features*: cint            ## ::
                  ##    Features of a particular printer
    odd_page_init*: cstring
    even_page_init*: cstring
    tumble*: cint              ## ::
                ##    Options for this job
    duplex_set*: cint
    duplex*: cint
    paper_size*: cint
    manual_feed_set*: cint
    manual_feed*: cint
    media_position_set*: cint
    media_position*: cint
    orientation*: cint
    page_count*: cint          ## ::
                    ##    Updated as we move through the job
  
  fz_pclm_options* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                      ##   
                                                      ##   	PCLm output
    compress*: cint
    strip_height*: cint
    page_count*: cint          ## ::
                    ##    Updated as we move through the job
  
  fz_pdfocr_options* {.bycopy, importc, impfitzHdr.} = object ## ::
                                                        ##   
                                                        ##   	PDFOCR output
    compress*: cint
    strip_height*: cint
    language*: array[256, cchar]
    page_count*: cint          ## ::
                    ##    Updated as we move through the job
  
  fz_pwg_options* {.bycopy, importc, impfitzHdr.} = object
    media_class*: array[64, cchar] ## ::
                                ##    These are not interpreted as CStrings by the writing code,
                                ##   	 but are rather copied directly out.
    media_color*: array[64, cchar]
    media_type*: array[64, cchar]
    output_type*: array[64, cchar]
    advance_distance*: cuint
    advance_media*: cint
    collate*: cint
    cut_media*: cint
    duplex*: cint
    insert_sheet*: cint
    jog*: cint
    leading_edge*: cint
    manual_feed*: cint
    media_position*: cuint
    media_weight*: cuint
    mirror_print*: cint
    negative_print*: cint
    num_copies*: cuint
    orientation*: cint
    output_face_up*: cint
    PageSize*: array[2, cuint]
    separations*: cint
    tray_switch*: cint
    tumble*: cint
    media_type_num*: cint
    compression*: cint
    row_count*: cuint
    row_feed*: cuint
    row_step*: cuint
    rendering_intent*: array[64, cchar] ## ::
                                     ##    These are not interpreted as CStrings by the writing code, but
                                     ##   	 are rather copied directly out.
    page_size_name*: array[64, cchar]

proc Memento_checkBlock*(a1: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_checkAllMemory*(): cint {.importc, cdecl, impfitzHdr.}
proc Memento_check*(): cint {.importc, cdecl, impfitzHdr.}
proc Memento_setParanoia*(a1: cint): cint {.importc, cdecl, impfitzHdr.}
proc Memento_paranoidAt*(a1: cint): cint {.importc, cdecl, impfitzHdr.}
proc Memento_breakAt*(a1: cint): cint {.importc, cdecl, impfitzHdr.}
proc Memento_breakOnFree*(a: pointer) {.importc, cdecl, impfitzHdr.}
proc Memento_breakOnRealloc*(a: pointer) {.importc, cdecl, impfitzHdr.}
proc Memento_getBlockNum*(a1: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_find*(a: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_breakpoint*() {.importc, cdecl, impfitzHdr.}
proc Memento_failAt*(a1: cint): cint {.importc, cdecl, impfitzHdr.}
proc Memento_failThisEvent*(): cint {.importc, cdecl, impfitzHdr.}
proc Memento_listBlocks*() {.importc, cdecl, impfitzHdr.}
proc Memento_listNewBlocks*() {.importc, cdecl, impfitzHdr.}
proc Memento_setMax*(a1: uint): uint {.importc, cdecl, impfitzHdr.}
proc Memento_stats*() {.importc, cdecl, impfitzHdr.}
proc Memento_label*(a1: pointer; a2: cstring): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_tick*() {.importc, cdecl, impfitzHdr.}
proc Memento_malloc*(s: uint): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_realloc*(a1: pointer; s: uint): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_free*(a1: pointer) {.importc, cdecl, impfitzHdr.}
proc Memento_calloc*(a1: uint; a2: uint): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_info*(`addr`: pointer) {.importc, cdecl, impfitzHdr.}
proc Memento_listBlockInfo*() {.importc, cdecl, impfitzHdr.}
proc Memento_takeByteRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_dropByteRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_takeShortRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_dropShortRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_takeIntRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_dropIntRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_takeRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_dropRef*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_adjustRef*(blk: pointer; adjust: cint): pointer {.importc, cdecl,
    impfitzHdr.}
proc Memento_reference*(blk: pointer): pointer {.importc, cdecl, impfitzHdr.}
proc Memento_checkPointerOrNull*(blk: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_checkBytePointerOrNull*(blk: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_checkShortPointerOrNull*(blk: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_checkIntPointerOrNull*(blk: pointer): cint {.importc, cdecl, impfitzHdr.}
proc Memento_startLeaking*() {.importc, cdecl, impfitzHdr.}
proc Memento_stopLeaking*() {.importc, cdecl, impfitzHdr.}
proc Memento_sequence*(): cint {.importc, cdecl, impfitzHdr.}
proc Memento_squeezing*(): cint {.importc, cdecl, impfitzHdr.}
proc Memento_fin*() {.importc, cdecl, impfitzHdr.}
proc Memento_bt*() {.importc, cdecl, impfitzHdr.}
proc fz_atof*(s: cstring): cfloat {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Range checking atof
proc fz_atoi*(s: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	atoi that copes with NULL
proc fz_atoi64*(s: cstring): int64 {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	64bit atoi that copes with NULL
proc fz_concat*(left: fz_matrix; right: fz_matrix): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Multiply two matrices.
  ##   
  ##   	The order of the two matrices are important since matrix
  ##   	multiplication is not commutative.
  ##   
  ##   	Returns result.
proc fz_scale*(sx: cfloat; sy: cfloat): fz_matrix {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a scaling matrix.
  ##   
  ##   	The returned matrix is of the form [ sx 0 0 sy 0 0 ].
  ##   
  ##   	m: Pointer to the matrix to populate
  ##   
  ##   	sx, sy: Scaling factors along the X- and Y-axes. A scaling
  ##   	factor of 1.0 will not cause any scaling along the relevant
  ##   	axis.
  ##   
  ##   	Returns m.
proc fz_pre_scale*(m: fz_matrix; sx: cfloat; sy: cfloat): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Scale a matrix by premultiplication.
  ##   
  ##   	m: Pointer to the matrix to scale
  ##   
  ##   	sx, sy: Scaling factors along the X- and Y-axes. A scaling
  ##   	factor of 1.0 will not cause any scaling along the relevant
  ##   	axis.
  ##   
  ##   	Returns m (updated).
proc fz_post_scale*(m: fz_matrix; sx: cfloat; sy: cfloat): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Scale a matrix by postmultiplication.
  ##   
  ##   	m: Pointer to the matrix to scale
  ##   
  ##   	sx, sy: Scaling factors along the X- and Y-axes. A scaling
  ##   	factor of 1.0 will not cause any scaling along the relevant
  ##   	axis.
  ##   
  ##   	Returns m (updated).
proc fz_shear*(sx: cfloat; sy: cfloat): fz_matrix {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a shearing matrix.
  ##   
  ##   	The returned matrix is of the form [ 1 sy sx 1 0 0 ].
  ##   
  ##   	m: pointer to place to store returned matrix
  ##   
  ##   	sx, sy: Shearing factors. A shearing factor of 0.0 will not
  ##   	cause any shearing along the relevant axis.
  ##   
  ##   	Returns m.
proc fz_pre_shear*(m: fz_matrix; sx: cfloat; sy: cfloat): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Premultiply a matrix with a shearing matrix.
  ##   
  ##   	The shearing matrix is of the form [ 1 sy sx 1 0 0 ].
  ##   
  ##   	m: pointer to matrix to premultiply
  ##   
  ##   	sx, sy: Shearing factors. A shearing factor of 0.0 will not
  ##   	cause any shearing along the relevant axis.
  ##   
  ##   	Returns m (updated).
proc fz_rotate*(degrees: cfloat): fz_matrix {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a rotation matrix.
  ##   
  ##   	The returned matrix is of the form
  ##   	[ cos(deg) sin(deg) -sin(deg) cos(deg) 0 0 ].
  ##   
  ##   	m: Pointer to place to store matrix
  ##   
  ##   	degrees: Degrees of counter clockwise rotation. Values less
  ##   	than zero and greater than 360 are handled as expected.
  ##   
  ##   	Returns m.
proc fz_pre_rotate*(m: fz_matrix; degrees: cfloat): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Rotate a transformation by premultiplying.
  ##   
  ##   	The premultiplied matrix is of the form
  ##   	[ cos(deg) sin(deg) -sin(deg) cos(deg) 0 0 ].
  ##   
  ##   	m: Pointer to matrix to premultiply.
  ##   
  ##   	degrees: Degrees of counter clockwise rotation. Values less
  ##   	than zero and greater than 360 are handled as expected.
  ##   
  ##   	Returns m (updated).
proc fz_translate*(tx: cfloat; ty: cfloat): fz_matrix {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a translation matrix.
  ##   
  ##   	The returned matrix is of the form [ 1 0 0 1 tx ty ].
  ##   
  ##   	m: A place to store the created matrix.
  ##   
  ##   	tx, ty: Translation distances along the X- and Y-axes. A
  ##   	translation of 0 will not cause any translation along the
  ##   	relevant axis.
  ##   
  ##   	Returns m.
proc fz_pre_translate*(m: fz_matrix; tx: cfloat; ty: cfloat): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Translate a matrix by premultiplication.
  ##   
  ##   	m: The matrix to translate
  ##   
  ##   	tx, ty: Translation distances along the X- and Y-axes. A
  ##   	translation of 0 will not cause any translation along the
  ##   	relevant axis.
  ##   
  ##   	Returns m.
proc fz_transform_page*(mediabox: fz_rect; resolution: cfloat; rotate: cfloat): fz_matrix {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create transform matrix to draw page
  ##   	at a given resolution and rotation. Adjusts the scaling
  ##   	factors so that the page covers whole number of
  ##   	pixels and adjust the page origin to be at 0,0.
proc fz_invert_matrix*(matrix: fz_matrix): fz_matrix {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create an inverse matrix.
  ##   
  ##   	inverse: Place to store inverse matrix.
  ##   
  ##   	matrix: Matrix to invert. A degenerate matrix, where the
  ##   	determinant is equal to zero, can not be inverted and the
  ##   	original matrix is returned instead.
  ##   
  ##   	Returns inverse.
proc fz_try_invert_matrix*(inv: ptr fz_matrix; src: fz_matrix): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Attempt to create an inverse matrix.
  ##   
  ##   	inverse: Place to store inverse matrix.
  ##   
  ##   	matrix: Matrix to invert. A degenerate matrix, where the
  ##   	determinant is equal to zero, can not be inverted.
  ##   
  ##   	Returns 1 if matrix is degenerate (singular), or 0 otherwise.
proc fz_is_rectilinear*(m: fz_matrix): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check if a transformation is rectilinear.
  ##   
  ##   	Rectilinear means that no shearing is present and that any
  ##   	rotations present are a multiple of 90 degrees. Usually this
  ##   	is used to make sure that axis-aligned rectangles before the
  ##   	transformation are still axis-aligned rectangles afterwards.
proc fz_matrix_expansion*(m: fz_matrix): cfloat {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Calculate average scaling factor of matrix.
proc fz_intersect_rect*(a: fz_rect; b: fz_rect): fz_rect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Compute intersection of two rectangles.
  ##   
  ##   	Given two rectangles, update the first to be the smallest
  ##   	axis-aligned rectangle that covers the area covered by both
  ##   	given rectangles. If either rectangle is empty then the
  ##   	intersection is also empty. If either rectangle is infinite
  ##   	then the intersection is simply the non-infinite rectangle.
  ##   	Should both rectangles be infinite, then the intersection is
  ##   	also infinite.
proc fz_intersect_irect*(a: fz_irect; b: fz_irect): fz_irect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Compute intersection of two bounding boxes.
  ##   
  ##   	Similar to fz_intersect_rect but operates on two bounding
  ##   	boxes instead of two rectangles.
proc fz_union_rect*(a: fz_rect; b: fz_rect): fz_rect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Compute union of two rectangles.
  ##   
  ##   	Given two rectangles, update the first to be the smallest
  ##   	axis-aligned rectangle that encompasses both given rectangles.
  ##   	If either rectangle is infinite then the union is also infinite.
  ##   	If either rectangle is empty then the union is simply the
  ##   	non-empty rectangle. Should both rectangles be empty, then the
  ##   	union is also empty.
proc fz_irect_from_rect*(rect: fz_rect): fz_irect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert a rect into the minimal bounding box
  ##   	that covers the rectangle.
  ##   
  ##   	Coordinates in a bounding box are integers, so rounding of the
  ##   	rects coordinates takes place. The top left corner is rounded
  ##   	upwards and left while the bottom right corner is rounded
  ##   	downwards and to the right.
proc fz_round_rect*(rect: fz_rect): fz_irect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Round rectangle coordinates.
  ##   
  ##   	Coordinates in a bounding box are integers, so rounding of the
  ##   	rects coordinates takes place. The top left corner is rounded
  ##   	upwards and left while the bottom right corner is rounded
  ##   	downwards and to the right.
  ##   
  ##   	This differs from fz_irect_from_rect, in that fz_irect_from_rect
  ##   	slavishly follows the numbers (i.e any slight over/under
  ##   	calculations can cause whole extra pixels to be added).
  ##   	fz_round_rect allows for a small amount of rounding error when
  ##   	calculating the bbox.
proc fz_rect_from_irect*(bbox: fz_irect): fz_rect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert a bbox into a rect.
  ##   
  ##   	For our purposes, a rect can represent all the values we meet in
  ##   	a bbox, so nothing can go wrong.
  ##   
  ##   	rect: A place to store the generated rectangle.
  ##   
  ##   	bbox: The bbox to convert.
  ##   
  ##   	Returns rect (updated).
proc fz_expand_rect*(b: fz_rect; expand: cfloat): fz_rect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Expand a bbox by a given amount in all directions.
proc fz_expand_irect*(a: fz_irect; expand: cint): fz_irect {.importc, cdecl, impfitzHdr.}
proc fz_include_point_in_rect*(r: fz_rect; p: fz_point): fz_rect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Expand a bbox to include a given point.
  ##   	To create a rectangle that encompasses a sequence of points, the
  ##   	rectangle must first be set to be the empty rectangle at one of
  ##   	the points before including the others.
proc fz_translate_rect*(a: fz_rect; xoff: cfloat; yoff: cfloat): fz_rect {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Translate bounding box.
  ##   
  ##   	Translate a bbox by a given x and y offset. Allows for overflow.
proc fz_translate_irect*(a: fz_irect; xoff: cint; yoff: cint): fz_irect {.importc, cdecl,
    impfitzHdr.}
proc fz_contains_rect*(a: fz_rect; b: fz_rect): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Test rectangle inclusion.
  ##   
  ##   	Return true if a entirely contains b.
proc fz_transform_point*(point: fz_point; m: fz_matrix): fz_point {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Apply a transformation to a point.
  ##   
  ##   	transform: Transformation matrix to apply. See fz_concat,
  ##   	fz_scale, fz_rotate and fz_translate for how to create a
  ##   	matrix.
  ##   
  ##   	point: Pointer to point to update.
  ##   
  ##   	Returns transform (unchanged).
proc fz_transform_point_xy*(x: cfloat; y: cfloat; m: fz_matrix): fz_point {.importc,
    cdecl, impfitzHdr.}
proc fz_transform_vector*(vector: fz_point; m: fz_matrix): fz_point {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Apply a transformation to a vector.
  ##   
  ##   	transform: Transformation matrix to apply. See fz_concat,
  ##   	fz_scale and fz_rotate for how to create a matrix. Any
  ##   	translation will be ignored.
  ##   
  ##   	vector: Pointer to vector to update.
proc fz_transform_rect*(rect: fz_rect; m: fz_matrix): fz_rect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Apply a transform to a rectangle.
  ##   
  ##   	After the four corner points of the axis-aligned rectangle
  ##   	have been transformed it may not longer be axis-aligned. So a
  ##   	new axis-aligned rectangle is created covering at least the
  ##   	area of the transformed rectangle.
  ##   
  ##   	transform: Transformation matrix to apply. See fz_concat,
  ##   	fz_scale and fz_rotate for how to create a matrix.
  ##   
  ##   	rect: Rectangle to be transformed. The two special cases
  ##   	fz_empty_rect and fz_infinite_rect, may be used but are
  ##   	returned unchanged as expected.
proc fz_normalize_vector*(p: fz_point): fz_point {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Normalize a vector to length one.
proc fz_gridfit_matrix*(as_tiled: cint; m: fz_matrix): fz_matrix {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Grid fit a matrix.
  ##   
  ##   	as_tiled = 0 => adjust the matrix so that the image of the unit
  ##   	square completely covers any pixel that was touched by the
  ##   	image of the unit square under the original matrix.
  ##   
  ##   	as_tiled = 1 => adjust the matrix so that the corners of the
  ##   	image of the unit square align with the closest integer corner
  ##   	of the image of the unit square under the original matrix.
proc fz_matrix_max_expansion*(m: fz_matrix): cfloat {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the largest expansion performed by this matrix.
  ##   	(i.e. max(abs(m.a),abs(m.b),abs(m.c),abs(m.d))
proc fz_quad_from_rect*(r: fz_rect): fz_quad {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert a rect to a quad (losslessly).
proc fz_rect_from_quad*(q: fz_quad): fz_rect {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert a quad to the smallest rect that covers it.
proc fz_transform_quad*(q: fz_quad; m: fz_matrix): fz_quad {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Transform a quad by a matrix.
proc fz_is_point_inside_quad*(p: fz_point; q: fz_quad): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Inclusion test for quads.
proc fz_is_point_inside_rect*(p: fz_point; r: fz_rect): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Inclusion test for rects.
proc fz_is_point_inside_irect*(x: cint; y: cint; r: fz_irect): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Inclusion test for irects.
proc fz_is_quad_inside_quad*(needle: fz_quad; haystack: fz_quad): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Inclusion test for quad in quad.
  ##   
  ##   	This may break down if quads are not 'well formed'.
proc fz_is_quad_intersecting_quad*(a: fz_quad; b: fz_quad): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Intersection test for quads.
  ##   
  ##   	This may break down if quads are not 'well formed'.
proc fz_vthrow*(ctx: ptr fz_context; errcode: cint; a3: cstring; ap: va_list) {.importc,
    cdecl, impfitzHdr.}
proc fz_throw*(ctx: ptr fz_context; errcode: cint; a3: cstring) {.importc, cdecl,
    impfitzHdr, varargs.}
proc fz_rethrow*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
proc fz_vwarn*(ctx: ptr fz_context; fmt: cstring; ap: va_list) {.importc, cdecl,
    impfitzHdr.}
proc fz_warn*(ctx: ptr fz_context; fmt: cstring) {.importc, cdecl, impfitzHdr, varargs.}
proc fz_caught_message*(ctx: ptr fz_context): cstring {.importc, cdecl, impfitzHdr.}
proc fz_caught*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
proc fz_rethrow_if*(ctx: ptr fz_context; errcode: cint) {.importc, cdecl, impfitzHdr.}
proc fz_flush_warnings*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Flush any repeated warnings.
  ##   
  ##   	Repeated warnings are buffered, counted and eventually printed
  ##   	along with the number of repetitions. Call fz_flush_warnings
  ##   	to force printing of the latest buffered warning and the
  ##   	number of repetitions, for example to make sure that all
  ##   	warnings are printed before exiting an application.
proc fz_assert_lock_held*(ctx: ptr fz_context; lock: cint) {.importc, cdecl, impfitzHdr.}
proc fz_assert_lock_not_held*(ctx: ptr fz_context; lock: cint) {.importc, cdecl,
    impfitzHdr.}
proc fz_lock_debug_lock*(ctx: ptr fz_context; lock: cint) {.importc, cdecl, impfitzHdr.}
proc fz_lock_debug_unlock*(ctx: ptr fz_context; lock: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Specifies the maximum size in bytes of the resource store in
  ##   	fz_context. Given as argument to fz_new_context.
  ##   
  ##   	FZ_STORE_UNLIMITED: Let resource store grow unbounded.
  ##   
  ##   	FZ_STORE_DEFAULT: A reasonable upper bound on the size, for
  ##   	devices that are not memory constrained.
proc fz_clone_context*(ctx: ptr fz_context): ptr fz_context {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Make a clone of an existing context.
  ##   
  ##   	This function is meant to be used in multi-threaded
  ##   	applications where each thread requires its own context, yet
  ##   	parts of the global state, for example caching, are shared.
  ##   
  ##   	ctx: Context obtained from fz_new_context to make a copy of.
  ##   	ctx must have had locks and lock/functions setup when created.
  ##   	The two contexts will share the memory allocator, resource
  ##   	store, locks and lock/unlock functions. They will each have
  ##   	their own exception stacks though.
  ##   
  ##   	May return NULL.
proc fz_drop_context*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Free a context and its global state.
  ##   
  ##   	The context and all of its global state is freed, and any
  ##   	buffered warnings are flushed (see fz_flush_warnings). If NULL
  ##   	is passed in nothing will happen.
proc fz_set_user_context*(ctx: ptr fz_context; user: pointer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Set the user field in the context.
  ##   
  ##   	NULL initially, this field can be set to any opaque value
  ##   	required by the user. It is copied on clones.
proc fz_user_context*(ctx: ptr fz_context): pointer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Read the user field from the context.
proc fz_default_error_callback*(user: pointer; message: cstring) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	FIXME: Better not to expose fz_default_error_callback, and
  ##   	fz_default_warning callback and to allow 'NULL' to be used
  ##   	int fz_set_xxxx_callback to mean "defaults".
  ##   
  ##   	FIXME: Do we need/want functions like
  ##   	fz_error_callback(ctx, message) to allow callers to inject
  ##   	stuff into the error/warning streams?
  ##   
  ##   
  ##   	The default error callback. Declared publicly just so that the
  ##   	error callback can be set back to this after it has been
  ##   	overridden.
proc fz_default_warning_callback*(user: pointer; message: cstring) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	The default warning callback. Declared publicly just so that
  ##   	the warning callback can be set back to this after it has been
  ##   	overridden.
proc fz_set_error_callback*(ctx: ptr fz_context; print: proc (user: pointer;
    message: cstring) {.cdecl.}; user: pointer) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the error callback. This will be called as part of the
  ##   	exception handling.
  ##   
  ##   	The callback must not throw exceptions!
proc fz_set_warning_callback*(ctx: ptr fz_context; print: proc (user: pointer;
    message: cstring) {.cdecl.}; user: pointer) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the warning callback. This will be called as part of the
  ##   	exception handling.
  ##   
  ##   	The callback must not throw exceptions!
proc fz_tune_image_decode*(ctx: ptr fz_context;
                          image_decode: ptr fz_tune_image_decode_fn; arg: pointer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the tuning function to use for
  ##   	image decode.
  ##   
  ##   	image_decode: Function to use.
  ##   
  ##   	arg: Opaque argument to be passed to tuning function.
proc fz_tune_image_scale*(ctx: ptr fz_context;
                         image_scale: ptr fz_tune_image_scale_fn; arg: pointer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the tuning function to use for
  ##   	image scaling.
  ##   
  ##   	image_scale: Function to use.
  ##   
  ##   	arg: Opaque argument to be passed to tuning function.
proc fz_aa_level*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get the number of bits of antialiasing we are
  ##   	using (for graphics). Between 0 and 8.
proc fz_set_aa_level*(ctx: ptr fz_context; bits: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the number of bits of antialiasing we should
  ##   	use (for both text and graphics).
  ##   
  ##   	bits: The number of bits of antialiasing to use (values are
  ##   	clamped to within the 0 to 8 range).
proc fz_text_aa_level*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get the number of bits of antialiasing we are
  ##   	using for text. Between 0 and 8.
proc fz_set_text_aa_level*(ctx: ptr fz_context; bits: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the number of bits of antialiasing we
  ##   	should use for text.
  ##   
  ##   	bits: The number of bits of antialiasing to use (values are
  ##   	clamped to within the 0 to 8 range).
proc fz_graphics_aa_level*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get the number of bits of antialiasing we are
  ##   	using for graphics. Between 0 and 8.
proc fz_set_graphics_aa_level*(ctx: ptr fz_context; bits: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Set the number of bits of antialiasing we
  ##   	should use for graphics.
  ##   
  ##   	bits: The number of bits of antialiasing to use (values are
  ##   	clamped to within the 0 to 8 range).
proc fz_graphics_min_line_width*(ctx: ptr fz_context): cfloat {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Get the minimum line width to be
  ##   	used for stroked lines.
  ##   
  ##   	min_line_width: The minimum line width to use (in pixels).
proc fz_set_graphics_min_line_width*(ctx: ptr fz_context; min_line_width: cfloat) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the minimum line width to be
  ##   	used for stroked lines.
  ##   
  ##   	min_line_width: The minimum line width to use (in pixels).
proc fz_user_css*(ctx: ptr fz_context): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get the user stylesheet source text.
proc fz_set_user_css*(ctx: ptr fz_context; text: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the user stylesheet source text for use with HTML and EPUB.
proc fz_use_document_css*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return whether to respect document styles in HTML and EPUB.
proc fz_set_use_document_css*(ctx: ptr fz_context; use: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Toggle whether to respect document styles in HTML and EPUB.
proc fz_enable_icc*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Enable icc profile based operation.
proc fz_disable_icc*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Disable icc profile based operation.
proc fz_malloc*(ctx: ptr fz_context; size: uint): pointer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Allocate uninitialized memory of a given size.
  ##   	Does NOT clear the memory!
  ##   
  ##   	May return NULL for size = 0.
  ##   
  ##   	Throws exception in the event of failure to allocate.
proc fz_calloc*(ctx: ptr fz_context; count: uint; size: uint): pointer {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Allocate array of memory of count entries of size bytes.
  ##   	Clears the memory to zero.
  ##   
  ##   	Throws exception in the event of failure to allocate.
proc fz_realloc*(ctx: ptr fz_context; p: pointer; size: uint): pointer {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Reallocates a block of memory to given size. Existing contents
  ##   	up to min(old_size,new_size) are maintained. The rest of the
  ##   	block is uninitialised.
  ##   
  ##   	fz_realloc(ctx, NULL, size) behaves like fz_malloc(ctx, size).
  ##   
  ##   	fz_realloc(ctx, p, 0); behaves like fz_free(ctx, p).
  ##   
  ##   	Throws exception in the event of failure to allocate.
proc fz_free*(ctx: ptr fz_context; p: pointer) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Free a previously allocated block of memory.
  ##   
  ##   	fz_free(ctx, NULL) does nothing.
  ##   
  ##   	Never throws exceptions.
proc fz_malloc_no_throw*(ctx: ptr fz_context; size: uint): pointer {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	fz_malloc equivalent that returns NULL rather than throwing
  ##   	exceptions.
proc fz_calloc_no_throw*(ctx: ptr fz_context; count: uint; size: uint): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	fz_calloc equivalent that returns NULL rather than throwing
  ##   	exceptions.
proc fz_realloc_no_throw*(ctx: ptr fz_context; p: pointer; size: uint): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	fz_realloc equivalent that returns NULL rather than throwing
  ##   	exceptions.
proc fz_strdup*(ctx: ptr fz_context; s: cstring): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Portable strdup implementation, using fz allocators.
proc fz_memrnd*(ctx: ptr fz_context; `block`: ptr uint8; len: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Fill block with len bytes of pseudo-randomness.
proc fz_var_imp*(a1: pointer) {.importc, cdecl, impfitzHdr.}
proc fz_push_try*(ctx: ptr fz_context): ptr sigjmp_buf {.importc, cdecl, impfitzHdr.}
proc fz_do_try*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
proc fz_do_always*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
proc fz_do_catch*(ctx: ptr fz_context): cint {.importc, cdecl, impfitzHdr.}
proc fz_new_context_imp*(alloc: ptr fz_alloc_context; locks: ptr fz_locks_context;
                        max_store: uint; version: cstring): ptr fz_context {.importc,
    cdecl, impfitzHdr.}
proc fz_keep_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_buffer {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Take an additional reference to the buffer. The same pointer
  ##   	is returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to the buffer. When the reference count reaches
  ##   	zero, the buffer is destroyed.
  ##   
  ##   	Never throws exceptions.
proc fz_buffer_storage*(ctx: ptr fz_context; buf: ptr fz_buffer; datap: ptr ptr cuchar): uint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve internal memory of buffer.
  ##   
  ##   	datap: Output parameter that will be pointed to the data.
  ##   
  ##   	Returns the current size of the data in bytes.
proc fz_string_from_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): cstring {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Ensure that a buffer's data ends in a
  ##   	0 byte, and return a pointer to it.
proc fz_new_buffer*(ctx: ptr fz_context; capacity: uint): ptr fz_buffer {.importc, cdecl,
    impfitzHdr.}
proc fz_new_buffer_from_data*(ctx: ptr fz_context; data: ptr cuchar; size: uint): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new buffer with existing data.
  ##   
  ##   	data: Pointer to existing data.
  ##   	size: Size of existing data.
  ##   
  ##   	Takes ownership of data. Does not make a copy. Calls fz_free on
  ##   	the data when the buffer is deallocated. Do not use 'data' after
  ##   	passing to this function.
  ##   
  ##   	Returns pointer to new buffer. Throws exception on allocation
  ##   	failure.
proc fz_new_buffer_from_shared_data*(ctx: ptr fz_context; data: ptr cuchar; size: uint): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Like fz_new_buffer, but does not take ownership.
proc fz_new_buffer_from_copied_data*(ctx: ptr fz_context; data: ptr cuchar; size: uint): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new buffer containing a copy of the passed data.
proc fz_new_buffer_from_base64*(ctx: ptr fz_context; data: cstring; size: uint): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new buffer with data decoded from a base64 input string.
proc fz_resize_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer; capacity: uint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Ensure that a buffer has a given capacity,
  ##   	truncating data if required.
  ##   
  ##   	capacity: The desired capacity for the buffer. If the current
  ##   	size of the buffer contents is smaller than capacity, it is
  ##   	truncated.
proc fz_grow_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Make some space within a buffer (i.e. ensure that
  ##   	capacity > size).
proc fz_trim_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Trim wasted capacity from a buffer by resizing internal memory.
proc fz_clear_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Empties the buffer. Storage is not freed, but is held ready
  ##   	to be reused as the buffer is refilled.
  ##   
  ##   	Never throws exceptions.
proc fz_append_buffer*(ctx: ptr fz_context; destination: ptr fz_buffer;
                      source: ptr fz_buffer) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append the contents of the source buffer onto the end of the
  ##   	destination buffer, extending automatically as required.
  ##   
  ##   	Ownership of buffers does not change.
proc fz_append_data*(ctx: ptr fz_context; buf: ptr fz_buffer; data: pointer; len: uint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	fz_append_: Append data to a buffer.
  ##   
  ##   	The buffer will automatically grow as required.
proc fz_append_string*(ctx: ptr fz_context; buf: ptr fz_buffer; data: cstring) {.importc,
    cdecl, impfitzHdr.}
proc fz_append_byte*(ctx: ptr fz_context; buf: ptr fz_buffer; c: cint) {.importc, cdecl,
    impfitzHdr.}
proc fz_append_rune*(ctx: ptr fz_context; buf: ptr fz_buffer; c: cint) {.importc, cdecl,
    impfitzHdr.}
proc fz_append_int32_le*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_append_int16_le*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_append_int32_be*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_append_int16_be*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_append_bits*(ctx: ptr fz_context; buf: ptr fz_buffer; value: cint; count: cint) {.
    importc, cdecl, impfitzHdr.}
proc fz_append_bits_pad*(ctx: ptr fz_context; buf: ptr fz_buffer) {.importc, cdecl,
    impfitzHdr.}
proc fz_append_pdf_string*(ctx: ptr fz_context; buffer: ptr fz_buffer; text: cstring) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	fz_append_pdf_string: Append a string with PDF syntax quotes and
  ##   	escapes.
  ##   
  ##   	The buffer will automatically grow as required.
proc fz_append_printf*(ctx: ptr fz_context; buffer: ptr fz_buffer; fmt: cstring) {.
    importc, cdecl, impfitzHdr, varargs.}
  ## ::
  ##   
  ##   	fz_append_printf: Format and append data to buffer using
  ##   	printf-like formatting (see fz_vsnprintf).
  ##   
  ##   	The buffer will automatically grow as required.
proc fz_append_vprintf*(ctx: ptr fz_context; buffer: ptr fz_buffer; fmt: cstring;
                       args: va_list) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	fz_append_vprintf: Format and append data to buffer using
  ##   	printf-like formatting with varargs (see fz_vsnprintf).
proc fz_terminate_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Zero-terminate buffer in order to use as a C string.
  ##   
  ##   	This byte is invisible and does not affect the length of the
  ##   	buffer as returned by fz_buffer_storage. The zero byte is
  ##   	writtenafter the data, and subsequent writes will overwrite
  ##   	the terminating byte.
  ##   
  ##   	Subsequent changes to the size of the buffer (such as by
  ##   	fz_buffer_trim, fz_buffer_grow, fz_resize_buffer, etc) may
  ##   	invalidate this.
proc fz_md5_buffer*(ctx: ptr fz_context; buffer: ptr fz_buffer;
                   digest: array[16, cuchar]) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create an MD5 digest from buffer contents.
  ##   
  ##   	Never throws exceptions.
proc fz_buffer_extract*(ctx: ptr fz_context; buf: ptr fz_buffer; data: ptr ptr cuchar): uint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Take ownership of buffer contents.
  ##   
  ##   	Performs the same task as fz_buffer_storage, but ownership of
  ##   	the data buffer returns with this call. The buffer is left
  ##   	empty.
  ##   
  ##   	Note: Bad things may happen if this is called on a buffer with
  ##   	multiple references that is being used from multiple threads.
  ##   
  ##   	data: Pointer to place to retrieve data pointer.
  ##   
  ##   	Returns length of stream.
proc fz_strnlen*(s: cstring; maxlen: uint): uint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Safe string functions
  ##   
  ##   
  ##   	Return strlen(s), if that is less than maxlen, or maxlen if
  ##   	there is no null byte ('\0') among the first maxlen bytes.
proc fz_strsep*(stringp: ptr cstring; delim: cstring): cstring {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Given a pointer to a C string (or a pointer to NULL) break
  ##   	it at the first occurrence of a delimiter char (from a given
  ##   	set).
  ##   
  ##   	stringp: Pointer to a C string pointer (or NULL). Updated on
  ##   	exit to point to the first char of the string after the
  ##   	delimiter that was found. The string pointed to by stringp will
  ##   	be corrupted by this call (as the found delimiter will be
  ##   	overwritten by 0).
  ##   
  ##   	delim: A C string of acceptable delimiter characters.
  ##   
  ##   	Returns a pointer to a C string containing the chars of stringp
  ##   	up to the first delimiter char (or the end of the string), or
  ##   	NULL.
proc fz_strlcpy*(dst: cstring; src: cstring; n: uint): uint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Copy at most n-1 chars of a string into a destination
  ##   	buffer with null termination, returning the real length of the
  ##   	initial string (excluding terminator).
  ##   
  ##   	dst: Destination buffer, at least n bytes long.
  ##   
  ##   	src: C string (non-NULL).
  ##   
  ##   	n: Size of dst buffer in bytes.
  ##   
  ##   	Returns the length (excluding terminator) of src.
proc fz_strlcat*(dst: cstring; src: cstring; n: uint): uint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Concatenate 2 strings, with a maximum length.
  ##   
  ##   	dst: pointer to first string in a buffer of n bytes.
  ##   
  ##   	src: pointer to string to concatenate.
  ##   
  ##   	n: Size (in bytes) of buffer that dst is in.
  ##   
  ##   	Returns the real length that a concatenated dst + src would have
  ##   	been (not including terminator).
proc fz_memmem*(haystack: pointer; haystacklen: uint; needle: pointer; needlelen: uint): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the start of the first occurrence of the substring needle in haystack.
proc fz_dirname*(dir: cstring; path: cstring; dirsize: uint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	extract the directory component from a path.
proc fz_urldecode*(url: cstring): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	decode url escapes.
proc fz_format_output_path*(ctx: ptr fz_context; path: cstring; size: uint;
                           fmt: cstring; page: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	create output file name using a template.
  ##   
  ##   	If the path contains %[0-9]d, the first such pattern will be
  ##   	replaced with the page number. If the template does not contain
  ##   	such a pattern, the page number will be inserted before the
  ##   	filename extension. If the template does not have a filename
  ##   	extension, the page number will be added to the end.
proc fz_cleanname*(name: cstring): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	rewrite path to the shortest string that names the same path.
  ##   
  ##   	Eliminates multiple and trailing slashes, interprets "." and
  ##   	"..". Overwrites the string in place.
proc fz_realpath*(path: cstring; resolved_path: cstring): cstring {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Resolve a path to an absolute file name.
  ##   	The resolved path buffer must be of at least PATH_MAX size.
proc fz_strcasecmp*(a: cstring; b: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Case insensitive (ASCII only) string comparison.
proc fz_strncasecmp*(a: cstring; b: cstring; n: uint): cint {.importc, cdecl, impfitzHdr.}
proc fz_chartorune*(rune: ptr cint; str: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	UTF8 decode a single rune from a sequence of chars.
  ##   
  ##   	rune: Pointer to an int to assign the decoded 'rune' to.
  ##   
  ##   	str: Pointer to a UTF8 encoded string.
  ##   
  ##   	Returns the number of bytes consumed.
proc fz_runetochar*(str: cstring; rune: cint): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	UTF8 encode a rune to a sequence of chars.
  ##   
  ##   	str: Pointer to a place to put the UTF8 encoded character.
  ##   
  ##   	rune: Pointer to a 'rune'.
  ##   
  ##   	Returns the number of bytes the rune took to output.
proc fz_runelen*(rune: cint): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Count how many chars are required to represent a rune.
  ##   
  ##   	rune: The rune to encode.
  ##   
  ##   	Returns the number of bytes required to represent this run in
  ##   	UTF8.
proc fz_utflen*(s: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Count how many runes the UTF-8 encoded string
  ##   	consists of.
  ##   
  ##   	s: The UTF-8 encoded, NUL-terminated text string.
  ##   
  ##   	Returns the number of runes in the string.
proc fz_strtof*(s: cstring; es: ptr cstring): cfloat {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Locale-independent decimal to binary conversion. On overflow
  ##   	return (-)INFINITY and set errno to ERANGE. On underflow return
  ##   	0 and set errno to ERANGE. Special inputs (case insensitive):
  ##   	"NAN", "INF" or "INFINITY".
proc fz_grisu*(f: cfloat; s: cstring; exp: ptr cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_is_page_range*(ctx: ptr fz_context; s: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Check and parse string into page ranges:
  ##   		( ','? ([0-9]+|'N') ( '-' ([0-9]+|N) )? )+
proc fz_parse_page_range*(ctx: ptr fz_context; s: cstring; a: ptr cint; b: ptr cint; n: cint): cstring {.
    importc, cdecl, impfitzHdr.}
proc fz_file_exists*(ctx: ptr fz_context; path: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return true if the named file exists and is readable.
proc fz_open_file*(ctx: ptr fz_context; filename: cstring): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open the named file and wrap it in a stream.
  ##   
  ##   	filename: Path to a file. On non-Windows machines the filename
  ##   	should be exactly as it would be passed to fopen(2). On Windows
  ##   	machines, the path should be UTF-8 encoded so that non-ASCII
  ##   	characters can be represented. Other platforms do the encoding
  ##   	as standard anyway (and in most cases, particularly for MacOS
  ##   	and Linux, the encoding they use is UTF-8 anyway).
proc fz_open_memory*(ctx: ptr fz_context; data: ptr cuchar; len: uint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a block of memory as a stream.
  ##   
  ##   	data: Pointer to start of data block. Ownership of the data
  ##   	block is NOT passed in.
  ##   
  ##   	len: Number of bytes in data block.
  ##   
  ##   	Returns pointer to newly created stream. May throw exceptions on
  ##   	failure to allocate.
proc fz_open_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a buffer as a stream.
  ##   
  ##   	buf: The buffer to open. Ownership of the buffer is NOT passed
  ##   	in (this function takes its own reference).
  ##   
  ##   	Returns pointer to newly created stream. May throw exceptions on
  ##   	failure to allocate.
proc fz_open_leecher*(ctx: ptr fz_context; chain: ptr fz_stream; buf: ptr fz_buffer): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Attach a filter to a stream that will store any
  ##   	characters read from the stream into the supplied buffer.
  ##   
  ##   	chain: The underlying stream to leech from.
  ##   
  ##   	buf: The buffer into which the read data should be appended.
  ##   	The buffer will be resized as required.
  ##   
  ##   	Returns pointer to newly created stream. May throw exceptions on
  ##   	failure to allocate.
proc fz_keep_stream*(ctx: ptr fz_context; stm: ptr fz_stream): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increments the reference count for a stream. Returns the same
  ##   	pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_stream*(ctx: ptr fz_context; stm: ptr fz_stream) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrements the reference count for a stream.
  ##   
  ##   	When the reference count for the stream hits zero, frees the
  ##   	storage used for the fz_stream itself, and (usually)
  ##   	releases the underlying resources that the stream is based upon
  ##   	(depends on the method used to open the stream initially).
proc fz_tell*(ctx: ptr fz_context; stm: ptr fz_stream): int64 {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	return the current reading position within a stream
proc fz_seek*(ctx: ptr fz_context; stm: ptr fz_stream; offset: int64; whence: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Seek within a stream.
  ##   
  ##   	stm: The stream to seek within.
  ##   
  ##   	offset: The offset to seek to.
  ##   
  ##   	whence: From where the offset is measured (see fseek).
proc fz_read*(ctx: ptr fz_context; stm: ptr fz_stream; data: ptr cuchar; len: uint): uint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Read from a stream into a given data block.
  ##   
  ##   	stm: The stream to read from.
  ##   
  ##   	data: The data block to read into.
  ##   
  ##   	len: The length of the data block (in bytes).
  ##   
  ##   	Returns the number of bytes read. May throw exceptions.
proc fz_skip*(ctx: ptr fz_context; stm: ptr fz_stream; len: uint): uint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Read from a stream discarding data.
  ##   
  ##   	stm: The stream to read from.
  ##   
  ##   	len: The number of bytes to read.
  ##   
  ##   	Returns the number of bytes read. May throw exceptions.
proc fz_read_all*(ctx: ptr fz_context; stm: ptr fz_stream; initial: uint): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Read all of a stream into a buffer.
  ##   
  ##   	stm: The stream to read from
  ##   
  ##   	initial: Suggested initial size for the buffer.
  ##   
  ##   	Returns a buffer created from reading from the stream. May throw
  ##   	exceptions on failure to allocate.
proc fz_read_file*(ctx: ptr fz_context; filename: cstring): ptr fz_buffer {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Read all the contents of a file into a buffer.
proc fz_read_uint16*(ctx: ptr fz_context; stm: ptr fz_stream): uint16 {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	fz_read_[u]int(16|24|32|64)(_le)?
  ##   
  ##   	Read a 16/32/64 bit signed/unsigned integer from stream,
  ##   	in big or little-endian byte orders.
  ##   
  ##   	Throws an exception if EOF is encountered.
proc fz_read_uint24*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_uint32*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_uint64*(ctx: ptr fz_context; stm: ptr fz_stream): uint64 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_uint16_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint16 {.importc,
    cdecl, impfitzHdr.}
proc fz_read_uint24_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.importc,
    cdecl, impfitzHdr.}
proc fz_read_uint32_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.importc,
    cdecl, impfitzHdr.}
proc fz_read_uint64_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint64 {.importc,
    cdecl, impfitzHdr.}
proc fz_read_int16*(ctx: ptr fz_context; stm: ptr fz_stream): int16 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_int32*(ctx: ptr fz_context; stm: ptr fz_stream): int32 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_int64*(ctx: ptr fz_context; stm: ptr fz_stream): int64 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_int16_le*(ctx: ptr fz_context; stm: ptr fz_stream): int16 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_int32_le*(ctx: ptr fz_context; stm: ptr fz_stream): int32 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_int64_le*(ctx: ptr fz_context; stm: ptr fz_stream): int64 {.importc, cdecl,
    impfitzHdr.}
proc fz_read_float_le*(ctx: ptr fz_context; stm: ptr fz_stream): cfloat {.importc, cdecl,
    impfitzHdr.}
proc fz_read_float*(ctx: ptr fz_context; stm: ptr fz_stream): cfloat {.importc, cdecl,
    impfitzHdr.}
proc fz_read_string*(ctx: ptr fz_context; stm: ptr fz_stream; buffer: cstring; len: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Read a null terminated string from the stream into
  ##   	a buffer of a given length. The buffer will be null terminated.
  ##   	Throws on failure (including the failure to fit the entire
  ##   	string including the terminator into the buffer).
proc fz_new_stream*(ctx: ptr fz_context; state: pointer; next: ptr fz_stream_next_fn;
                   drop: ptr fz_stream_drop_fn): ptr fz_stream {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new stream object with the given
  ##   	internal state and function pointers.
  ##   
  ##   	state: Internal state (opaque to everything but implementation).
  ##   
  ##   	next: Should provide the next set of bytes (up to max) of stream
  ##   	data. Return the number of bytes read, or EOF when there is no
  ##   	more data.
  ##   
  ##   	drop: Should clean up and free the internal state. May not
  ##   	throw exceptions.
proc fz_read_best*(ctx: ptr fz_context; stm: ptr fz_stream; initial: uint;
                  truncated: ptr cint): ptr fz_buffer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Attempt to read a stream into a buffer. If truncated
  ##   	is NULL behaves as fz_read_all, sets a truncated flag in case of
  ##   	error.
  ##   
  ##   	stm: The stream to read from.
  ##   
  ##   	initial: Suggested initial size for the buffer.
  ##   
  ##   	truncated: Flag to store success/failure indication in.
  ##   
  ##   	Returns a buffer created from reading from the stream.
proc fz_read_line*(ctx: ptr fz_context; stm: ptr fz_stream; buf: cstring; max: uint): cstring {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Read a line from stream into the buffer until either a
  ##   	terminating newline or EOF, which it replaces with a null byte
  ##   	('\0').
  ##   
  ##   	Returns buf on success, and NULL when end of file occurs while
  ##   	no characters have been read.
proc fz_read_bits*(ctx: ptr fz_context; stm: ptr fz_stream; n: cint): cint {.importc,
    cdecl, impfitzHdr.}
proc fz_read_rbits*(ctx: ptr fz_context; stm: ptr fz_stream; n: cint): cint {.importc,
    cdecl, impfitzHdr.}
proc fz_open_file_ptr_no_close*(ctx: ptr fz_context; file: File): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##    Implementation details: subject to change.
  ##   
  ##   	Create a stream from a FILE that will not be closed
  ##   	when the stream is dropped.
proc fz_new_output*(ctx: ptr fz_context; bufsiz: cint; state: pointer;
                   write: ptr fz_output_write_fn; close: ptr fz_output_close_fn;
                   drop: ptr fz_output_drop_fn): ptr fz_output {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new output object with the given
  ##   	internal state and function pointers.
  ##   
  ##   	state: Internal state (opaque to everything but implementation).
  ##   
  ##   	write: Function to output a given buffer.
  ##   
  ##   	close: Cleanup function to destroy state when output closed.
  ##   	May permissibly be null.
proc fz_new_output_with_path*(a1: ptr fz_context; filename: cstring; append: cint): ptr fz_output {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open an output stream that writes to a
  ##   	given path.
  ##   
  ##   	filename: The filename to write to (specified in UTF-8).
  ##   
  ##   	append: non-zero if we should append to the file, rather than
  ##   	overwriting it.
proc fz_new_output_with_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_output {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open an output stream that appends
  ##   	to a buffer.
  ##   
  ##   	buf: The buffer to append to.
proc fz_stdout*(ctx: ptr fz_context): ptr fz_output {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve an fz_output that directs to stdout.
  ##   
  ##   	Should be fz_dropped when finished with.
proc fz_stderr*(ctx: ptr fz_context): ptr fz_output {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve an fz_output that directs to stdout.
  ##   
  ##   	Should be fz_dropped when finished with.
proc fz_write_printf*(ctx: ptr fz_context; `out`: ptr fz_output; fmt: cstring) {.importc,
    cdecl, impfitzHdr, varargs.}
  ## ::
  ##   
  ##   	Format and write data to an output stream.
  ##   	See fz_format_string for formatting details.
proc fz_write_vprintf*(ctx: ptr fz_context; `out`: ptr fz_output; fmt: cstring;
                      ap: va_list) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	va_list version of fz_write_printf.
proc fz_seek_output*(ctx: ptr fz_context; `out`: ptr fz_output; off: int64; whence: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Seek to the specified file position.
  ##   	See fseek for arguments.
  ##   
  ##   	Throw an error on unseekable outputs.
proc fz_tell_output*(ctx: ptr fz_context; `out`: ptr fz_output): int64 {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the current file position.
  ##   
  ##   	Throw an error on untellable outputs.
proc fz_flush_output*(ctx: ptr fz_context; `out`: ptr fz_output) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Flush unwritten data.
proc fz_close_output*(a1: ptr fz_context; a2: ptr fz_output) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Flush pending output and close an output stream.
proc fz_drop_output*(a1: ptr fz_context; a2: ptr fz_output) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Free an output stream. Don't forget to close it first!
proc fz_output_supports_stream*(ctx: ptr fz_context; `out`: ptr fz_output): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Query whether a given fz_output supports fz_stream_from_output.
proc fz_stream_from_output*(a1: ptr fz_context; a2: ptr fz_output): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Obtain the fz_output in the form of a fz_stream.
  ##   
  ##   	This allows data to be read back from some forms of fz_output
  ##   	object. When finished reading, the fz_stream should be released
  ##   	by calling fz_drop_stream. Until the fz_stream is dropped, no
  ##   	further operations should be performed on the fz_output object.
proc fz_truncate_output*(a1: ptr fz_context; a2: ptr fz_output) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Truncate the output at the current position.
  ##   
  ##   	This allows output streams which have seeked back from the end
  ##   	of their storage to be truncated at the current point.
proc fz_write_data*(ctx: ptr fz_context; `out`: ptr fz_output; data: pointer; size: uint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write data to output.
  ##   
  ##   	data: Pointer to data to write.
  ##   	size: Size of data to write in bytes.
proc fz_write_string*(ctx: ptr fz_context; `out`: ptr fz_output; s: cstring) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a string. Does not write zero terminator.
proc fz_write_int32_be*(ctx: ptr fz_context; `out`: ptr fz_output; x: cint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write different sized data to an output stream.
proc fz_write_int32_le*(ctx: ptr fz_context; `out`: ptr fz_output; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_uint32_be*(ctx: ptr fz_context; `out`: ptr fz_output; x: cuint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_uint32_le*(ctx: ptr fz_context; `out`: ptr fz_output; x: cuint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_int16_be*(ctx: ptr fz_context; `out`: ptr fz_output; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_int16_le*(ctx: ptr fz_context; `out`: ptr fz_output; x: cint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_uint16_be*(ctx: ptr fz_context; `out`: ptr fz_output; x: cuint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_uint16_le*(ctx: ptr fz_context; `out`: ptr fz_output; x: cuint) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_char*(ctx: ptr fz_context; `out`: ptr fz_output; x: cchar) {.importc, cdecl,
    impfitzHdr.}
proc fz_write_byte*(ctx: ptr fz_context; `out`: ptr fz_output; x: cuchar) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_float_be*(ctx: ptr fz_context; `out`: ptr fz_output; f: cfloat) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_float_le*(ctx: ptr fz_context; `out`: ptr fz_output; f: cfloat) {.importc,
    cdecl, impfitzHdr.}
proc fz_write_rune*(ctx: ptr fz_context; `out`: ptr fz_output; rune: cint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a UTF-8 encoded unicode character.
proc fz_write_base64*(ctx: ptr fz_context; `out`: ptr fz_output; data: ptr cuchar;
                     size: uint; newline: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a base64 encoded data block, optionally with periodic
  ##   	newlines.
proc fz_write_base64_buffer*(ctx: ptr fz_context; `out`: ptr fz_output;
                            data: ptr fz_buffer; newline: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Write a base64 encoded fz_buffer, optionally with periodic
  ##   	newlines.
proc fz_format_string*(ctx: ptr fz_context; user: pointer; emit: proc (
    ctx: ptr fz_context; user: pointer; c: cint) {.cdecl.}; fmt: cstring; args: va_list) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Our customised 'printf'-like string formatter.
  ##   	Takes %c, %d, %s, %u, %x, as usual.
  ##   	Modifiers are not supported except for zero-padding ints (e.g.
  ##   	%02d, %03u, %04x, etc).
  ##   	%g output in "as short as possible hopefully lossless
  ##   	non-exponent" form, see fz_ftoa for specifics.
  ##   	%f and %e output as usual.
  ##   	%C outputs a utf8 encoded int.
  ##   	%M outputs a fz_matrix.
  ##   	%R outputs a fz_rect.
  ##   	%P outputs a fz_point.
  ##   	%n outputs a PDF name (with appropriate escaping).
  ##   	%q and %( output escaped strings in C/PDF syntax.
  ##   	%l{d,u,x} indicates that the values are int64_t.
  ##   	%z{d,u,x} indicates that the value is a size_t.
  ##   
  ##   	user: An opaque pointer that is passed to the emit function.
  ##   
  ##   	emit: A function pointer called to emit output bytes as the
  ##   	string is being formatted.
proc fz_vsnprintf*(buffer: cstring; space: uint; fmt: cstring; args: va_list): uint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	A vsnprintf work-alike, using our custom formatter.
proc fz_snprintf*(buffer: cstring; space: uint; fmt: cstring): uint {.importc, cdecl,
    impfitzHdr, varargs.}
  ## ::
  ##   
  ##   	The non va_list equivalent of fz_vsnprintf.
proc fz_asprintf*(ctx: ptr fz_context; fmt: cstring): cstring {.importc, cdecl,
    impfitzHdr, varargs.}
  ## ::
  ##   
  ##   	Allocated sprintf.
  ##   
  ##   	Returns a null terminated allocated block containing the
  ##   	formatted version of the format string/args.
proc fz_save_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer; filename: cstring) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save the contents of a buffer to a file.
proc fz_new_asciihex_output*(ctx: ptr fz_context; chain: ptr fz_output): ptr fz_output {.
    importc, cdecl, impfitzHdr.}
proc fz_new_ascii85_output*(ctx: ptr fz_context; chain: ptr fz_output): ptr fz_output {.
    importc, cdecl, impfitzHdr.}
proc fz_new_rle_output*(ctx: ptr fz_context; chain: ptr fz_output): ptr fz_output {.
    importc, cdecl, impfitzHdr.}
proc fz_new_arc4_output*(ctx: ptr fz_context; chain: ptr fz_output; key: ptr cuchar;
                        keylen: uint): ptr fz_output {.importc, cdecl, impfitzHdr.}
proc fz_new_deflate_output*(ctx: ptr fz_context; chain: ptr fz_output; effort: cint;
                           raw: cint): ptr fz_output {.importc, cdecl, impfitzHdr.}
proc fz_log*(ctx: ptr fz_context; fmt: cstring) {.importc, cdecl, impfitzHdr, varargs.}
  ## ::
  ##   
  ##   	The functions in this file offer simple logging abilities.
  ##   
  ##   	The default logfile is "fitz_log.txt". This can overridden by
  ##   	defining an environment variable "FZ_LOG_FILE", or module
  ##   	specific environment variables "FZ_LOG_FILE_<module>" (e.g.
  ##   	"FZ_LOG_FILE_STORE").
  ##   
  ##   	Enable the following define(s) to enable built in debug logging
  ##   	from within the appropriate module(s).
  ##   
  ##    #define ENABLE_STORE_LOGGING
  ##   
  ##   	Output a line to the log.
proc fz_log_module*(ctx: ptr fz_context; module: cstring; fmt: cstring) {.importc, cdecl,
    impfitzHdr, varargs.}
  ## ::
  ##   
  ##   	Output a line to the log for a given module.
proc fz_new_log_for_module*(ctx: ptr fz_context; module: cstring): ptr fz_output {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Internal function to actually do the opening of the logfile.
  ##   
  ##   	Caller should close/drop the output when finished with it.
proc fz_md5_init*(state: ptr fz_md5) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	MD5 initialization. Begins an MD5 operation, writing a new
  ##   	context.
  ##   
  ##   	Never throws an exception.
proc fz_md5_update*(state: ptr fz_md5; input: ptr cuchar; inlen: uint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	MD5 block update operation. Continues an MD5 message-digest
  ##   	operation, processing another message block, and updating the
  ##   	context.
  ##   
  ##   	Never throws an exception.
proc fz_md5_final*(state: ptr fz_md5; digest: array[16, cuchar]) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	MD5 finalization. Ends an MD5 message-digest operation, writing
  ##   	the message digest and zeroizing the context.
  ##   
  ##   	Never throws an exception.
proc fz_sha256_init*(state: ptr fz_sha256) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SHA256 initialization. Begins an SHA256 operation, initialising
  ##   	the supplied context.
  ##   
  ##   	Never throws an exception.
proc fz_sha256_update*(state: ptr fz_sha256; input: ptr cuchar; inlen: uint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SHA256 block update operation. Continues an SHA256 message-
  ##   	digest operation, processing another message block, and updating
  ##   	the context.
  ##   
  ##   	Never throws an exception.
proc fz_sha256_final*(state: ptr fz_sha256; digest: array[32, cuchar]) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	MD5 finalization. Ends an MD5 message-digest operation, writing
  ##   	the message digest and zeroizing the context.
  ##   
  ##   	Never throws an exception.
proc fz_sha512_init*(state: ptr fz_sha512) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SHA512 initialization. Begins an SHA512 operation, initialising
  ##   	the supplied context.
  ##   
  ##   	Never throws an exception.
proc fz_sha512_update*(state: ptr fz_sha512; input: ptr cuchar; inlen: uint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SHA512 block update operation. Continues an SHA512 message-
  ##   	digest operation, processing another message block, and updating
  ##   	the context.
  ##   
  ##   	Never throws an exception.
proc fz_sha512_final*(state: ptr fz_sha512; digest: array[64, cuchar]) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	SHA512 finalization. Ends an SHA512 message-digest operation,
  ##   	writing the message digest and zeroizing the context.
  ##   
  ##   	Never throws an exception.
proc fz_sha384_init*(state: ptr fz_sha384) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SHA384 initialization. Begins an SHA384 operation, initialising
  ##   	the supplied context.
  ##   
  ##   	Never throws an exception.
proc fz_sha384_update*(state: ptr fz_sha384; input: ptr cuchar; inlen: uint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SHA384 block update operation. Continues an SHA384 message-
  ##   	digest operation, processing another message block, and updating
  ##   	the context.
  ##   
  ##   	Never throws an exception.
proc fz_sha384_final*(state: ptr fz_sha384; digest: array[64, cuchar]) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	SHA384 finalization. Ends an SHA384 message-digest operation,
  ##   	writing the message digest and zeroizing the context.
  ##   
  ##   	Never throws an exception.
proc fz_arc4_init*(state: ptr fz_arc4; key: ptr cuchar; len: uint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	RC4 initialization. Begins an RC4 operation, writing a new
  ##   	context.
  ##   
  ##   	Never throws an exception.
proc fz_arc4_encrypt*(state: ptr fz_arc4; dest: ptr cuchar; src: ptr cuchar; len: uint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	RC4 block encrypt operation; encrypt src into dst (both of
  ##   	length len) updating the RC4 state as we go.
  ##   
  ##   	Never throws an exception.
proc fz_arc4_final*(state: ptr fz_arc4) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	RC4 finalization. Zero the context.
  ##   
  ##   	Never throws an exception.
proc fz_aes_setkey_enc*(ctx: ptr fz_aes; key: ptr cuchar; keysize: cint): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	AES encryption intialisation. Fills in the supplied context
  ##   	and prepares for encryption using the given key.
  ##   
  ##   	Returns non-zero for error (key size other than 128/192/256).
  ##   
  ##   	Never throws an exception.
proc fz_aes_setkey_dec*(ctx: ptr fz_aes; key: ptr cuchar; keysize: cint): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	AES decryption intialisation. Fills in the supplied context
  ##   	and prepares for decryption using the given key.
  ##   
  ##   	Returns non-zero for error (key size other than 128/192/256).
  ##   
  ##   	Never throws an exception.
proc fz_aes_crypt_cbc*(ctx: ptr fz_aes; mode: cint; length: uint; iv: array[16, cuchar];
                      input: ptr cuchar; output: ptr cuchar) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	AES block processing. Encrypts or Decrypts (according to mode,
  ##   	which must match what was initially set up) length bytes (which
  ##   	must be a multiple of 16), using (and modifying) the insertion
  ##   	vector iv, reading from input, and writing to output.
  ##   
  ##   	Never throws an exception.
proc fz_getopt*(nargc: cint; nargv: ptr cstring; ostr: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Simple functions/variables for use in tools.
proc fz_new_hash_table*(ctx: ptr fz_context; initialsize: cint; keylen: cint;
                       lock: cint; drop_val: ptr fz_hash_table_drop_fn): ptr fz_hash_table {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new hash table.
  ##   
  ##   	initialsize: The initial size of the hashtable. The hashtable
  ##   	may grow (double in size) if it starts to get crowded (80%
  ##   	full).
  ##   
  ##   	keylen: byte length for each key.
  ##   
  ##   	lock: -1 for no lock, otherwise the FZ_LOCK to use to protect
  ##   	this table.
  ##   
  ##   	drop_val: Function to use to destroy values on table drop.
proc fz_drop_hash_table*(ctx: ptr fz_context; table: ptr fz_hash_table) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Destroy the hash table.
  ##   
  ##   	Values are dropped using the drop function.
proc fz_hash_find*(ctx: ptr fz_context; table: ptr fz_hash_table; key: pointer): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search for a matching hash within the table, and return the
  ##   	associated value.
proc fz_hash_insert*(ctx: ptr fz_context; table: ptr fz_hash_table; key: pointer;
                    val: pointer): pointer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Insert a new key/value pair into the hash table.
  ##   
  ##   	If an existing entry with the same key is found, no change is
  ##   	made to the hash table, and a pointer to the existing value is
  ##   	returned.
  ##   
  ##   	If no existing entry with the same key is found, ownership of
  ##   	val passes in, key is copied, and NULL is returned.
proc fz_hash_remove*(ctx: ptr fz_context; table: ptr fz_hash_table; key: pointer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Remove the entry for a given key.
  ##   
  ##   	The value is NOT freed, so the caller is expected to take care
  ##   	of this.
proc fz_hash_for_each*(ctx: ptr fz_context; table: ptr fz_hash_table; state: pointer;
                      callback: ptr fz_hash_table_for_each_fn) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Iterate over the entries in a hash table.
proc fz_new_pool*(ctx: ptr fz_context): ptr fz_pool {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new pool to allocate from.
proc fz_pool_alloc*(ctx: ptr fz_context; pool: ptr fz_pool; size: uint): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Allocate a block of size bytes from the pool.
proc fz_pool_strdup*(ctx: ptr fz_context; pool: ptr fz_pool; s: cstring): cstring {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	strdup equivalent allocating from the pool.
proc fz_pool_size*(ctx: ptr fz_context; pool: ptr fz_pool): uint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	The current size of the pool.
  ##   
  ##   	The number of bytes of storage currently allocated to the pool.
  ##   	This is the total of the storage used for the blocks making
  ##   	up the pool, rather then total of the allocated blocks so far,
  ##   	so it will increase in 'lumps'.
  ##   	from the pool, then the pool size may still be X
proc fz_drop_pool*(ctx: ptr fz_context; pool: ptr fz_pool) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a pool, freeing and invalidating all storage returned from
  ##   	the pool.
proc fz_tree_lookup*(ctx: ptr fz_context; node: ptr fz_tree; key: cstring): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Look for the value of a node in the tree with the given key.
  ##   
  ##   	Simple pointer equivalence is used for key.
  ##   
  ##   	Returns NULL for no match.
proc fz_tree_insert*(ctx: ptr fz_context; root: ptr fz_tree; key: cstring; value: pointer): ptr fz_tree {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Insert a new key/value pair and rebalance the tree.
  ##   	Return the new root of the tree after inserting and rebalancing.
  ##   	May be called with a NULL root to create a new tree.
  ##   
  ##   	No data is copied into the tree structure; key and value are
  ##   	merely kept as pointers.
proc fz_drop_tree*(ctx: ptr fz_context; node: ptr fz_tree;
                  dropfunc: proc (ctx: ptr fz_context; value: pointer) {.cdecl.}) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop the tree.
  ##   
  ##   	The storage used by the tree is freed, and each value has
  ##   	dropfunc called on it.
proc fz_bidi_fragment_text*(ctx: ptr fz_context; text: ptr uint32; textlen: uint;
                           baseDir: ptr fz_bidi_direction;
                           callback: ptr fz_bidi_fragment_fn; arg: pointer;
                           flags: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Partitions the given Unicode sequence into one or more
  ##   	unidirectional fragments and invokes the given callback
  ##   	function for each fragment.
  ##   
  ##   	For example, if directionality of text is:
  ##   			0123456789
  ##   			rrlllrrrrr,
  ##   	we'll invoke callback with:
  ##   			&text[0], length == 2
  ##   			&text[2], length == 3
  ##   			&text[5], length == 5
  ##   
  ##   	@param[in] text	start of Unicode sequence
  ##   	@param[in] textlen   number of Unicodes to analyse
  ##   	@param[in] baseDir   direction of paragraph (specify FZ_BIDI_NEUTRAL to force auto-detection)
  ##   	@param[in] callback  function to be called for each fragment
  ##   	@param[in] arg	data to be passed to the callback function
  ##   	@param[in] flags     flags to control operation (see fz_bidi_flags above)
proc fz_parse_xml*(ctx: ptr fz_context; buf: ptr fz_buffer; preserve_white: cint): ptr fz_xml_doc {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Parse the contents of buffer into a tree of xml nodes.
  ##   
  ##   	preserve_white: whether to keep or delete all-whitespace nodes.
proc fz_parse_xml_from_html5*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_xml_doc {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Parse the contents of a buffer into a tree of XML nodes,
  ##   	using the HTML5 parsing algorithm.
proc fz_drop_xml*(ctx: ptr fz_context; xml: ptr fz_xml_doc) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Free the XML node and all its children and siblings.
proc fz_detach_xml*(ctx: ptr fz_context; xml: ptr fz_xml_doc; node: ptr fz_xml) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Detach a node from the tree, unlinking it from its parent,
  ##   	and setting the document root to the node.
proc fz_xml_root*(xml: ptr fz_xml_doc): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the topmost XML node of a document.
proc fz_xml_prev*(item: ptr fz_xml): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return previous sibling of XML node.
proc fz_xml_next*(item: ptr fz_xml): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return next sibling of XML node.
proc fz_xml_up*(item: ptr fz_xml): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return parent of XML node.
proc fz_xml_down*(item: ptr fz_xml): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return first child of XML node.
proc fz_xml_is_tag*(item: ptr fz_xml; name: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return true if the tag name matches.
proc fz_xml_tag*(item: ptr fz_xml): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return tag of XML node. Return NULL for text nodes.
proc fz_xml_att*(item: ptr fz_xml; att: cstring): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the value of an attribute of an XML node.
  ##   	NULL if the attribute doesn't exist.
proc fz_xml_att_alt*(item: ptr fz_xml; one: cstring; two: cstring): cstring {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the value of an attribute of an XML node.
  ##   	If the first attribute doesn't exist, try the second.
  ##   	NULL if neither attribute exists.
proc fz_xml_att_eq*(item: ptr fz_xml; name: cstring; match: cstring): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check for a matching attribute on an XML node.
  ##   
  ##   	If the node has the requested attribute (name), and the value
  ##   	matches (match) then return 1. Otherwise, 0.
proc fz_xml_text*(item: ptr fz_xml): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the text content of an XML node.
  ##   	Return NULL if the node is a tag.
proc fz_debug_xml*(item: ptr fz_xml; level: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Pretty-print an XML tree to stdout.
proc fz_xml_find*(item: ptr fz_xml; tag: cstring): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the siblings of XML nodes starting with item looking for
  ##   	the first with the given tag.
  ##   
  ##   	Return NULL if none found.
proc fz_xml_find_next*(item: ptr fz_xml; tag: cstring): ptr fz_xml {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Search the siblings of XML nodes starting with the first sibling
  ##   	of item looking for the first with the given tag.
  ##   
  ##   	Return NULL if none found.
proc fz_xml_find_down*(item: ptr fz_xml; tag: cstring): ptr fz_xml {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Search the siblings of XML nodes starting with the first child
  ##   	of item looking for the first with the given tag.
  ##   
  ##   	Return NULL if none found.
proc fz_xml_find_match*(item: ptr fz_xml; tag: cstring; att: cstring; match: cstring): ptr fz_xml {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the siblings of XML nodes starting with item looking for
  ##   	the first with the given tag, and with a matching attribute.
  ##   
  ##   	Return NULL if none found.
proc fz_xml_find_next_match*(item: ptr fz_xml; tag: cstring; att: cstring;
                            match: cstring): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the siblings of XML nodes starting with the first sibling
  ##   	of item looking for the first with the given tag, and with a
  ##   	matching attribute.
  ##   
  ##   	Return NULL if none found.
proc fz_xml_find_down_match*(item: ptr fz_xml; tag: cstring; att: cstring;
                            match: cstring): ptr fz_xml {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the siblings of XML nodes starting with the first child
  ##   	of item looking for the first with the given tag, and with a
  ##   	matching attribute.
  ##   
  ##   	Return NULL if none found.
proc fz_deflate_bound*(ctx: ptr fz_context; size: uint): uint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Returns the upper bound on the
  ##   	size of flated data of length size.
proc fz_deflate*(ctx: ptr fz_context; dest: ptr cuchar; compressed_length: ptr uint;
                source: ptr cuchar; source_length: uint; level: fz_deflate_level) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Compress source_length bytes of data starting
  ##   	at source, into a buffer of lengthdestLen, starting at dest.
  ##   	compressed_length will be updated on exit to contain the size
  ##   	actually used.
proc fz_new_deflated_data*(ctx: ptr fz_context; compressed_length: ptr uint;
                          source: ptr cuchar; source_length: uint;
                          level: fz_deflate_level): ptr cuchar {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Compress source_length bytes of data starting
  ##   	at source, into a new memory block malloced for that purpose.
  ##   	compressed_length is updated on exit to contain the size used.
  ##   	Ownership of the block is returned from this function, and the
  ##   	caller is therefore responsible for freeing it. The block may be
  ##   	considerably larger than is actually required. The caller is
  ##   	free to fz_realloc it down if it wants to.
proc fz_new_deflated_data_from_buffer*(ctx: ptr fz_context;
                                      compressed_length: ptr uint;
                                      buffer: ptr fz_buffer;
                                      level: fz_deflate_level): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Compress the contents of a fz_buffer into a
  ##   	new block malloced for that purpose.compressed_length is
  ##   	updated on exit to contain the size used. Ownership of the block
  ##   	is returned from this function, and the caller is therefore
  ##   	responsible for freeing it. The block may be considerably larger
  ##   	than is actually required. The caller is free to fz_realloc it
  ##   	down if it wants to.
proc fz_compress_ccitt_fax_g3*(ctx: ptr fz_context; data: ptr cuchar; columns: cint;
                              rows: cint): ptr fz_buffer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Compress bitmap data as CCITT Group 3 1D fax image.
  ##   	Creates a stream assuming the default PDF parameters,
  ##   	except the number of columns.
proc fz_compress_ccitt_fax_g4*(ctx: ptr fz_context; data: ptr cuchar; columns: cint;
                              rows: cint): ptr fz_buffer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Compress bitmap data as CCITT Group 4 2D fax image.
  ##   	Creates a stream assuming the default PDF parameters, except
  ##   	K=-1 and the number of columns.
proc fz_keep_storable*(a1: ptr fz_context; a2: ptr fz_storable): pointer {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for a storable object.
  ##   	Returns the same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_storable*(a1: ptr fz_context; a2: ptr fz_storable) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for a storable object. When the
  ##   	reference count hits zero, the drop function for that object
  ##   	is called to free the object.
  ##   
  ##   	Never throws exceptions.
proc fz_keep_key_storable*(a1: ptr fz_context; a2: ptr fz_key_storable): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the (normal) reference count for a key storable
  ##   	object. Returns the same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_key_storable*(a1: ptr fz_context; a2: ptr fz_key_storable) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the (normal) reference count for a storable object.
  ##   	When the total reference count hits zero, the drop function for
  ##   	that object is called to free the object.
  ##   
  ##   	Never throws exceptions.
proc fz_keep_key_storable_key*(a1: ptr fz_context; a2: ptr fz_key_storable): pointer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the (key) reference count for a key storable
  ##   	object. Returns the same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_key_storable_key*(a1: ptr fz_context; a2: ptr fz_key_storable) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the (key) reference count for a storable object.
  ##   	When the total reference count hits zero, the drop function for
  ##   	that object is called to free the object.
  ##   
  ##   	Never throws exceptions.
proc fz_new_store_context*(ctx: ptr fz_context; max: uint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new store inside the context
  ##   
  ##   	max: The maximum size (in bytes) that the store is allowed to
  ##   	grow to. FZ_STORE_UNLIMITED means no limit.
proc fz_keep_store_context*(ctx: ptr fz_context): ptr fz_store {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for the store context. Returns
  ##   	the same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_store_context*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for the store context. When the
  ##   	reference count hits zero, the store context is freed.
  ##   
  ##   	Never throws exceptions.
proc fz_store_item*(ctx: ptr fz_context; key: pointer; val: pointer; itemsize: uint;
                   `type`: ptr fz_store_type): pointer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add an item to the store.
  ##   
  ##   	Add an item into the store, returning NULL for success. If an
  ##   	item with the same key is found in the store, then our item will
  ##   	not be inserted, and the function will return a pointer to that
  ##   	value instead. This function takes its own reference to val, as
  ##   	required (i.e. the caller maintains ownership of its own
  ##   	reference).
  ##   
  ##   	key: The key used to index the item.
  ##   
  ##   	val: The value to store.
  ##   
  ##   	itemsize: The size in bytes of the value (as counted towards the
  ##   	store size).
  ##   
  ##   	type: Functions used to manipulate the key.
proc fz_find_item*(ctx: ptr fz_context; drop: ptr fz_store_drop_fn; key: pointer;
                  `type`: ptr fz_store_type): pointer {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find an item within the store.
  ##   
  ##   	drop: The function used to free the value (to ensure we get a
  ##   	value of the correct type).
  ##   
  ##   	key: The key used to index the item.
  ##   
  ##   	type: Functions used to manipulate the key.
  ##   
  ##   	Returns NULL for not found, otherwise returns a pointer to the
  ##   	value indexed by key to which a reference has been taken.
proc fz_remove_item*(ctx: ptr fz_context; drop: ptr fz_store_drop_fn; key: pointer;
                    `type`: ptr fz_store_type) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Remove an item from the store.
  ##   
  ##   	If an item indexed by the given key exists in the store, remove
  ##   	it.
  ##   
  ##   	drop: The function used to free the value (to ensure we get a
  ##   	value of the correct type).
  ##   
  ##   	key: The key used to find the item to remove.
  ##   
  ##   	type: Functions used to manipulate the key.
proc fz_empty_store*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Evict every item from the store.
proc fz_store_scavenge*(ctx: ptr fz_context; size: uint; phase: ptr cint): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Internal function used as part of the scavenging
  ##   	allocator; when we fail to allocate memory, before returning a
  ##   	failure to the caller, we try to scavenge space within the store
  ##   	by evicting at least 'size' bytes. The allocator then retries.
  ##   
  ##   	size: The number of bytes we are trying to have free.
  ##   
  ##   	phase: What phase of the scavenge we are in. Updated on exit.
  ##   
  ##   	Returns non zero if we managed to free any memory.
proc fz_store_scavenge_external*(ctx: ptr fz_context; size: uint; phase: ptr cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	External function for callers to use
  ##   	to scavenge while trying allocations.
  ##   
  ##   	size: The number of bytes we are trying to have free.
  ##   
  ##   	phase: What phase of the scavenge we are in. Updated on exit.
  ##   
  ##   	Returns non zero if we managed to free any memory.
proc fz_shrink_store*(ctx: ptr fz_context; percent: cuint): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Evict items from the store until the total size of
  ##   	the objects in the store is reduced to a given percentage of its
  ##   	current size.
  ##   
  ##   	percent: %age of current size to reduce the store to.
  ##   
  ##   	Returns non zero if we managed to free enough memory, zero
  ##   	otherwise.
proc fz_filter_store*(ctx: ptr fz_context; fn: ptr fz_store_filter_fn; arg: pointer;
                     `type`: ptr fz_store_type) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Filter every element in the store with a matching type with the
  ##   	given function.
  ##   
  ##   	If the function returns 1 for an element, drop the element.
proc fz_debug_store*(ctx: ptr fz_context; `out`: ptr fz_output) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Output debugging information for the current state of the store
  ##   	to the given output channel.
proc fz_defer_reap_start*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the defer reap count.
  ##   
  ##   	No reap operations will take place (except for those
  ##   	triggered by an immediate failed malloc) until the
  ##   	defer reap count returns to 0.
  ##   
  ##   	Call this at the start of a process during which you
  ##   	potentially might drop many reapable objects.
  ##   
  ##   	It is vital that every fz_defer_reap_start is matched
  ##   	by a fz_defer_reap_end call.
proc fz_defer_reap_end*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the defer reap count.
  ##   
  ##   	If the defer reap count returns to 0, and the store
  ##   	has reapable objects in, a reap pass will begin.
  ##   
  ##   	Call this at the end of a process during which you
  ##   	potentially might drop many reapable objects.
  ##   
  ##   	It is vital that every fz_defer_reap_start is matched
  ##   	by a fz_defer_reap_end call.
proc fz_open_null_filter*(ctx: ptr fz_context; chain: ptr fz_stream; len: cint;
                         offset: int64): ptr fz_stream {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	The null filter reads a specified amount of data from the
  ##   	substream.
proc fz_open_range_filter*(ctx: ptr fz_context; chain: ptr fz_stream;
                          ranges: ptr fz_range; nranges: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	The range filter copies data from specified ranges of the
  ##   	chained stream.
proc fz_open_endstream_filter*(ctx: ptr fz_context; chain: ptr fz_stream; len: cint;
                              offset: int64): ptr fz_stream {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	The endstream filter reads a PDF substream, and starts to look
  ##   	for an 'endstream' token after the specified length.
proc fz_open_concat*(ctx: ptr fz_context; max: cint; pad: cint): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Concat filter concatenates several streams into one.
proc fz_concat_push_drop*(ctx: ptr fz_context; concat: ptr fz_stream;
                         chain: ptr fz_stream) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add a chained stream to the end of the concatenate filter.
  ##   
  ##   	Ownership of chain is passed in.
proc fz_open_arc4*(ctx: ptr fz_context; chain: ptr fz_stream; key: ptr cuchar;
                  keylen: cuint): ptr fz_stream {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	arc4 filter performs RC4 decoding of data read from the chained
  ##   	filter using the supplied key.
proc fz_open_aesd*(ctx: ptr fz_context; chain: ptr fz_stream; key: ptr cuchar;
                  keylen: cuint): ptr fz_stream {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	aesd filter performs AES decoding of data read from the chained
  ##   	filter using the supplied key.
proc fz_open_a85d*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	a85d filter performs ASCII 85 Decoding of data read
  ##   	from the chained filter.
proc fz_open_ahxd*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	ahxd filter performs ASCII Hex decoding of data read
  ##   	from the chained filter.
proc fz_open_rld*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	rld filter performs Run Length Decoding of data read
  ##   	from the chained filter.
proc fz_open_dctd*(ctx: ptr fz_context; chain: ptr fz_stream; color_transform: cint;
                  l2factor: cint; jpegtables: ptr fz_stream): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	dctd filter performs DCT (JPEG) decoding of data read
  ##   	from the chained filter.
  ##   
  ##   	color_transform implements the PDF color_transform option;
  ##   	use -1 (unset) as a default.
  ##   
  ##   	For subsampling on decode, set l2factor to the log2 of the
  ##   	reduction required (therefore 0 = full size decode).
  ##   
  ##   	jpegtables is an optional stream from which the JPEG tables
  ##   	can be read. Use NULL if not required.
proc fz_open_faxd*(ctx: ptr fz_context; chain: ptr fz_stream; k: cint; end_of_line: cint;
                  encoded_byte_align: cint; columns: cint; rows: cint;
                  end_of_block: cint; black_is_1: cint): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	faxd filter performs FAX decoding of data read from
  ##   	the chained filter.
  ##   
  ##   	k: see fax specification (fax default is 0).
  ##   
  ##   	end_of_line: whether we expect end of line markers (fax default
  ##   	is 0).
  ##   
  ##   	encoded_byte_align: whether we align to bytes after each line
  ##   	(fax default is 0).
  ##   
  ##   	columns: how many columns in the image (fax default is 1728).
  ##   
  ##   	rows: 0 for unspecified or the number of rows of data to expect.
  ##   
  ##   	end_of_block: whether we expect end of block markers (fax
  ##   	default is 1).
  ##   
  ##   	black_is_1: determines the polarity of the image (fax default is
  ##   	0).
proc fz_open_flated*(ctx: ptr fz_context; chain: ptr fz_stream; window_bits: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	flated filter performs LZ77 decoding (inflating) of data read
  ##   	from the chained filter.
  ##   
  ##   	window_bits: How large a decompression window to use. Typically
  ##   	15. A negative number, -n, means to use n bits, but to expect
  ##   	raw data with no header.
proc fz_open_lzwd*(ctx: ptr fz_context; chain: ptr fz_stream; early_change: cint;
                  min_bits: cint; reverse_bits: cint; old_tiff: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	lzwd filter performs LZW decoding of data read from the chained
  ##   	filter.
  ##   
  ##   	early_change: (Default 1) specifies whether to change codes 1
  ##   	bit early.
  ##   
  ##   	min_bits: (Default 9) specifies the minimum number of bits to
  ##   	use.
  ##   
  ##   	reverse_bits: (Default 0) allows for compatibility with gif and
  ##   	old style tiffs (1).
  ##   
  ##   	old_tiff: (Default 0) allows for different handling of the clear
  ##   	code, as found in old style tiffs.
proc fz_open_predict*(ctx: ptr fz_context; chain: ptr fz_stream; predictor: cint;
                     columns: cint; colors: cint; bpc: cint): ptr fz_stream {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	predict filter performs pixel prediction on data read from
  ##   	the chained filter.
  ##   
  ##   	predictor: 1 = copy, 2 = tiff, other = inline PNG predictor
  ##   
  ##   	columns: width of image in pixels
  ##   
  ##   	colors: number of components.
  ##   
  ##   	bpc: bits per component (typically 8)
proc fz_open_jbig2d*(ctx: ptr fz_context; chain: ptr fz_stream;
                    globals: ptr fz_jbig2_globals): ptr fz_stream {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Open a filter that performs jbig2 decompression on the chained
  ##   	stream, using the optional globals record.
proc fz_load_jbig2_globals*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_jbig2_globals {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a jbig2 globals record from a buffer.
  ##   
  ##   	Immutable once created.
proc fz_keep_jbig2_globals*(ctx: ptr fz_context; globals: ptr fz_jbig2_globals): ptr fz_jbig2_globals {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for a jbig2 globals record.
  ##   
  ##   	Never throws an exception.
proc fz_drop_jbig2_globals*(ctx: ptr fz_context; globals: ptr fz_jbig2_globals) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for a jbig2 globals record.
  ##   	When the reference count hits zero, the record is freed.
  ##   
  ##   	Never throws an exception.
proc fz_drop_jbig2_globals_imp*(ctx: ptr fz_context; globals: ptr fz_storable) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Special jbig2 globals drop function for use in implementing
  ##   	store support.
proc fz_open_sgilog16*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##    Extra filters for tiff
  ##   
  ##   	SGI Log 16bit (greyscale) decode from the chained filter.
  ##   	Decodes lines of w pixels to 8bpp greyscale.
proc fz_open_sgilog24*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SGI Log 24bit (LUV) decode from the chained filter.
  ##   	Decodes lines of w pixels to 8bpc rgb.
proc fz_open_sgilog32*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	SGI Log 32bit (LUV) decode from the chained filter.
  ##   	Decodes lines of w pixels to 8bpc rgb.
proc fz_open_thunder*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	4bit greyscale Thunderscan decoding from the chained filter.
  ##   	Decodes lines of w pixels to 8bpp greyscale.
proc fz_compressed_buffer_size*(buffer: ptr fz_compressed_buffer): uint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the storage size used for a buffer and its data.
  ##   	Used in implementing store handling.
  ##   
  ##   	Never throws exceptions.
proc fz_open_compressed_buffer*(ctx: ptr fz_context; a2: ptr fz_compressed_buffer): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a stream to read the decompressed version of a buffer.
proc fz_open_image_decomp_stream_from_buffer*(ctx: ptr fz_context;
    a2: ptr fz_compressed_buffer; l2factor: ptr cint): ptr fz_stream {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Open a stream to read the decompressed version of a buffer,
  ##   	with optional log2 subsampling.
  ##   
  ##   	l2factor = NULL for no subsampling, or a pointer to an integer
  ##   	containing the maximum log2 subsample factor acceptable (0 =
  ##   	none, 1 = halve dimensions, 2 = quarter dimensions etc). If
  ##   	non-NULL, thenl2factor will be updated on exit with the actual
  ##   	log2 subsample factor achieved.
proc fz_open_image_decomp_stream*(ctx: ptr fz_context; a2: ptr fz_stream;
                                 a3: ptr fz_compression_params; l2factor: ptr cint): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a stream to read the decompressed version of another stream
  ##   	with optional log2 subsampling.
proc fz_recognize_image_format*(ctx: ptr fz_context; p: array[8, cuchar]): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Recognise image format strings in the first 8 bytes from image
  ##   	data.
proc fz_drop_compressed_buffer*(ctx: ptr fz_context; buf: ptr fz_compressed_buffer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to a compressed buffer. Destroys the buffer
  ##   	and frees any storage/other references held by it.
  ##   
  ##   	Never throws exceptions.
proc fz_open_archive*(ctx: ptr fz_context; filename: cstring): ptr fz_archive {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a zip or tar archive
  ##   
  ##   	Open a file and identify its archive type based on the archive
  ##   	signature contained inside.
  ##   
  ##   	filename: a path to a file as it would be given to open(2).
proc fz_open_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open zip or tar archive stream.
  ##   
  ##   	Open an archive using a seekable stream object rather than
  ##   	opening a file or directory on disk.
proc fz_open_directory*(ctx: ptr fz_context; path: cstring): ptr fz_archive {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a directory as if it was an archive.
  ##   
  ##   	A special case where a directory is opened as if it was an
  ##   	archive.
  ##   
  ##   	Note that for directories it is not possible to retrieve the
  ##   	number of entries or list the entries. It is however possible
  ##   	to check if the archive has a particular entry.
  ##   
  ##   	path: a path to a directory as it would be given to opendir(3).
proc fz_is_directory*(ctx: ptr fz_context; path: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Determine if a given path is a directory.
proc fz_drop_archive*(ctx: ptr fz_context; arch: ptr fz_archive) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Drop the reference to an archive.
  ##   
  ##   	Closes and releases any memory or filehandles associated
  ##   	with the archive.
proc fz_archive_format*(ctx: ptr fz_context; arch: ptr fz_archive): cstring {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a pointer to a string describing the format of the
  ##   	archive.
  ##   
  ##   	The lifetime of the string is unspecified (in current
  ##   	implementations the string will persist until the archive
  ##   	is closed, but this is not guaranteed).
proc fz_count_archive_entries*(ctx: ptr fz_context; arch: ptr fz_archive): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Number of entries in archive.
  ##   
  ##   	Will always return a value >= 0.
  ##   
  ##   	May throw an exception if this type of archive cannot count the
  ##   	entries (such as a directory).
proc fz_list_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive; idx: cint): cstring {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get listed name of entry position idx.
  ##   
  ##   	idx: Must be a value >= 0 < return value from
  ##   	fz_count_archive_entries. If not in range NULL will be
  ##   	returned.
  ##   
  ##   	May throw an exception if this type of archive cannot list the
  ##   	entries (such as a directory).
proc fz_has_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive; name: cstring): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check if entry by given name exists.
  ##   
  ##   	If named entry does not exist 0 will be returned, if it does
  ##   	exist 1 is returned.
  ##   
  ##   	name: Entry name to look for, this must be an exact match to
  ##   	the entry name in the archive.
proc fz_open_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive; name: cstring): ptr fz_stream {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Opens an archive entry as a stream.
  ##   
  ##   	name: Entry name to look for, this must be an exact match to
  ##   	the entry name in the archive.
proc fz_read_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive; name: cstring): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Reads all bytes in an archive entry
  ##   	into a buffer.
  ##   
  ##   	name: Entry name to look for, this must be an exact match to
  ##   	the entry name in the archive.
proc fz_is_tar_archive*(ctx: ptr fz_context; file: ptr fz_stream): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	fz_archive: tar implementation
  ##   
  ##   
  ##   	Detect if stream object is a tar achieve.
  ##   
  ##   	Assumes that the stream object is seekable.
proc fz_open_tar_archive*(ctx: ptr fz_context; filename: cstring): ptr fz_archive {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a tar archive file.
  ##   
  ##   	An exception is throw if the file is not a tar archive as
  ##   	indicated by the presence of a tar signature.
  ##   
  ##   	filename: a path to a tar archive file as it would be given to
  ##   	open(2).
proc fz_open_tar_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a tar archive stream.
  ##   
  ##   	Open an archive using a seekable stream object rather than
  ##   	opening a file or directory on disk.
  ##   
  ##   	An exception is throw if the stream is not a tar archive as
  ##   	indicated by the presence of a tar signature.
proc fz_is_zip_archive*(ctx: ptr fz_context; file: ptr fz_stream): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	fz_archive: zip implementation
  ##   
  ##   
  ##   	Detect if stream object is a zip archive.
  ##   
  ##   	Assumes that the stream object is seekable.
proc fz_open_zip_archive*(ctx: ptr fz_context; path: cstring): ptr fz_archive {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a zip archive file.
  ##   
  ##   	An exception is throw if the file is not a zip archive as
  ##   	indicated by the presence of a zip signature.
  ##   
  ##   	filename: a path to a zip archive file as it would be given to
  ##   	open(2).
proc fz_open_zip_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a zip archive stream.
  ##   
  ##   	Open an archive using a seekable stream object rather than
  ##   	opening a file or directory on disk.
  ##   
  ##   	An exception is throw if the stream is not a zip archive as
  ##   	indicated by the presence of a zip signature.
proc fz_new_zip_writer*(ctx: ptr fz_context; filename: cstring): ptr fz_zip_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new zip writer that writes to a given file.
  ##   
  ##   	Open an archive using a seekable stream object rather than
  ##   	opening a file or directory on disk.
proc fz_new_zip_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_zip_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new zip writer that writes to a given output stream.
proc fz_write_zip_entry*(ctx: ptr fz_context; zip: ptr fz_zip_writer; name: cstring;
                        buf: ptr fz_buffer; compress: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Given a buffer of data, (optionally) compress it, and add it to
  ##   	the zip file with the given name.
proc fz_close_zip_writer*(ctx: ptr fz_context; zip: ptr fz_zip_writer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Close the zip file for writing.
  ##   
  ##   	This flushes any pending data to the file. This can throw
  ##   	exceptions.
proc fz_drop_zip_writer*(ctx: ptr fz_context; zip: ptr fz_zip_writer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Drop the reference to the zipfile.
  ##   
  ##   	In common with other 'drop' methods, this will never throw an
  ##   	exception.
proc fz_new_archive_of_size*(ctx: ptr fz_context; file: ptr fz_stream; size: cint): ptr fz_archive {.
    importc, cdecl, impfitzHdr.}
proc fz_lookup_rendering_intent*(name: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Map from (case sensitive) rendering intent string to enumeration
  ##   	value.
proc fz_rendering_intent_name*(ri: cint): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Map from enumerated rendering intent to string.
  ##   
  ##   	The returned string is static and therefore must not be freed.
proc fz_new_colorspace*(ctx: ptr fz_context; `type`: fz_colorspace_type; flags: cint;
                       n: cint; name: cstring): ptr fz_colorspace {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Creates a new colorspace instance and returns a reference.
  ##   
  ##   	No internal checking is done that the colorspace type (e.g.
  ##   	CMYK) matches with the flags (e.g. FZ_COLORSPACE_HAS_CMYK) or
  ##   	colorant count (n) or name.
  ##   
  ##   	The reference should be dropped when it is finished with.
  ##   
  ##   	Colorspaces are immutable once created (with the exception of
  ##   	setting up colorant names for separation spaces).
proc fz_keep_colorspace*(ctx: ptr fz_context; colorspace: ptr fz_colorspace): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for the colorspace.
  ##   
  ##   	Returns the same pointer. Never throws an exception.
proc fz_drop_colorspace*(ctx: ptr fz_context; colorspace: ptr fz_colorspace) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drops a reference to the colorspace.
  ##   
  ##   	When the reference count reaches zero, the colorspace is
  ##   	destroyed.
proc fz_new_indexed_colorspace*(ctx: ptr fz_context; base: ptr fz_colorspace;
                               high: cint; lookup: ptr cuchar): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create an indexed colorspace.
  ##   
  ##   	The supplied lookup table is high palette entries long. Each
  ##   	entry is n bytes long, where n is given by the number of
  ##   	colorants in the base colorspace, one byte per colorant.
  ##   
  ##   	Ownership of lookup is passed it; it will be freed on
  ##   	destruction, so must be heap allocated.
  ##   
  ##   	The colorspace will keep an additional reference to the base
  ##   	colorspace that will be dropped on destruction.
  ##   
  ##   	The returned reference should be dropped when it is finished
  ##   	with.
  ##   
  ##   	Colorspaces are immutable once created.
proc fz_new_icc_colorspace*(ctx: ptr fz_context; `type`: fz_colorspace_type;
                           flags: cint; name: cstring; buf: ptr fz_buffer): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a colorspace from an ICC profile supplied in buf.
  ##   
  ##   	Limited checking is done to ensure that the colorspace type is
  ##   	appropriate for the supplied ICC profile.
  ##   
  ##   	An additional reference is taken to buf, which will be dropped
  ##   	on destruction. Ownership is NOT passed in.
  ##   
  ##   	The returned reference should be dropped when it is finished
  ##   	with.
  ##   
  ##   	Colorspaces are immutable once created.
proc fz_new_cal_gray_colorspace*(ctx: ptr fz_context; wp: array[3, cfloat];
                                bp: array[3, cfloat]; gamma: cfloat): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a calibrated gray colorspace.
  ##   
  ##   	The returned reference should be dropped when it is finished
  ##   	with.
  ##   
  ##   	Colorspaces are immutable once created.
proc fz_new_cal_rgb_colorspace*(ctx: ptr fz_context; wp: array[3, cfloat];
                               bp: array[3, cfloat]; gamma: array[3, cfloat];
                               matrix: array[9, cfloat]): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a calibrated rgb colorspace.
  ##   
  ##   	The returned reference should be dropped when it is finished
  ##   	with.
  ##   
  ##   	Colorspaces are immutable once created.
proc fz_colorspace_name*(ctx: ptr fz_context; cs: ptr fz_colorspace): cstring {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Query the name of a colorspace.
  ##   
  ##   	The returned string has the same lifespan as the colorspace
  ##   	does. Caller should not free it.
proc fz_colorspace_n*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Query the number of colorants in a colorspace.
proc fz_colorspace_is_subtractive*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	True for CMYK, Separation and DeviceN colorspaces.
proc fz_colorspace_device_n_has_only_cmyk*(ctx: ptr fz_context;
    cs: ptr fz_colorspace): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	True if DeviceN color space has only colorants from the CMYK set.
proc fz_colorspace_device_n_has_cmyk*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	True if DeviceN color space has cyan magenta yellow or black as
  ##   	one of its colorants.
proc fz_colorspace_is_gray*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Tests for particular types of colorspaces
proc fz_colorspace_is_rgb*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.importc,
    cdecl, impfitzHdr.}
proc fz_colorspace_is_cmyk*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.importc,
    cdecl, impfitzHdr.}
proc fz_colorspace_is_lab*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.importc,
    cdecl, impfitzHdr.}
proc fz_colorspace_is_indexed*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_colorspace_is_device_n*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_colorspace_is_device*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_colorspace_is_device_gray*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_colorspace_is_device_cmyk*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_colorspace_is_lab_icc*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_is_valid_blend_colorspace*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check to see that a colorspace is appropriate to be used as
  ##   	a blending space (i.e. only grey, rgb or cmyk).
proc fz_device_gray*(ctx: ptr fz_context): ptr fz_colorspace {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve global default colorspaces.
  ##   
  ##   	These return borrowed references that should not be dropped,
  ##   	unless they are kept first.
proc fz_device_rgb*(ctx: ptr fz_context): ptr fz_colorspace {.importc, cdecl, impfitzHdr.}
proc fz_device_bgr*(ctx: ptr fz_context): ptr fz_colorspace {.importc, cdecl, impfitzHdr.}
proc fz_device_cmyk*(ctx: ptr fz_context): ptr fz_colorspace {.importc, cdecl,
    impfitzHdr.}
proc fz_device_lab*(ctx: ptr fz_context): ptr fz_colorspace {.importc, cdecl, impfitzHdr.}
proc fz_colorspace_name_colorant*(ctx: ptr fz_context; cs: ptr fz_colorspace; n: cint;
                                 name: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Assign a name for a given colorant in a colorspace.
  ##   
  ##   	Used while initially setting up a colorspace. The string is
  ##   	copied into local storage, so need not be retained by the
  ##   	caller.
proc fz_colorspace_colorant*(ctx: ptr fz_context; cs: ptr fz_colorspace; n: cint): cstring {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve a the name for a colorant.
  ##   
  ##   	Returns a pointer with the same lifespan as the colorspace.
proc fz_clamp_color*(ctx: ptr fz_context; cs: ptr fz_colorspace; `in`: ptr cfloat;
                    `out`: ptr cfloat) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##    Color conversion
  ##   
  ##   	Clamp the samples in a color to the correct ranges for a
  ##   	given colorspace.
proc fz_convert_color*(ctx: ptr fz_context; ss: ptr fz_colorspace; sv: ptr cfloat;
                      ds: ptr fz_colorspace; dv: ptr cfloat; `is`: ptr fz_colorspace;
                      params: fz_color_params) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert color values sv from colorspace ss into colorvalues dv
  ##   	for colorspace ds, via an optional intervening space is,
  ##   	respecting the given color_params.
proc fz_new_default_colorspaces*(ctx: ptr fz_context): ptr fz_default_colorspaces {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new default colorspace structure with values inherited
  ##   	from the context, and return a reference to it.
  ##   
  ##   	These can be overridden using fz_set_default_xxxx.
  ##   
  ##   	These should not be overridden while more than one caller has
  ##   	the reference for fear of race conditions.
  ##   
  ##   	The caller should drop this reference once finished with it.
proc fz_keep_default_colorspaces*(ctx: ptr fz_context;
                                 default_cs: ptr fz_default_colorspaces): ptr fz_default_colorspaces {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Keep an additional reference to the default colorspaces
  ##   	structure.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_default_colorspaces*(ctx: ptr fz_context;
                                 default_cs: ptr fz_default_colorspaces) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to the default colorspaces structure. When the
  ##   	reference count reaches 0, the references it holds internally
  ##   	to the underlying colorspaces will be dropped, and the structure
  ##   	will be destroyed.
  ##   
  ##   	Never throws exceptions.
proc fz_clone_default_colorspaces*(ctx: ptr fz_context;
                                  base: ptr fz_default_colorspaces): ptr fz_default_colorspaces {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Returns a reference to a newly cloned default colorspaces
  ##   	structure.
  ##   
  ##   	The new clone may safely be altered without fear of race
  ##   	conditions as the caller is the only reference holder.
proc fz_default_gray*(ctx: ptr fz_context; default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve default colorspaces (typically page local).
  ##   
  ##   	If default_cs is non NULL, the default is retrieved from there,
  ##   	otherwise the global default is retrieved.
  ##   
  ##   	These return borrowed references that should not be dropped,
  ##   	unless they are kept first.
proc fz_default_rgb*(ctx: ptr fz_context; default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
proc fz_default_cmyk*(ctx: ptr fz_context; default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
proc fz_default_output_intent*(ctx: ptr fz_context;
                              default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
proc fz_set_default_gray*(ctx: ptr fz_context;
                         default_cs: ptr fz_default_colorspaces;
                         cs: ptr fz_colorspace) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set new defaults within the default colorspace structure.
  ##   
  ##   	New references are taken to the new default, and references to
  ##   	the old defaults dropped.
  ##   
  ##   	Never throws exceptions.
proc fz_set_default_rgb*(ctx: ptr fz_context;
                        default_cs: ptr fz_default_colorspaces;
                        cs: ptr fz_colorspace) {.importc, cdecl, impfitzHdr.}
proc fz_set_default_cmyk*(ctx: ptr fz_context;
                         default_cs: ptr fz_default_colorspaces;
                         cs: ptr fz_colorspace) {.importc, cdecl, impfitzHdr.}
proc fz_set_default_output_intent*(ctx: ptr fz_context;
                                  default_cs: ptr fz_default_colorspaces;
                                  cs: ptr fz_colorspace) {.importc, cdecl, impfitzHdr.}
proc fz_drop_colorspace_imp*(ctx: ptr fz_context; cs_priv: ptr fz_storable) {.importc,
    cdecl, impfitzHdr.}
proc fz_new_separations*(ctx: ptr fz_context; controllable: cint): ptr fz_separations {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new separations structure (initially empty)
proc fz_keep_separations*(ctx: ptr fz_context; sep: ptr fz_separations): ptr fz_separations {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for a separations structure.
  ##   	Returns the same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_separations*(ctx: ptr fz_context; sep: ptr fz_separations) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for a separations structure.
  ##   	When the reference count hits zero, the separations structure
  ##   	is freed.
  ##   
  ##   	Never throws exceptions.
proc fz_add_separation*(ctx: ptr fz_context; sep: ptr fz_separations; name: cstring;
                       cs: ptr fz_colorspace; cs_channel: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Add a separation (null terminated name, colorspace)
proc fz_add_separation_equivalents*(ctx: ptr fz_context; sep: ptr fz_separations;
                                   rgba: uint32; cmyk: uint32; name: cstring) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add a separation with equivalents (null terminated name,
  ##   	colorspace)
  ##   
  ##   	(old, deprecated)
proc fz_set_separation_behavior*(ctx: ptr fz_context; sep: ptr fz_separations;
                                separation: cint; behavior: fz_separation_behavior) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Control the rendering of a given separation.
proc fz_separation_current_behavior*(ctx: ptr fz_context; sep: ptr fz_separations;
                                    separation: cint): fz_separation_behavior {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Test for the current behavior of a separation.
proc fz_separation_name*(ctx: ptr fz_context; sep: ptr fz_separations; separation: cint): cstring {.
    importc, cdecl, impfitzHdr.}
proc fz_count_separations*(ctx: ptr fz_context; sep: ptr fz_separations): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_count_active_separations*(ctx: ptr fz_context; seps: ptr fz_separations): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of active separations.
proc fz_clone_separations_for_overprint*(ctx: ptr fz_context;
                                        seps: ptr fz_separations): ptr fz_separations {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a separations object with all the spots in the input
  ##   	separations object that are set to composite, reset to be
  ##   	enabled. If there ARE no spots in the object, this returns
  ##   	NULL. If the object already has all its spots enabled, then
  ##   	just returns another handle on the same object.
proc fz_convert_separation_colors*(ctx: ptr fz_context; src_cs: ptr fz_colorspace;
                                  src_color: ptr cfloat;
                                  dst_seps: ptr fz_separations;
                                  dst_cs: ptr fz_colorspace; dst_color: ptr cfloat;
                                  color_params: fz_color_params) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Convert a color given in terms of one colorspace,
  ##   	to a color in terms of another colorspace/separations.
proc fz_separation_equivalent*(ctx: ptr fz_context; seps: ptr fz_separations;
                              idx: cint; dst_cs: ptr fz_colorspace;
                              dst_color: ptr cfloat; prf: ptr fz_colorspace;
                              color_params: fz_color_params) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Get the equivalent separation color in a given colorspace.
proc fz_pixmap_bbox*(ctx: ptr fz_context; pix: ptr fz_pixmap): fz_irect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the bounding box for a pixmap.
proc fz_pixmap_width*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the width of the pixmap in pixels.
proc fz_pixmap_height*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the height of the pixmap in pixels.
proc fz_pixmap_x*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the x value of the pixmap in pixels.
proc fz_pixmap_y*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the y value of the pixmap in pixels.
proc fz_new_pixmap*(ctx: ptr fz_context; cs: ptr fz_colorspace; w: cint; h: cint;
                   seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new pixmap, with its origin at (0,0)
  ##   
  ##   	cs: The colorspace to use for the pixmap, or NULL for an alpha
  ##   	plane/mask.
  ##   
  ##   	w: The width of the pixmap (in pixels)
  ##   
  ##   	h: The height of the pixmap (in pixels)
  ##   
  ##   	seps: Details of separations.
  ##   
  ##   	alpha: 0 for no alpha, 1 for alpha.
  ##   
  ##   	Returns a pointer to the new pixmap. Throws exception on failure
  ##   	to allocate.
proc fz_new_pixmap_with_bbox*(ctx: ptr fz_context; colorspace: ptr fz_colorspace;
                             bbox: fz_irect; seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a pixmap of a given size, location and pixel format.
  ##   
  ##   	The bounding box specifies the size of the created pixmap and
  ##   	where it will be located. The colorspace determines the number
  ##   	of components per pixel. Alpha is always present. Pixmaps are
  ##   	reference counted, so drop references using fz_drop_pixmap.
  ##   
  ##   	colorspace: Colorspace format used for the created pixmap. The
  ##   	pixmap will keep a reference to the colorspace.
  ##   
  ##   	bbox: Bounding box specifying location/size of created pixmap.
  ##   
  ##   	seps: Details of separations.
  ##   
  ##   	alpha: 0 for no alpha, 1 for alpha.
  ##   
  ##   	Returns a pointer to the new pixmap. Throws exception on failure
  ##   	to allocate.
proc fz_new_pixmap_with_data*(ctx: ptr fz_context; colorspace: ptr fz_colorspace;
                             w: cint; h: cint; seps: ptr fz_separations; alpha: cint;
                             stride: cint; samples: ptr cuchar): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new pixmap, with its origin at
  ##   	(0,0) using the supplied data block.
  ##   
  ##   	cs: The colorspace to use for the pixmap, or NULL for an alpha
  ##   	plane/mask.
  ##   
  ##   	w: The width of the pixmap (in pixels)
  ##   
  ##   	h: The height of the pixmap (in pixels)
  ##   
  ##   	seps: Details of separations.
  ##   
  ##   	alpha: 0 for no alpha, 1 for alpha.
  ##   
  ##   	stride: The byte offset from the pixel data in a row to the
  ##   	pixel data in the next row.
  ##   
  ##   	samples: The data block to keep the samples in.
  ##   
  ##   	Returns a pointer to the new pixmap. Throws exception on failure to
  ##   	allocate.
proc fz_new_pixmap_with_bbox_and_data*(ctx: ptr fz_context;
                                      colorspace: ptr fz_colorspace;
                                      rect: fz_irect; seps: ptr fz_separations;
                                      alpha: cint; samples: ptr cuchar): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a pixmap of a given size, location and pixel format,
  ##   	using the supplied data block.
  ##   
  ##   	The bounding box specifies the size of the created pixmap and
  ##   	where it will be located. The colorspace determines the number
  ##   	of components per pixel. Alpha is always present. Pixmaps are
  ##   	reference counted, so drop references using fz_drop_pixmap.
  ##   
  ##   	colorspace: Colorspace format used for the created pixmap. The
  ##   	pixmap will keep a reference to the colorspace.
  ##   
  ##   	rect: Bounding box specifying location/size of created pixmap.
  ##   
  ##   	seps: Details of separations.
  ##   
  ##   	alpha: Number of alpha planes (0 or 1).
  ##   
  ##   	samples: The data block to keep the samples in.
  ##   
  ##   	Returns a pointer to the new pixmap. Throws exception on failure
  ##   	to allocate.
proc fz_new_pixmap_from_pixmap*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                               rect: ptr fz_irect): ptr fz_pixmap {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new pixmap that represents a subarea of the specified
  ##   	pixmap. A reference is taken to this pixmap that will be dropped
  ##   	on destruction.
  ##   
  ##   	The supplied rectangle must be wholly contained within the
  ##   	original pixmap.
  ##   
  ##   	Returns a pointer to the new pixmap. Throws exception on failure
  ##   	to allocate.
proc fz_clone_pixmap*(ctx: ptr fz_context; old: ptr fz_pixmap): ptr fz_pixmap {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Clone a pixmap, copying the pixels and associated data to new
  ##   	storage.
  ##   
  ##   	The reference count of 'old' is unchanged.
proc fz_keep_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap): ptr fz_pixmap {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for the pixmap. The same pointer
  ##   	is returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for the pixmap. When the
  ##   	reference count hits 0, the pixmap is freed.
  ##   
  ##   	Never throws exceptions.
proc fz_pixmap_colorspace*(ctx: ptr fz_context; pix: ptr fz_pixmap): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the colorspace of a pixmap
  ##   
  ##   	Returns colorspace.
proc fz_pixmap_components*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of components in a pixmap.
  ##   
  ##   	Returns the number of components (including spots and alpha).
proc fz_pixmap_colorants*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of colorants in a pixmap.
  ##   
  ##   	Returns the number of colorants (components, less any spots and
  ##   	alpha).
proc fz_pixmap_spots*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of spots in a pixmap.
  ##   
  ##   	Returns the number of spots (components, less colorants and
  ##   	alpha). Does not throw exceptions.
proc fz_pixmap_alpha*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of alpha planes in a pixmap.
  ##   
  ##   	Returns the number of alphas. Does not throw exceptions.
proc fz_pixmap_samples*(ctx: ptr fz_context; pix: ptr fz_pixmap): ptr cuchar {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Returns a pointer to the pixel data of a pixmap.
  ##   
  ##   	Returns the pointer.
proc fz_pixmap_stride*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of bytes in a row in the pixmap.
proc fz_set_pixmap_resolution*(ctx: ptr fz_context; pix: ptr fz_pixmap; xres: cint;
                              yres: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Set the pixels per inch resolution of the pixmap.
proc fz_clear_pixmap_with_value*(ctx: ptr fz_context; pix: ptr fz_pixmap; value: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Clears a pixmap with the given value.
  ##   
  ##   	pix: The pixmap to clear.
  ##   
  ##   	value: Values in the range 0 to 255 are valid. Each component
  ##   	sample for each pixel in the pixmap will be set to this value,
  ##   	while alpha will always be set to 255 (non-transparent).
  ##   
  ##   	This function is horrible, and should be removed from the
  ##   	API and replaced with a less magic one.
proc fz_fill_pixmap_with_color*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                               colorspace: ptr fz_colorspace; color: ptr cfloat;
                               color_params: fz_color_params) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Fill pixmap with solid color.
proc fz_clear_pixmap_rect_with_value*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                     value: cint; r: fz_irect) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Clears a subrect of a pixmap with the given value.
  ##   
  ##   	pix: The pixmap to clear.
  ##   
  ##   	value: Values in the range 0 to 255 are valid. Each component
  ##   	sample for each pixel in the pixmap will be set to this value,
  ##   	while alpha will always be set to 255 (non-transparent).
  ##   
  ##   	r: the rectangle.
proc fz_clear_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Sets all components (including alpha) of
  ##   	all pixels in a pixmap to 0.
  ##   
  ##   	pix: The pixmap to clear.
proc fz_invert_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Invert all the pixels in a pixmap. All components (process and
  ##   	spots) of all pixels are inverted (except alpha, which is
  ##   	unchanged).
proc fz_invert_pixmap_luminance*(ctx: ptr fz_context; pix: ptr fz_pixmap) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Transform the pixels in a pixmap so that luminance of each
  ##   	pixel is inverted, and the chrominance remains unchanged (as
  ##   	much as accuracy allows).
  ##   
  ##   	All components of all pixels are inverted (except alpha, which
  ##   	is unchanged). Only supports Grey and RGB bitmaps.
proc fz_tint_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap; black: cint; white: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Tint all the pixels in an RGB, BGR, or Gray pixmap.
  ##   
  ##   	black: Map black to this hexadecimal RGB color.
  ##   
  ##   	white: Map white to this hexadecimal RGB color.
proc fz_invert_pixmap_rect*(ctx: ptr fz_context; image: ptr fz_pixmap; rect: fz_irect) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Invert all the pixels in a given rectangle of a
  ##   	pixmap. All components of all pixels in the rectangle are
  ##   	inverted (except alpha, which is unchanged).
proc fz_gamma_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap; gamma: cfloat) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Apply gamma correction to a pixmap. All components
  ##   	of all pixels are modified (except alpha, which is unchanged).
  ##   
  ##   	gamma: The gamma value to apply; 1.0 for no change.
proc fz_convert_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                       cs_des: ptr fz_colorspace; prf: ptr fz_colorspace;
                       default_cs: ptr fz_default_colorspaces;
                       color_params: fz_color_params; keep_alpha: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert an existing pixmap to a desired
  ##   	colorspace. Other properties of the pixmap, such as resolution
  ##   	and position are copied to the converted pixmap.
  ##   
  ##   	pix: The pixmap to convert.
  ##   
  ##   	default_cs: If NULL pix->colorspace is used. It is possible that
  ##   	the data may need to be interpreted as one of the color spaces
  ##   	in default_cs.
  ##   
  ##   	cs_des: Desired colorspace, may be NULL to denote alpha-only.
  ##   
  ##   	prf: Proofing color space through which we need to convert.
  ##   
  ##   	color_params: Parameters that may be used in conversion (e.g.
  ##   	ri).
  ##   
  ##   	keep_alpha: If 0 any alpha component is removed, otherwise
  ##   	alpha is kept if present in the pixmap.
proc fz_is_pixmap_monochrome*(ctx: ptr fz_context; pixmap: ptr fz_pixmap): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check if the pixmap is a 1-channel image containing samples with
  ##   	only values 0 and 255
proc fz_alpha_from_gray*(ctx: ptr fz_context; gray: ptr fz_pixmap): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
proc fz_decode_tile*(ctx: ptr fz_context; pix: ptr fz_pixmap; decode: ptr cfloat) {.
    importc, cdecl, impfitzHdr.}
proc fz_md5_pixmap*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                   digest: array[16, cuchar]) {.importc, cdecl, impfitzHdr.}
proc fz_warp_pixmap*(ctx: ptr fz_context; src: ptr fz_pixmap;
                    points: array[4, fz_point]; width: cint; height: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##    Create a new pixmap from a warped section of another.
  ##   
  ##    Colorspace, resolution etc are inherited from the original.
  ##    points give the corner points within the original pixmap of a
  ##    (convex) quadrilateral. These corner points will be 'warped' to be
  ##    the corner points of the returned bitmap, which will have the given
  ##    width/height.
proc fz_keep_bitmap*(ctx: ptr fz_context; bit: ptr fz_bitmap): ptr fz_bitmap {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Take an additional reference to the bitmap. The same pointer
  ##   	is returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_bitmap*(ctx: ptr fz_context; bit: ptr fz_bitmap) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to the bitmap. When the reference count reaches
  ##   	zero, the bitmap will be destroyed.
  ##   
  ##   	Never throws exceptions.
proc fz_new_bitmap_from_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                               ht: ptr fz_halftone): ptr fz_bitmap {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Make a bitmap from a pixmap and a halftone.
  ##   
  ##   	pix: The pixmap to generate from. Currently must be a single
  ##   	color component with no alpha.
  ##   
  ##   	ht: The halftone to use. NULL implies the default halftone.
  ##   
  ##   	Returns the resultant bitmap. Throws exceptions in the case of
  ##   	failure to allocate.
proc fz_new_bitmap_from_pixmap_band*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                    ht: ptr fz_halftone; band_start: cint): ptr fz_bitmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Make a bitmap from a pixmap and a
  ##   	halftone, allowing for the position of the pixmap within an
  ##   	overall banded rendering.
  ##   
  ##   	pix: The pixmap to generate from. Currently must be a single
  ##   	color component with no alpha.
  ##   
  ##   	ht: The halftone to use. NULL implies the default halftone.
  ##   
  ##   	band_start: Vertical offset within the overall banded rendering
  ##   	(in pixels)
  ##   
  ##   	Returns the resultant bitmap. Throws exceptions in the case of
  ##   	failure to allocate.
proc fz_new_bitmap*(ctx: ptr fz_context; w: cint; h: cint; n: cint; xres: cint; yres: cint): ptr fz_bitmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new bitmap.
  ##   
  ##   	w, h: Width and Height for the bitmap
  ##   
  ##   	n: Number of color components (assumed to be a divisor of 8)
  ##   
  ##   	xres, yres: X and Y resolutions (in pixels per inch).
  ##   
  ##   	Returns pointer to created bitmap structure. The bitmap
  ##   	data is uninitialised.
proc fz_bitmap_details*(bitmap: ptr fz_bitmap; w: ptr cint; h: ptr cint; n: ptr cint;
                       stride: ptr cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve details of a given bitmap.
  ##   
  ##   	bitmap: The bitmap to query.
  ##   
  ##   	w: Pointer to storage to retrieve width (or NULL).
  ##   
  ##   	h: Pointer to storage to retrieve height (or NULL).
  ##   
  ##   	n: Pointer to storage to retrieve number of color components (or
  ##   	NULL).
  ##   
  ##   	stride: Pointer to storage to retrieve bitmap stride (or NULL).
proc fz_clear_bitmap*(ctx: ptr fz_context; bit: ptr fz_bitmap) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Set the entire bitmap to 0.
  ##   
  ##   	Never throws exceptions.
proc fz_default_halftone*(ctx: ptr fz_context; num_comps: cint): ptr fz_halftone {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a 'default' halftone structure
  ##   	for the given number of components.
  ##   
  ##   	num_comps: The number of components to use.
  ##   
  ##   	Returns a simple default halftone. The default halftone uses
  ##   	the same halftone tile for each plane, which may not be ideal
  ##   	for all purposes.
proc fz_keep_halftone*(ctx: ptr fz_context; half: ptr fz_halftone): ptr fz_halftone {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Take an additional reference to the halftone. The same pointer
  ##   	is returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_halftone*(ctx: ptr fz_context; ht: ptr fz_halftone) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to the halftone. When the reference count
  ##   	reaches zero, the halftone is destroyed.
  ##   
  ##   	Never throws exceptions.
proc fz_get_pixmap_from_image*(ctx: ptr fz_context; image: ptr fz_image;
                              subarea: ptr fz_irect; ctm: ptr fz_matrix; w: ptr cint;
                              h: ptr cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Called to get a handle to a pixmap from an image.
  ##   
  ##   	image: The image to retrieve a pixmap from.
  ##   
  ##   	color_params: The color parameters (or NULL for defaults).
  ##   
  ##   	subarea: The subarea of the image that we actually care about
  ##   	(or NULL to indicate the whole image).
  ##   
  ##   	trans: Optional, unless subarea is given. If given, then on
  ##   	entry this is the transform that will be applied to the complete
  ##   	image. It should be updated on exit to the transform to apply to
  ##   	the given subarea of the image. This is used to calculate the
  ##   	desired width/height for subsampling.
  ##   
  ##   	w: If non-NULL, a pointer to an int to be updated on exit to the
  ##   	width (in pixels) that the scaled output will cover.
  ##   
  ##   	h: If non-NULL, a pointer to an int to be updated on exit to the
  ##   	height (in pixels) that the scaled output will cover.
  ##   
  ##   	Returns a non NULL pixmap pointer. May throw exceptions.
proc fz_keep_image*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_image {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the (normal) reference count for an image. Returns the
  ##   	same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_image*(ctx: ptr fz_context; image: ptr fz_image) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the (normal) reference count for an image. When the
  ##   	total (normal + key) reference count reaches zero, the image and
  ##   	its resources are freed.
  ##   
  ##   	Never throws exceptions.
proc fz_keep_image_store_key*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_image {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the store key reference for an image. Returns the same
  ##   	pointer. (This is the count of references for an image held by
  ##   	keys in the image store).
  ##   
  ##   	Never throws exceptions.
proc fz_drop_image_store_key*(ctx: ptr fz_context; image: ptr fz_image) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the store key reference count for an image. When the
  ##   	total (normal + key) reference count reaches zero, the image and
  ##   	its resources are freed.
  ##   
  ##   	Never throws exceptions.
proc fz_new_image_of_size*(ctx: ptr fz_context; w: cint; h: cint; bpc: cint;
                          colorspace: ptr fz_colorspace; xres: cint; yres: cint;
                          interpolate: cint; imagemask: cint; decode: ptr cfloat;
                          colorkey: ptr cint; mask: ptr fz_image; size: uint;
                          get_pixmap: ptr fz_image_get_pixmap_fn;
                          get_size: ptr fz_image_get_size_fn;
                          drop: ptr fz_drop_image_fn): ptr fz_image {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Internal function to make a new fz_image structure
  ##   	for a derived class.
  ##   
  ##   	w,h: Width and height of the created image.
  ##   
  ##   	bpc: Bits per component.
  ##   
  ##   	colorspace: The colorspace (determines the number of components,
  ##   	and any color conversions required while decoding).
  ##   
  ##   	xres, yres: The X and Y resolutions respectively.
  ##   
  ##   	interpolate: 1 if interpolation should be used when decoding
  ##   	this image, 0 otherwise.
  ##   
  ##   	imagemask: 1 if this is an imagemask (i.e. transparent), 0
  ##   	otherwise.
  ##   
  ##   	decode: NULL, or a pointer to to a decode array. The default
  ##   	decode array is [0 1] (repeated n times, for n color components).
  ##   
  ##   	colorkey: NULL, or a pointer to a colorkey array. The default
  ##   	colorkey array is [0 255] (repeated n times, for n color
  ##   	components).
  ##   
  ##   	mask: NULL, or another image to use as a mask for this one.
  ##   	A new reference is taken to this image. Supplying a masked
  ##   	image as a mask to another image is illegal!
  ##   
  ##   	size: The size of the required allocated structure (the size of
  ##   	the derived structure).
  ##   
  ##   	get: The function to be called to obtain a decoded pixmap.
  ##   
  ##   	get_size: The function to be called to return the storage size
  ##   	used by this image.
  ##   
  ##   	drop: The function to be called to dispose of this image once
  ##   	the last reference is dropped.
  ##   
  ##   	Returns a pointer to an allocated structure of the required size,
  ##   	with the first sizeof(fz_image) bytes initialised as appropriate
  ##   	given the supplied parameters, and the other bytes set to zero.
proc fz_new_image_from_compressed_buffer*(ctx: ptr fz_context; w: cint; h: cint;
    bpc: cint; colorspace: ptr fz_colorspace; xres: cint; yres: cint; interpolate: cint;
    imagemask: cint; decode: ptr cfloat; colorkey: ptr cint;
    buffer: ptr fz_compressed_buffer; mask: ptr fz_image): ptr fz_image {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create an image based on
  ##   	the data in the supplied compressed buffer.
  ##   
  ##   	w,h: Width and height of the created image.
  ##   
  ##   	bpc: Bits per component.
  ##   
  ##   	colorspace: The colorspace (determines the number of components,
  ##   	and any color conversions required while decoding).
  ##   
  ##   	xres, yres: The X and Y resolutions respectively.
  ##   
  ##   	interpolate: 1 if interpolation should be used when decoding
  ##   	this image, 0 otherwise.
  ##   
  ##   	imagemask: 1 if this is an imagemask (i.e. transparency bitmap
  ##   	mask), 0 otherwise.
  ##   
  ##   	decode: NULL, or a pointer to to a decode array. The default
  ##   	decode array is [0 1] (repeated n times, for n color components).
  ##   
  ##   	colorkey: NULL, or a pointer to a colorkey array. The default
  ##   	colorkey array is [0 255] (repeated n times, for n color
  ##   	components).
  ##   
  ##   	buffer: Buffer of compressed data and compression parameters.
  ##   	Ownership of this reference is passed in.
  ##   
  ##   	mask: NULL, or another image to use as a mask for this one.
  ##   	A new reference is taken to this image. Supplying a masked
  ##   	image as a mask to another image is illegal!
proc fz_new_image_from_pixmap*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                              mask: ptr fz_image): ptr fz_image {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create an image from the given
  ##   	pixmap.
  ##   
  ##   	pixmap: The pixmap to base the image upon. A new reference
  ##   	to this is taken.
  ##   
  ##   	mask: NULL, or another image to use as a mask for this one.
  ##   	A new reference is taken to this image. Supplying a masked
  ##   	image as a mask to another image is illegal!
proc fz_new_image_from_buffer*(ctx: ptr fz_context; buffer: ptr fz_buffer): ptr fz_image {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new image from a
  ##   	buffer of data, inferring its type from the format
  ##   	of the data.
proc fz_new_image_from_file*(ctx: ptr fz_context; path: cstring): ptr fz_image {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new image from the contents
  ##   	of a file, inferring its type from the format of the
  ##   	data.
proc fz_drop_image_imp*(ctx: ptr fz_context; image: ptr fz_storable) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Internal destructor exposed for fz_store integration.
proc fz_drop_image_base*(ctx: ptr fz_context; image: ptr fz_image) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Internal destructor for the base image class members.
  ##   
  ##   	Exposed to allow derived image classes to be written.
proc fz_decomp_image_from_stream*(ctx: ptr fz_context; stm: ptr fz_stream;
                                 image: ptr fz_compressed_image;
                                 subarea: ptr fz_irect; indexed: cint; l2factor: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decode a subarea of a compressed image at a given l2factor
  ##   	from the given stream.
proc fz_convert_indexed_pixmap_to_base*(ctx: ptr fz_context; src: ptr fz_pixmap): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert pixmap from indexed to base colorspace.
  ##   
  ##   	This creates a new bitmap containing the converted pixmap data.
proc fz_convert_separation_pixmap_to_base*(ctx: ptr fz_context; src: ptr fz_pixmap): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert pixmap from DeviceN/Separation to base colorspace.
  ##   
  ##   	This creates a new bitmap containing the converted pixmap data.
proc fz_image_size*(ctx: ptr fz_context; im: ptr fz_image): uint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the size of the storage used by an image.
proc fz_image_resolution*(image: ptr fz_image; xres: ptr cint; yres: ptr cint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Request the natural resolution
  ##   	of an image.
  ##   
  ##   	xres, yres: Pointers to ints to be updated with the
  ##   	natural resolution of an image (or a sensible default
  ##   	if not encoded).
proc fz_compressed_image_buffer*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_compressed_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve the underlying compressed data for an image.
  ##   
  ##   	Returns a pointer to the underlying data buffer for an image,
  ##   	or NULL if this image is not based upon a compressed data
  ##   	buffer.
  ##   
  ##   	This is not a reference counted structure, so no reference is
  ##   	returned. Lifespan is limited to that of the image itself.
proc fz_set_compressed_image_buffer*(ctx: ptr fz_context;
                                    cimg: ptr fz_compressed_image;
                                    buf: ptr fz_compressed_buffer) {.importc, cdecl,
    impfitzHdr.}
proc fz_pixmap_image_tile*(ctx: ptr fz_context; cimg: ptr fz_pixmap_image): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve the underlying fz_pixmap for an image.
  ##   
  ##   	Returns a pointer to the underlying fz_pixmap for an image,
  ##   	or NULL if this image is not based upon an fz_pixmap.
  ##   
  ##   	No reference is returned. Lifespan is limited to that of
  ##   	the image itself. If required, use fz_keep_pixmap to take
  ##   	a reference to keep it longer.
proc fz_set_pixmap_image_tile*(ctx: ptr fz_context; cimg: ptr fz_pixmap_image;
                              pix: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
proc fz_load_jpx*(ctx: ptr fz_context; data: ptr cuchar; size: uint;
                 cs: ptr fz_colorspace): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
  ## ::
  ##    Implementation details: subject to change.
  ##   
  ##   	Exposed for PDF.
proc fz_load_tiff_subimage_count*(ctx: ptr fz_context; buf: ptr cuchar; len: uint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Exposed for CBZ.
proc fz_load_tiff_subimage*(ctx: ptr fz_context; buf: ptr cuchar; len: uint;
                           subimage: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
proc fz_load_pnm_subimage_count*(ctx: ptr fz_context; buf: ptr cuchar; len: uint): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_load_pnm_subimage*(ctx: ptr fz_context; buf: ptr cuchar; len: uint;
                          subimage: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
proc fz_load_jbig2_subimage_count*(ctx: ptr fz_context; buf: ptr cuchar; len: uint): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_load_jbig2_subimage*(ctx: ptr fz_context; buf: ptr cuchar; len: uint;
                            subimage: cint): ptr fz_pixmap {.importc, cdecl,
    impfitzHdr.}
proc fz_load_bmp_subimage_count*(ctx: ptr fz_context; buf: ptr cuchar; len: uint): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_load_bmp_subimage*(ctx: ptr fz_context; buf: ptr cuchar; len: uint;
                          subimage: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
proc fz_keep_shade*(ctx: ptr fz_context; shade: ptr fz_shade): ptr fz_shade {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for the shade structure. The
  ##   	same pointer is returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_shade*(ctx: ptr fz_context; shade: ptr fz_shade) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for the shade structure. When
  ##   	the reference count hits zero, the structure is freed.
  ##   
  ##   	Never throws exceptions.
proc fz_bound_shade*(ctx: ptr fz_context; shade: ptr fz_shade; ctm: fz_matrix): fz_rect {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Bound a given shading.
  ##   
  ##   	shade: The shade to bound.
  ##   
  ##   	ctm: The transform to apply to the shade before bounding.
  ##   
  ##   	r: Pointer to storage to put the bounds in.
  ##   
  ##   	Returns r, updated to contain the bounds for the shading.
proc fz_paint_shade*(ctx: ptr fz_context; shade: ptr fz_shade;
                    override_cs: ptr fz_colorspace; ctm: fz_matrix;
                    dest: ptr fz_pixmap; color_params: fz_color_params;
                    bbox: fz_irect; eop: ptr fz_overprint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Render a shade to a given pixmap.
  ##   
  ##   	shade: The shade to paint.
  ##   
  ##   	override_cs: NULL, or colorspace to override the shades
  ##   	inbuilt colorspace.
  ##   
  ##   	ctm: The transform to apply.
  ##   
  ##   	dest: The pixmap to render into.
  ##   
  ##   	color_params: The color rendering settings
  ##   
  ##   	bbox: Pointer to a bounding box to limit the rendering
  ##   	of the shade.
  ##   
  ##   	op: NULL, or pointer to overprint bitmap.
proc fz_process_shade*(ctx: ptr fz_context; shade: ptr fz_shade; ctm: fz_matrix;
                      scissor: fz_rect; prepare: ptr fz_shade_prepare_fn;
                      process: ptr fz_shade_process_fn; process_arg: pointer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Process a shade, using supplied callback functions. This
  ##   	decomposes the shading to a mesh (even ones that are not
  ##   	natively meshes, such as linear or radial shadings), and
  ##   	processes triangles from those meshes.
  ##   
  ##   	shade: The shade to process.
  ##   
  ##   	ctm: The transform to use
  ##   
  ##   	prepare: Callback function to 'prepare' each vertex.
  ##   	This function is passed an array of floats, and populates
  ##   	a fz_vertex structure.
  ##   
  ##   	process: This function is passed 3 pointers to vertex
  ##   	structures, and actually performs the processing (typically
  ##   	filling the area between the vertexes).
  ##   
  ##   	process_arg: An opaque argument passed through from caller
  ##   	to callback functions.
proc fz_drop_shade_imp*(ctx: ptr fz_context; shade: ptr fz_storable) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##    Implementation details: subject to change.
  ##   
  ##   	Internal function to destroy a
  ##   	shade. Only exposed for use with the fz_store.
  ##   
  ##   	shade: The reference to destroy.
proc fz_iso8859_1_from_unicode*(u: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_iso8859_7_from_unicode*(u: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_koi8u_from_unicode*(u: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_windows_1250_from_unicode*(u: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_windows_1251_from_unicode*(u: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_windows_1252_from_unicode*(u: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_unicode_from_glyph_name*(name: cstring): cint {.importc, cdecl, impfitzHdr.}
proc fz_unicode_from_glyph_name_strict*(name: cstring): cint {.importc, cdecl,
    impfitzHdr.}
proc fz_duplicate_glyph_names_from_unicode*(unicode: cint): ptr cstring {.importc,
    cdecl, impfitzHdr.}
proc fz_glyph_name_from_unicode_sc*(unicode: cint): cstring {.importc, cdecl,
    impfitzHdr.}
proc fz_font_ft_face*(ctx: ptr fz_context; font: ptr fz_font): pointer {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Fonts come in two variants:
  ##   	Regular fonts are handled by FreeType.
  ##   	Type 3 fonts have callbacks to the interpreter.
  ##   
  ##   
  ##   	Retrieve the FT_Face handle
  ##   	for the font.
  ##   
  ##   	font: The font to query
  ##   
  ##   	Returns the FT_Face handle for the font, or NULL
  ##   	if not a freetype handled font. (Cast to void
  ##   	to avoid nasty header exposure).
proc fz_font_t3_procs*(ctx: ptr fz_context; font: ptr fz_font): ptr ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve the Type3 procs
  ##   	for a font.
  ##   
  ##   	font: The font to query
  ##   
  ##   	Returns the t3_procs pointer. Will be NULL for a
  ##   	non type-3 font.
proc fz_font_flags*(font: ptr fz_font): ptr fz_font_flags_t {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve a pointer to the font flags
  ##   	for a given font. These can then be updated as required.
  ##   
  ##   	font: The font to query
  ##   
  ##   	Returns a pointer to the flags structure (or NULL, if
  ##   	the font is NULL).
proc fz_font_shaper_data*(ctx: ptr fz_context; font: ptr fz_font): ptr fz_shaper_data_t {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve a pointer to the shaper data
  ##   	structure for the given font.
  ##   
  ##   	font: The font to query.
  ##   
  ##   	Returns a pointer to the shaper data structure (or NULL if
  ##   	font is NULL).
proc fz_font_name*(ctx: ptr fz_context; font: ptr fz_font): cstring {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve a pointer to the name of the font.
  ##   
  ##   	font: The font to query.
  ##   
  ##   	Returns a pointer to an internal copy of the font name.
  ##   	Will never be NULL, but may be the empty string.
proc fz_font_is_bold*(ctx: ptr fz_context; font: ptr fz_font): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Query whether the font flags say that this font is bold.
proc fz_font_is_italic*(ctx: ptr fz_context; font: ptr fz_font): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Query whether the font flags say that this font is italic.
proc fz_font_is_serif*(ctx: ptr fz_context; font: ptr fz_font): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Query whether the font flags say that this font is serif.
proc fz_font_is_monospaced*(ctx: ptr fz_context; font: ptr fz_font): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Query whether the font flags say that this font is monospaced.
proc fz_font_bbox*(ctx: ptr fz_context; font: ptr fz_font): fz_rect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve a pointer to the font bbox.
  ##   
  ##   	font: The font to query.
  ##   
  ##   	Returns a pointer to the font bbox (or NULL if the
  ##   	font is NULL).
proc fz_install_load_system_font_funcs*(ctx: ptr fz_context;
                                       f: ptr fz_load_system_font_fn;
                                       f_cjk: ptr fz_load_system_cjk_font_fn;
    f_fallback: ptr fz_load_system_fallback_font_fn) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Install functions to allow MuPDF to request fonts from the
  ##   	system.
  ##   
  ##   	Only one set of hooks can be in use at a time.
proc fz_load_system_font*(ctx: ptr fz_context; name: cstring; bold: cint; italic: cint;
                         needs_exact_metrics: cint): ptr fz_font {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Attempt to load a given font from the system.
  ##   
  ##   	name: The name of the desired font.
  ##   
  ##   	bold: 1 if bold desired, 0 otherwise.
  ##   
  ##   	italic: 1 if italic desired, 0 otherwise.
  ##   
  ##   	needs_exact_metrics: 1 if an exact metrical match is required,
  ##   	0 otherwise.
  ##   
  ##   	Returns a new font handle, or NULL if no matching font was found
  ##   	(or on error).
proc fz_load_system_cjk_font*(ctx: ptr fz_context; name: cstring; ordering: cint;
                             serif: cint): ptr fz_font {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Attempt to load a given font from
  ##   	the system.
  ##   
  ##   	name: The name of the desired font.
  ##   
  ##   	ordering: The ordering to load the font from (e.g. FZ_ADOBE_KOREA)
  ##   
  ##   	serif: 1 if serif desired, 0 otherwise.
  ##   
  ##   	Returns a new font handle, or NULL if no matching font was found
  ##   	(or on error).
proc fz_lookup_builtin_font*(ctx: ptr fz_context; name: cstring; bold: cint;
                            italic: cint; len: ptr cint): ptr cuchar {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Search the builtin fonts for a match.
  ##   	Whether a given font is present or not will depend on the
  ##   	configuration in which MuPDF is built.
  ##   
  ##   	name: The name of the font desired.
  ##   
  ##   	bold: 1 if bold desired, 0 otherwise.
  ##   
  ##   	italic: 1 if italic desired, 0 otherwise.
  ##   
  ##   	len: Pointer to a place to receive the length of the discovered
  ##   	font buffer.
  ##   
  ##   	Returns a pointer to the font file data, or NULL if not present.
proc fz_lookup_base14_font*(ctx: ptr fz_context; name: cstring; len: ptr cint): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the builtin base14 fonts for a match.
  ##   	Whether a given font is present or not will depend on the
  ##   	configuration in which MuPDF is built.
  ##   
  ##   	name: The name of the font desired.
  ##   
  ##   	len: Pointer to a place to receive the length of the discovered
  ##   	font buffer.
  ##   
  ##   	Returns a pointer to the font file data, or NULL if not present.
proc fz_lookup_cjk_font*(ctx: ptr fz_context; ordering: cint; len: ptr cint;
                        index: ptr cint): ptr cuchar {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the builtin cjk fonts for a match.
  ##   	Whether a font is present or not will depend on the
  ##   	configuration in which MuPDF is built.
  ##   
  ##   	ordering: The desired ordering of the font (e.g. FZ_ADOBE_KOREA).
  ##   
  ##   	len: Pointer to a place to receive the length of the discovered
  ##   	font buffer.
  ##   
  ##   	Returns a pointer to the font file data, or NULL if not present.
proc fz_lookup_cjk_font_by_language*(ctx: ptr fz_context; lang: cstring;
                                    len: ptr cint; subfont: ptr cint): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the builtin cjk fonts for a match for a given language.
  ##   	Whether a font is present or not will depend on the
  ##   	configuration in which MuPDF is built.
  ##   
  ##   	lang: Pointer to a (case sensitive) language string (e.g.
  ##   	"ja", "ko", "zh-Hant" etc).
  ##   
  ##   	len: Pointer to a place to receive the length of the discovered
  ##   	font buffer.
  ##   
  ##   	subfont: Pointer to a place to store the subfont index of the
  ##   	discovered font.
  ##   
  ##   	Returns a pointer to the font file data, or NULL if not present.
proc fz_lookup_cjk_ordering_by_language*(name: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the matching FZ_ADOBE_ ordering
  ##   	for the given language tag, such as "zh-Hant", "zh-Hans", "ja", or "ko".
proc fz_lookup_noto_font*(ctx: ptr fz_context; script: cint; lang: cint; len: ptr cint;
                         subfont: ptr cint): ptr cuchar {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the builtin noto fonts for a match.
  ##   	Whether a font is present or not will depend on the
  ##   	configuration in which MuPDF is built.
  ##   
  ##   	script: The script desired (e.g. UCDN_SCRIPT_KATAKANA).
  ##   
  ##   	lang: The language desired (e.g. FZ_LANG_ja).
  ##   
  ##   	len: Pointer to a place to receive the length of the discovered
  ##   	font buffer.
  ##   
  ##   	Returns a pointer to the font file data, or NULL if not present.
proc fz_lookup_noto_math_font*(ctx: ptr fz_context; len: ptr cint): ptr cuchar {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search the builtin noto fonts specific symbol fonts.
  ##   	Whether a font is present or not will depend on the
  ##   	configuration in which MuPDF is built.
proc fz_lookup_noto_music_font*(ctx: ptr fz_context; len: ptr cint): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
proc fz_lookup_noto_symbol1_font*(ctx: ptr fz_context; len: ptr cint): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
proc fz_lookup_noto_symbol2_font*(ctx: ptr fz_context; len: ptr cint): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
proc fz_lookup_noto_emoji_font*(ctx: ptr fz_context; len: ptr cint): ptr cuchar {.
    importc, cdecl, impfitzHdr.}
proc fz_load_fallback_font*(ctx: ptr fz_context; script: cint; language: cint;
                           serif: cint; bold: cint; italic: cint): ptr fz_font {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Try to load a fallback font for the
  ##   	given combination of font attributes. Whether a font is
  ##   	present or not will depend on the configuration in which
  ##   	MuPDF is built.
  ##   
  ##   	script: The script desired (e.g. UCDN_SCRIPT_KATAKANA).
  ##   
  ##   	language: The language desired (e.g. FZ_LANG_ja).
  ##   
  ##   	serif: 1 if serif desired, 0 otherwise.
  ##   
  ##   	bold: 1 if bold desired, 0 otherwise.
  ##   
  ##   	italic: 1 if italic desired, 0 otherwise.
  ##   
  ##   	Returns a new font handle, or NULL if not available.
proc fz_new_type3_font*(ctx: ptr fz_context; name: cstring; matrix: fz_matrix): ptr fz_font {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new (empty) type3 font.
  ##   
  ##   	name: Name of font (or NULL).
  ##   
  ##   	matrix: Font matrix.
  ##   
  ##   	Returns a new font handle, or throws exception on
  ##   	allocation failure.
proc fz_new_font_from_memory*(ctx: ptr fz_context; name: cstring; data: ptr cuchar;
                             len: cint; index: cint; use_glyph_bbox: cint): ptr fz_font {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new font from a font
  ##   	file in memory.
  ##   
  ##   	name: Name of font (leave NULL to use name from font).
  ##   
  ##   	data: Pointer to the font file data.
  ##   
  ##   	len: Length of the font file data.
  ##   
  ##   	index: Which font from the file to load (0 for default).
  ##   
  ##   	use_glyph_box: 1 if we should use the glyph bbox, 0 otherwise.
  ##   
  ##   	Returns new font handle, or throws exception on error.
proc fz_new_font_from_buffer*(ctx: ptr fz_context; name: cstring;
                             buffer: ptr fz_buffer; index: cint; use_glyph_bbox: cint): ptr fz_font {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new font from a font file in a fz_buffer.
  ##   
  ##   	name: Name of font (leave NULL to use name from font).
  ##   
  ##   	buffer: Buffer to load from.
  ##   
  ##   	index: Which font from the file to load (0 for default).
  ##   
  ##   	use_glyph_box: 1 if we should use the glyph bbox, 0 otherwise.
  ##   
  ##   	Returns new font handle, or throws exception on error.
proc fz_new_font_from_file*(ctx: ptr fz_context; name: cstring; path: cstring;
                           index: cint; use_glyph_bbox: cint): ptr fz_font {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new font from a font file.
  ##   
  ##   	name: Name of font (leave NULL to use name from font).
  ##   
  ##   	path: File path to load from.
  ##   
  ##   	index: Which font from the file to load (0 for default).
  ##   
  ##   	use_glyph_box: 1 if we should use the glyph bbox, 0 otherwise.
  ##   
  ##   	Returns new font handle, or throws exception on error.
proc fz_new_base14_font*(ctx: ptr fz_context; name: cstring): ptr fz_font {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new font from one of the built-in fonts.
proc fz_new_cjk_font*(ctx: ptr fz_context; ordering: cint): ptr fz_font {.importc, cdecl,
    impfitzHdr.}
proc fz_new_builtin_font*(ctx: ptr fz_context; name: cstring; is_bold: cint;
                         is_italic: cint): ptr fz_font {.importc, cdecl, impfitzHdr.}
proc fz_keep_font*(ctx: ptr fz_context; font: ptr fz_font): ptr fz_font {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Add a reference to an existing fz_font.
  ##   
  ##   	font: The font to add a reference to.
  ##   
  ##   	Returns the same font.
proc fz_drop_font*(ctx: ptr fz_context; font: ptr fz_font) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to a fz_font, destroying the
  ##   	font when the last reference is dropped.
  ##   
  ##   	font: The font to drop a reference to.
proc fz_set_font_bbox*(ctx: ptr fz_context; font: ptr fz_font; xmin: cfloat;
                      ymin: cfloat; xmax: cfloat; ymax: cfloat) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Set the font bbox.
  ##   
  ##   	font: The font to set the bbox for.
  ##   
  ##   	xmin, ymin, xmax, ymax: The bounding box.
proc fz_bound_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint; trm: fz_matrix): fz_rect {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a bbox for a given glyph in a font.
  ##   
  ##   	font: The font to look for the glyph in.
  ##   
  ##   	gid: The glyph to bound.
  ##   
  ##   	trm: The matrix to apply to the glyph before bounding.
  ##   
  ##   	r: Pointer to a fz_rect to use for storage.
  ##   
  ##   	Returns r, after filling it in with the bounds of the given
  ##   	glyph.
proc fz_glyph_cacheable*(ctx: ptr fz_context; font: ptr fz_font; gid: cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Determine if a given glyph in a font
  ##   	is cacheable. Certain glyphs in a type 3 font cannot safely
  ##   	be cached, as their appearance depends on the enclosing
  ##   	graphic state.
  ##   
  ##   	font: The font to look for the glyph in.
  ##   
  ##   	gif: The glyph to query.
  ##   
  ##   	Returns non-zero if cacheable, 0 if not.
proc fz_run_t3_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint; trm: fz_matrix;
                     dev: ptr fz_device) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Run a glyph from a Type3 font to
  ##   	a given device.
  ##   
  ##   	font: The font to find the glyph in.
  ##   
  ##   	gid: The glyph to run.
  ##   
  ##   	trm: The transform to apply.
  ##   
  ##   	dev: The device to render onto.
proc fz_advance_glyph*(ctx: ptr fz_context; font: ptr fz_font; glyph: cint; wmode: cint): cfloat {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the advance for a given glyph.
  ##   
  ##   	font: The font to look for the glyph in.
  ##   
  ##   	glyph: The glyph to find the advance for.
  ##   
  ##   	wmode: 1 for vertical mode, 0 for horizontal.
  ##   
  ##   	Returns the advance for the glyph.
proc fz_encode_character*(ctx: ptr fz_context; font: ptr fz_font; unicode: cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the glyph id for a given unicode
  ##   	character within a font.
  ##   
  ##   	font: The font to look for the unicode character in.
  ##   
  ##   	unicode: The unicode character to encode.
  ##   
  ##   	Returns the glyph id for the given unicode value, or 0 if
  ##   	unknown.
proc fz_encode_character_sc*(ctx: ptr fz_context; font: ptr fz_font; unicode: cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Encode character, preferring small-caps variant if available.
  ##   
  ##   	font: The font to look for the unicode character in.
  ##   
  ##   	unicode: The unicode character to encode.
  ##   
  ##   	Returns the glyph id for the given unicode value, or 0 if
  ##   	unknown.
proc fz_encode_character_by_glyph_name*(ctx: ptr fz_context; font: ptr fz_font;
                                       glyphname: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Encode character.
  ##   
  ##   	Either by direct lookup of glyphname within a font, or, failing
  ##   	that, by mapping glyphname to unicode and thence to the glyph
  ##   	index within the given font.
  ##   
  ##   	Returns zero for type3 fonts.
proc fz_encode_character_with_fallback*(ctx: ptr fz_context; font: ptr fz_font;
                                       unicode: cint; script: cint; language: cint;
                                       out_font: ptr ptr fz_font): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the glyph id for
  ##   	a given unicode character within a font, falling back to
  ##   	an alternative if not found.
  ##   
  ##   	font: The font to look for the unicode character in.
  ##   
  ##   	unicode: The unicode character to encode.
  ##   
  ##   	script: The script in use.
  ##   
  ##   	language: The language in use.
  ##   
  ##   	out_font: The font handle in which the given glyph represents
  ##   	the requested unicode character. The caller does not own the
  ##   	reference it is passed, so should call fz_keep_font if it is
  ##   	not simply to be used immediately.
  ##   
  ##   	Returns the glyph id for the given unicode value in the supplied
  ##   	font (and setsout_font to font) if it is present. Otherwise
  ##   	an alternative fallback font (based on script/language) is
  ##   	searched for. If the glyph is found therein,out_font is set
  ##   	to this reference, and the glyph reference is returned. If it
  ##   	cannot be found anywhere, the function returns 0.
proc fz_get_glyph_name*(ctx: ptr fz_context; font: ptr fz_font; glyph: cint;
                       buf: cstring; size: cint) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the name of a glyph
  ##   
  ##   	font: The font to look for the glyph in.
  ##   
  ##   	glyph: The glyph id to look for.
  ##   
  ##   	buf: Pointer to a buffer for the name to be inserted into.
  ##   
  ##   	size: The size of the buffer.
  ##   
  ##   	If a font contains a name table, then the name of the glyph
  ##   	will be returned in the supplied buffer. Otherwise a name
  ##   	is synthesised. The name will be truncated to fit in
  ##   	the buffer.
proc fz_font_ascender*(ctx: ptr fz_context; font: ptr fz_font): cfloat {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve font ascender in ems.
proc fz_font_descender*(ctx: ptr fz_context; font: ptr fz_font): cfloat {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve font descender in ems.
proc fz_font_digest*(ctx: ptr fz_context; font: ptr fz_font; digest: array[16, cuchar]) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve the MD5 digest for the font's data.
proc fz_decouple_type3_font*(ctx: ptr fz_context; font: ptr fz_font; t3doc: pointer) {.
    importc, cdecl, impfitzHdr.}
proc ft_error_string*(err: cint): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	map an FT error number to a
  ##   	static string.
  ##   
  ##   	err: The error number to lookup.
  ##   
  ##   	Returns a pointer to a static textual representation
  ##   	of a freetype error.
proc ft_char_index*(face: pointer; cid: cint): cint {.importc, cdecl, impfitzHdr.}
proc ft_name_index*(face: pointer; name: cstring): cint {.importc, cdecl, impfitzHdr.}
proc fz_hb_lock*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Internal functions for our Harfbuzz integration
  ##   	to work around the lack of thread safety.
  ##   
  ##   
  ##   	Lock against Harfbuzz being called
  ##   	simultaneously in several threads. This reuses
  ##   	FZ_LOCK_FREETYPE.
proc fz_hb_unlock*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Unlock after a Harfbuzz call. This reuses
  ##   	FZ_LOCK_FREETYPE.
proc fz_walk_path*(ctx: ptr fz_context; path: ptr fz_path; walker: ptr fz_path_walker;
                  arg: pointer) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Walk the segments of a path, calling the
  ##   	appropriate callback function from a given set for each
  ##   	segment of the path.
  ##   
  ##   	path: The path to walk.
  ##   
  ##   	walker: The set of callback functions to use. The first
  ##   	4 callback pointers in the set must be non-NULL. The
  ##   	subsequent ones can either be supplied, or can be left
  ##   	as NULL, in which case the top 4 functions will be
  ##   	called as appropriate to simulate them.
  ##   
  ##   	arg: An opaque argument passed in to each callback.
  ##   
  ##   	Exceptions will only be thrown if the underlying callback
  ##   	functions throw them.
proc fz_new_path*(ctx: ptr fz_context): ptr fz_path {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new (empty) path structure.
proc fz_keep_path*(ctx: ptr fz_context; path: ptr fz_path): ptr fz_path {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count. Returns the same pointer.
  ##   
  ##   	All paths can be kept, regardless of their packing type.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_path*(ctx: ptr fz_context; path: ptr fz_path) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count. When the reference count hits
  ##   	zero, free the path.
  ##   
  ##   	All paths can be dropped, regardless of their packing type.
  ##   	Packed paths do not own the blocks into which they are packed
  ##   	so dropping them does not free those blocks.
  ##   
  ##   	Never throws exceptions.
proc fz_trim_path*(ctx: ptr fz_context; path: ptr fz_path) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Minimise the internal storage used by a path.
  ##   
  ##   	As paths are constructed, the internal buffers
  ##   	grow. To avoid repeated reallocations they
  ##   	grow with some spare space. Once a path has
  ##   	been fully constructed, this call allows the
  ##   	excess space to be trimmed.
proc fz_packed_path_size*(path: ptr fz_path): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of bytes required to pack a path.
proc fz_pack_path*(ctx: ptr fz_context; pack: ptr uint8; max: uint; path: ptr fz_path): uint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Pack a path into the given block.
  ##   	To minimise the size of paths, this function allows them to be
  ##   	packed into a buffer with other information. Paths can be used
  ##   	interchangeably regardless of how they are packed.
  ##   
  ##   	pack: Pointer to a block of data to pack the path into. Should
  ##   	be aligned by the caller to the same alignment as required for
  ##   	a fz_path pointer.
  ##   
  ##   	max: The number of bytes available in the block.
  ##   	If max < sizeof(fz_path) then an exception will
  ##   	be thrown. If max >= the value returned by
  ##   	fz_packed_path_size, then this call will never
  ##   	fail, except in low memory situations with large
  ##   	paths.
  ##   
  ##   	path: The path to pack.
  ##   
  ##   	Returns the number of bytes within the block used. Callers can
  ##   	access the packed path data by casting the value of pack on
  ##   	entry to be a fz_path.
  ##   
  ##   	Throws exceptions on failure to allocate, or if
  ##   	max < sizeof(fz_path).
  ##   
  ##   	Implementation details: Paths can be 'unpacked', 'flat', or
  ##   	'open'. Standard paths, as created are 'unpacked'. Paths that
  ##   	will pack into less than max bytes will be packed as 'flat',
  ##   	unless they are too large (where large indicates that they
  ##   	exceed some private implementation defined limits, currently
  ##   	including having more than 256 coordinates or commands).
  ##   
  ##   	Large paths are 'open' packed as a header into the given block,
  ##   	plus pointers to other data blocks.
  ##   
  ##   	Users should not have to care about whether paths are 'open'
  ##   	or 'flat' packed. Simply pack a path (if required), and then
  ##   	forget about the details.
proc fz_clone_path*(ctx: ptr fz_context; path: ptr fz_path): ptr fz_path {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Clone the data for a path.
  ##   
  ##   	This is used in preference to fz_keep_path when a whole
  ##   	new copy of a path is required, rather than just a shared
  ##   	pointer. This probably indicates that the path is about to
  ##   	be modified.
  ##   
  ##   	path: path to clone.
  ##   
  ##   	Throws exceptions on failure to allocate.
proc fz_currentpoint*(ctx: ptr fz_context; path: ptr fz_path): fz_point {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the current point that a path has
  ##   	reached or (0,0) if empty.
  ##   
  ##   	path: path to return the current point of.
proc fz_moveto*(ctx: ptr fz_context; path: ptr fz_path; x: cfloat; y: cfloat) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'moveto' command to a path.
  ##   	This 'opens' a path.
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x, y: The coordinate to move to.
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_lineto*(ctx: ptr fz_context; path: ptr fz_path; x: cfloat; y: cfloat) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'lineto' command to an open path.
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x, y: The coordinate to line to.
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_rectto*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat; x1: cfloat;
               y1: cfloat) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'rectto' command to an open path.
  ##   
  ##   	The rectangle is equivalent to:
  ##   		moveto x0 y0
  ##   		lineto x1 y0
  ##   		lineto x1 y1
  ##   		lineto x0 y1
  ##   		closepath
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x0, y0: First corner of the rectangle.
  ##   
  ##   	x1, y1: Second corner of the rectangle.
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_quadto*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat; x1: cfloat;
               y1: cfloat) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'quadto' command to an open path. (For a
  ##   	quadratic bezier).
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x0, y0: The control coordinates for the quadratic curve.
  ##   
  ##   	x1, y1: The end coordinates for the quadratic curve.
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_curveto*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat;
                x1: cfloat; y1: cfloat; x2: cfloat; y2: cfloat) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'curveto' command to an open path. (For a
  ##   	cubic bezier).
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x0, y0: The coordinates of the first control point for the
  ##   	curve.
  ##   
  ##   	x1, y1: The coordinates of the second control point for the
  ##   	curve.
  ##   
  ##   	x2, y2: The end coordinates for the curve.
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_curvetov*(ctx: ptr fz_context; path: ptr fz_path; x1: cfloat; y1: cfloat;
                 x2: cfloat; y2: cfloat) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'curvetov' command to an open path. (For a
  ##   	cubic bezier with the first control coordinate equal to
  ##   	the start point).
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x1, y1: The coordinates of the second control point for the
  ##   	curve.
  ##   
  ##   	x2, y2: The end coordinates for the curve.
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_curvetoy*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat;
                 x2: cfloat; y2: cfloat) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Append a 'curvetoy' command to an open path. (For a
  ##   	cubic bezier with the second control coordinate equal to
  ##   	the end point).
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	x0, y0: The coordinates of the first control point for the
  ##   	curve.
  ##   
  ##   	x2, y2: The end coordinates for the curve (and the second
  ##   	control coordinate).
  ##   
  ##   	Throws exceptions on failure to allocate, or attempting to
  ##   	modify a packed path.
proc fz_closepath*(ctx: ptr fz_context; path: ptr fz_path) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Close the current subpath.
  ##   
  ##   	path: The path to modify.
  ##   
  ##   	Throws exceptions on failure to allocate, attempting to modify
  ##   	a packed path, and illegal path closes (i.e. closing a non open
  ##   	path).
proc fz_transform_path*(ctx: ptr fz_context; path: ptr fz_path; transform: fz_matrix) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Transform a path by a given
  ##   	matrix.
  ##   
  ##   	path: The path to modify (must not be a packed path).
  ##   
  ##   	transform: The transform to apply.
  ##   
  ##   	Throws exceptions if the path is packed, or on failure
  ##   	to allocate.
proc fz_bound_path*(ctx: ptr fz_context; path: ptr fz_path;
                   stroke: ptr fz_stroke_state; ctm: fz_matrix): fz_rect {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a bounding rectangle for a path.
  ##   
  ##   	path: The path to bound.
  ##   
  ##   	stroke: If NULL, the bounding rectangle given is for
  ##   	the filled path. If non-NULL the bounding rectangle
  ##   	given is for the path stroked with the given attributes.
  ##   
  ##   	ctm: The matrix to apply to the path during stroking.
  ##   
  ##   	r: Pointer to a fz_rect which will be used to hold
  ##   	the result.
  ##   
  ##   	Returns r, updated to contain the bounding rectangle.
proc fz_adjust_rect_for_stroke*(ctx: ptr fz_context; rect: fz_rect;
                               stroke: ptr fz_stroke_state; ctm: fz_matrix): fz_rect {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Given a rectangle (assumed to be the bounding box for a path),
  ##   	expand it to allow for the expansion of the bbox that would be
  ##   	seen by stroking the path with the given stroke state and
  ##   	transform.
proc fz_new_stroke_state*(ctx: ptr fz_context): ptr fz_stroke_state {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new (empty) stroke state structure (with no dash
  ##   	data) and return a reference to it.
  ##   
  ##   	Throws exception on failure to allocate.
proc fz_new_stroke_state_with_dash_len*(ctx: ptr fz_context; len: cint): ptr fz_stroke_state {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new (empty) stroke state structure, with room for
  ##   	dash data of the given length, and return a reference to it.
  ##   
  ##   	len: The number of dash elements to allow room for.
  ##   
  ##   	Throws exception on failure to allocate.
proc fz_keep_stroke_state*(ctx: ptr fz_context; stroke: ptr fz_stroke_state): ptr fz_stroke_state {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Take an additional reference to a stroke state structure.
  ##   
  ##   	No modifications should be carried out on a stroke
  ##   	state to which more than one reference is held, as
  ##   	this can cause race conditions.
proc fz_drop_stroke_state*(ctx: ptr fz_context; stroke: ptr fz_stroke_state) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference to a stroke state structure, destroying the
  ##   	structure if it is the last reference.
proc fz_unshare_stroke_state*(ctx: ptr fz_context; shared: ptr fz_stroke_state): ptr fz_stroke_state {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Given a reference to a (possibly) shared stroke_state structure,
  ##   	return a reference to an equivalent stroke_state structure
  ##   	that is guaranteed to be unshared (i.e. one that can
  ##   	safely be modified).
  ##   
  ##   	shared: The reference to a (possibly) shared structure
  ##   	to unshare. Ownership of this reference is passed in
  ##   	to this function, even in the case of exceptions being
  ##   	thrown.
  ##   
  ##   	Exceptions may be thrown in the event of failure to
  ##   	allocate if required.
proc fz_unshare_stroke_state_with_dash_len*(ctx: ptr fz_context;
    shared: ptr fz_stroke_state; len: cint): ptr fz_stroke_state {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Given a reference to a (possibly) shared stroke_state structure,
  ##   	return a reference to a stroke_state structure (with room for a
  ##   	given amount of dash data) that is guaranteed to be unshared
  ##   	(i.e. one that can safely be modified).
  ##   
  ##   	shared: The reference to a (possibly) shared structure
  ##   	to unshare. Ownership of this reference is passed in
  ##   	to this function, even in the case of exceptions being
  ##   	thrown.
  ##   
  ##   	Exceptions may be thrown in the event of failure to
  ##   	allocate if required.
proc fz_clone_stroke_state*(ctx: ptr fz_context; stroke: ptr fz_stroke_state): ptr fz_stroke_state {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create an identical stroke_state structure and return a
  ##   	reference to it.
  ##   
  ##   	stroke: The stroke state reference to clone.
  ##   
  ##   	Exceptions may be thrown in the event of a failure to
  ##   	allocate.
proc fz_new_text*(ctx: ptr fz_context): ptr fz_text {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new empty fz_text object.
  ##   
  ##   	Throws exception on failure to allocate.
proc fz_keep_text*(ctx: ptr fz_context; text: ptr fz_text): ptr fz_text {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for the text object. The same
  ##   	pointer is returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_text*(ctx: ptr fz_context; text: ptr fz_text) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for the text object. When the
  ##   	reference count hits zero, the text object is freed.
  ##   
  ##   	Never throws exceptions.
proc fz_show_glyph*(ctx: ptr fz_context; text: ptr fz_text; font: ptr fz_font;
                   trm: fz_matrix; glyph: cint; unicode: cint; wmode: cint;
                   bidi_level: cint; markup_dir: fz_bidi_direction;
                   language: fz_text_language) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add a glyph/unicode value to a text object.
  ##   
  ##   	text: Text object to add to.
  ##   
  ##   	font: The font the glyph should be added in.
  ##   
  ##   	trm: The transform to use for the glyph.
  ##   
  ##   	glyph: The glyph id to add.
  ##   
  ##   	unicode: The unicode character for the glyph.
  ##   
  ##   	wmode: 1 for vertical mode, 0 for horizontal.
  ##   
  ##   	bidi_level: The bidirectional level for this glyph.
  ##   
  ##   	markup_dir: The direction of the text as specified in the
  ##   	markup.
  ##   
  ##   	language: The language in use (if known, 0 otherwise)
  ##   	(e.g. FZ_LANG_zh_Hans).
  ##   
  ##   	Throws exception on failure to allocate.
proc fz_show_string*(ctx: ptr fz_context; text: ptr fz_text; font: ptr fz_font;
                    trm: fz_matrix; s: cstring; wmode: cint; bidi_level: cint;
                    markup_dir: fz_bidi_direction; language: fz_text_language): fz_matrix {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add a UTF8 string to a text object.
  ##   
  ##   	text: Text object to add to.
  ##   
  ##   	font: The font the string should be added in.
  ##   
  ##   	trm: The transform to use.
  ##   
  ##   	s: The utf-8 string to add.
  ##   
  ##   	wmode: 1 for vertical mode, 0 for horizontal.
  ##   
  ##   	bidi_level: The bidirectional level for this glyph.
  ##   
  ##   	markup_dir: The direction of the text as specified in the markup.
  ##   
  ##   	language: The language in use (if known, 0 otherwise)
  ##   		(e.g. FZ_LANG_zh_Hans).
  ##   
  ##   	Returns the transform updated with the advance width of the
  ##   	string.
proc fz_measure_string*(ctx: ptr fz_context; user_font: ptr fz_font; trm: fz_matrix;
                       s: cstring; wmode: cint; bidi_level: cint;
                       markup_dir: fz_bidi_direction; language: fz_text_language): fz_matrix {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Measure the advance width of a UTF8 string should it be added to a text object.
  ##   
  ##   	This uses the same layout algorithms as fz_show_string, and can be used
  ##   	to calculate text alignment adjustments.
proc fz_bound_text*(ctx: ptr fz_context; text: ptr fz_text;
                   stroke: ptr fz_stroke_state; ctm: fz_matrix): fz_rect {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the bounds of a given text object.
  ##   
  ##   	text: The text object to find the bounds of.
  ##   
  ##   	stroke: Pointer to the stroke attributes (for stroked
  ##   	text), or NULL (for filled text).
  ##   
  ##   	ctm: The matrix in use.
  ##   
  ##   	r: pointer to storage for the bounds.
  ##   
  ##   	Returns a pointer to r, which is updated to contain the
  ##   	bounding box for the text object.
proc fz_text_language_from_string*(str: cstring): fz_text_language {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Convert ISO 639 (639-{1,2,3,5}) language specification
  ##   	strings losslessly to a 15 bit fz_text_language code.
  ##   
  ##   	No validation is carried out. Obviously invalid (out
  ##   	of spec) codes will be mapped to FZ_LANG_UNSET, but
  ##   	well-formed (but undefined) codes will be blithely
  ##   	accepted.
proc fz_string_from_text_language*(str: array[8, cchar]; lang: fz_text_language): cstring {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Recover ISO 639 (639-{1,2,3,5}) language specification
  ##   	strings losslessly from a 15 bit fz_text_language code.
  ##   
  ##   	No validation is carried out. See note above.
proc fz_glyph_bbox*(ctx: ptr fz_context; glyph: ptr fz_glyph): fz_irect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the bounding box of the glyph in pixels.
proc fz_glyph_bbox_no_ctx*(src: ptr fz_glyph): fz_irect {.importc, cdecl, impfitzHdr.}
proc fz_glyph_width*(ctx: ptr fz_context; glyph: ptr fz_glyph): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the width of the glyph in pixels.
proc fz_glyph_height*(ctx: ptr fz_context; glyph: ptr fz_glyph): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the height of the glyph in pixels.
proc fz_keep_glyph*(ctx: ptr fz_context; pix: ptr fz_glyph): ptr fz_glyph {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Take a reference to a glyph.
  ##   
  ##   	pix: The glyph to increment the reference for.
  ##   
  ##   	Returns pix.
proc fz_drop_glyph*(ctx: ptr fz_context; pix: ptr fz_glyph) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop a reference and free a glyph.
  ##   
  ##   	Decrement the reference count for the glyph. When no
  ##   	references remain the glyph will be freed.
proc fz_outline_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint; ctm: fz_matrix): ptr fz_path {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Look a glyph up from a font, and return the outline of the
  ##   	glyph using the given transform.
  ##   
  ##   	The caller owns the returned path, and so is responsible for
  ##   	ensuring that it eventually gets dropped.
proc fz_lookup_blendmode*(name: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Map from (case sensitive) blend mode string to enumeration.
proc fz_blendmode_name*(blendmode: cint): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Map from enumeration to blend mode string.
  ##   
  ##   	The string is static, with arbitrary lifespan.
proc fz_fill_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                  even_odd: cint; ctm: fz_matrix; colorspace: ptr fz_colorspace;
                  color: ptr cfloat; alpha: cfloat; color_params: fz_color_params) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Device calls; graphics primitives and containers.
proc fz_stroke_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                    stroke: ptr fz_stroke_state; ctm: fz_matrix;
                    colorspace: ptr fz_colorspace; color: ptr cfloat; alpha: cfloat;
                    color_params: fz_color_params) {.importc, cdecl, impfitzHdr.}
proc fz_clip_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                  even_odd: cint; ctm: fz_matrix; scissor: fz_rect) {.importc, cdecl,
    impfitzHdr.}
proc fz_clip_stroke_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                         stroke: ptr fz_stroke_state; ctm: fz_matrix;
                         scissor: fz_rect) {.importc, cdecl, impfitzHdr.}
proc fz_fill_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                  ctm: fz_matrix; colorspace: ptr fz_colorspace; color: ptr cfloat;
                  alpha: cfloat; color_params: fz_color_params) {.importc, cdecl,
    impfitzHdr.}
proc fz_stroke_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                    stroke: ptr fz_stroke_state; ctm: fz_matrix;
                    colorspace: ptr fz_colorspace; color: ptr cfloat; alpha: cfloat;
                    color_params: fz_color_params) {.importc, cdecl, impfitzHdr.}
proc fz_clip_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                  ctm: fz_matrix; scissor: fz_rect) {.importc, cdecl, impfitzHdr.}
proc fz_clip_stroke_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                         stroke: ptr fz_stroke_state; ctm: fz_matrix;
                         scissor: fz_rect) {.importc, cdecl, impfitzHdr.}
proc fz_ignore_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                    ctm: fz_matrix) {.importc, cdecl, impfitzHdr.}
proc fz_pop_clip*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl, impfitzHdr.}
proc fz_fill_shade*(ctx: ptr fz_context; dev: ptr fz_device; shade: ptr fz_shade;
                   ctm: fz_matrix; alpha: cfloat; color_params: fz_color_params) {.
    importc, cdecl, impfitzHdr.}
proc fz_fill_image*(ctx: ptr fz_context; dev: ptr fz_device; image: ptr fz_image;
                   ctm: fz_matrix; alpha: cfloat; color_params: fz_color_params) {.
    importc, cdecl, impfitzHdr.}
proc fz_fill_image_mask*(ctx: ptr fz_context; dev: ptr fz_device; image: ptr fz_image;
                        ctm: fz_matrix; colorspace: ptr fz_colorspace;
                        color: ptr cfloat; alpha: cfloat;
                        color_params: fz_color_params) {.importc, cdecl, impfitzHdr.}
proc fz_clip_image_mask*(ctx: ptr fz_context; dev: ptr fz_device; image: ptr fz_image;
                        ctm: fz_matrix; scissor: fz_rect) {.importc, cdecl, impfitzHdr.}
proc fz_begin_mask*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                   luminosity: cint; colorspace: ptr fz_colorspace; bc: ptr cfloat;
                   color_params: fz_color_params) {.importc, cdecl, impfitzHdr.}
proc fz_end_mask*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl, impfitzHdr.}
proc fz_begin_group*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                    cs: ptr fz_colorspace; isolated: cint; knockout: cint;
                    blendmode: cint; alpha: cfloat) {.importc, cdecl, impfitzHdr.}
proc fz_end_group*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl, impfitzHdr.}
proc fz_begin_tile*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                   view: fz_rect; xstep: cfloat; ystep: cfloat; ctm: fz_matrix) {.
    importc, cdecl, impfitzHdr.}
proc fz_begin_tile_id*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                      view: fz_rect; xstep: cfloat; ystep: cfloat; ctm: fz_matrix;
                      id: cint): cint {.importc, cdecl, impfitzHdr.}
proc fz_end_tile*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl, impfitzHdr.}
proc fz_render_flags*(ctx: ptr fz_context; dev: ptr fz_device; set: cint; clear: cint) {.
    importc, cdecl, impfitzHdr.}
proc fz_set_default_colorspaces*(ctx: ptr fz_context; dev: ptr fz_device;
                                default_cs: ptr fz_default_colorspaces) {.importc,
    cdecl, impfitzHdr.}
proc fz_begin_layer*(ctx: ptr fz_context; dev: ptr fz_device; layer_name: cstring) {.
    importc, cdecl, impfitzHdr.}
proc fz_end_layer*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl, impfitzHdr.}
proc fz_new_device_of_size*(ctx: ptr fz_context; size: cint): ptr fz_device {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Devices are created by calls to device implementations, for
  ##   	instance: foo_new_device(). These will be implemented by calling
  ##   	fz_new_derived_device(ctx, foo_device) where foo_device is a
  ##   	structure "derived from" fz_device, for instance
  ##   	typedef struct { fz_device base;  ...extras...} foo_device;
proc fz_close_device*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Signal the end of input, and flush any buffered output.
  ##   	This is NOT called implicitly on fz_drop_device. This
  ##   	may throw exceptions.
proc fz_drop_device*(ctx: ptr fz_context; dev: ptr fz_device) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Reduce the reference count on a device. When the reference count
  ##   	reaches zero, the device and its resources will be freed.
  ##   	Don't forget to call fz_close_device before dropping the device,
  ##   	or you may get incomplete output!
  ##   
  ##   	Never throws exceptions.
proc fz_keep_device*(ctx: ptr fz_context; dev: ptr fz_device): ptr fz_device {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for a device. Returns the same
  ##   	pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_enable_device_hints*(ctx: ptr fz_context; dev: ptr fz_device; hints: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Enable (set) hint bits within the hint bitfield for a device.
proc fz_disable_device_hints*(ctx: ptr fz_context; dev: ptr fz_device; hints: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Disable (clear) hint bits within the hint bitfield for a device.
proc fz_device_current_scissor*(ctx: ptr fz_context; dev: ptr fz_device): fz_rect {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find current scissor region as tracked by the device.
proc fz_new_trace_device*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to print a debug trace of all device calls.
proc fz_new_xmltext_device*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to output raw information.
proc fz_new_bbox_device*(ctx: ptr fz_context; rectp: ptr fz_rect): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to compute the bounding
  ##   	box of all marks on a page.
  ##   
  ##   	The returned bounding box will be the union of all bounding
  ##   	boxes of all objects on a page.
proc fz_new_test_device*(ctx: ptr fz_context; is_color: ptr cint; threshold: cfloat;
                        options: cint; passthrough: ptr fz_device): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to test for features.
  ##   
  ##   	Currently only tests for the presence of non-grayscale colors.
  ##   
  ##   	is_color: Possible values returned:
  ##   		0: Definitely greyscale
  ##   		1: Probably color (all colors were grey, but there
  ##   		were images or shadings in a non grey colorspace).
  ##   		2: Definitely color
  ##   
  ##   	threshold: The difference from grayscale that will be tolerated.
  ##   	Typical values to use are either 0 (be exact) and 0.02 (allow an
  ##   	imperceptible amount of slop).
  ##   
  ##   	options: A set of bitfield options, from the FZ_TEST_OPT set.
  ##   
  ##   	passthrough: A device to pass all calls through to, or NULL.
  ##   	If set, then the test device can both test and pass through to
  ##   	an underlying device (like, say, the display list device). This
  ##   	means that a display list can be created and at the end we'll
  ##   	know if it's colored or not.
  ##   
  ##   	In the absence of a passthrough device, the device will throw
  ##   	an exception to stop page interpretation when color is found.
proc fz_new_draw_device*(ctx: ptr fz_context; transform: fz_matrix;
                        dest: ptr fz_pixmap): ptr fz_device {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to draw on a pixmap.
  ##   
  ##   	dest: Target pixmap for the draw device. See fz_new_pixmap
  ##   	for how to obtain a pixmap. The pixmap is not cleared by the
  ##   	draw device, see fz_clear_pixmap for how to clear it prior to
  ##   	calling fz_new_draw_device. Free the device by calling
  ##   	fz_drop_device.
  ##   
  ##   	transform: Transform from user space in points to device space
  ##   	in pixels.
proc fz_new_draw_device_with_bbox*(ctx: ptr fz_context; transform: fz_matrix;
                                  dest: ptr fz_pixmap; clip: ptr fz_irect): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to draw on a pixmap.
  ##   
  ##   	dest: Target pixmap for the draw device. See fz_new_pixmap
  ##   	for how to obtain a pixmap. The pixmap is not cleared by the
  ##   	draw device, see fz_clear_pixmap for how to clear it prior to
  ##   	calling fz_new_draw_device. Free the device by calling
  ##   	fz_drop_device.
  ##   
  ##   	transform: Transform from user space in points to device space
  ##   	in pixels.
  ##   
  ##   	clip: Bounding box to restrict any marking operations of the
  ##   	draw device.
proc fz_new_draw_device_with_proof*(ctx: ptr fz_context; transform: fz_matrix;
                                   dest: ptr fz_pixmap; proof_cs: ptr fz_colorspace): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to draw on a pixmap.
  ##   
  ##   	dest: Target pixmap for the draw device. See fz_new_pixmap
  ##   	for how to obtain a pixmap. The pixmap is not cleared by the
  ##   	draw device, see fz_clear_pixmap for how to clear it prior to
  ##   	calling fz_new_draw_device. Free the device by calling
  ##   	fz_drop_device.
  ##   
  ##   	transform: Transform from user space in points to device space
  ##   	in pixels.
  ##   
  ##   	proof_cs: Intermediate color space to map though when mapping to
  ##   	color space defined by pixmap.
proc fz_new_draw_device_with_bbox_proof*(ctx: ptr fz_context; transform: fz_matrix;
                                        dest: ptr fz_pixmap; clip: ptr fz_irect;
                                        cs: ptr fz_colorspace): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to draw on a pixmap.
  ##   
  ##   	dest: Target pixmap for the draw device. See fz_new_pixmap
  ##   	for how to obtain a pixmap. The pixmap is not cleared by the
  ##   	draw device, see fz_clear_pixmap for how to clear it prior to
  ##   	calling fz_new_draw_device. Free the device by calling
  ##   	fz_drop_device.
  ##   
  ##   	transform: Transform from user space in points to device space
  ##   	in pixels.
  ##   
  ##   	clip: Bounding box to restrict any marking operations of the
  ##   	draw device.
  ##   
  ##   	proof_cs: Color space to render to prior to mapping to color
  ##   	space defined by pixmap.
proc fz_new_draw_device_type3*(ctx: ptr fz_context; transform: fz_matrix;
                              dest: ptr fz_pixmap): ptr fz_device {.importc, cdecl,
    impfitzHdr.}
proc fz_parse_draw_options*(ctx: ptr fz_context; options: ptr fz_draw_options;
                           string: cstring): ptr fz_draw_options {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Parse draw device options from a comma separated key-value string.
proc fz_new_draw_device_with_options*(ctx: ptr fz_context;
                                     options: ptr fz_draw_options;
                                     mediabox: fz_rect; pixmap: ptr ptr fz_pixmap): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new pixmap and draw device, using the specified options.
  ##   
  ##   	options: Options to configure the draw device, and choose the
  ##   	resolution and colorspace.
  ##   
  ##   	mediabox: The bounds of the page in points.
  ##   
  ##   	pixmap: An out parameter containing the newly created pixmap.
proc fz_new_display_list*(ctx: ptr fz_context; mediabox: fz_rect): ptr fz_display_list {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create an empty display list.
  ##   
  ##   	A display list contains drawing commands (text, images, etc.).
  ##   	Use fz_new_list_device for populating the list.
  ##   
  ##   	mediabox: Bounds of the page (in points) represented by the
  ##   	display list.
proc fz_new_list_device*(ctx: ptr fz_context; list: ptr fz_display_list): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a rendering device for a display list.
  ##   
  ##   	When the device is rendering a page it will populate the
  ##   	display list with drawing commands (text, images, etc.). The
  ##   	display list can later be reused to render a page many times
  ##   	without having to re-interpret the page from the document file
  ##   	for each rendering. Once the device is no longer needed, free
  ##   	it with fz_drop_device.
  ##   
  ##   	list: A display list that the list device takes a reference to.
proc fz_run_display_list*(ctx: ptr fz_context; list: ptr fz_display_list;
                         dev: ptr fz_device; ctm: fz_matrix; scissor: fz_rect;
                         cookie: ptr fz_cookie) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	(Re)-run a display list through a device.
  ##   
  ##   	list: A display list, created by fz_new_display_list and
  ##   	populated with objects from a page by running fz_run_page on a
  ##   	device obtained from fz_new_list_device.
  ##   
  ##   	ctm: Transform to apply to display list contents. May include
  ##   	for example scaling and rotation, see fz_scale, fz_rotate and
  ##   	fz_concat. Set to fz_identity if no transformation is desired.
  ##   
  ##   	scissor: Only the part of the contents of the display list
  ##   	visible within this area will be considered when the list is
  ##   	run through the device. This does not imply for tile objects
  ##   	contained in the display list.
  ##   
  ##   	cookie: Communication mechanism between caller and library
  ##   	running the page. Intended for multi-threaded applications,
  ##   	while single-threaded applications set cookie to NULL. The
  ##   	caller may abort an ongoing page run. Cookie also communicates
  ##   	progress information back to the caller. The fields inside
  ##   	cookie are continually updated while the page is being run.
proc fz_keep_display_list*(ctx: ptr fz_context; list: ptr fz_display_list): ptr fz_display_list {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for a display list. Returns the
  ##   	same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_display_list*(ctx: ptr fz_context; list: ptr fz_display_list) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for a display list. When the
  ##   	reference count reaches zero, all the references in the display
  ##   	list itself are dropped, and the display list is freed.
  ##   
  ##   	Never throws exceptions.
proc fz_bound_display_list*(ctx: ptr fz_context; list: ptr fz_display_list): fz_rect {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the bounding box of the page recorded in a display list.
proc fz_new_image_from_display_list*(ctx: ptr fz_context; w: cfloat; h: cfloat;
                                    list: ptr fz_display_list): ptr fz_image {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new image from a display list.
  ##   
  ##   	w, h: The conceptual width/height of the image.
  ##   
  ##   	transform: The matrix that needs to be applied to the given
  ##   	list to make it render to the unit square.
  ##   
  ##   	list: The display list.
proc fz_display_list_is_empty*(ctx: ptr fz_context; list: ptr fz_display_list): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check for a display list being empty
  ##   
  ##   	list: The list to check.
  ##   
  ##   	Returns true if empty, false otherwise.
proc fz_new_layout*(ctx: ptr fz_context): ptr fz_layout_block {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new layout block, with new allocation pool, zero
  ##   	matrices, and initialise linked pointers.
proc fz_drop_layout*(ctx: ptr fz_context; `block`: ptr fz_layout_block) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop layout block. Free the pool, and linked blocks.
  ##   
  ##   	Never throws exceptions.
proc fz_add_layout_line*(ctx: ptr fz_context; `block`: ptr fz_layout_block; x: cfloat;
                        y: cfloat; h: cfloat; p: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add a new line to the end of the layout block.
proc fz_add_layout_char*(ctx: ptr fz_context; `block`: ptr fz_layout_block; x: cfloat;
                        w: cfloat; p: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Add a new char to the line at the end of the layout block.
proc fz_new_stext_page*(ctx: ptr fz_context; mediabox: fz_rect): ptr fz_stext_page {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create an empty text page.
  ##   
  ##   	The text page is filled out by the text device to contain the
  ##   	blocks and lines of text on the page.
  ##   
  ##   	mediabox: optional mediabox information.
proc fz_drop_stext_page*(ctx: ptr fz_context; page: ptr fz_stext_page) {.importc, cdecl,
    impfitzHdr.}
proc fz_print_stext_page_as_html*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 page: ptr fz_stext_page; id: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Output structured text to a file in HTML (visual) format.
proc fz_print_stext_header_as_html*(ctx: ptr fz_context; `out`: ptr fz_output) {.
    importc, cdecl, impfitzHdr.}
proc fz_print_stext_trailer_as_html*(ctx: ptr fz_context; `out`: ptr fz_output) {.
    importc, cdecl, impfitzHdr.}
proc fz_print_stext_page_as_xhtml*(ctx: ptr fz_context; `out`: ptr fz_output;
                                  page: ptr fz_stext_page; id: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Output structured text to a file in XHTML (semantic) format.
proc fz_print_stext_header_as_xhtml*(ctx: ptr fz_context; `out`: ptr fz_output) {.
    importc, cdecl, impfitzHdr.}
proc fz_print_stext_trailer_as_xhtml*(ctx: ptr fz_context; `out`: ptr fz_output) {.
    importc, cdecl, impfitzHdr.}
proc fz_print_stext_page_as_xml*(ctx: ptr fz_context; `out`: ptr fz_output;
                                page: ptr fz_stext_page; id: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Output structured text to a file in XML format.
proc fz_print_stext_page_as_json*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 page: ptr fz_stext_page; scale: cfloat) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Output structured text to a file in JSON format.
proc fz_print_stext_page_as_text*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 page: ptr fz_stext_page) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Output structured text to a file in plain-text UTF-8 format.
proc fz_search_stext_page*(ctx: ptr fz_context; text: ptr fz_stext_page;
                          needle: cstring; quads: ptr fz_quad; max_quads: cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Search for occurrence of 'needle' in text page.
  ##   
  ##   	Return the number of hits and store hit quads in the passed in
  ##   	array.
  ##   
  ##   	NOTE: This is an experimental interface and subject to change
  ##   	without notice.
proc fz_highlight_selection*(ctx: ptr fz_context; page: ptr fz_stext_page; a: fz_point;
                            b: fz_point; quads: ptr fz_quad; max_quads: cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a list of quads to highlight lines inside the selection
  ##   	points.
proc fz_snap_selection*(ctx: ptr fz_context; page: ptr fz_stext_page; ap: ptr fz_point;
                       bp: ptr fz_point; mode: cint): fz_quad {.importc, cdecl,
    impfitzHdr.}
proc fz_copy_selection*(ctx: ptr fz_context; page: ptr fz_stext_page; a: fz_point;
                       b: fz_point; crlf: cint): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a newly allocated UTF-8 string with the text for a given
  ##   	selection.
  ##   
  ##   	crlf: If true, write "\r\n" style line endings (otherwise "\n"
  ##   	only).
proc fz_copy_rectangle*(ctx: ptr fz_context; page: ptr fz_stext_page; area: fz_rect;
                       crlf: cint): cstring {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return a newly allocated UTF-8 string with the text for a given
  ##   	selection rectangle.
  ##   
  ##   	crlf: If true, write "\r\n" style line endings (otherwise "\n"
  ##   	only).
proc fz_parse_stext_options*(ctx: ptr fz_context; opts: ptr fz_stext_options;
                            string: cstring): ptr fz_stext_options {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Parse stext device options from a comma separated key-value
  ##   	string.
proc fz_new_stext_device*(ctx: ptr fz_context; page: ptr fz_stext_page;
                         options: ptr fz_stext_options): ptr fz_device {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to extract the text on a page.
  ##   
  ##   	Gather the text on a page into blocks and lines.
  ##   
  ##   	The reading order is taken from the order the text is drawn in
  ##   	the source file, so may not be accurate.
  ##   
  ##   	page: The text page to which content should be added. This will
  ##   	usually be a newly created (empty) text page, but it can be one
  ##   	containing data already (for example when merging multiple
  ##   	pages, or watermarking).
  ##   
  ##   	options: Options to configure the stext device.
proc fz_new_ocr_device*(ctx: ptr fz_context; target: ptr fz_device; ctm: fz_matrix;
                       mediabox: fz_rect; with_list: cint; language: cstring): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device to OCR the text on the page.
  ##   
  ##   	Renders the page internally to a bitmap that is then OCRd. Text
  ##   	is then forwarded onto the target device.
  ##   
  ##   	target: The target device to receive the OCRd text.
  ##   
  ##   	ctm: The transform to apply to the mediabox to get the size for
  ##   	the rendered page image. Also used to calculate the resolution
  ##   	for the page image. In general, this will be the same as the CTM
  ##   	that you pass to fz_run_page (or fz_run_display_list) to feed
  ##   	this device.
  ##   
  ##   	mediabox: The mediabox (in points). Combined with the CTM to get
  ##   	the bounds of the pixmap used internally for the rendered page
  ##   	image.
  ##   
  ##   	with_list: If with_list is false, then all non-text operations
  ##   	are forwarded instantly to the target device. This results in
  ##   	the target device seeing all NON-text operations, followed by
  ##   	all the text operations (derived from OCR).
  ##   
  ##   	If with_list is true, then all the marking operations are
  ##   	collated into a display list which is then replayed to the
  ##   	target device at the end.
  ##   
  ##   	language: NULL (for "eng"), or a pointer to a string to describe
  ##   	the languages/scripts that should be used for OCR (e.g.
  ##   	"eng,ara").
proc fz_generate_transition*(ctx: ptr fz_context; tpix: ptr fz_pixmap;
                            opix: ptr fz_pixmap; npix: ptr fz_pixmap; time: cint;
                            trans: ptr fz_transition): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Generate a frame of a transition.
  ##   
  ##   	tpix: Target pixmap
  ##   	opix: Old pixmap
  ##   	npix: New pixmap
  ##   	time: Position within the transition (0 to 256)
  ##   	trans: Transition details
  ##   
  ##   	Returns 1 if successfully generated a frame.
  ##   
  ##   	Note: Pixmaps must include alpha.
proc fz_purge_glyph_cache*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Purge all the glyphs from the cache.
proc fz_render_glyph_pixmap*(ctx: ptr fz_context; font: ptr fz_font; gid: cint;
                            ctm: ptr fz_matrix; scissor: ptr fz_irect; aa: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a pixmap containing a rendered glyph.
  ##   
  ##   	Lookup gid from font, clip it with scissor, and rendering it
  ##   	with aa bits of antialiasing into a new pixmap.
  ##   
  ##   	The caller takes ownership of the pixmap and so must free it.
  ##   
  ##   	Note: This function is no longer used for normal rendering
  ##   	operations, and is kept around just because we use it in the
  ##   	app. It should be considered "at risk" of removal from the API.
proc fz_render_t3_glyph_direct*(ctx: ptr fz_context; dev: ptr fz_device;
                               font: ptr fz_font; gid: cint; trm: fz_matrix;
                               gstate: pointer; def_cs: ptr fz_default_colorspaces) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Nasty PDF interpreter specific hernia, required to allow the
  ##   	interpreter to replay glyphs from a type3 font directly into
  ##   	the target device.
  ##   
  ##   	This is only used in exceptional circumstances (such as type3
  ##   	glyphs that inherit current graphics state, or nested type3
  ##   	glyphs).
proc fz_prepare_t3_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Force a type3 font to cache the displaylist for a given glyph
  ##   	id.
  ##   
  ##   	This caching can involve reading the underlying file, so must
  ##   	happen ahead of time, so we aren't suddenly forced to read the
  ##   	file while playing a displaylist back.
proc fz_dump_glyph_cache_stats*(ctx: ptr fz_context; `out`: ptr fz_output) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Dump debug statistics for the glyph cache.
proc fz_subpixel_adjust*(ctx: ptr fz_context; ctm: ptr fz_matrix;
                        subpix_ctm: ptr fz_matrix; qe: ptr cuchar; qf: ptr cuchar): cfloat {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Perform subpixel quantisation and adjustment on a glyph matrix.
  ##   
  ##   	ctm: On entry, the desired 'ideal' transformation for a glyph.
  ##   	On exit, adjusted to a (very similar) transformation quantised
  ##   	for subpixel caching.
  ##   
  ##   	subpix_ctm: Initialised by the routine to the transform that
  ##   	should be used to render the glyph.
  ##   
  ##   	qe, qf: which subpixel position we quantised to.
  ##   
  ##   	Returns: the size of the glyph.
  ##   
  ##   	Note: This is currently only exposed for use in our app. It
  ##   	should be considered "at risk" of removal from the API.
proc fz_new_link*(ctx: ptr fz_context; bbox: fz_rect; doc: pointer; uri: cstring): ptr fz_link {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new link record.
  ##   
  ##   	next is set to NULL with the expectation that the caller will
  ##   	handle the linked list setup.
proc fz_keep_link*(ctx: ptr fz_context; link: ptr fz_link): ptr fz_link {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for a link. The same pointer is
  ##   	returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_link*(ctx: ptr fz_context; link: ptr fz_link) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the reference count for a link. When the reference
  ##   	count reaches zero, the link is destroyed.
  ##   
  ##   	When a link is freed, the reference for any linked link (next)
  ##   	is dropped too, thus an entire linked list of fz_link's can be
  ##   	freed by just dropping the head.
proc fz_is_external_link*(ctx: ptr fz_context; uri: cstring): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Query whether a link is external to a document (determined by
  ##   	uri containing a ':', intended to match with ':' which
  ##   	separates the scheme from the scheme specific parts in URIs).
proc fz_new_outline*(ctx: ptr fz_context): ptr fz_outline {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new outline entry with zeroed fields for the caller
  ##   	to fill in.
proc fz_keep_outline*(ctx: ptr fz_context; outline: ptr fz_outline): ptr fz_outline {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count. Returns the same pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_outline*(ctx: ptr fz_context; outline: ptr fz_outline) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrements the reference count. When the reference point
  ##   	reaches zero, the outline is freed.
  ##   
  ##   	When freed, it will drop linked	outline entries (next and down)
  ##   	too, thus a whole outline structure can be dropped by dropping
  ##   	the top entry.
  ##   
  ##   	Never throws exceptions.
proc fz_register_document_handler*(ctx: ptr fz_context;
                                  handler: ptr fz_document_handler) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Register a handler for a document type.
  ##   
  ##   	handler: The handler to register.
proc fz_register_document_handlers*(ctx: ptr fz_context) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Register handlers
  ##   	for all the standard document types supported in
  ##   	this build.
proc fz_recognize_document*(ctx: ptr fz_context; magic: cstring): ptr fz_document_handler {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Given a magic find a document handler that can handle a
  ##   	document of this type.
  ##   
  ##   	magic: Can be a filename extension (including initial period) or
  ##   	a mimetype.
proc fz_open_document*(ctx: ptr fz_context; filename: cstring): ptr fz_document {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a document file and read its basic structure so pages and
  ##   	objects can be located. MuPDF will try to repair broken
  ##   	documents (without actually changing the file contents).
  ##   
  ##   	The returned fz_document is used when calling most other
  ##   	document related functions.
  ##   
  ##   	filename: a path to a file as it would be given to open(2).
proc fz_open_accelerated_document*(ctx: ptr fz_context; filename: cstring;
                                  accel: cstring): ptr fz_document {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Open a document file and read its basic structure so pages and
  ##   	objects can be located. MuPDF will try to repair broken
  ##   	documents (without actually changing the file contents).
  ##   
  ##   	The returned fz_document is used when calling most other
  ##   	document related functions.
  ##   
  ##   	filename: a path to a file as it would be given to open(2).
proc fz_open_document_with_stream*(ctx: ptr fz_context; magic: cstring;
                                  stream: ptr fz_stream): ptr fz_document {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a document using the specified stream object rather than
  ##   	opening a file on disk.
  ##   
  ##   	magic: a string used to detect document type; either a file name
  ##   	or mime-type.
proc fz_open_accelerated_document_with_stream*(ctx: ptr fz_context; magic: cstring;
    stream: ptr fz_stream; accel: ptr fz_stream): ptr fz_document {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Open a document using the specified stream object rather than
  ##   	opening a file on disk.
  ##   
  ##   	magic: a string used to detect document type; either a file name
  ##   	or mime-type.
proc fz_document_supports_accelerator*(ctx: ptr fz_context; doc: ptr fz_document): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Query if the document supports the saving of accelerator data.
proc fz_save_accelerator*(ctx: ptr fz_context; doc: ptr fz_document; accel: cstring) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save accelerator data for the document to a given file.
proc fz_output_accelerator*(ctx: ptr fz_context; doc: ptr fz_document;
                           accel: ptr fz_output) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Output accelerator data for the document to a given output
  ##   	stream.
proc fz_new_document_of_size*(ctx: ptr fz_context; size: cint): pointer {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	New documents are typically created by calls like
  ##   	foo_new_document(fz_contextctx, ...). These work by
  ##   	deriving a new document type from fz_document, for instance:
  ##   	typedef struct { fz_document base; ...extras... } foo_document;
  ##   	These are allocated by calling
  ##   	fz_new_derived_document(ctx, foo_document)
proc fz_keep_document*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_document {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the document reference count. The same pointer is
  ##   	returned.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_document*(ctx: ptr fz_context; doc: ptr fz_document) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Decrement the document reference count. When the reference
  ##   	count reaches 0, the document and all it's references are
  ##   	freed.
  ##   
  ##   	Never throws exceptions.
proc fz_needs_password*(ctx: ptr fz_context; doc: ptr fz_document): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check if a document is encrypted with a
  ##   	non-blank password.
proc fz_authenticate_password*(ctx: ptr fz_context; doc: ptr fz_document;
                              password: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Test if the given password can decrypt the document.
  ##   
  ##   	password: The password string to be checked. Some document
  ##   	specifications do not specify any particular text encoding, so
  ##   	neither do we.
  ##   
  ##   	Returns 0 for failure to authenticate, non-zero for success.
  ##   
  ##   	For PDF documents, further information can be given by examining
  ##   	the bits in the return code.
  ##   
  ##   		Bit 0 => No password required
  ##   		Bit 1 => User password authenticated
  ##   		Bit 2 => Owner password authenticated
proc fz_load_outline*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_outline {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Load the hierarchical document outline.
  ##   
  ##   	Should be freed by fz_drop_outline.
proc fz_is_document_reflowable*(ctx: ptr fz_context; doc: ptr fz_document): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Is the document reflowable.
  ##   
  ##   	Returns 1 to indicate reflowable documents, otherwise 0.
proc fz_layout_document*(ctx: ptr fz_context; doc: ptr fz_document; w: cfloat; h: cfloat;
                        em: cfloat) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Layout reflowable document types.
  ##   
  ##   	w, h: Page size in points.
  ##   	em: Default font size in points.
proc fz_make_bookmark*(ctx: ptr fz_context; doc: ptr fz_document; loc: fz_location): fz_bookmark {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a bookmark for the given page, which can be used to find
  ##   	the same location after the document has been laid out with
  ##   	different parameters.
proc fz_lookup_bookmark*(ctx: ptr fz_context; doc: ptr fz_document; mark: fz_bookmark): fz_location {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find a bookmark and return its page number.
proc fz_count_pages*(ctx: ptr fz_context; doc: ptr fz_document): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of pages in document
  ##   
  ##   	May return 0 for documents with no pages.
proc fz_resolve_link*(ctx: ptr fz_context; doc: ptr fz_document; uri: cstring;
                     xp: ptr cfloat; yp: ptr cfloat): fz_location {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Resolve an internal link to a page number.
  ##   
  ##   	xp, yp: Pointer to store coordinate of destination on the page.
  ##   
  ##   	Returns (-1,-1) if the URI cannot be resolved.
proc fz_last_page*(ctx: ptr fz_context; doc: ptr fz_document): fz_location {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Function to get the location for the last page in the document.
  ##   	Using this can be far more efficient in some cases than calling
  ##   	fz_count_pages and using the page number.
proc fz_next_page*(ctx: ptr fz_context; doc: ptr fz_document; loc: fz_location): fz_location {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Function to get the location of the next page (allowing for the
  ##   	end of chapters etc). If at the end of the document, returns the
  ##   	current location.
proc fz_previous_page*(ctx: ptr fz_context; doc: ptr fz_document; loc: fz_location): fz_location {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Function to get the location of the previous page (allowing for
  ##   	the end of chapters etc). If already at the start of the
  ##   	document, returns the current page.
proc fz_clamp_location*(ctx: ptr fz_context; doc: ptr fz_document; loc: fz_location): fz_location {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Clamps a location into valid chapter/page range. (First clamps
  ##   	the chapter into range, then the page into range).
proc fz_location_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                  number: cint): fz_location {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Converts from page number to chapter+page. This may cause many
  ##   	chapters to be laid out in order to calculate the number of
  ##   	pages within those chapters.
proc fz_page_number_from_location*(ctx: ptr fz_context; doc: ptr fz_document;
                                  loc: fz_location): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Converts from chapter+page to page number. This may cause many
  ##   	chapters to be laid out in order to calculate the number of
  ##   	pages within those chapters.
proc fz_load_page*(ctx: ptr fz_context; doc: ptr fz_document; number: cint): ptr fz_page {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Load a given page number from a document. This may be much less
  ##   	efficient than loading by location (chapter+page) for some
  ##   	document types.
proc fz_count_chapters*(ctx: ptr fz_context; doc: ptr fz_document): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of chapters in the document.
  ##   	At least 1.
proc fz_count_chapter_pages*(ctx: ptr fz_context; doc: ptr fz_document; chapter: cint): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Return the number of pages in a chapter.
  ##   	May return 0.
proc fz_load_chapter_page*(ctx: ptr fz_context; doc: ptr fz_document; chapter: cint;
                          page: cint): ptr fz_page {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Load a page.
  ##   
  ##   	After fz_load_page is it possible to retrieve the size of the
  ##   	page using fz_bound_page, or to render the page using
  ##   	fz_run_page_. Free the page by calling fz_drop_page.
  ##   
  ##   	chapter: chapter number, 0 is the first chapter of the document.
  ##   	number: page number, 0 is the first page of the chapter.
proc fz_load_links*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_link {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Load the list of links for a page.
  ##   
  ##   	Returns a linked list of all the links on the page, each with
  ##   	its clickable region and link destination. Each link is
  ##   	reference counted so drop and free the list of links by
  ##   	calling fz_drop_link on the pointer return from fz_load_links.
  ##   
  ##   	page: Page obtained from fz_load_page.
proc fz_new_page_of_size*(ctx: ptr fz_context; size: cint): ptr fz_page {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Different document types will be implemented by deriving from
  ##   	fz_page. This macro allocates such derived structures, and
  ##   	initialises the base sections.
proc fz_bound_page*(ctx: ptr fz_context; page: ptr fz_page): fz_rect {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Determine the size of a page at 72 dpi.
proc fz_run_page*(ctx: ptr fz_context; page: ptr fz_page; dev: ptr fz_device;
                 transform: fz_matrix; cookie: ptr fz_cookie) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Run a page through a device.
  ##   
  ##   	page: Page obtained from fz_load_page.
  ##   
  ##   	dev: Device obtained from fz_new__device.
  ##   
  ##   	transform: Transform to apply to page. May include for example
  ##   	scaling and rotation, see fz_scale, fz_rotate and fz_concat.
  ##   	Set to fz_identity if no transformation is desired.
  ##   
  ##   	cookie: Communication mechanism between caller and library
  ##   	rendering the page. Intended for multi-threaded applications,
  ##   	while single-threaded applications set cookie to NULL. The
  ##   	caller may abort an ongoing rendering of a page. Cookie also
  ##   	communicates progress information back to the caller. The
  ##   	fields inside cookie are continually updated while the page is
  ##   	rendering.
proc fz_run_page_contents*(ctx: ptr fz_context; page: ptr fz_page; dev: ptr fz_device;
                          transform: fz_matrix; cookie: ptr fz_cookie) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Run a page through a device. Just the main
  ##   	page content, without the annotations, if any.
  ##   
  ##   	page: Page obtained from fz_load_page.
  ##   
  ##   	dev: Device obtained from fz_new__device.
  ##   
  ##   	transform: Transform to apply to page. May include for example
  ##   	scaling and rotation, see fz_scale, fz_rotate and fz_concat.
  ##   	Set to fz_identity if no transformation is desired.
  ##   
  ##   	cookie: Communication mechanism between caller and library
  ##   	rendering the page. Intended for multi-threaded applications,
  ##   	while single-threaded applications set cookie to NULL. The
  ##   	caller may abort an ongoing rendering of a page. Cookie also
  ##   	communicates progress information back to the caller. The
  ##   	fields inside cookie are continually updated while the page is
  ##   	rendering.
proc fz_run_page_annots*(ctx: ptr fz_context; page: ptr fz_page; dev: ptr fz_device;
                        transform: fz_matrix; cookie: ptr fz_cookie) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Run the annotations on a page through a device.
proc fz_run_page_widgets*(ctx: ptr fz_context; page: ptr fz_page; dev: ptr fz_device;
                         transform: fz_matrix; cookie: ptr fz_cookie) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Run the widgets on a page through a device.
proc fz_keep_page*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_page {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Increment the reference count for the page. Returns the same
  ##   	pointer.
  ##   
  ##   	Never throws exceptions.
proc fz_drop_page*(ctx: ptr fz_context; page: ptr fz_page) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Decrements the reference count for the page. When the reference
  ##   	count hits 0, the page and its references are freed.
  ##   
  ##   	Never throws exceptions.
proc fz_page_presentation*(ctx: ptr fz_context; page: ptr fz_page;
                          transition: ptr fz_transition; duration: ptr cfloat): ptr fz_transition {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get the presentation details for a given page.
  ##   
  ##   	transition: A pointer to a transition struct to fill out.
  ##   
  ##   	duration: A pointer to a place to set the page duration in
  ##   	seconds. Will be set to 0 if no transition is specified for the
  ##   	page.
  ##   
  ##   	Returns: a pointer to the transition structure, or NULL if there
  ##   	is no transition specified for the page.
proc fz_has_permission*(ctx: ptr fz_context; doc: ptr fz_document; p: fz_permission): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check permission flags on document.
proc fz_lookup_metadata*(ctx: ptr fz_context; doc: ptr fz_document; key: cstring;
                        buf: cstring; size: cint): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Retrieve document meta data strings.
  ##   
  ##   	doc: The document to query.
  ##   
  ##   	key: Which meta data key to retrieve...
  ##   
  ##   	Basic information:
  ##   		'format'	-- Document format and version.
  ##   		'encryption'	-- Description of the encryption used.
  ##   
  ##   	From the document information dictionary:
  ##   		'info:Title'
  ##   		'info:Author'
  ##   		'info:Subject'
  ##   		'info:Keywords'
  ##   		'info:Creator'
  ##   		'info:Producer'
  ##   		'info:CreationDate'
  ##   		'info:ModDate'
  ##   
  ##   	buf: The buffer to hold the results (a nul-terminated UTF-8
  ##   	string).
  ##   
  ##   	size: Size of 'buf'.
  ##   
  ##   	Returns the number of bytes need to store the string plus terminator
  ##   	(will be larger than 'size' if the output was truncated), or -1 if the
  ##   	key is not recognized or found.
proc fz_document_output_intent*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_colorspace {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Find the output intent colorspace if the document has defined
  ##   	one.
  ##   
  ##   	Returns a borrowed reference that should not be dropped, unless
  ##   	it is kept first.
proc fz_page_separations*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_separations {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Get the separations details for a page.
  ##   	This will be NULL, unless the format specifically supports
  ##   	separations (such as PDF files). May be NULL even
  ##   	so, if there are no separations on a page.
  ##   
  ##   	Returns a reference that must be dropped.
proc fz_page_uses_overprint*(ctx: ptr fz_context; page: ptr fz_page): cint {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Query if a given page requires overprint.
proc fz_new_display_list_from_page*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_display_list {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a display list.
  ##   
  ##   	Ownership of the display list is returned to the caller.
proc fz_new_display_list_from_page_number*(ctx: ptr fz_context;
    doc: ptr fz_document; number: cint): ptr fz_display_list {.importc, cdecl, impfitzHdr.}
proc fz_new_display_list_from_page_contents*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_display_list {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a display list from page contents (no annotations).
  ##   
  ##   	Ownership of the display list is returned to the caller.
proc fz_new_pixmap_from_display_list*(ctx: ptr fz_context;
                                     list: ptr fz_display_list; ctm: fz_matrix;
                                     cs: ptr fz_colorspace; alpha: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Render the page to a pixmap using the transform and colorspace.
  ##   
  ##   	Ownership of the pixmap is returned to the caller.
proc fz_new_pixmap_from_page*(ctx: ptr fz_context; page: ptr fz_page; ctm: fz_matrix;
                             cs: ptr fz_colorspace; alpha: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pixmap_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                    number: cint; ctm: fz_matrix;
                                    cs: ptr fz_colorspace; alpha: cint): ptr fz_pixmap {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pixmap_from_page_contents*(ctx: ptr fz_context; page: ptr fz_page;
                                      ctm: fz_matrix; cs: ptr fz_colorspace;
                                      alpha: cint): ptr fz_pixmap {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Render the page contents without annotations.
  ##   
  ##   	Ownership of the pixmap is returned to the caller.
proc fz_new_pixmap_from_display_list_with_separations*(ctx: ptr fz_context;
    list: ptr fz_display_list; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Render the page contents with control over spot colors.
  ##   
  ##   	Ownership of the pixmap is returned to the caller.
proc fz_new_pixmap_from_page_with_separations*(ctx: ptr fz_context;
    page: ptr fz_page; ctm: fz_matrix; cs: ptr fz_colorspace; seps: ptr fz_separations;
    alpha: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
proc fz_new_pixmap_from_page_number_with_separations*(ctx: ptr fz_context;
    doc: ptr fz_document; number: cint; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
proc fz_new_pixmap_from_page_contents_with_separations*(ctx: ptr fz_context;
    page: ptr fz_page; ctm: fz_matrix; cs: ptr fz_colorspace; seps: ptr fz_separations;
    alpha: cint): ptr fz_pixmap {.importc, cdecl, impfitzHdr.}
proc fz_new_stext_page_from_page*(ctx: ptr fz_context; page: ptr fz_page;
                                 options: ptr fz_stext_options): ptr fz_stext_page {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Extract text from page.
  ##   
  ##   	Ownership of the fz_stext_page is returned to the caller.
proc fz_new_stext_page_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                        number: cint;
                                        options: ptr fz_stext_options): ptr fz_stext_page {.
    importc, cdecl, impfitzHdr.}
proc fz_new_stext_page_from_display_list*(ctx: ptr fz_context;
    list: ptr fz_display_list; options: ptr fz_stext_options): ptr fz_stext_page {.
    importc, cdecl, impfitzHdr.}
proc fz_new_buffer_from_stext_page*(ctx: ptr fz_context; text: ptr fz_stext_page): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convert structured text into plain text.
proc fz_new_buffer_from_page*(ctx: ptr fz_context; page: ptr fz_page;
                             options: ptr fz_stext_options): ptr fz_buffer {.importc,
    cdecl, impfitzHdr.}
proc fz_new_buffer_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                    number: cint; options: ptr fz_stext_options): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_buffer_from_display_list*(ctx: ptr fz_context;
                                     list: ptr fz_display_list;
                                     options: ptr fz_stext_options): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
proc fz_search_page*(ctx: ptr fz_context; page: ptr fz_page; needle: cstring;
                    hit_bbox: ptr fz_quad; hit_max: cint): cint {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Search for the 'needle' text on the page.
  ##   	Record the hits in the hit_bbox array and return the number of
  ##   	hits. Will stop looking once it has filled hit_max rectangles.
proc fz_search_page_number*(ctx: ptr fz_context; doc: ptr fz_document; number: cint;
                           needle: cstring; hit_bbox: ptr fz_quad; hit_max: cint): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_search_chapter_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                   chapter: cint; page: cint; needle: cstring;
                                   hit_bbox: ptr fz_quad; hit_max: cint): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_search_display_list*(ctx: ptr fz_context; list: ptr fz_display_list;
                            needle: cstring; hit_bbox: ptr fz_quad; hit_max: cint): cint {.
    importc, cdecl, impfitzHdr.}
proc fz_new_display_list_from_svg*(ctx: ptr fz_context; buf: ptr fz_buffer;
                                  base_uri: cstring; zip: ptr fz_archive;
                                  w: ptr cfloat; h: ptr cfloat): ptr fz_display_list {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Parse an SVG document into a display-list.
proc fz_new_image_from_svg*(ctx: ptr fz_context; buf: ptr fz_buffer; base_uri: cstring;
                           zip: ptr fz_archive): ptr fz_image {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Create a scalable image from an SVG document.
proc fz_new_display_list_from_svg_xml*(ctx: ptr fz_context; xml: ptr fz_xml;
                                      base_uri: cstring; zip: ptr fz_archive;
                                      w: ptr cfloat; h: ptr cfloat): ptr fz_display_list {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Parse an SVG document into a display-list.
proc fz_new_image_from_svg_xml*(ctx: ptr fz_context; xml: ptr fz_xml;
                               base_uri: cstring; zip: ptr fz_archive): ptr fz_image {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a scalable image from an SVG document.
proc fz_write_image_as_data_uri*(ctx: ptr fz_context; `out`: ptr fz_output;
                                image: ptr fz_image) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write image as a data URI (for HTML and SVG output).
proc fz_write_pixmap_as_data_uri*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 pixmap: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
proc fz_new_xhtml_document_from_document*(ctx: ptr fz_context;
    old_doc: ptr fz_document): ptr fz_document {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Use text extraction to convert the input document into XHTML,
  ##   	then open the result as a new document that can be reflowed.
proc fz_has_option*(ctx: ptr fz_context; opts: cstring; key: cstring; val: ptr cstring): cint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Look for a given option (key) in the opts string. Return 1 if
  ##   	it has it, and updateval to point to the value within opts.
proc fz_option_eq*(a: cstring; b: cstring): cint {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Check to see if an option, a, from a string matches a reference
  ##   	option, b.
  ##   
  ##   	(i.e. a could be 'foo' or 'foo,bar...' etc, but b can only be
  ##   	'foo'.)
proc fz_copy_option*(ctx: ptr fz_context; val: cstring; dest: cstring; maxlen: uint): uint {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Copy an option (val) into a destination buffer (dest), of maxlen
  ##   	bytes.
  ##   
  ##   	Returns the number of bytes (including terminator) that did not
  ##   	fit. If val is maxlen or greater bytes in size, it will be left
  ##   	unterminated.
proc fz_new_document_writer*(ctx: ptr fz_context; path: cstring; format: cstring;
                            options: cstring): ptr fz_document_writer {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new fz_document_writer, for a
  ##   	file of the given type.
  ##   
  ##   	path: The document name to write (or NULL for default)
  ##   
  ##   	format: Which format to write (currently cbz, html, pdf, pam,
  ##   	pbm, pgm, pkm, png, ppm, pnm, svg, text, xhtml)
  ##   
  ##   	options: NULL, or pointer to comma separated string to control
  ##   	file generation.
proc fz_new_document_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                        format: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Like fz_new_document_writer but takes a fz_output for writing
  ##   	the result. Only works for multi-page formats.
proc fz_new_pdf_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Document writers for various possible output formats.
proc fz_new_pdf_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                   options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_svg_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_text_writer*(ctx: ptr fz_context; format: cstring; path: cstring;
                        options: cstring): ptr fz_document_writer {.importc, cdecl,
    impfitzHdr.}
proc fz_new_text_writer_with_output*(ctx: ptr fz_context; format: cstring;
                                    `out`: ptr fz_output; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_ps_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_ps_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                  options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pcl_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pcl_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                   options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pclm_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pclm_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pwg_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pwg_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                   options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_cbz_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_cbz_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                   options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pdfocr_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pdfocr_writer_with_output*(ctx: ptr fz_context; `out`: ptr fz_output;
                                      options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_png_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pam_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pnm_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pgm_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_ppm_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pbm_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_pkm_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_begin_page*(ctx: ptr fz_context; wri: ptr fz_document_writer; mediabox: fz_rect): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Called to start the process of writing a page to
  ##   	a document.
  ##   
  ##   	mediabox: page size rectangle in points.
  ##   
  ##   	Returns a borrowed fz_device to write page contents to. This
  ##   	should be kept if required, and only dropped if it was kept.
proc fz_end_page*(ctx: ptr fz_context; wri: ptr fz_document_writer) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Called to end the process of writing a page to a
  ##   	document.
proc fz_write_document*(ctx: ptr fz_context; wri: ptr fz_document_writer;
                       doc: ptr fz_document) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Convenience function to feed all the pages of a document to
  ##   	fz_begin_page/fz_run_page/fz_end_page.
proc fz_close_document_writer*(ctx: ptr fz_context; wri: ptr fz_document_writer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Called to end the process of writing
  ##   	pages to a document.
  ##   
  ##   	This writes any file level trailers required. After this
  ##   	completes successfully the file is up to date and complete.
proc fz_drop_document_writer*(ctx: ptr fz_context; wri: ptr fz_document_writer) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Called to discard a fz_document_writer.
  ##   	This may be called at any time during the process to release all
  ##   	the resources owned by the writer.
  ##   
  ##   	Calling drop without having previously called close may leave
  ##   	the file in an inconsistent state.
proc fz_new_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring;
                          default_path: cstring; n: cint; save: proc (
    ctx: ptr fz_context; pix: ptr fz_pixmap; filename: cstring) {.cdecl.}): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_new_document_writer_of_size*(ctx: ptr fz_context; size: uint; begin_page: ptr fz_document_writer_begin_page_fn;
    end_page: ptr fz_document_writer_end_page_fn; close: ptr fz_document_writer_close_writer_fn;
                                    drop: ptr fz_document_writer_drop_writer_fn): ptr fz_document_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Internal function to allocate a
  ##   	block for a derived document_writer structure, with the base
  ##   	structure's function pointers populated correctly, and the extra
  ##   	space zero initialised.
proc fz_write_header*(ctx: ptr fz_context; writer: ptr fz_band_writer; w: cint; h: cint;
                     n: cint; alpha: cint; xres: cint; yres: cint; pagenum: cint;
                     cs: ptr fz_colorspace; seps: ptr fz_separations) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Cause a band writer to write the header for
  ##   	a banded image with the given properties/dimensions etc. This
  ##   	also configures the bandwriter for the format of the data to be
  ##   	passed in future calls.
  ##   
  ##   	w, h: Width and Height of the entire page.
  ##   
  ##   	n: Number of components (including spots and alphas).
  ##   
  ##   	alpha: Number of alpha components.
  ##   
  ##   	xres, yres: X and Y resolutions in dpi.
  ##   
  ##   	cs: Colorspace (NULL for bitmaps)
  ##   
  ##   	seps: Separation details (or NULL).
proc fz_write_band*(ctx: ptr fz_context; writer: ptr fz_band_writer; stride: cint;
                   band_height: cint; samples: ptr cuchar) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Cause a band writer to write the next band
  ##   	of data for an image.
  ##   
  ##   	stride: The byte offset from the first byte of the data
  ##   	for a pixel to the first byte of the data for the same pixel
  ##   	on the row below.
  ##   
  ##   	band_height: The number of lines in this band.
  ##   
  ##   	samples: Pointer to first byte of the data.
proc fz_drop_band_writer*(ctx: ptr fz_context; writer: ptr fz_band_writer) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Drop the reference to the band writer, causing it to be
  ##   	destroyed.
  ##   
  ##   	Never throws an exception.
proc fz_new_band_writer_of_size*(ctx: ptr fz_context; size: uint; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
proc fz_pcl_preset*(ctx: ptr fz_context; opts: ptr fz_pcl_options; preset: cstring) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Initialize PCL option struct for a given preset.
  ##   
  ##   	Currently defined presets include:
  ##   
  ##   		generic	Generic PCL printer
  ##   		ljet4	HP DeskJet
  ##   		dj500	HP DeskJet 500
  ##   		fs600	Kyocera FS-600
  ##   		lj	HP LaserJet, HP LaserJet Plus
  ##   		lj2	HP LaserJet IIp, HP LaserJet IId
  ##   		lj3	HP LaserJet III
  ##   		lj3d	HP LaserJet IIId
  ##   		lj4	HP LaserJet 4
  ##   		lj4pl	HP LaserJet 4 PL
  ##   		lj4d	HP LaserJet 4d
  ##   		lp2563b	HP 2563B line printer
  ##   		oce9050	Oce 9050 Line printer
proc fz_parse_pcl_options*(ctx: ptr fz_context; opts: ptr fz_pcl_options; args: cstring): ptr fz_pcl_options {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Parse PCL options.
  ##   
  ##   	Currently defined options and values are as follows:
  ##   
  ##   		preset=X	Either "generic" or one of the presets as for fz_pcl_preset.
  ##   		spacing=0	No vertical spacing capability
  ##   		spacing=1	PCL 3 spacing (<ESC>p+<n>Y)
  ##   		spacing=2	PCL 4 spacing (<ESC>b<n>Y)
  ##   		spacing=3	PCL 5 spacing (<ESC>b<n>Y and clear seed row)
  ##   		mode2		Disable/Enable mode 2 graphics compression
  ##   		mode3		Disable/Enable mode 3 graphics compression
  ##   		eog_reset	End of graphics (<ESC>rB) resets all parameters
  ##   		has_duplex	Duplex supported (<ESC>&l<duplex>S)
  ##   		has_papersize	Papersize setting supported (<ESC>&l<sizecode>A)
  ##   		has_copies	Number of copies supported (<ESC>&l<copies>X)
  ##   		is_ljet4pjl	Disable/Enable HP 4PJL model-specific output
  ##   		is_oce9050	Disable/Enable Oce 9050 model-specific output
proc fz_new_mono_pcl_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 options: ptr fz_pcl_options): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new band writer, outputing monochrome pcl.
proc fz_write_bitmap_as_pcl*(ctx: ptr fz_context; `out`: ptr fz_output;
                            bitmap: ptr fz_bitmap; pcl: ptr fz_pcl_options) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a bitmap as mono PCL.
proc fz_save_bitmap_as_pcl*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                           filename: cstring; append: cint; pcl: ptr fz_pcl_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a bitmap as mono PCL.
proc fz_new_color_pcl_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output;
                                  options: ptr fz_pcl_options): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new band writer, outputing color pcl.
proc fz_write_pixmap_as_pcl*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pixmap: ptr fz_pixmap; pcl: ptr fz_pcl_options) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write an (RGB) pixmap as color PCL.
proc fz_save_pixmap_as_pcl*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring; append: cint; pcl: ptr fz_pcl_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save an (RGB) pixmap as color PCL.
proc fz_parse_pclm_options*(ctx: ptr fz_context; opts: ptr fz_pclm_options;
                           args: cstring): ptr fz_pclm_options {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Parse PCLm options.
  ##   
  ##   	Currently defined options and values are as follows:
  ##   
  ##   		compression=none: No compression
  ##   		compression=flate: Flate compression
  ##   		strip-height=n: Strip height (default 16)
proc fz_new_pclm_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output;
                             options: ptr fz_pclm_options): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new band writer, outputing pclm
proc fz_write_pixmap_as_pclm*(ctx: ptr fz_context; `out`: ptr fz_output;
                             pixmap: ptr fz_pixmap; options: ptr fz_pclm_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a (Greyscale or RGB) pixmap as pclm.
proc fz_save_pixmap_as_pclm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring; append: cint;
                            options: ptr fz_pclm_options) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Save a (Greyscale or RGB) pixmap as pclm.
proc fz_parse_pdfocr_options*(ctx: ptr fz_context; opts: ptr fz_pdfocr_options;
                             args: cstring): ptr fz_pdfocr_options {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Parse PDFOCR options.
  ##   
  ##   	Currently defined options and values are as follows:
  ##   
  ##   		compression=none: No compression
  ##   		compression=flate: Flate compression
  ##   		strip-height=n: Strip height (default 16)
  ##   		ocr-language=<lang>: OCR Language (default eng)
proc fz_new_pdfocr_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output;
                               options: ptr fz_pdfocr_options): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new band writer, outputing pdfocr
proc fz_write_pixmap_as_pdfocr*(ctx: ptr fz_context; `out`: ptr fz_output;
                               pixmap: ptr fz_pixmap;
                               options: ptr fz_pdfocr_options) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Write a (Greyscale or RGB) pixmap as pdfocr.
proc fz_save_pixmap_as_pdfocr*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                              filename: cstring; append: cint;
                              options: ptr fz_pdfocr_options) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Save a (Greyscale or RGB) pixmap as pdfocr.
proc fz_save_pixmap_as_png*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a (Greyscale or RGB) pixmap as a png.
proc fz_write_pixmap_as_png*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pixmap: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a (Greyscale or RGB) pixmap as a png.
proc fz_new_png_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new png band writer (greyscale or RGB, with or without
  ##   	alpha).
proc fz_new_buffer_from_image_as_png*(ctx: ptr fz_context; image: ptr fz_image;
                                     color_params: fz_color_params): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Reencode a given image as a PNG into a buffer.
  ##   
  ##   	Ownership of the buffer is returned.
proc fz_new_buffer_from_pixmap_as_png*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                                      color_params: fz_color_params): ptr fz_buffer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Reencode a given pixmap as a PNG into a buffer.
  ##   
  ##   	Ownership of the buffer is returned.
proc fz_save_pixmap_as_pnm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a pixmap as a pnm (greyscale or rgb, no alpha).
proc fz_write_pixmap_as_pnm*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pixmap: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a pixmap as a pnm (greyscale or rgb, no alpha).
proc fz_new_pnm_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a band writer targetting pnm (greyscale or rgb, no
  ##   	alpha).
proc fz_save_pixmap_as_pam*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a pixmap as a pnm (greyscale, rgb or cmyk, with or without
  ##   	alpha).
proc fz_write_pixmap_as_pam*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pixmap: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a pixmap as a pnm (greyscale, rgb or cmyk, with or without
  ##   	alpha).
proc fz_new_pam_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a band writer targetting pnm (greyscale, rgb or cmyk,
  ##   	with or without alpha).
proc fz_save_bitmap_as_pbm*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a bitmap as a pbm.
proc fz_write_bitmap_as_pbm*(ctx: ptr fz_context; `out`: ptr fz_output;
                            bitmap: ptr fz_bitmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a bitmap as a pbm.
proc fz_new_pbm_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new band writer, targetting pbm.
proc fz_save_pixmap_as_pbm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a pixmap as a pbm. (Performing halftoning).
proc fz_save_bitmap_as_pkm*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a CMYK bitmap as a pkm.
proc fz_write_bitmap_as_pkm*(ctx: ptr fz_context; `out`: ptr fz_output;
                            bitmap: ptr fz_bitmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a CMYK bitmap as a pkm.
proc fz_new_pkm_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new pkm band writer for CMYK pixmaps.
proc fz_save_pixmap_as_pkm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a CMYK pixmap as a pkm. (Performing halftoning).
proc fz_write_pixmap_as_ps*(ctx: ptr fz_context; `out`: ptr fz_output;
                           pixmap: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a (gray, rgb, or cmyk, no alpha) pixmap out as postscript.
proc fz_save_pixmap_as_ps*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                          filename: cstring; append: cint) {.importc, cdecl,
    impfitzHdr.}
  ## ::
  ##   
  ##   	Save a (gray, rgb, or cmyk, no alpha) pixmap out as postscript.
proc fz_new_ps_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a postscript band writer for gray, rgb, or cmyk, no
  ##   	alpha.
proc fz_write_ps_file_header*(ctx: ptr fz_context; `out`: ptr fz_output) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write the file level header for ps band writer output.
proc fz_write_ps_file_trailer*(ctx: ptr fz_context; `out`: ptr fz_output; pages: cint) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write the file level trailer for ps band writer output.
proc fz_save_pixmap_as_psd*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a pixmap as a PSD file.
proc fz_write_pixmap_as_psd*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pixmap: ptr fz_pixmap) {.importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a pixmap as a PSD file.
proc fz_new_psd_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Open a PSD band writer.
proc fz_save_pixmap_as_pwg*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring; append: cint; pwg: ptr fz_pwg_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a pixmap as a PWG.
proc fz_save_bitmap_as_pwg*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                           filename: cstring; append: cint; pwg: ptr fz_pwg_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Save a bitmap as a PWG.
proc fz_write_pixmap_as_pwg*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pixmap: ptr fz_pixmap; pwg: ptr fz_pwg_options) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a pixmap as a PWG.
proc fz_write_bitmap_as_pwg*(ctx: ptr fz_context; `out`: ptr fz_output;
                            bitmap: ptr fz_bitmap; pwg: ptr fz_pwg_options) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a bitmap as a PWG.
proc fz_write_pixmap_as_pwg_page*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 pixmap: ptr fz_pixmap; pwg: ptr fz_pwg_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a pixmap as a PWG page.
  ##   
  ##   	Caller should provide a file header by calling
  ##   	fz_write_pwg_file_header, but can then write several pages to
  ##   	the same file.
proc fz_write_bitmap_as_pwg_page*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 bitmap: ptr fz_bitmap; pwg: ptr fz_pwg_options) {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Write a bitmap as a PWG page.
  ##   
  ##   	Caller should provide a file header by calling
  ##   	fz_write_pwg_file_header, but can then write several pages to
  ##   	the same file.
proc fz_new_mono_pwg_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output;
                                 pwg: ptr fz_pwg_options): ptr fz_band_writer {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new monochrome pwg band writer.
proc fz_new_pwg_band_writer*(ctx: ptr fz_context; `out`: ptr fz_output;
                            pwg: ptr fz_pwg_options): ptr fz_band_writer {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a new color pwg band writer.
proc fz_write_pwg_file_header*(ctx: ptr fz_context; `out`: ptr fz_output) {.importc,
    cdecl, impfitzHdr.}
  ## ::
  ##    for use by mudraw.c
proc fz_new_svg_device*(ctx: ptr fz_context; `out`: ptr fz_output; page_width: cfloat;
                       page_height: cfloat; text_format: cint; reuse_images: cint): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device that outputs (single page) SVG files to
  ##   	the given output stream.
  ##   
  ##   	Equivalent to fz_new_svg_device_with_id passing id = NULL.
proc fz_new_svg_device_with_id*(ctx: ptr fz_context; `out`: ptr fz_output;
                               page_width: cfloat; page_height: cfloat;
                               text_format: cint; reuse_images: cint; id: ptr cint): ptr fz_device {.
    importc, cdecl, impfitzHdr.}
  ## ::
  ##   
  ##   	Create a device that outputs (single page) SVG files to
  ##   	the given output stream.
  ##   
  ##   	output: The output stream to send the constructed SVG page to.
  ##   
  ##   	page_width, page_height: The page dimensions to use (in points).
  ##   
  ##   	text_format: How to emit text. One of the following values:
  ##   		FZ_SVG_TEXT_AS_TEXT: As <text> elements with possible
  ##   		layout errors and mismatching fonts.
  ##   		FZ_SVG_TEXT_AS_PATH: As <path> elements with exact
  ##   		visual appearance.
  ##   
  ##   	reuse_images: Share image resources using <symbol> definitions.
  ##   
  ##   	id: ID parameter to keep generated IDs unique across SVG files.
