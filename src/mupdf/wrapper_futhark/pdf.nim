type
  struct_IO_marker = object
  struct_IO_codecvt = object
  struct_IO_wide_data = object
  compiler_builtin_va_list = object
  struct_locale_data = object
  struct_fz_font_context = object
  struct_fz_colorspace_context = object
  struct_fz_style_context = object
  struct_fz_tuning_context = object
  struct_fz_store = object
  struct_fz_glyph_cache = object
  struct_fz_document_handler_context = object
  struct_fz_archive_handler_context = object
  struct_fz_hash_table = object
  struct_fz_pool = object
  struct_fz_tree = object
  struct_fz_zip_writer = object
  struct_fz_xml = object
  struct_fz_icc_profile = object
  struct_fz_separations = object
  struct_fz_overprint = object
  struct_fz_jbig2_globals = object
  struct_fz_halftone = object
  struct_fz_compressed_image = object
  struct_fz_pixmap_image = object
  struct_fz_shade_color_cache = object
  struct_fz_display_list = object
  struct_fz_path = object
  struct_fz_glyph = object
  struct_fz_story = object
  struct_pdf_crypt = object
  struct_pdf_journal = object
  struct_pdf_obj = object
  struct_pdf_ocg_descriptor = object
  struct_pdf_annot = object
  struct_pdf_js = object
  struct_pdf_graft_map = object
  struct_pdf_locked_fields = object
  struct_cmap_splay = object
  struct_pdf_function = object
  struct_pdf_gstate = object
  typedef = object
  compiler_va_list_tag = object

const
  FP_NAN* = cuint(0)
const
  FP_INFINITE* = cuint(1)
const
  FP_ZERO* = cuint(2)
const
  FP_SUBNORMAL* = cuint(3)
const
  FP_NORMAL* = cuint(4)
const
  FZ_LOCK_ALLOC* = cuint(0)
const
  FZ_LOCK_FREETYPE* = cuint(1)
const
  FZ_LOCK_GLYPHCACHE* = cuint(2)
const
  FZ_LOCK_MAX* = cuint(3)
const
  FZ_STORE_UNLIMITED* = cuint(0)
const
  FZ_STORE_DEFAULT* = cuint(268435456)
const
  FZ_UTFMAX* = cuint(4)
const
  FZ_RI_PERCEPTUAL* = cuint(0)
const
  FZ_RI_RELATIVE_COLORIMETRIC* = cuint(1)
const
  FZ_RI_SATURATION* = cuint(2)
const
  FZ_RI_ABSOLUTE_COLORIMETRIC* = cuint(3)
const
  FZ_MAX_COLORS* = cuint(32)
const
  FZ_COLORSPACE_IS_DEVICE* = cuint(1)
const
  FZ_COLORSPACE_IS_ICC* = cuint(2)
const
  FZ_COLORSPACE_HAS_CMYK* = cuint(4)
const
  FZ_COLORSPACE_HAS_SPOTS* = cuint(8)
const
  FZ_COLORSPACE_HAS_CMYK_AND_SPOTS* = cuint(12)
const
  FZ_MAX_SEPARATIONS* = cuint(64)
const
  FZ_PIXMAP_FLAG_INTERPOLATE* = cuint(1)
const
  FZ_PIXMAP_FLAG_FREE_SAMPLES* = cuint(2)
const
  FZ_IMAGE_UNKNOWN* = cuint(0)
const
  FZ_IMAGE_RAW* = cuint(1)
const
  FZ_IMAGE_FAX* = cuint(2)
const
  FZ_IMAGE_FLATE* = cuint(3)
const
  FZ_IMAGE_LZW* = cuint(4)
const
  FZ_IMAGE_RLD* = cuint(5)
const
  FZ_IMAGE_BMP* = cuint(6)
const
  FZ_IMAGE_GIF* = cuint(7)
const
  FZ_IMAGE_JBIG2* = cuint(8)
const
  FZ_IMAGE_JPEG* = cuint(9)
const
  FZ_IMAGE_JPX* = cuint(10)
const
  FZ_IMAGE_JXR* = cuint(11)
const
  FZ_IMAGE_PNG* = cuint(12)
const
  FZ_IMAGE_PNM* = cuint(13)
const
  FZ_IMAGE_TIFF* = cuint(14)
const
  FZ_IMAGE_PSD* = cuint(15)
const
  FZ_FUNCTION_BASED* = cuint(1)
const
  FZ_LINEAR* = cuint(2)
const
  FZ_RADIAL* = cuint(3)
const
  FZ_MESH_TYPE4* = cuint(4)
const
  FZ_MESH_TYPE5* = cuint(5)
const
  FZ_MESH_TYPE6* = cuint(6)
const
  FZ_MESH_TYPE7* = cuint(7)
const
  FZ_ADOBE_CNS* = cuint(0)
const
  FZ_ADOBE_GB* = cuint(1)
const
  FZ_ADOBE_JAPAN* = cuint(2)
const
  FZ_ADOBE_KOREA* = cuint(3)
const
  FZ_DEVFLAG_MASK* = cuint(1)
const
  FZ_DEVFLAG_COLOR* = cuint(2)
const
  FZ_DEVFLAG_UNCACHEABLE* = cuint(4)
const
  FZ_DEVFLAG_FILLCOLOR_UNDEFINED* = cuint(8)
const
  FZ_DEVFLAG_STROKECOLOR_UNDEFINED* = cuint(16)
const
  FZ_DEVFLAG_STARTCAP_UNDEFINED* = cuint(32)
const
  FZ_DEVFLAG_DASHCAP_UNDEFINED* = cuint(64)
const
  FZ_DEVFLAG_ENDCAP_UNDEFINED* = cuint(128)
const
  FZ_DEVFLAG_LINEJOIN_UNDEFINED* = cuint(256)
const
  FZ_DEVFLAG_MITERLIMIT_UNDEFINED* = cuint(512)
const
  FZ_DEVFLAG_LINEWIDTH_UNDEFINED* = cuint(1024)
const
  FZ_DEVFLAG_BBOX_DEFINED* = cuint(2048)
const
  FZ_DEVFLAG_GRIDFIT_AS_TILED* = cuint(4096)
const
  FZ_BLEND_NORMAL* = cuint(0)
const
  FZ_BLEND_MULTIPLY* = cuint(1)
const
  FZ_BLEND_SCREEN* = cuint(2)
const
  FZ_BLEND_OVERLAY* = cuint(3)
const
  FZ_BLEND_DARKEN* = cuint(4)
const
  FZ_BLEND_LIGHTEN* = cuint(5)
const
  FZ_BLEND_COLOR_DODGE* = cuint(6)
const
  FZ_BLEND_COLOR_BURN* = cuint(7)
const
  FZ_BLEND_HARD_LIGHT* = cuint(8)
const
  FZ_BLEND_SOFT_LIGHT* = cuint(9)
const
  FZ_BLEND_DIFFERENCE* = cuint(10)
const
  FZ_BLEND_EXCLUSION* = cuint(11)
const
  FZ_BLEND_HUE* = cuint(12)
const
  FZ_BLEND_SATURATION* = cuint(13)
const
  FZ_BLEND_COLOR* = cuint(14)
const
  FZ_BLEND_LUMINOSITY* = cuint(15)
const
  FZ_BLEND_MODEMASK* = cuint(15)
const
  FZ_BLEND_ISOLATED* = cuint(16)
const
  FZ_BLEND_KNOCKOUT* = cuint(32)
const
  FZ_FUNCTION_MAX_N* = cuint(32)
const
  FZ_FUNCTION_MAX_M* = cuint(32)
const
  fz_device_container_stack_is_clip* = cuint(0)
const
  fz_device_container_stack_is_mask* = cuint(1)
const
  fz_device_container_stack_is_group* = cuint(2)
const
  fz_device_container_stack_is_tile* = cuint(3)
const
  FZ_DONT_INTERPOLATE_IMAGES* = cuint(1)
const
  FZ_NO_CACHE* = cuint(2)
const
  FZ_DONT_DECODE_IMAGES* = cuint(4)
const
  FZ_TEST_OPT_IMAGES* = cuint(1)
const
  FZ_TEST_OPT_SHADINGS* = cuint(2)
const
  FZ_STEXT_PRESERVE_LIGATURES* = cuint(1)
const
  FZ_STEXT_PRESERVE_WHITESPACE* = cuint(2)
const
  FZ_STEXT_PRESERVE_IMAGES* = cuint(4)
const
  FZ_STEXT_INHIBIT_SPACES* = cuint(8)
const
  FZ_STEXT_DEHYPHENATE* = cuint(16)
const
  FZ_STEXT_PRESERVE_SPANS* = cuint(32)
const
  FZ_STEXT_CLIP* = cuint(64)
const
  FZ_STEXT_USE_CID_FOR_UNKNOWN_UNICODE* = cuint(128)
const
  FZ_STEXT_COLLECT_STRUCTURE* = cuint(256)
const
  FZ_STEXT_ACCURATE_BBOXES* = cuint(512)
const
  FZ_STEXT_COLLECT_VECTORS* = cuint(1024)
const
  FZ_STEXT_IGNORE_ACTUALTEXT* = cuint(2048)
const
  FZ_STEXT_SEGMENT* = cuint(4096)
const
  FZ_STEXT_MEDIABOX_CLIP* = cuint(64)
const
  FZ_STEXT_BLOCK_TEXT* = cuint(0)
const
  FZ_STEXT_BLOCK_IMAGE* = cuint(1)
const
  FZ_STEXT_BLOCK_STRUCT* = cuint(2)
const
  FZ_STEXT_BLOCK_VECTOR* = cuint(3)
const
  FZ_STEXT_BLOCK_GRID* = cuint(4)
const
  FZ_STEXT_STRIKEOUT* = cuint(1)
const
  FZ_STEXT_UNDERLINE* = cuint(2)
const
  FZ_STEXT_SYNTHETIC* = cuint(4)
const
  FZ_STEXT_FILLED* = cuint(16)
const
  FZ_STEXT_STROKED* = cuint(32)
const
  FZ_STEXT_CLIPPED* = cuint(64)
const
  FZ_SELECT_CHARS* = cuint(0)
const
  FZ_SELECT_WORDS* = cuint(1)
const
  FZ_SELECT_LINES* = cuint(2)
const
  FZ_TRANSITION_NONE* = cuint(0)
const
  FZ_TRANSITION_SPLIT* = cuint(1)
const
  FZ_TRANSITION_BLINDS* = cuint(2)
const
  FZ_TRANSITION_BOX* = cuint(3)
const
  FZ_TRANSITION_WIPE* = cuint(4)
const
  FZ_TRANSITION_DISSOLVE* = cuint(5)
const
  FZ_TRANSITION_GLITTER* = cuint(6)
const
  FZ_TRANSITION_FLY* = cuint(7)
const
  FZ_TRANSITION_PUSH* = cuint(8)
const
  FZ_TRANSITION_COVER* = cuint(9)
const
  FZ_TRANSITION_UNCOVER* = cuint(10)
const
  FZ_TRANSITION_FADE* = cuint(11)
const
  FZ_LAYOUT_KINDLE_W* = cuint(260)
const
  FZ_LAYOUT_KINDLE_H* = cuint(346)
const
  FZ_LAYOUT_KINDLE_EM* = cuint(9)
const
  FZ_LAYOUT_US_POCKET_W* = cuint(306)
const
  FZ_LAYOUT_US_POCKET_H* = cuint(495)
const
  FZ_LAYOUT_US_POCKET_EM* = cuint(10)
const
  FZ_LAYOUT_US_TRADE_W* = cuint(396)
const
  FZ_LAYOUT_US_TRADE_H* = cuint(612)
const
  FZ_LAYOUT_US_TRADE_EM* = cuint(11)
const
  FZ_LAYOUT_UK_A_FORMAT_W* = cuint(312)
const
  FZ_LAYOUT_UK_A_FORMAT_H* = cuint(504)
const
  FZ_LAYOUT_UK_A_FORMAT_EM* = cuint(10)
const
  FZ_LAYOUT_UK_B_FORMAT_W* = cuint(366)
const
  FZ_LAYOUT_UK_B_FORMAT_H* = cuint(561)
const
  FZ_LAYOUT_UK_B_FORMAT_EM* = cuint(10)
const
  FZ_LAYOUT_UK_C_FORMAT_W* = cuint(382)
const
  FZ_LAYOUT_UK_C_FORMAT_H* = cuint(612)
const
  FZ_LAYOUT_UK_C_FORMAT_EM* = cuint(11)
const
  FZ_LAYOUT_A5_W* = cuint(420)
const
  FZ_LAYOUT_A5_H* = cuint(595)
const
  FZ_LAYOUT_A5_EM* = cuint(11)
const
  FZ_DEFAULT_LAYOUT_W* = cuint(420)
const
  FZ_DEFAULT_LAYOUT_H* = cuint(595)
const
  FZ_DEFAULT_LAYOUT_EM* = cuint(11)
const
  FZ_SVG_TEXT_AS_PATH* = cuint(0)
const
  FZ_SVG_TEXT_AS_TEXT* = cuint(1)
const
  FZ_PLACE_STORY_FLAG_NO_OVERFLOW* = cuint(1)
const
  FZ_PLACE_STORY_RETURN_ALL_FITTED* = cuint(0)
const
  FZ_PLACE_STORY_RETURN_OVERFLOW_WIDTH* = cuint(2)
const
  FZ_DESKEW_BORDER_INCREASE* = cuint(0)
const
  FZ_DESKEW_BORDER_MAINTAIN* = cuint(1)
const
  FZ_DESKEW_BORDER_DECREASE* = cuint(2)
const
  PDF_ENUM_NULL* = cuint(0)
const
  PDF_ENUM_TRUE* = cuint(1)
const
  PDF_ENUM_FALSE* = cuint(2)
const
  PDF_ENUM_NAME_1_2* = cuint(3)
const
  PDF_ENUM_NAME_1_5* = cuint(4)
const
  PDF_ENUM_NAME_3D* = cuint(5)
const
  PDF_ENUM_NAME_A* = cuint(6)
const
  PDF_ENUM_NAME_A85* = cuint(7)
const
  PDF_ENUM_NAME_AA* = cuint(8)
const
  PDF_ENUM_NAME_AC* = cuint(9)
const
  PDF_ENUM_NAME_AESV2* = cuint(10)
const
  PDF_ENUM_NAME_AESV3* = cuint(11)
const
  PDF_ENUM_NAME_AF* = cuint(12)
const
  PDF_ENUM_NAME_AFRelationship* = cuint(13)
const
  PDF_ENUM_NAME_AHx* = cuint(14)
const
  PDF_ENUM_NAME_AP* = cuint(15)
const
  PDF_ENUM_NAME_AS* = cuint(16)
const
  PDF_ENUM_NAME_ASCII85Decode* = cuint(17)
const
  PDF_ENUM_NAME_ASCIIHexDecode* = cuint(18)
const
  PDF_ENUM_NAME_AcroForm* = cuint(19)
const
  PDF_ENUM_NAME_Action* = cuint(20)
const
  PDF_ENUM_NAME_ActualText* = cuint(21)
const
  PDF_ENUM_NAME_Adobe_PPKLite* = cuint(22)
const
  PDF_ENUM_NAME_All* = cuint(23)
const
  PDF_ENUM_NAME_AllOff* = cuint(24)
const
  PDF_ENUM_NAME_AllOn* = cuint(25)
const
  PDF_ENUM_NAME_Alpha* = cuint(26)
const
  PDF_ENUM_NAME_Alt* = cuint(27)
const
  PDF_ENUM_NAME_Alternate* = cuint(28)
const
  PDF_ENUM_NAME_Alternative* = cuint(29)
const
  PDF_ENUM_NAME_Annot* = cuint(30)
const
  PDF_ENUM_NAME_Annots* = cuint(31)
const
  PDF_ENUM_NAME_AnyOff* = cuint(32)
const
  PDF_ENUM_NAME_App* = cuint(33)
const
  PDF_ENUM_NAME_Approved* = cuint(34)
const
  PDF_ENUM_NAME_Art* = cuint(35)
const
  PDF_ENUM_NAME_ArtBox* = cuint(36)
const
  PDF_ENUM_NAME_Artifact* = cuint(37)
const
  PDF_ENUM_NAME_AsIs* = cuint(38)
const
  PDF_ENUM_NAME_Ascent* = cuint(39)
const
  PDF_ENUM_NAME_Aside* = cuint(40)
const
  PDF_ENUM_NAME_AuthEvent* = cuint(41)
const
  PDF_ENUM_NAME_Author* = cuint(42)
const
  PDF_ENUM_NAME_B* = cuint(43)
const
  PDF_ENUM_NAME_BBox* = cuint(44)
const
  PDF_ENUM_NAME_BC* = cuint(45)
const
  PDF_ENUM_NAME_BE* = cuint(46)
const
  PDF_ENUM_NAME_BG* = cuint(47)
const
  PDF_ENUM_NAME_BM* = cuint(48)
const
  PDF_ENUM_NAME_BPC* = cuint(49)
const
  PDF_ENUM_NAME_BS* = cuint(50)
const
  PDF_ENUM_NAME_Background* = cuint(51)
const
  PDF_ENUM_NAME_BaseEncoding* = cuint(52)
const
  PDF_ENUM_NAME_BaseFont* = cuint(53)
const
  PDF_ENUM_NAME_BaseState* = cuint(54)
const
  PDF_ENUM_NAME_BibEntry* = cuint(55)
const
  PDF_ENUM_NAME_BitsPerComponent* = cuint(56)
const
  PDF_ENUM_NAME_BitsPerCoordinate* = cuint(57)
const
  PDF_ENUM_NAME_BitsPerFlag* = cuint(58)
const
  PDF_ENUM_NAME_BitsPerSample* = cuint(59)
const
  PDF_ENUM_NAME_BlackIs1* = cuint(60)
const
  PDF_ENUM_NAME_BlackPoint* = cuint(61)
const
  PDF_ENUM_NAME_BleedBox* = cuint(62)
const
  PDF_ENUM_NAME_Blinds* = cuint(63)
const
  PDF_ENUM_NAME_BlockQuote* = cuint(64)
const
  PDF_ENUM_NAME_Border* = cuint(65)
const
  PDF_ENUM_NAME_Bounds* = cuint(66)
const
  PDF_ENUM_NAME_Box* = cuint(67)
const
  PDF_ENUM_NAME_Bt* = cuint(68)
const
  PDF_ENUM_NAME_Btn* = cuint(69)
const
  PDF_ENUM_NAME_Butt* = cuint(70)
const
  PDF_ENUM_NAME_ByteRange* = cuint(71)
const
  PDF_ENUM_NAME_C* = cuint(72)
const
  PDF_ENUM_NAME_C0* = cuint(73)
const
  PDF_ENUM_NAME_C1* = cuint(74)
const
  PDF_ENUM_NAME_CA* = cuint(75)
const
  PDF_ENUM_NAME_CCF* = cuint(76)
const
  PDF_ENUM_NAME_CCITTFaxDecode* = cuint(77)
const
  PDF_ENUM_NAME_CF* = cuint(78)
const
  PDF_ENUM_NAME_CFM* = cuint(79)
const
  PDF_ENUM_NAME_CI* = cuint(80)
const
  PDF_ENUM_NAME_CIDFontType0* = cuint(81)
const
  PDF_ENUM_NAME_CIDFontType0C* = cuint(82)
const
  PDF_ENUM_NAME_CIDFontType2* = cuint(83)
const
  PDF_ENUM_NAME_CIDSystemInfo* = cuint(84)
const
  PDF_ENUM_NAME_CIDToGIDMap* = cuint(85)
const
  PDF_ENUM_NAME_CL* = cuint(86)
const
  PDF_ENUM_NAME_CMYK* = cuint(87)
const
  PDF_ENUM_NAME_CO* = cuint(88)
const
  PDF_ENUM_NAME_CP* = cuint(89)
const
  PDF_ENUM_NAME_CS* = cuint(90)
const
  PDF_ENUM_NAME_CalCMYK* = cuint(91)
const
  PDF_ENUM_NAME_CalGray* = cuint(92)
const
  PDF_ENUM_NAME_CalRGB* = cuint(93)
const
  PDF_ENUM_NAME_Cap* = cuint(94)
const
  PDF_ENUM_NAME_CapHeight* = cuint(95)
const
  PDF_ENUM_NAME_Caption* = cuint(96)
const
  PDF_ENUM_NAME_Caret* = cuint(97)
const
  PDF_ENUM_NAME_Catalog* = cuint(98)
const
  PDF_ENUM_NAME_Cert* = cuint(99)
const
  PDF_ENUM_NAME_Ch* = cuint(100)
const
  PDF_ENUM_NAME_Changes* = cuint(101)
const
  PDF_ENUM_NAME_CharProcs* = cuint(102)
const
  PDF_ENUM_NAME_CheckSum* = cuint(103)
const
  PDF_ENUM_NAME_Circle* = cuint(104)
const
  PDF_ENUM_NAME_ClosedArrow* = cuint(105)
const
  PDF_ENUM_NAME_Code* = cuint(106)
const
  PDF_ENUM_NAME_Collection* = cuint(107)
const
  PDF_ENUM_NAME_ColorSpace* = cuint(108)
const
  PDF_ENUM_NAME_ColorTransform* = cuint(109)
const
  PDF_ENUM_NAME_Colorants* = cuint(110)
const
  PDF_ENUM_NAME_Colors* = cuint(111)
const
  PDF_ENUM_NAME_Columns* = cuint(112)
const
  PDF_ENUM_NAME_Confidential* = cuint(113)
const
  PDF_ENUM_NAME_Configs* = cuint(114)
const
  PDF_ENUM_NAME_ContactInfo* = cuint(115)
const
  PDF_ENUM_NAME_Contents* = cuint(116)
const
  PDF_ENUM_NAME_Coords* = cuint(117)
const
  PDF_ENUM_NAME_Count* = cuint(118)
const
  PDF_ENUM_NAME_Cover* = cuint(119)
const
  PDF_ENUM_NAME_CreationDate* = cuint(120)
const
  PDF_ENUM_NAME_Creator* = cuint(121)
const
  PDF_ENUM_NAME_CropBox* = cuint(122)
const
  PDF_ENUM_NAME_Crypt* = cuint(123)
const
  PDF_ENUM_NAME_D* = cuint(124)
const
  PDF_ENUM_NAME_DA* = cuint(125)
const
  PDF_ENUM_NAME_DC* = cuint(126)
const
  PDF_ENUM_NAME_DCT* = cuint(127)
const
  PDF_ENUM_NAME_DCTDecode* = cuint(128)
const
  PDF_ENUM_NAME_DL* = cuint(129)
const
  PDF_ENUM_NAME_DOS* = cuint(130)
const
  PDF_ENUM_NAME_DP* = cuint(131)
const
  PDF_ENUM_NAME_DR* = cuint(132)
const
  PDF_ENUM_NAME_DS* = cuint(133)
const
  PDF_ENUM_NAME_DV* = cuint(134)
const
  PDF_ENUM_NAME_DW* = cuint(135)
const
  PDF_ENUM_NAME_DW2* = cuint(136)
const
  PDF_ENUM_NAME_DamagedRowsBeforeError* = cuint(137)
const
  PDF_ENUM_NAME_Data* = cuint(138)
const
  PDF_ENUM_NAME_Date* = cuint(139)
const
  PDF_ENUM_NAME_Decode* = cuint(140)
const
  PDF_ENUM_NAME_DecodeParms* = cuint(141)
const
  PDF_ENUM_NAME_Default* = cuint(142)
const
  PDF_ENUM_NAME_DefaultCMYK* = cuint(143)
const
  PDF_ENUM_NAME_DefaultGray* = cuint(144)
const
  PDF_ENUM_NAME_DefaultRGB* = cuint(145)
const
  PDF_ENUM_NAME_Departmental* = cuint(146)
const
  PDF_ENUM_NAME_Desc* = cuint(147)
const
  PDF_ENUM_NAME_DescendantFonts* = cuint(148)
const
  PDF_ENUM_NAME_Descent* = cuint(149)
const
  PDF_ENUM_NAME_Design* = cuint(150)
const
  PDF_ENUM_NAME_Dest* = cuint(151)
const
  PDF_ENUM_NAME_DestOutputProfile* = cuint(152)
const
  PDF_ENUM_NAME_Dests* = cuint(153)
const
  PDF_ENUM_NAME_DeviceCMYK* = cuint(154)
const
  PDF_ENUM_NAME_DeviceGray* = cuint(155)
const
  PDF_ENUM_NAME_DeviceN* = cuint(156)
const
  PDF_ENUM_NAME_DeviceRGB* = cuint(157)
const
  PDF_ENUM_NAME_Di* = cuint(158)
const
  PDF_ENUM_NAME_Diamond* = cuint(159)
const
  PDF_ENUM_NAME_Differences* = cuint(160)
const
  PDF_ENUM_NAME_DigestLocation* = cuint(161)
const
  PDF_ENUM_NAME_DigestMethod* = cuint(162)
const
  PDF_ENUM_NAME_DigestValue* = cuint(163)
const
  PDF_ENUM_NAME_Dissolve* = cuint(164)
const
  PDF_ENUM_NAME_Div* = cuint(165)
const
  PDF_ENUM_NAME_Dm* = cuint(166)
const
  PDF_ENUM_NAME_DocMDP* = cuint(167)
const
  PDF_ENUM_NAME_Document* = cuint(168)
const
  PDF_ENUM_NAME_DocumentFragment* = cuint(169)
const
  PDF_ENUM_NAME_Domain* = cuint(170)
const
  PDF_ENUM_NAME_Draft* = cuint(171)
const
  PDF_ENUM_NAME_Dur* = cuint(172)
const
  PDF_ENUM_NAME_E* = cuint(173)
const
  PDF_ENUM_NAME_EF* = cuint(174)
const
  PDF_ENUM_NAME_EarlyChange* = cuint(175)
const
  PDF_ENUM_NAME_Em* = cuint(176)
const
  PDF_ENUM_NAME_EmbeddedFile* = cuint(177)
const
  PDF_ENUM_NAME_EmbeddedFiles* = cuint(178)
const
  PDF_ENUM_NAME_Encode* = cuint(179)
const
  PDF_ENUM_NAME_EncodedByteAlign* = cuint(180)
const
  PDF_ENUM_NAME_Encoding* = cuint(181)
const
  PDF_ENUM_NAME_Encrypt* = cuint(182)
const
  PDF_ENUM_NAME_EncryptMetadata* = cuint(183)
const
  PDF_ENUM_NAME_EncryptedPayload* = cuint(184)
const
  PDF_ENUM_NAME_EndOfBlock* = cuint(185)
const
  PDF_ENUM_NAME_EndOfLine* = cuint(186)
const
  PDF_ENUM_NAME_Exclude* = cuint(187)
const
  PDF_ENUM_NAME_Experimental* = cuint(188)
const
  PDF_ENUM_NAME_Expired* = cuint(189)
const
  PDF_ENUM_NAME_ExtGState* = cuint(190)
const
  PDF_ENUM_NAME_Extend* = cuint(191)
const
  PDF_ENUM_NAME_F* = cuint(192)
const
  PDF_ENUM_NAME_FENote* = cuint(193)
const
  PDF_ENUM_NAME_FL* = cuint(194)
const
  PDF_ENUM_NAME_FRM* = cuint(195)
const
  PDF_ENUM_NAME_FS* = cuint(196)
const
  PDF_ENUM_NAME_FT* = cuint(197)
const
  PDF_ENUM_NAME_Fade* = cuint(198)
const
  PDF_ENUM_NAME_Ff* = cuint(199)
const
  PDF_ENUM_NAME_FieldMDP* = cuint(200)
const
  PDF_ENUM_NAME_Fields* = cuint(201)
const
  PDF_ENUM_NAME_Figure* = cuint(202)
const
  PDF_ENUM_NAME_FileAttachment* = cuint(203)
const
  PDF_ENUM_NAME_FileSize* = cuint(204)
const
  PDF_ENUM_NAME_Filespec* = cuint(205)
const
  PDF_ENUM_NAME_Filter* = cuint(206)
const
  PDF_ENUM_NAME_Final* = cuint(207)
const
  PDF_ENUM_NAME_Fingerprint* = cuint(208)
const
  PDF_ENUM_NAME_First* = cuint(209)
const
  PDF_ENUM_NAME_FirstChar* = cuint(210)
const
  PDF_ENUM_NAME_FirstPage* = cuint(211)
const
  PDF_ENUM_NAME_Fit* = cuint(212)
const
  PDF_ENUM_NAME_FitB* = cuint(213)
const
  PDF_ENUM_NAME_FitBH* = cuint(214)
const
  PDF_ENUM_NAME_FitBV* = cuint(215)
const
  PDF_ENUM_NAME_FitH* = cuint(216)
const
  PDF_ENUM_NAME_FitR* = cuint(217)
const
  PDF_ENUM_NAME_FitV* = cuint(218)
const
  PDF_ENUM_NAME_Fl_enumval* = cuint(219)
const
  PDF_ENUM_NAME_Flags* = cuint(220)
const
  PDF_ENUM_NAME_FlateDecode* = cuint(221)
const
  PDF_ENUM_NAME_Fly* = cuint(222)
const
  PDF_ENUM_NAME_Font* = cuint(223)
const
  PDF_ENUM_NAME_FontBBox* = cuint(224)
const
  PDF_ENUM_NAME_FontDescriptor* = cuint(225)
const
  PDF_ENUM_NAME_FontFile* = cuint(226)
const
  PDF_ENUM_NAME_FontFile2* = cuint(227)
const
  PDF_ENUM_NAME_FontFile3* = cuint(228)
const
  PDF_ENUM_NAME_FontMatrix* = cuint(229)
const
  PDF_ENUM_NAME_FontName* = cuint(230)
const
  PDF_ENUM_NAME_ForComment* = cuint(231)
const
  PDF_ENUM_NAME_ForPublicRelease* = cuint(232)
const
  PDF_ENUM_NAME_Form* = cuint(233)
const
  PDF_ENUM_NAME_FormData* = cuint(234)
const
  PDF_ENUM_NAME_FormEx* = cuint(235)
const
  PDF_ENUM_NAME_FormType* = cuint(236)
const
  PDF_ENUM_NAME_Formula* = cuint(237)
const
  PDF_ENUM_NAME_FreeText* = cuint(238)
const
  PDF_ENUM_NAME_FreeTextCallout* = cuint(239)
const
  PDF_ENUM_NAME_FreeTextTypeWriter* = cuint(240)
const
  PDF_ENUM_NAME_Function* = cuint(241)
const
  PDF_ENUM_NAME_FunctionType* = cuint(242)
const
  PDF_ENUM_NAME_Functions* = cuint(243)
const
  PDF_ENUM_NAME_G* = cuint(244)
const
  PDF_ENUM_NAME_GTS_PDFX* = cuint(245)
const
  PDF_ENUM_NAME_Gamma* = cuint(246)
const
  PDF_ENUM_NAME_Glitter* = cuint(247)
const
  PDF_ENUM_NAME_GoTo* = cuint(248)
const
  PDF_ENUM_NAME_GoToR* = cuint(249)
const
  PDF_ENUM_NAME_Group* = cuint(250)
const
  PDF_ENUM_NAME_H* = cuint(251)
const
  PDF_ENUM_NAME_H1* = cuint(252)
const
  PDF_ENUM_NAME_H2* = cuint(253)
const
  PDF_ENUM_NAME_H3* = cuint(254)
const
  PDF_ENUM_NAME_H4* = cuint(255)
const
  PDF_ENUM_NAME_H5* = cuint(256)
const
  PDF_ENUM_NAME_H6* = cuint(257)
const
  PDF_ENUM_NAME_Height* = cuint(258)
const
  PDF_ENUM_NAME_Helv* = cuint(259)
const
  PDF_ENUM_NAME_Highlight* = cuint(260)
const
  PDF_ENUM_NAME_HistoryPos* = cuint(261)
const
  PDF_ENUM_NAME_I* = cuint(262)
const
  PDF_ENUM_NAME_IC* = cuint(263)
const
  PDF_ENUM_NAME_ICCBased* = cuint(264)
const
  PDF_ENUM_NAME_ID* = cuint(265)
const
  PDF_ENUM_NAME_IM* = cuint(266)
const
  PDF_ENUM_NAME_IRT* = cuint(267)
const
  PDF_ENUM_NAME_IT* = cuint(268)
const
  PDF_ENUM_NAME_Identity* = cuint(269)
const
  PDF_ENUM_NAME_Identity_H* = cuint(270)
const
  PDF_ENUM_NAME_Identity_V* = cuint(271)
const
  PDF_ENUM_NAME_Image* = cuint(272)
const
  PDF_ENUM_NAME_ImageB* = cuint(273)
const
  PDF_ENUM_NAME_ImageC* = cuint(274)
const
  PDF_ENUM_NAME_ImageI* = cuint(275)
const
  PDF_ENUM_NAME_ImageMask* = cuint(276)
const
  PDF_ENUM_NAME_Include* = cuint(277)
const
  PDF_ENUM_NAME_Index* = cuint(278)
const
  PDF_ENUM_NAME_Indexed* = cuint(279)
const
  PDF_ENUM_NAME_Info* = cuint(280)
const
  PDF_ENUM_NAME_Ink* = cuint(281)
const
  PDF_ENUM_NAME_InkList* = cuint(282)
const
  PDF_ENUM_NAME_Intent* = cuint(283)
const
  PDF_ENUM_NAME_Interpolate* = cuint(284)
const
  PDF_ENUM_NAME_IsMap* = cuint(285)
const
  PDF_ENUM_NAME_ItalicAngle* = cuint(286)
const
  PDF_ENUM_NAME_JBIG2Decode* = cuint(287)
const
  PDF_ENUM_NAME_JBIG2Globals* = cuint(288)
const
  PDF_ENUM_NAME_JPXDecode* = cuint(289)
const
  PDF_ENUM_NAME_JS* = cuint(290)
const
  PDF_ENUM_NAME_JavaScript* = cuint(291)
const
  PDF_ENUM_NAME_K* = cuint(292)
const
  PDF_ENUM_NAME_Keywords* = cuint(293)
const
  PDF_ENUM_NAME_Kids* = cuint(294)
const
  PDF_ENUM_NAME_L* = cuint(295)
const
  PDF_ENUM_NAME_LBody* = cuint(296)
const
  PDF_ENUM_NAME_LC* = cuint(297)
const
  PDF_ENUM_NAME_LE* = cuint(298)
const
  PDF_ENUM_NAME_LI* = cuint(299)
const
  PDF_ENUM_NAME_LJ* = cuint(300)
const
  PDF_ENUM_NAME_LL* = cuint(301)
const
  PDF_ENUM_NAME_LLE* = cuint(302)
const
  PDF_ENUM_NAME_LLO* = cuint(303)
const
  PDF_ENUM_NAME_LW* = cuint(304)
const
  PDF_ENUM_NAME_LZ* = cuint(305)
const
  PDF_ENUM_NAME_LZW* = cuint(306)
const
  PDF_ENUM_NAME_LZWDecode* = cuint(307)
const
  PDF_ENUM_NAME_Lab* = cuint(308)
const
  PDF_ENUM_NAME_Label* = cuint(309)
const
  PDF_ENUM_NAME_Lang* = cuint(310)
const
  PDF_ENUM_NAME_Last* = cuint(311)
const
  PDF_ENUM_NAME_LastChar* = cuint(312)
const
  PDF_ENUM_NAME_LastPage* = cuint(313)
const
  PDF_ENUM_NAME_Launch* = cuint(314)
const
  PDF_ENUM_NAME_Layer* = cuint(315)
const
  PDF_ENUM_NAME_Lbl* = cuint(316)
const
  PDF_ENUM_NAME_Length* = cuint(317)
const
  PDF_ENUM_NAME_Length1* = cuint(318)
const
  PDF_ENUM_NAME_Length2* = cuint(319)
const
  PDF_ENUM_NAME_Length3* = cuint(320)
const
  PDF_ENUM_NAME_Limits* = cuint(321)
const
  PDF_ENUM_NAME_Line* = cuint(322)
const
  PDF_ENUM_NAME_LineArrow* = cuint(323)
const
  PDF_ENUM_NAME_LineDimension* = cuint(324)
const
  PDF_ENUM_NAME_Linearized* = cuint(325)
const
  PDF_ENUM_NAME_Link* = cuint(326)
const
  PDF_ENUM_NAME_List* = cuint(327)
const
  PDF_ENUM_NAME_Location* = cuint(328)
const
  PDF_ENUM_NAME_Lock* = cuint(329)
const
  PDF_ENUM_NAME_Locked* = cuint(330)
const
  PDF_ENUM_NAME_Luminosity* = cuint(331)
const
  PDF_ENUM_NAME_M* = cuint(332)
const
  PDF_ENUM_NAME_MCID* = cuint(333)
const
  PDF_ENUM_NAME_MK* = cuint(334)
const
  PDF_ENUM_NAME_ML* = cuint(335)
const
  PDF_ENUM_NAME_MMType1* = cuint(336)
const
  PDF_ENUM_NAME_Mac* = cuint(337)
const
  PDF_ENUM_NAME_Mask* = cuint(338)
const
  PDF_ENUM_NAME_Matrix* = cuint(339)
const
  PDF_ENUM_NAME_Matte* = cuint(340)
const
  PDF_ENUM_NAME_MaxLen* = cuint(341)
const
  PDF_ENUM_NAME_MediaBox* = cuint(342)
const
  PDF_ENUM_NAME_Metadata* = cuint(343)
const
  PDF_ENUM_NAME_MissingWidth* = cuint(344)
const
  PDF_ENUM_NAME_ModDate* = cuint(345)
const
  PDF_ENUM_NAME_Movie* = cuint(346)
const
  PDF_ENUM_NAME_Msg* = cuint(347)
const
  PDF_ENUM_NAME_Multiply* = cuint(348)
const
  PDF_ENUM_NAME_N* = cuint(349)
const
  PDF_ENUM_NAME_Name* = cuint(350)
const
  PDF_ENUM_NAME_Named* = cuint(351)
const
  PDF_ENUM_NAME_Names* = cuint(352)
const
  PDF_ENUM_NAME_NewWindow* = cuint(353)
const
  PDF_ENUM_NAME_Next* = cuint(354)
const
  PDF_ENUM_NAME_NextPage* = cuint(355)
const
  PDF_ENUM_NAME_NonEFontNoWarn* = cuint(356)
const
  PDF_ENUM_NAME_NonStruct* = cuint(357)
const
  PDF_ENUM_NAME_None* = cuint(358)
const
  PDF_ENUM_NAME_Normal* = cuint(359)
const
  PDF_ENUM_NAME_NotApproved* = cuint(360)
const
  PDF_ENUM_NAME_NotForPublicRelease* = cuint(361)
const
  PDF_ENUM_NAME_Note* = cuint(362)
const
  PDF_ENUM_NAME_NumSections* = cuint(363)
const
  PDF_ENUM_NAME_Nums* = cuint(364)
const
  PDF_ENUM_NAME_O* = cuint(365)
const
  PDF_ENUM_NAME_OC* = cuint(366)
const
  PDF_ENUM_NAME_OCG* = cuint(367)
const
  PDF_ENUM_NAME_OCGs* = cuint(368)
const
  PDF_ENUM_NAME_OCMD* = cuint(369)
const
  PDF_ENUM_NAME_OCProperties* = cuint(370)
const
  PDF_ENUM_NAME_OE* = cuint(371)
const
  PDF_ENUM_NAME_OFF* = cuint(372)
const
  PDF_ENUM_NAME_ON* = cuint(373)
const
  PDF_ENUM_NAME_OP* = cuint(374)
const
  PDF_ENUM_NAME_OPM* = cuint(375)
const
  PDF_ENUM_NAME_OS* = cuint(376)
const
  PDF_ENUM_NAME_ObjStm* = cuint(377)
const
  PDF_ENUM_NAME_Of* = cuint(378)
const
  PDF_ENUM_NAME_Off_enumval* = cuint(379)
const
  PDF_ENUM_NAME_Open* = cuint(380)
const
  PDF_ENUM_NAME_OpenArrow* = cuint(381)
const
  PDF_ENUM_NAME_OpenType* = cuint(382)
const
  PDF_ENUM_NAME_Opt* = cuint(383)
const
  PDF_ENUM_NAME_Order* = cuint(384)
const
  PDF_ENUM_NAME_Ordering* = cuint(385)
const
  PDF_ENUM_NAME_Outlines* = cuint(386)
const
  PDF_ENUM_NAME_OutputCondition* = cuint(387)
const
  PDF_ENUM_NAME_OutputConditionIdentifier* = cuint(388)
const
  PDF_ENUM_NAME_OutputIntent* = cuint(389)
const
  PDF_ENUM_NAME_OutputIntents* = cuint(390)
const
  PDF_ENUM_NAME_P* = cuint(391)
const
  PDF_ENUM_NAME_PDF* = cuint(392)
const
  PDF_ENUM_NAME_PS* = cuint(393)
const
  PDF_ENUM_NAME_Page* = cuint(394)
const
  PDF_ENUM_NAME_PageLabels* = cuint(395)
const
  PDF_ENUM_NAME_PageMode* = cuint(396)
const
  PDF_ENUM_NAME_Pages* = cuint(397)
const
  PDF_ENUM_NAME_PaintType* = cuint(398)
const
  PDF_ENUM_NAME_Params* = cuint(399)
const
  PDF_ENUM_NAME_Parent* = cuint(400)
const
  PDF_ENUM_NAME_ParentTree* = cuint(401)
const
  PDF_ENUM_NAME_Part* = cuint(402)
const
  PDF_ENUM_NAME_Pattern* = cuint(403)
const
  PDF_ENUM_NAME_PatternType* = cuint(404)
const
  PDF_ENUM_NAME_Perms* = cuint(405)
const
  PDF_ENUM_NAME_PieceInfo* = cuint(406)
const
  PDF_ENUM_NAME_PolyLine* = cuint(407)
const
  PDF_ENUM_NAME_PolyLineDimension* = cuint(408)
const
  PDF_ENUM_NAME_Polygon* = cuint(409)
const
  PDF_ENUM_NAME_PolygonCloud* = cuint(410)
const
  PDF_ENUM_NAME_PolygonDimension* = cuint(411)
const
  PDF_ENUM_NAME_Popup* = cuint(412)
const
  PDF_ENUM_NAME_PreRelease* = cuint(413)
const
  PDF_ENUM_NAME_Predictor* = cuint(414)
const
  PDF_ENUM_NAME_Prev* = cuint(415)
const
  PDF_ENUM_NAME_PrevPage* = cuint(416)
const
  PDF_ENUM_NAME_Preview* = cuint(417)
const
  PDF_ENUM_NAME_Print* = cuint(418)
const
  PDF_ENUM_NAME_PrinterMark* = cuint(419)
const
  PDF_ENUM_NAME_Private* = cuint(420)
const
  PDF_ENUM_NAME_ProcSet* = cuint(421)
const
  PDF_ENUM_NAME_Producer* = cuint(422)
const
  PDF_ENUM_NAME_Prop_AuthTime* = cuint(423)
const
  PDF_ENUM_NAME_Prop_AuthType* = cuint(424)
const
  PDF_ENUM_NAME_Prop_Build* = cuint(425)
const
  PDF_ENUM_NAME_Properties* = cuint(426)
const
  PDF_ENUM_NAME_PubSec* = cuint(427)
const
  PDF_ENUM_NAME_Push* = cuint(428)
const
  PDF_ENUM_NAME_Q* = cuint(429)
const
  PDF_ENUM_NAME_QuadPoints* = cuint(430)
const
  PDF_ENUM_NAME_Quote* = cuint(431)
const
  PDF_ENUM_NAME_R* = cuint(432)
const
  PDF_ENUM_NAME_RB* = cuint(433)
const
  PDF_ENUM_NAME_RBGroups* = cuint(434)
const
  PDF_ENUM_NAME_RC* = cuint(435)
const
  PDF_ENUM_NAME_RClosedArrow* = cuint(436)
const
  PDF_ENUM_NAME_RD* = cuint(437)
const
  PDF_ENUM_NAME_REx* = cuint(438)
const
  PDF_ENUM_NAME_RGB* = cuint(439)
const
  PDF_ENUM_NAME_RI* = cuint(440)
const
  PDF_ENUM_NAME_RL* = cuint(441)
const
  PDF_ENUM_NAME_ROpenArrow* = cuint(442)
const
  PDF_ENUM_NAME_RP* = cuint(443)
const
  PDF_ENUM_NAME_RT* = cuint(444)
const
  PDF_ENUM_NAME_Range* = cuint(445)
const
  PDF_ENUM_NAME_Reason* = cuint(446)
const
  PDF_ENUM_NAME_Rect* = cuint(447)
const
  PDF_ENUM_NAME_Redact* = cuint(448)
const
  PDF_ENUM_NAME_Ref* = cuint(449)
const
  PDF_ENUM_NAME_Reference* = cuint(450)
const
  PDF_ENUM_NAME_Registry* = cuint(451)
const
  PDF_ENUM_NAME_ResetForm* = cuint(452)
const
  PDF_ENUM_NAME_Resources* = cuint(453)
const
  PDF_ENUM_NAME_RoleMap* = cuint(454)
const
  PDF_ENUM_NAME_Root* = cuint(455)
const
  PDF_ENUM_NAME_Rotate* = cuint(456)
const
  PDF_ENUM_NAME_Rows* = cuint(457)
const
  PDF_ENUM_NAME_Ruby* = cuint(458)
const
  PDF_ENUM_NAME_RunLengthDecode* = cuint(459)
const
  PDF_ENUM_NAME_S* = cuint(460)
const
  PDF_ENUM_NAME_SMask* = cuint(461)
const
  PDF_ENUM_NAME_SMaskInData* = cuint(462)
const
  PDF_ENUM_NAME_Schema* = cuint(463)
const
  PDF_ENUM_NAME_Screen* = cuint(464)
const
  PDF_ENUM_NAME_Sect* = cuint(465)
const
  PDF_ENUM_NAME_Separation* = cuint(466)
const
  PDF_ENUM_NAME_Shading* = cuint(467)
const
  PDF_ENUM_NAME_ShadingType* = cuint(468)
const
  PDF_ENUM_NAME_Si* = cuint(469)
const
  PDF_ENUM_NAME_Sig* = cuint(470)
const
  PDF_ENUM_NAME_SigFlags* = cuint(471)
const
  PDF_ENUM_NAME_SigQ* = cuint(472)
const
  PDF_ENUM_NAME_SigRef* = cuint(473)
const
  PDF_ENUM_NAME_Size* = cuint(474)
const
  PDF_ENUM_NAME_Slash* = cuint(475)
const
  PDF_ENUM_NAME_Sold* = cuint(476)
const
  PDF_ENUM_NAME_Sound* = cuint(477)
const
  PDF_ENUM_NAME_Source* = cuint(478)
const
  PDF_ENUM_NAME_Span* = cuint(479)
const
  PDF_ENUM_NAME_Split* = cuint(480)
const
  PDF_ENUM_NAME_Square* = cuint(481)
const
  PDF_ENUM_NAME_Squiggly* = cuint(482)
const
  PDF_ENUM_NAME_St* = cuint(483)
const
  PDF_ENUM_NAME_Stamp* = cuint(484)
const
  PDF_ENUM_NAME_StampImage* = cuint(485)
const
  PDF_ENUM_NAME_StampSnapshot* = cuint(486)
const
  PDF_ENUM_NAME_Standard* = cuint(487)
const
  PDF_ENUM_NAME_StdCF* = cuint(488)
const
  PDF_ENUM_NAME_StemV* = cuint(489)
const
  PDF_ENUM_NAME_StmF* = cuint(490)
const
  PDF_ENUM_NAME_StrF* = cuint(491)
const
  PDF_ENUM_NAME_StrikeOut* = cuint(492)
const
  PDF_ENUM_NAME_Strong* = cuint(493)
const
  PDF_ENUM_NAME_StructParent* = cuint(494)
const
  PDF_ENUM_NAME_StructParents* = cuint(495)
const
  PDF_ENUM_NAME_StructTreeRoot* = cuint(496)
const
  PDF_ENUM_NAME_Sub* = cuint(497)
const
  PDF_ENUM_NAME_SubFilter* = cuint(498)
const
  PDF_ENUM_NAME_Subject* = cuint(499)
const
  PDF_ENUM_NAME_Subtype* = cuint(500)
const
  PDF_ENUM_NAME_Subtype2* = cuint(501)
const
  PDF_ENUM_NAME_Supplement* = cuint(502)
const
  PDF_ENUM_NAME_Symb* = cuint(503)
const
  PDF_ENUM_NAME_T* = cuint(504)
const
  PDF_ENUM_NAME_TBody* = cuint(505)
const
  PDF_ENUM_NAME_TD* = cuint(506)
const
  PDF_ENUM_NAME_TFoot* = cuint(507)
const
  PDF_ENUM_NAME_TH* = cuint(508)
const
  PDF_ENUM_NAME_THead* = cuint(509)
const
  PDF_ENUM_NAME_TI* = cuint(510)
const
  PDF_ENUM_NAME_TOC* = cuint(511)
const
  PDF_ENUM_NAME_TOCI* = cuint(512)
const
  PDF_ENUM_NAME_TR* = cuint(513)
const
  PDF_ENUM_NAME_TR2* = cuint(514)
const
  PDF_ENUM_NAME_TU* = cuint(515)
const
  PDF_ENUM_NAME_Table* = cuint(516)
const
  PDF_ENUM_NAME_Text* = cuint(517)
const
  PDF_ENUM_NAME_Thumb* = cuint(518)
const
  PDF_ENUM_NAME_TilingType* = cuint(519)
const
  PDF_ENUM_NAME_Times* = cuint(520)
const
  PDF_ENUM_NAME_Title* = cuint(521)
const
  PDF_ENUM_NAME_ToUnicode* = cuint(522)
const
  PDF_ENUM_NAME_Top* = cuint(523)
const
  PDF_ENUM_NAME_TopSecret* = cuint(524)
const
  PDF_ENUM_NAME_Trans* = cuint(525)
const
  PDF_ENUM_NAME_TransformMethod* = cuint(526)
const
  PDF_ENUM_NAME_TransformParams* = cuint(527)
const
  PDF_ENUM_NAME_Transparency* = cuint(528)
const
  PDF_ENUM_NAME_TrapNet* = cuint(529)
const
  PDF_ENUM_NAME_TrimBox* = cuint(530)
const
  PDF_ENUM_NAME_TrueType* = cuint(531)
const
  PDF_ENUM_NAME_TrustedMode* = cuint(532)
const
  PDF_ENUM_NAME_Tx* = cuint(533)
const
  PDF_ENUM_NAME_Type* = cuint(534)
const
  PDF_ENUM_NAME_Type0* = cuint(535)
const
  PDF_ENUM_NAME_Type1* = cuint(536)
const
  PDF_ENUM_NAME_Type1C* = cuint(537)
const
  PDF_ENUM_NAME_Type3* = cuint(538)
const
  PDF_ENUM_NAME_U* = cuint(539)
const
  PDF_ENUM_NAME_UE* = cuint(540)
const
  PDF_ENUM_NAME_UF* = cuint(541)
const
  PDF_ENUM_NAME_URI* = cuint(542)
const
  PDF_ENUM_NAME_URL* = cuint(543)
const
  PDF_ENUM_NAME_Unchanged* = cuint(544)
const
  PDF_ENUM_NAME_Uncover* = cuint(545)
const
  PDF_ENUM_NAME_Underline* = cuint(546)
const
  PDF_ENUM_NAME_Unix* = cuint(547)
const
  PDF_ENUM_NAME_Unspecified* = cuint(548)
const
  PDF_ENUM_NAME_Usage* = cuint(549)
const
  PDF_ENUM_NAME_UseBlackPtComp* = cuint(550)
const
  PDF_ENUM_NAME_UseCMap* = cuint(551)
const
  PDF_ENUM_NAME_UseOutlines* = cuint(552)
const
  PDF_ENUM_NAME_UserUnit* = cuint(553)
const
  PDF_ENUM_NAME_V* = cuint(554)
const
  PDF_ENUM_NAME_V2* = cuint(555)
const
  PDF_ENUM_NAME_VE* = cuint(556)
const
  PDF_ENUM_NAME_Version* = cuint(557)
const
  PDF_ENUM_NAME_Vertices* = cuint(558)
const
  PDF_ENUM_NAME_VerticesPerRow* = cuint(559)
const
  PDF_ENUM_NAME_View* = cuint(560)
const
  PDF_ENUM_NAME_W* = cuint(561)
const
  PDF_ENUM_NAME_W2* = cuint(562)
const
  PDF_ENUM_NAME_WMode* = cuint(563)
const
  PDF_ENUM_NAME_WP* = cuint(564)
const
  PDF_ENUM_NAME_WT* = cuint(565)
const
  PDF_ENUM_NAME_Warichu* = cuint(566)
const
  PDF_ENUM_NAME_Watermark* = cuint(567)
const
  PDF_ENUM_NAME_WhitePoint* = cuint(568)
const
  PDF_ENUM_NAME_Widget* = cuint(569)
const
  PDF_ENUM_NAME_Width* = cuint(570)
const
  PDF_ENUM_NAME_Widths* = cuint(571)
const
  PDF_ENUM_NAME_WinAnsiEncoding* = cuint(572)
const
  PDF_ENUM_NAME_Wipe* = cuint(573)
const
  PDF_ENUM_NAME_XFA* = cuint(574)
const
  PDF_ENUM_NAME_XHeight* = cuint(575)
const
  PDF_ENUM_NAME_XML* = cuint(576)
const
  PDF_ENUM_NAME_XObject* = cuint(577)
const
  PDF_ENUM_NAME_XRef* = cuint(578)
const
  PDF_ENUM_NAME_XRefStm* = cuint(579)
const
  PDF_ENUM_NAME_XStep* = cuint(580)
const
  PDF_ENUM_NAME_XYZ* = cuint(581)
const
  PDF_ENUM_NAME_YStep* = cuint(582)
const
  PDF_ENUM_NAME_Yes* = cuint(583)
const
  PDF_ENUM_NAME_ZaDb* = cuint(584)
const
  PDF_ENUM_NAME_a_enumval* = cuint(585)
const
  PDF_ENUM_NAME_adbe_pkcs7_detached* = cuint(586)
const
  PDF_ENUM_NAME_ca_enumval* = cuint(587)
const
  PDF_ENUM_NAME_n0* = cuint(588)
const
  PDF_ENUM_NAME_n1* = cuint(589)
const
  PDF_ENUM_NAME_n2* = cuint(590)
const
  PDF_ENUM_NAME_op_enumval* = cuint(591)
const
  PDF_ENUM_NAME_r_enumval* = cuint(592)
const
  PDF_ENUM_LIMIT* = cuint(593)
const
  PDF_LEXBUF_SMALL* = cuint(256)
const
  PDF_LEXBUF_LARGE* = cuint(65536)
const
  PDF_ENCRYPT_KEEP* = cuint(0)
const
  PDF_ENCRYPT_NONE* = cuint(1)
const
  PDF_ENCRYPT_RC4_40* = cuint(2)
const
  PDF_ENCRYPT_RC4_128* = cuint(3)
const
  PDF_ENCRYPT_AES_128* = cuint(4)
const
  PDF_ENCRYPT_AES_256* = cuint(5)
const
  PDF_ENCRYPT_UNKNOWN* = cuint(6)
const
  PDF_PERM_PRINT* = cuint(4)
const
  PDF_PERM_MODIFY* = cuint(8)
const
  PDF_PERM_COPY* = cuint(16)
const
  PDF_PERM_ANNOTATE* = cuint(32)
const
  PDF_PERM_FORM* = cuint(256)
const
  PDF_PERM_ACCESSIBILITY* = cuint(512)
const
  PDF_PERM_ASSEMBLE* = cuint(1024)
const
  PDF_PERM_PRINT_HQ* = cuint(2048)
const
  PDF_FD_FIXED_PITCH* = cuint(1)
const
  PDF_FD_SERIF* = cuint(2)
const
  PDF_FD_SYMBOLIC* = cuint(4)
const
  PDF_FD_SCRIPT* = cuint(8)
const
  PDF_FD_NONSYMBOLIC* = cuint(32)
const
  PDF_FD_ITALIC* = cuint(64)
const
  PDF_FD_ALL_CAP* = cuint(65536)
const
  PDF_FD_SMALL_CAP* = cuint(131072)
const
  PDF_FD_FORCE_BOLD* = cuint(262144)
const
  PDF_SIMPLE_FONT_RESOURCE* = cuint(1)
const
  PDF_CID_FONT_RESOURCE* = cuint(2)
const
  PDF_CJK_FONT_RESOURCE* = cuint(3)
const
  PDF_SIMPLE_ENCODING_LATIN* = cuint(0)
const
  PDF_SIMPLE_ENCODING_GREEK* = cuint(1)
const
  PDF_SIMPLE_ENCODING_CYRILLIC* = cuint(2)
const
  PDF_REDACT_IMAGE_NONE* = cuint(0)
const
  PDF_REDACT_IMAGE_REMOVE* = cuint(1)
const
  PDF_REDACT_IMAGE_PIXELS* = cuint(2)
const
  PDF_REDACT_IMAGE_REMOVE_UNLESS_INVISIBLE* = cuint(3)
const
  PDF_REDACT_LINE_ART_NONE* = cuint(0)
const
  PDF_REDACT_LINE_ART_REMOVE_IF_COVERED* = cuint(1)
const
  PDF_REDACT_LINE_ART_REMOVE_IF_TOUCHED* = cuint(2)
const
  PDF_REDACT_TEXT_REMOVE* = cuint(0)
const
  PDF_REDACT_TEXT_NONE* = cuint(1)
const
  PDF_ANNOT_IS_INVISIBLE* = cuint(1)
const
  PDF_ANNOT_IS_HIDDEN* = cuint(2)
const
  PDF_ANNOT_IS_PRINT* = cuint(4)
const
  PDF_ANNOT_IS_NO_ZOOM* = cuint(8)
const
  PDF_ANNOT_IS_NO_ROTATE* = cuint(16)
const
  PDF_ANNOT_IS_NO_VIEW* = cuint(32)
const
  PDF_ANNOT_IS_READ_ONLY* = cuint(64)
const
  PDF_ANNOT_IS_LOCKED* = cuint(128)
const
  PDF_ANNOT_IS_TOGGLE_NO_VIEW* = cuint(256)
const
  PDF_ANNOT_IS_LOCKED_CONTENTS* = cuint(512)
const
  PDF_ANNOT_Q_LEFT* = cuint(0)
const
  PDF_ANNOT_Q_CENTER* = cuint(1)
const
  PDF_ANNOT_Q_RIGHT* = cuint(2)
const
  PDF_FIELD_IS_READ_ONLY* = cuint(1)
const
  PDF_FIELD_IS_REQUIRED* = cuint(2)
const
  PDF_FIELD_IS_NO_EXPORT* = cuint(4)
const
  PDF_TX_FIELD_IS_MULTILINE* = cuint(4096)
const
  PDF_TX_FIELD_IS_PASSWORD* = cuint(8192)
const
  PDF_TX_FIELD_IS_FILE_SELECT* = cuint(1048576)
const
  PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK* = cuint(4194304)
const
  PDF_TX_FIELD_IS_DO_NOT_SCROLL* = cuint(8388608)
const
  PDF_TX_FIELD_IS_COMB* = cuint(16777216)
const
  PDF_TX_FIELD_IS_RICH_TEXT* = cuint(33554432)
const
  PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF* = cuint(16384)
const
  PDF_BTN_FIELD_IS_RADIO* = cuint(32768)
const
  PDF_BTN_FIELD_IS_PUSHBUTTON* = cuint(65536)
const
  PDF_BTN_FIELD_IS_RADIOS_IN_UNISON* = cuint(33554432)
const
  PDF_CH_FIELD_IS_COMBO* = cuint(131072)
const
  PDF_CH_FIELD_IS_EDIT* = cuint(262144)
const
  PDF_CH_FIELD_IS_SORT* = cuint(524288)
const
  PDF_CH_FIELD_IS_MULTI_SELECT* = cuint(2097152)
const
  PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK* = cuint(4194304)
const
  PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE* = cuint(33554432)
const
  PDF_SIGNATURE_SHOW_LABELS* = cuint(1)
const
  PDF_SIGNATURE_SHOW_DN* = cuint(2)
const
  PDF_SIGNATURE_SHOW_DATE* = cuint(4)
const
  PDF_SIGNATURE_SHOW_TEXT_NAME* = cuint(8)
const
  PDF_SIGNATURE_SHOW_GRAPHIC_NAME* = cuint(16)
const
  PDF_SIGNATURE_SHOW_LOGO* = cuint(32)
const
  PDF_DOCUMENT_EVENT_ALERT* = cuint(0)
const
  PDF_DOCUMENT_EVENT_PRINT* = cuint(1)
const
  PDF_DOCUMENT_EVENT_LAUNCH_URL* = cuint(2)
const
  PDF_DOCUMENT_EVENT_MAIL_DOC* = cuint(3)
const
  PDF_DOCUMENT_EVENT_SUBMIT* = cuint(4)
const
  PDF_DOCUMENT_EVENT_EXEC_MENU_ITEM* = cuint(5)
const
  PDF_ALERT_ICON_ERROR* = cuint(0)
const
  PDF_ALERT_ICON_WARNING* = cuint(1)
const
  PDF_ALERT_ICON_QUESTION* = cuint(2)
const
  PDF_ALERT_ICON_STATUS* = cuint(3)
const
  PDF_ALERT_BUTTON_GROUP_OK* = cuint(0)
const
  PDF_ALERT_BUTTON_GROUP_OK_CANCEL* = cuint(1)
const
  PDF_ALERT_BUTTON_GROUP_YES_NO* = cuint(2)
const
  PDF_ALERT_BUTTON_GROUP_YES_NO_CANCEL* = cuint(3)
const
  PDF_ALERT_BUTTON_NONE* = cuint(0)
const
  PDF_ALERT_BUTTON_OK* = cuint(1)
const
  PDF_ALERT_BUTTON_CANCEL* = cuint(2)
const
  PDF_ALERT_BUTTON_NO* = cuint(3)
const
  PDF_ALERT_BUTTON_YES* = cuint(4)
const
  FZ_SUBSAMPLE_AVERAGE* = cuint(0)
const
  FZ_SUBSAMPLE_BICUBIC* = cuint(1)
const
  FZ_RECOMPRESS_NEVER* = cuint(0)
const
  FZ_RECOMPRESS_SAME* = cuint(1)
const
  FZ_RECOMPRESS_LOSSLESS* = cuint(2)
const
  FZ_RECOMPRESS_JPEG* = cuint(3)
const
  FZ_RECOMPRESS_J2K* = cuint(4)
const
  FZ_RECOMPRESS_FAX* = cuint(5)
type
  enum_fz_error_type* {.size: sizeof(cuint).} = enum
    FZ_ERROR_NONE = 0, FZ_ERROR_GENERIC = 1, FZ_ERROR_SYSTEM = 2,
    FZ_ERROR_LIBRARY = 3, FZ_ERROR_ARGUMENT = 4, FZ_ERROR_LIMIT = 5,
    FZ_ERROR_UNSUPPORTED = 6, FZ_ERROR_FORMAT = 7, FZ_ERROR_SYNTAX = 8,
    FZ_ERROR_TRYLATER = 9, FZ_ERROR_ABORT = 10, FZ_ERROR_REPAIRED = 11
type
  enum_fz_bidi_direction* {.size: sizeof(cuint).} = enum
    FZ_BIDI_LTR = 0, FZ_BIDI_RTL = 1, FZ_BIDI_NEUTRAL = 2
type
  enum_fz_bidi_flags* {.size: sizeof(cuint).} = enum
    FZ_BIDI_CLASSIFY_WHITE_SPACE = 1, FZ_BIDI_REPLACE_TAB = 2
type
  enum_fz_colorspace_type* {.size: sizeof(cuint).} = enum
    FZ_COLORSPACE_NONE = 0, FZ_COLORSPACE_GRAY = 1, FZ_COLORSPACE_RGB = 2,
    FZ_COLORSPACE_BGR = 3, FZ_COLORSPACE_CMYK = 4, FZ_COLORSPACE_LAB = 5,
    FZ_COLORSPACE_INDEXED = 6, FZ_COLORSPACE_SEPARATION = 7
type
  enum_fz_separation_behavior* {.size: sizeof(cuint).} = enum
    FZ_SEPARATION_COMPOSITE = 0, FZ_SEPARATION_SPOT = 1,
    FZ_SEPARATION_DISABLED = 2
type
  enum_fz_deflate_level* {.size: sizeof(cint).} = enum
    FZ_DEFLATE_DEFAULT = -1, FZ_DEFLATE_NONE = 0, FZ_DEFLATE_BEST_SPEED = 1,
    FZ_DEFLATE_BEST = 9
type
  enum_fz_linecap* {.size: sizeof(cuint).} = enum
    FZ_LINECAP_BUTT = 0, FZ_LINECAP_ROUND = 1, FZ_LINECAP_SQUARE = 2,
    FZ_LINECAP_TRIANGLE = 3
type
  enum_fz_linejoin* {.size: sizeof(cuint).} = enum
    FZ_LINEJOIN_MITER = 0, FZ_LINEJOIN_ROUND = 1, FZ_LINEJOIN_BEVEL = 2,
    FZ_LINEJOIN_MITER_XPS = 3
type
  enum_fz_text_language* {.size: sizeof(cuint).} = enum
    FZ_LANG_UNSET = 0, FZ_LANG_ja = 37, FZ_LANG_zh = 242, FZ_LANG_ko = 416,
    FZ_LANG_ur = 507, FZ_LANG_urd = 3423, FZ_LANG_zh_Hans = 14093,
    FZ_LANG_zh_Hant = 14822
type
  enum_fz_structure* {.size: sizeof(cint).} = enum
    FZ_STRUCTURE_INVALID = -1, FZ_STRUCTURE_DOCUMENT = 0, FZ_STRUCTURE_PART = 1,
    FZ_STRUCTURE_ART = 2, FZ_STRUCTURE_SECT = 3, FZ_STRUCTURE_DIV = 4,
    FZ_STRUCTURE_BLOCKQUOTE = 5, FZ_STRUCTURE_CAPTION = 6, FZ_STRUCTURE_TOC = 7,
    FZ_STRUCTURE_TOCI = 8, FZ_STRUCTURE_INDEX = 9, FZ_STRUCTURE_NONSTRUCT = 10,
    FZ_STRUCTURE_PRIVATE = 11, FZ_STRUCTURE_DOCUMENTFRAGMENT = 12,
    FZ_STRUCTURE_ASIDE = 13, FZ_STRUCTURE_TITLE = 14, FZ_STRUCTURE_FENOTE = 15,
    FZ_STRUCTURE_SUB = 16, FZ_STRUCTURE_P = 17, FZ_STRUCTURE_H = 18,
    FZ_STRUCTURE_H1 = 19, FZ_STRUCTURE_H2 = 20, FZ_STRUCTURE_H3 = 21,
    FZ_STRUCTURE_H4 = 22, FZ_STRUCTURE_H5 = 23, FZ_STRUCTURE_H6 = 24,
    FZ_STRUCTURE_LIST = 25, FZ_STRUCTURE_LISTITEM = 26, FZ_STRUCTURE_LABEL = 27,
    FZ_STRUCTURE_LISTBODY = 28, FZ_STRUCTURE_TABLE = 29, FZ_STRUCTURE_TR = 30,
    FZ_STRUCTURE_TH = 31, FZ_STRUCTURE_TD = 32, FZ_STRUCTURE_THEAD = 33,
    FZ_STRUCTURE_TBODY = 34, FZ_STRUCTURE_TFOOT = 35, FZ_STRUCTURE_SPAN = 36,
    FZ_STRUCTURE_QUOTE = 37, FZ_STRUCTURE_NOTE = 38,
    FZ_STRUCTURE_REFERENCE = 39, FZ_STRUCTURE_BIBENTRY = 40,
    FZ_STRUCTURE_CODE = 41, FZ_STRUCTURE_LINK = 42, FZ_STRUCTURE_ANNOT = 43,
    FZ_STRUCTURE_EM = 44, FZ_STRUCTURE_STRONG = 45, FZ_STRUCTURE_RUBY = 46,
    FZ_STRUCTURE_RB = 47, FZ_STRUCTURE_RT = 48, FZ_STRUCTURE_RP = 49,
    FZ_STRUCTURE_WARICHU = 50, FZ_STRUCTURE_WT = 51, FZ_STRUCTURE_WP = 52,
    FZ_STRUCTURE_FIGURE = 53, FZ_STRUCTURE_FORMULA = 54, FZ_STRUCTURE_FORM = 55,
    FZ_STRUCTURE_ARTIFACT = 56
type
  enum_fz_metatext* {.size: sizeof(cuint).} = enum
    FZ_METATEXT_ACTUALTEXT = 0, FZ_METATEXT_ALT = 1,
    FZ_METATEXT_ABBREVIATION = 2, FZ_METATEXT_TITLE = 3
type
  enum_fz_link_dest_type* {.size: sizeof(cuint).} = enum
    FZ_LINK_DEST_FIT = 0, FZ_LINK_DEST_FIT_B = 1, FZ_LINK_DEST_FIT_H = 2,
    FZ_LINK_DEST_FIT_BH = 3, FZ_LINK_DEST_FIT_V = 4, FZ_LINK_DEST_FIT_BV = 5,
    FZ_LINK_DEST_FIT_R = 6, FZ_LINK_DEST_XYZ = 7
type
  enum_fz_box_type* {.size: sizeof(cuint).} = enum
    FZ_MEDIA_BOX = 0, FZ_CROP_BOX = 1, FZ_BLEED_BOX = 2, FZ_TRIM_BOX = 3,
    FZ_ART_BOX = 4, FZ_UNKNOWN_BOX = 5
type
  enum_fz_permission* {.size: sizeof(cuint).} = enum
    FZ_PERMISSION_ASSEMBLE = 97, FZ_PERMISSION_COPY = 99,
    FZ_PERMISSION_EDIT = 101, FZ_PERMISSION_FORM = 102,
    FZ_PERMISSION_PRINT_HQ = 104, FZ_PERMISSION_ANNOTATE = 110,
    FZ_PERMISSION_PRINT = 112, FZ_PERMISSION_ACCESSIBILITY = 121
type
  enum_pdf_layer_config_ui_type* {.size: sizeof(cuint).} = enum
    PDF_LAYER_UI_LABEL = 0, PDF_LAYER_UI_CHECKBOX = 1, PDF_LAYER_UI_RADIOBOX = 2
type
  enum_pdf_page_label_style* {.size: sizeof(cuint).} = enum
    PDF_PAGE_LABEL_NONE = 0, PDF_PAGE_LABEL_ALPHA_UC = 65,
    PDF_PAGE_LABEL_DECIMAL = 68, PDF_PAGE_LABEL_ROMAN_UC = 82,
    PDF_PAGE_LABEL_ALPHA_LC = 97, PDF_PAGE_LABEL_ROMAN_LC = 114
type
  enum_pdf_token* {.size: sizeof(cuint).} = enum
    PDF_TOK_ERROR = 0, PDF_TOK_EOF = 1, PDF_TOK_OPEN_ARRAY = 2,
    PDF_TOK_CLOSE_ARRAY = 3, PDF_TOK_OPEN_DICT = 4, PDF_TOK_CLOSE_DICT = 5,
    PDF_TOK_OPEN_BRACE = 6, PDF_TOK_CLOSE_BRACE = 7, PDF_TOK_NAME = 8,
    PDF_TOK_INT = 9, PDF_TOK_REAL = 10, PDF_TOK_STRING = 11,
    PDF_TOK_KEYWORD = 12, PDF_TOK_R = 13, PDF_TOK_TRUE = 14, PDF_TOK_FALSE = 15,
    PDF_TOK_NULL = 16, PDF_TOK_OBJ = 17, PDF_TOK_ENDOBJ = 18,
    PDF_TOK_STREAM = 19, PDF_TOK_ENDSTREAM = 20, PDF_TOK_XREF = 21,
    PDF_TOK_TRAILER = 22, PDF_TOK_STARTXREF = 23, PDF_TOK_NEWOBJ = 24,
    PDF_NUM_TOKENS = 25
type
  enum_pdf_processor_requirements* {.size: sizeof(cuint).} = enum
    PDF_PROCESSOR_REQUIRES_DECODED_IMAGES = 1
type
  enum_fz_cull_type* {.size: sizeof(cuint).} = enum
    FZ_CULL_PATH_DROP = 0, FZ_CULL_PATH_FILL = 1, FZ_CULL_PATH_STROKE = 2,
    FZ_CULL_PATH_FILL_STROKE = 3, FZ_CULL_CLIP_PATH_DROP = 4,
    FZ_CULL_CLIP_PATH_FILL = 5, FZ_CULL_CLIP_PATH_STROKE = 6,
    FZ_CULL_CLIP_PATH_FILL_STROKE = 7, FZ_CULL_GLYPH = 8, FZ_CULL_IMAGE = 9,
    FZ_CULL_SHADING = 10
type
  enum_pdf_annot_type* {.size: sizeof(cint).} = enum
    PDF_ANNOT_UNKNOWN = -1, PDF_ANNOT_TEXT = 0, PDF_ANNOT_LINK = 1,
    PDF_ANNOT_FREE_TEXT = 2, PDF_ANNOT_LINE = 3, PDF_ANNOT_SQUARE = 4,
    PDF_ANNOT_CIRCLE = 5, PDF_ANNOT_POLYGON = 6, PDF_ANNOT_POLY_LINE = 7,
    PDF_ANNOT_HIGHLIGHT = 8, PDF_ANNOT_UNDERLINE = 9, PDF_ANNOT_SQUIGGLY = 10,
    PDF_ANNOT_STRIKE_OUT = 11, PDF_ANNOT_REDACT = 12, PDF_ANNOT_STAMP = 13,
    PDF_ANNOT_CARET = 14, PDF_ANNOT_INK = 15, PDF_ANNOT_POPUP = 16,
    PDF_ANNOT_FILE_ATTACHMENT = 17, PDF_ANNOT_SOUND = 18, PDF_ANNOT_MOVIE = 19,
    PDF_ANNOT_RICH_MEDIA = 20, PDF_ANNOT_WIDGET = 21, PDF_ANNOT_SCREEN = 22,
    PDF_ANNOT_PRINTER_MARK = 23, PDF_ANNOT_TRAP_NET = 24,
    PDF_ANNOT_WATERMARK = 25, PDF_ANNOT_3D = 26, PDF_ANNOT_PROJECTION = 27
type
  enum_pdf_line_ending* {.size: sizeof(cuint).} = enum
    PDF_ANNOT_LE_NONE = 0, PDF_ANNOT_LE_SQUARE = 1, PDF_ANNOT_LE_CIRCLE = 2,
    PDF_ANNOT_LE_DIAMOND = 3, PDF_ANNOT_LE_OPEN_ARROW = 4,
    PDF_ANNOT_LE_CLOSED_ARROW = 5, PDF_ANNOT_LE_BUTT = 6,
    PDF_ANNOT_LE_R_OPEN_ARROW = 7, PDF_ANNOT_LE_R_CLOSED_ARROW = 8,
    PDF_ANNOT_LE_SLASH = 9
type
  enum_pdf_intent* {.size: sizeof(cuint).} = enum
    PDF_ANNOT_IT_DEFAULT = 0, PDF_ANNOT_IT_FREETEXT_CALLOUT = 1,
    PDF_ANNOT_IT_FREETEXT_TYPEWRITER = 2, PDF_ANNOT_IT_LINE_ARROW = 3,
    PDF_ANNOT_IT_LINE_DIMENSION = 4, PDF_ANNOT_IT_POLYLINE_DIMENSION = 5,
    PDF_ANNOT_IT_POLYGON_CLOUD = 6, PDF_ANNOT_IT_POLYGON_DIMENSION = 7,
    PDF_ANNOT_IT_STAMP_IMAGE = 8, PDF_ANNOT_IT_STAMP_SNAPSHOT = 9,
    PDF_ANNOT_IT_UNKNOWN = 255
type
  enum_pdf_border_style* {.size: sizeof(cuint).} = enum
    PDF_BORDER_STYLE_SOLID = 0, PDF_BORDER_STYLE_DASHED = 1,
    PDF_BORDER_STYLE_BEVELED = 2, PDF_BORDER_STYLE_INSET = 3,
    PDF_BORDER_STYLE_UNDERLINE = 4
type
  enum_pdf_border_effect* {.size: sizeof(cuint).} = enum
    PDF_BORDER_EFFECT_NONE = 0, PDF_BORDER_EFFECT_CLOUDY = 1
type
  enum_pdf_widget_type* {.size: sizeof(cuint).} = enum
    PDF_WIDGET_TYPE_UNKNOWN = 0, PDF_WIDGET_TYPE_BUTTON = 1,
    PDF_WIDGET_TYPE_CHECKBOX = 2, PDF_WIDGET_TYPE_COMBOBOX = 3,
    PDF_WIDGET_TYPE_LISTBOX = 4, PDF_WIDGET_TYPE_RADIOBUTTON = 5,
    PDF_WIDGET_TYPE_SIGNATURE = 6, PDF_WIDGET_TYPE_TEXT = 7
type
  enum_pdf_widget_tx_format* {.size: sizeof(cuint).} = enum
    PDF_WIDGET_TX_FORMAT_NONE = 0, PDF_WIDGET_TX_FORMAT_NUMBER = 1,
    PDF_WIDGET_TX_FORMAT_SPECIAL = 2, PDF_WIDGET_TX_FORMAT_DATE = 3,
    PDF_WIDGET_TX_FORMAT_TIME = 4
type
  enum_pdf_signature_error* {.size: sizeof(cuint).} = enum
    PDF_SIGNATURE_ERROR_OKAY = 0, PDF_SIGNATURE_ERROR_NO_SIGNATURES = 1,
    PDF_SIGNATURE_ERROR_NO_CERTIFICATE = 2,
    PDF_SIGNATURE_ERROR_DIGEST_FAILURE = 3, PDF_SIGNATURE_ERROR_SELF_SIGNED = 4,
    PDF_SIGNATURE_ERROR_SELF_SIGNED_IN_CHAIN = 5,
    PDF_SIGNATURE_ERROR_NOT_TRUSTED = 6, PDF_SIGNATURE_ERROR_NOT_SIGNED = 7,
    PDF_SIGNATURE_ERROR_UNKNOWN = 8
type
  enum_pdf_clean_options_structure* {.size: sizeof(cuint).} = enum
    PDF_CLEAN_STRUCTURE_DROP = 0, PDF_CLEAN_STRUCTURE_KEEP = 1
type
  enum_pdf_zugferd_profile* {.size: sizeof(cuint).} = enum
    PDF_NOT_ZUGFERD = 0, PDF_ZUGFERD_COMFORT = 1, PDF_ZUGFERD_BASIC = 2,
    PDF_ZUGFERD_EXTENDED = 3, PDF_ZUGFERD_BASIC_WL = 4, PDF_ZUGFERD_MINIMUM = 5,
    PDF_ZUGFERD_XRECHNUNG = 6, PDF_ZUGFERD_UNKNOWN = 7
type
  compiler_cfloat128_typedef* = pointer ## Generated based on /usr/include/bits/floatn.h:83:24
  internal_Float32* = cfloat ## Generated based on /usr/include/bits/floatn-common.h:214:15
  internal_Float64* = cdouble ## Generated based on /usr/include/bits/floatn-common.h:251:16
  internal_Float128* = pointer ## Generated based on /usr/include/bits/floatn.h:97:20
  internal_Float32x* = cdouble ## Generated based on /usr/include/bits/floatn-common.h:268:16
  internal_Float64x* = clongdouble ## Generated based on /usr/include/bits/floatn-common.h:285:21
  fz_int_heap* = struct_fz_int_heap ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:46:3
  fz_ptr_heap* = struct_fz_ptr_heap ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:46:3
  fz_int2_heap* = struct_fz_int2_heap ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:46:3
  fz_int2* = struct_fz_int2  ## Generated based on /usr/include/mupdf/fitz/heap.h:120:3
  fz_intptr_heap* = struct_fz_intptr_heap ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:46:3
  fz_intptr* = struct_fz_intptr ## Generated based on /usr/include/mupdf/fitz/heap.h:133:3
  compiler_jmp_buf* = array[8'i64, clong] ## Generated based on /usr/include/bits/setjmp.h:31:18
  struct_sigset_t* {.pure, inheritable, bycopy.} = object
    compiler_val*: array[16'i64, culong] ## Generated based on /usr/include/bits/types/__sigset_t.h:5:9
  compiler_sigset_t* = struct_sigset_t ## Generated based on /usr/include/bits/types/__sigset_t.h:8:3
  struct_jmp_buf_tag* {.pure, inheritable, bycopy.} = object
    compiler_jmpbuf*: compiler_jmp_buf ## Generated based on /usr/include/bits/types/struct___jmp_buf_tag.h:26:8
    compiler_mask_was_saved*: cint
    compiler_saved_mask*: compiler_sigset_t
  jmp_buf* = array[1'i64, struct_jmp_buf_tag] ## Generated based on /usr/include/setjmp.h:32:30
  sigjmp_buf* = array[1'i64, struct_jmp_buf_tag] ## Generated based on /usr/include/setjmp.h:70:30
  compiler_u_char* = uint8   ## Generated based on /usr/include/bits/types.h:31:23
  compiler_u_short* = cushort ## Generated based on /usr/include/bits/types.h:32:28
  compiler_u_int* = cuint    ## Generated based on /usr/include/bits/types.h:33:22
  compiler_u_long* = culong  ## Generated based on /usr/include/bits/types.h:34:27
  compiler_int8_t* = cschar  ## Generated based on /usr/include/bits/types.h:37:21
  compiler_uint8_t* = uint8  ## Generated based on /usr/include/bits/types.h:38:23
  compiler_int16_t* = cshort ## Generated based on /usr/include/bits/types.h:39:26
  compiler_uint16_t* = cushort ## Generated based on /usr/include/bits/types.h:40:28
  compiler_int32_t* = cint   ## Generated based on /usr/include/bits/types.h:41:20
  compiler_uint32_t* = cuint ## Generated based on /usr/include/bits/types.h:42:22
  compiler_int64_t* = clong  ## Generated based on /usr/include/bits/types.h:44:25
  compiler_uint64_t* = culong ## Generated based on /usr/include/bits/types.h:45:27
  compiler_int_least8_t* = compiler_int8_t ## Generated based on /usr/include/bits/types.h:52:18
  compiler_uint_least8_t* = compiler_uint8_t ## Generated based on /usr/include/bits/types.h:53:19
  compiler_int_least16_t* = compiler_int16_t ## Generated based on /usr/include/bits/types.h:54:19
  compiler_uint_least16_t* = compiler_uint16_t ## Generated based on /usr/include/bits/types.h:55:20
  compiler_int_least32_t* = compiler_int32_t ## Generated based on /usr/include/bits/types.h:56:19
  compiler_uint_least32_t* = compiler_uint32_t ## Generated based on /usr/include/bits/types.h:57:20
  compiler_int_least64_t* = compiler_int64_t ## Generated based on /usr/include/bits/types.h:58:19
  compiler_uint_least64_t* = compiler_uint64_t ## Generated based on /usr/include/bits/types.h:59:20
  compiler_quad_t* = clong   ## Generated based on /usr/include/bits/types.h:63:18
  compiler_u_quad_t* = culong ## Generated based on /usr/include/bits/types.h:64:27
  compiler_intmax_t* = clong ## Generated based on /usr/include/bits/types.h:72:18
  compiler_uintmax_t* = culong ## Generated based on /usr/include/bits/types.h:73:27
  compiler_dev_t* = culong   ## Generated based on /usr/include/bits/types.h:145:25
  compiler_uid_t* = cuint    ## Generated based on /usr/include/bits/types.h:146:25
  compiler_gid_t* = cuint    ## Generated based on /usr/include/bits/types.h:147:25
  compiler_ino_t* = culong   ## Generated based on /usr/include/bits/types.h:148:25
  compiler_ino64_t* = culong ## Generated based on /usr/include/bits/types.h:149:27
  compiler_mode_t* = cuint   ## Generated based on /usr/include/bits/types.h:150:26
  compiler_nlink_t* = culong ## Generated based on /usr/include/bits/types.h:151:27
  compiler_off_t* = clong    ## Generated based on /usr/include/bits/types.h:152:25
  compiler_off64_t* = clong  ## Generated based on /usr/include/bits/types.h:153:27
  compiler_pid_t* = cint     ## Generated based on /usr/include/bits/types.h:154:25
  struct_fsid_t* {.pure, inheritable, bycopy.} = object
    compiler_val*: array[2'i64, cint] ## Generated based on /usr/include/bits/types.h:155:12
  compiler_fsid_t* = struct_fsid_t ## Generated based on /usr/include/bits/types.h:155:26
  compiler_clock_t* = clong  ## Generated based on /usr/include/bits/types.h:156:27
  compiler_rlim_t* = culong  ## Generated based on /usr/include/bits/types.h:157:26
  compiler_rlim64_t* = culong ## Generated based on /usr/include/bits/types.h:158:28
  compiler_id_t* = cuint     ## Generated based on /usr/include/bits/types.h:159:24
  compiler_time_t* = clong   ## Generated based on /usr/include/bits/types.h:160:26
  compiler_useconds_t* = cuint ## Generated based on /usr/include/bits/types.h:161:30
  compiler_suseconds_t* = clong ## Generated based on /usr/include/bits/types.h:162:31
  compiler_suseconds64_t* = clong ## Generated based on /usr/include/bits/types.h:163:33
  compiler_daddr_t* = cint   ## Generated based on /usr/include/bits/types.h:165:27
  compiler_key_t* = cint     ## Generated based on /usr/include/bits/types.h:166:25
  compiler_clockid_t* = cint ## Generated based on /usr/include/bits/types.h:169:29
  compiler_timer_t* = pointer ## Generated based on /usr/include/bits/types.h:172:27
  compiler_blksize_t* = clong ## Generated based on /usr/include/bits/types.h:175:29
  compiler_blkcnt_t* = clong ## Generated based on /usr/include/bits/types.h:180:28
  compiler_blkcnt64_t* = clong ## Generated based on /usr/include/bits/types.h:181:30
  compiler_fsblkcnt_t* = culong ## Generated based on /usr/include/bits/types.h:184:30
  compiler_fsblkcnt64_t* = culong ## Generated based on /usr/include/bits/types.h:185:32
  compiler_fsfilcnt_t* = culong ## Generated based on /usr/include/bits/types.h:188:30
  compiler_fsfilcnt64_t* = culong ## Generated based on /usr/include/bits/types.h:189:32
  compiler_fsword_t* = clong ## Generated based on /usr/include/bits/types.h:192:28
  compiler_ssize_t* = clong  ## Generated based on /usr/include/bits/types.h:194:27
  compiler_syscall_slong_t* = clong ## Generated based on /usr/include/bits/types.h:197:33
  compiler_syscall_ulong_t* = culong ## Generated based on /usr/include/bits/types.h:199:33
  compiler_loff_t* = compiler_off64_t ## Generated based on /usr/include/bits/types.h:203:19
  compiler_caddr_t* = cstring ## Generated based on /usr/include/bits/types.h:204:15
  compiler_intptr_t* = clong ## Generated based on /usr/include/bits/types.h:207:25
  compiler_socklen_t* = cuint ## Generated based on /usr/include/bits/types.h:210:23
  compiler_sig_atomic_t* = cint ## Generated based on /usr/include/bits/types.h:215:13
  struct_mbstate_t_compiler_value_t* {.union, bycopy.} = object
    compiler_wch*: cuint
    compiler_wchb*: array[4'i64, cschar]
  struct_mbstate_t* {.pure, inheritable, bycopy.} = object
    compiler_count*: cint    ## Generated based on /usr/include/bits/types/__mbstate_t.h:13:9
    compiler_value*: struct_mbstate_t_compiler_value_t
  compiler_mbstate_t* = struct_mbstate_t ## Generated based on /usr/include/bits/types/__mbstate_t.h:21:3
  struct_G_fpos_t* {.pure, inheritable, bycopy.} = object
    compiler_pos*: compiler_off_t ## Generated based on /usr/include/bits/types/__fpos_t.h:10:16
    compiler_state*: compiler_mbstate_t
  compiler_fpos_t* = struct_G_fpos_t ## Generated based on /usr/include/bits/types/__fpos_t.h:14:3
  struct_G_fpos64_t* {.pure, inheritable, bycopy.} = object
    compiler_pos*: compiler_off64_t ## Generated based on /usr/include/bits/types/__fpos64_t.h:10:16
    compiler_state*: compiler_mbstate_t
  compiler_fpos64_t* = struct_G_fpos64_t ## Generated based on /usr/include/bits/types/__fpos64_t.h:14:3
  compiler_FILE* = struct_IO_FILE ## Generated based on /usr/include/bits/types/__FILE.h:5:25
  struct_IO_FILE* {.pure, inheritable, bycopy.} = object
    internal_flags*: cint    ## Generated based on /usr/include/bits/types/struct_FILE.h:50:8
    internal_IO_read_ptr*: cstring
    internal_IO_read_end*: cstring
    internal_IO_read_base*: cstring
    internal_IO_write_base*: cstring
    internal_IO_write_ptr*: cstring
    internal_IO_write_end*: cstring
    internal_IO_buf_base*: cstring
    internal_IO_buf_end*: cstring
    internal_IO_save_base*: cstring
    internal_IO_backup_base*: cstring
    internal_IO_save_end*: cstring
    internal_markers*: ptr struct_IO_marker
    internal_chain*: ptr struct_IO_FILE
    internal_fileno*: cint
    internal_flags2* {.bitsize: 24'i64.}: cint
    internal_short_backupbuf*: array[1'i64, cschar]
    internal_old_offset*: compiler_off_t
    internal_cur_column*: cushort
    internal_vtable_offset*: cschar
    internal_shortbuf*: array[1'i64, cschar]
    internal_lock*: pointer
    internal_offset*: compiler_off64_t
    internal_codecvt*: ptr struct_IO_codecvt
    internal_wide_data*: ptr struct_IO_wide_data
    internal_freeres_list*: ptr struct_IO_FILE
    internal_freeres_buf*: pointer
    internal_prevchain*: ptr ptr struct_IO_FILE
    internal_mode*: cint
    internal_unused2*: array[20'i64, cschar]
  FILE* = struct_IO_FILE     ## Generated based on /usr/include/bits/types/FILE.h:7:25
  cookie_read_function_t* = proc (a0: pointer; a1: cstring; a2: csize_t): compiler_ssize_t {.
      cdecl.}                ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:27:19
  cookie_write_function_t* = proc (a0: pointer; a1: cstring; a2: csize_t): compiler_ssize_t {.
      cdecl.}                ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:36:19
  cookie_seek_function_t* = proc (a0: pointer; a1: ptr compiler_off64_t;
                                  a2: cint): cint {.cdecl.} ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:45:13
  cookie_close_function_t* = proc (a0: pointer): cint {.cdecl.} ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:48:13
  struct_IO_cookie_io_functions_t* {.pure, inheritable, bycopy.} = object
    read*: cookie_read_function_t ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:55:16
    write*: cookie_write_function_t
    seek*: cookie_seek_function_t
    close*: cookie_close_function_t
  cookie_io_functions_t* = struct_IO_cookie_io_functions_t ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:61:3
  va_list* = compiler_gnuc_va_list ## Generated based on /usr/include/stdio.h:53:24
  compiler_gnuc_va_list* = compiler_builtin_va_list ## Generated based on /usr/lib/clang/19/include/__stdarg___gnuc_va_list.h:12:27
  off_t* = compiler_off_t    ## Generated based on /usr/include/stdio.h:64:17
  ssize_t* = compiler_ssize_t ## Generated based on /usr/include/stdio.h:78:19
  fpos_t* = compiler_fpos_t  ## Generated based on /usr/include/stdio.h:85:18
  int8_t* = compiler_int8_t  ## Generated based on /usr/include/bits/stdint-intn.h:24:18
  int16_t* = compiler_int16_t ## Generated based on /usr/include/bits/stdint-intn.h:25:19
  int32_t* = compiler_int32_t ## Generated based on /usr/include/bits/stdint-intn.h:26:19
  int64_t* = compiler_int64_t ## Generated based on /usr/include/bits/stdint-intn.h:27:19
  uint8_t* = compiler_uint8_t ## Generated based on /usr/include/bits/stdint-uintn.h:24:19
  uint16_t* = compiler_uint16_t ## Generated based on /usr/include/bits/stdint-uintn.h:25:20
  uint32_t* = compiler_uint32_t ## Generated based on /usr/include/bits/stdint-uintn.h:26:20
  uint64_t* = compiler_uint64_t ## Generated based on /usr/include/bits/stdint-uintn.h:27:20
  int_least8_t* = compiler_int_least8_t ## Generated based on /usr/include/bits/stdint-least.h:25:24
  int_least16_t* = compiler_int_least16_t ## Generated based on /usr/include/bits/stdint-least.h:26:25
  int_least32_t* = compiler_int_least32_t ## Generated based on /usr/include/bits/stdint-least.h:27:25
  int_least64_t* = compiler_int_least64_t ## Generated based on /usr/include/bits/stdint-least.h:28:25
  uint_least8_t* = compiler_uint_least8_t ## Generated based on /usr/include/bits/stdint-least.h:31:25
  uint_least16_t* = compiler_uint_least16_t ## Generated based on /usr/include/bits/stdint-least.h:32:26
  uint_least32_t* = compiler_uint_least32_t ## Generated based on /usr/include/bits/stdint-least.h:33:26
  uint_least64_t* = compiler_uint_least64_t ## Generated based on /usr/include/bits/stdint-least.h:34:26
  int_fast8_t* = cschar      ## Generated based on /usr/include/stdint.h:47:22
  int_fast16_t* = clong      ## Generated based on /usr/include/stdint.h:49:19
  int_fast32_t* = clong      ## Generated based on /usr/include/stdint.h:50:19
  int_fast64_t* = clong      ## Generated based on /usr/include/stdint.h:51:19
  uint_fast8_t* = uint8      ## Generated based on /usr/include/stdint.h:60:24
  uint_fast16_t* = culong    ## Generated based on /usr/include/stdint.h:62:27
  uint_fast32_t* = culong    ## Generated based on /usr/include/stdint.h:63:27
  uint_fast64_t* = culong    ## Generated based on /usr/include/stdint.h:64:27
  intptr_t* = clong          ## Generated based on /usr/include/stdint.h:76:19
  uintptr_t* = culong        ## Generated based on /usr/include/stdint.h:79:27
  intmax_t* = compiler_intmax_t ## Generated based on /usr/include/stdint.h:90:21
  uintmax_t* = compiler_uintmax_t ## Generated based on /usr/include/stdint.h:91:22
  struct_div_t* {.pure, inheritable, bycopy.} = object
    quot*: cint              ## Generated based on /usr/include/stdlib.h:59:9
    rem*: cint
  div_t* = struct_div_t      ## Generated based on /usr/include/stdlib.h:63:5
  struct_ldiv_t* {.pure, inheritable, bycopy.} = object
    quot*: clong             ## Generated based on /usr/include/stdlib.h:67:9
    rem*: clong
  ldiv_t* = struct_ldiv_t    ## Generated based on /usr/include/stdlib.h:71:5
  struct_lldiv_t* {.pure, inheritable, bycopy.} = object
    quot*: clonglong         ## Generated based on /usr/include/stdlib.h:77:23
    rem*: clonglong
  lldiv_t* = struct_lldiv_t  ## Generated based on /usr/include/stdlib.h:81:5
  u_char* = compiler_u_char  ## Generated based on /usr/include/sys/types.h:33:18
  u_short* = compiler_u_short ## Generated based on /usr/include/sys/types.h:34:19
  u_int_typedef* = compiler_u_int ## Generated based on /usr/include/sys/types.h:35:17
  u_long* = compiler_u_long  ## Generated based on /usr/include/sys/types.h:36:18
  quad_t* = compiler_quad_t  ## Generated based on /usr/include/sys/types.h:37:18
  u_quad_t* = compiler_u_quad_t ## Generated based on /usr/include/sys/types.h:38:20
  fsid_t* = compiler_fsid_t  ## Generated based on /usr/include/sys/types.h:39:18
  loff_t* = compiler_loff_t  ## Generated based on /usr/include/sys/types.h:42:18
  ino_t* = compiler_ino_t    ## Generated based on /usr/include/sys/types.h:47:17
  dev_t* = compiler_dev_t    ## Generated based on /usr/include/sys/types.h:59:17
  gid_t* = compiler_gid_t    ## Generated based on /usr/include/sys/types.h:64:17
  mode_t* = compiler_mode_t  ## Generated based on /usr/include/sys/types.h:69:18
  nlink_t* = compiler_nlink_t ## Generated based on /usr/include/sys/types.h:74:19
  uid_t* = compiler_uid_t    ## Generated based on /usr/include/sys/types.h:79:17
  pid_t* = compiler_pid_t    ## Generated based on /usr/include/sys/types.h:97:17
  id_t* = compiler_id_t      ## Generated based on /usr/include/sys/types.h:103:16
  daddr_t* = compiler_daddr_t ## Generated based on /usr/include/sys/types.h:114:19
  caddr_t* = compiler_caddr_t ## Generated based on /usr/include/sys/types.h:115:19
  key_t* = compiler_key_t    ## Generated based on /usr/include/sys/types.h:121:17
  clock_t* = compiler_clock_t ## Generated based on /usr/include/bits/types/clock_t.h:7:19
  clockid_t* = compiler_clockid_t ## Generated based on /usr/include/bits/types/clockid_t.h:7:21
  time_t* = compiler_time_t  ## Generated based on /usr/include/bits/types/time_t.h:10:18
  timer_t* = compiler_timer_t ## Generated based on /usr/include/bits/types/timer_t.h:7:19
  ulong_typedef* = culong    ## Generated based on /usr/include/sys/types.h:148:27
  ushort_typedef* = cushort  ## Generated based on /usr/include/sys/types.h:149:28
  uint_typedef_71D0FDC8* = cuint ## Generated based on /usr/include/sys/types.h:150:22
  u_int8_t_typedef* = compiler_uint8_t ## Generated based on /usr/include/sys/types.h:158:19
  u_int16_t_typedef* = compiler_uint16_t ## Generated based on /usr/include/sys/types.h:159:20
  u_int32_t_typedef* = compiler_uint32_t ## Generated based on /usr/include/sys/types.h:160:20
  u_int64_t_typedef* = compiler_uint64_t ## Generated based on /usr/include/sys/types.h:161:20
  register_t* = clong        ## Generated based on /usr/include/sys/types.h:164:13
  sigset_t* = compiler_sigset_t ## Generated based on /usr/include/bits/types/sigset_t.h:7:20
  struct_timeval* {.pure, inheritable, bycopy.} = object
    tv_sec*: compiler_time_t ## Generated based on /usr/include/bits/types/struct_timeval.h:8:8
    tv_usec*: compiler_suseconds_t
  struct_timespec* {.pure, inheritable, bycopy.} = object
    tv_sec*: compiler_time_t ## Generated based on /usr/include/bits/types/struct_timespec.h:11:8
    tv_nsec*: compiler_syscall_slong_t
  suseconds_t* = compiler_suseconds_t ## Generated based on /usr/include/sys/select.h:43:23
  compiler_fd_mask* = clong  ## Generated based on /usr/include/sys/select.h:49:18
  struct_fd_set* {.pure, inheritable, bycopy.} = object
    compiler_fds_bits*: array[16'i64, compiler_fd_mask] ## Generated based on /usr/include/sys/select.h:59:9
  fd_set* = struct_fd_set    ## Generated based on /usr/include/sys/select.h:70:5
  fd_mask* = compiler_fd_mask ## Generated based on /usr/include/sys/select.h:77:19
  blksize_t* = compiler_blksize_t ## Generated based on /usr/include/sys/types.h:185:21
  blkcnt_t* = compiler_blkcnt_t ## Generated based on /usr/include/sys/types.h:192:20
  fsblkcnt_t* = compiler_fsblkcnt_t ## Generated based on /usr/include/sys/types.h:196:22
  fsfilcnt_t* = compiler_fsfilcnt_t ## Generated based on /usr/include/sys/types.h:200:22
  union_atomic_wide_counter_compiler_value32_t* {.pure, inheritable, bycopy.} = object
    compiler_low*: cuint
    compiler_high*: cuint
  union_atomic_wide_counter* {.union, bycopy.} = object
    compiler_value64*: culonglong ## Generated based on /usr/include/bits/atomic_wide_counter.h:25:9
    compiler_value32*: union_atomic_wide_counter_compiler_value32_t
  compiler_atomic_wide_counter* = union_atomic_wide_counter ## Generated based on /usr/include/bits/atomic_wide_counter.h:33:3
  struct_pthread_internal_list* {.pure, inheritable, bycopy.} = object
    compiler_prev*: ptr struct_pthread_internal_list ## Generated based on /usr/include/bits/thread-shared-types.h:51:16
    compiler_next*: ptr struct_pthread_internal_list
  compiler_pthread_list_t* = struct_pthread_internal_list ## Generated based on /usr/include/bits/thread-shared-types.h:55:3
  struct_pthread_internal_slist* {.pure, inheritable, bycopy.} = object
    compiler_next*: ptr struct_pthread_internal_slist ## Generated based on /usr/include/bits/thread-shared-types.h:57:16
  compiler_pthread_slist_t* = struct_pthread_internal_slist ## Generated based on /usr/include/bits/thread-shared-types.h:60:3
  struct_pthread_mutex_s* {.pure, inheritable, bycopy.} = object
    compiler_lock*: cint     ## Generated based on /usr/include/bits/struct_mutex.h:22:8
    compiler_count*: cuint
    compiler_owner*: cint
    compiler_nusers*: cuint
    compiler_kind*: cint
    compiler_spins*: cshort
    compiler_elision*: cshort
    compiler_list*: compiler_pthread_list_t
  struct_pthread_rwlock_arch_t* {.pure, inheritable, bycopy.} = object
    compiler_readers*: cuint ## Generated based on /usr/include/bits/struct_rwlock.h:23:8
    compiler_writers*: cuint
    compiler_wrphase_futex*: cuint
    compiler_writers_futex*: cuint
    compiler_pad3*: cuint
    compiler_pad4*: cuint
    compiler_cur_writer*: cint
    compiler_shared*: cint
    compiler_rwelision*: cschar
    compiler_pad1*: array[7'i64, uint8]
    compiler_pad2*: culong
    compiler_flags*: cuint
  struct_pthread_cond_s* {.pure, inheritable, bycopy.} = object
    compiler_wseq*: compiler_atomic_wide_counter ## Generated based on /usr/include/bits/thread-shared-types.h:94:8
    compiler_g1_start*: compiler_atomic_wide_counter
    compiler_g_size*: array[2'i64, cuint]
    compiler_g1_orig_size*: cuint
    compiler_wrefs*: cuint
    compiler_g_signals*: array[2'i64, cuint]
  compiler_tss_t* = cuint    ## Generated based on /usr/include/bits/thread-shared-types.h:104:22
  compiler_thrd_t* = culong  ## Generated based on /usr/include/bits/thread-shared-types.h:105:27
  struct_once_flag* {.pure, inheritable, bycopy.} = object
    compiler_data*: cint     ## Generated based on /usr/include/bits/thread-shared-types.h:107:9
  compiler_once_flag* = struct_once_flag ## Generated based on /usr/include/bits/thread-shared-types.h:110:3
  pthread_t* = culong        ## Generated based on /usr/include/bits/pthreadtypes.h:27:27
  union_pthread_mutexattr_t* {.union, bycopy.} = object
    compiler_size*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:32:9
    compiler_align*: cint
  pthread_mutexattr_t* = union_pthread_mutexattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:36:3
  union_pthread_condattr_t* {.union, bycopy.} = object
    compiler_size*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:41:9
    compiler_align*: cint
  pthread_condattr_t* = union_pthread_condattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:45:3
  pthread_key_t* = cuint     ## Generated based on /usr/include/bits/pthreadtypes.h:49:22
  pthread_once_t* = cint     ## Generated based on /usr/include/bits/pthreadtypes.h:53:30
  union_pthread_attr_t* {.union, bycopy.} = object
    compiler_size*: array[56'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:56:7
    compiler_align*: clong
  pthread_attr_t* = union_pthread_attr_t ## Generated based on /usr/include/bits/pthreadtypes.h:62:30
  union_pthread_mutex_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_mutex_s ## Generated based on /usr/include/bits/pthreadtypes.h:67:9
    compiler_size*: array[40'i64, cschar]
    compiler_align*: clong
  pthread_mutex_t* = union_pthread_mutex_t ## Generated based on /usr/include/bits/pthreadtypes.h:72:3
  union_pthread_cond_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_cond_s ## Generated based on /usr/include/bits/pthreadtypes.h:75:9
    compiler_size*: array[48'i64, cschar]
    compiler_align*: clonglong
  pthread_cond_t* = union_pthread_cond_t ## Generated based on /usr/include/bits/pthreadtypes.h:80:3
  union_pthread_rwlock_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_rwlock_arch_t ## Generated based on /usr/include/bits/pthreadtypes.h:86:9
    compiler_size*: array[56'i64, cschar]
    compiler_align*: clong
  pthread_rwlock_t* = union_pthread_rwlock_t ## Generated based on /usr/include/bits/pthreadtypes.h:91:3
  union_pthread_rwlockattr_t* {.union, bycopy.} = object
    compiler_size*: array[8'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:93:9
    compiler_align*: clong
  pthread_rwlockattr_t* = union_pthread_rwlockattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:97:3
  pthread_spinlock_t* = cint ## Generated based on /usr/include/bits/pthreadtypes.h:103:22
  union_pthread_barrier_t* {.union, bycopy.} = object
    compiler_size*: array[32'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:108:9
    compiler_align*: clong
  pthread_barrier_t* = union_pthread_barrier_t ## Generated based on /usr/include/bits/pthreadtypes.h:112:3
  union_pthread_barrierattr_t* {.union, bycopy.} = object
    compiler_size*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:114:9
    compiler_align*: cint
  pthread_barrierattr_t* = union_pthread_barrierattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:118:3
  struct_random_data* {.pure, inheritable, bycopy.} = object
    fptr*: ptr int32         ## Generated based on /usr/include/stdlib.h:543:8
    rptr*: ptr int32
    state*: ptr int32
    rand_type*: cint
    rand_deg*: cint
    rand_sep*: cint
    end_ptr*: ptr int32
  struct_drand48_data* {.pure, inheritable, bycopy.} = object
    compiler_x*: array[3'i64, cushort] ## Generated based on /usr/include/stdlib.h:610:8
    compiler_old_x*: array[3'i64, cushort]
    compiler_c*: cushort
    compiler_init*: cushort
    compiler_a*: culonglong
  compiler_compar_fn_t* = proc (a0: pointer; a1: pointer): cint {.cdecl.} ## Generated based on /usr/include/stdlib.h:948:15
  wchar_t* = cint            ## Generated based on /usr/lib/clang/19/include/__stddef_wchar_t.h:24:24
  struct_locale_struct* {.pure, inheritable, bycopy.} = object
    compiler_locales*: array[13'i64, ptr struct_locale_data] ## Generated based on /usr/include/bits/types/__locale_t.h:27:8
    compiler_ctype_b*: ptr cushort
    compiler_ctype_tolower*: ptr cint
    compiler_ctype_toupper*: ptr cint
    compiler_names*: array[13'i64, cstring]
  compiler_locale_t* = ptr struct_locale_struct ## Generated based on /usr/include/bits/types/__locale_t.h:41:33
  locale_t* = compiler_locale_t ## Generated based on /usr/include/bits/types/locale_t.h:24:20
  fz_jmp_buf* = sigjmp_buf   ## Generated based on /usr/include/mupdf/fitz/system.h:142:20
  float_t* = cfloat          ## Generated based on /usr/include/math.h:167:15
  double_t* = cdouble        ## Generated based on /usr/include/math.h:168:16
  struct_fz_point* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /usr/include/mupdf/fitz/geometry.h:186:9
    y*: cfloat
  fz_point* = struct_fz_point ## Generated based on /usr/include/mupdf/fitz/geometry.h:189:3
  struct_fz_rect* {.pure, inheritable, bycopy.} = object
    x0*: cfloat              ## Generated based on /usr/include/mupdf/fitz/geometry.h:230:9
    y0*: cfloat
    x1*: cfloat
    y1*: cfloat
  fz_rect* = struct_fz_rect  ## Generated based on /usr/include/mupdf/fitz/geometry.h:234:3
  struct_fz_irect* {.pure, inheritable, bycopy.} = object
    x0*: cint                ## Generated based on /usr/include/mupdf/fitz/geometry.h:247:9
    y0*: cint
    x1*: cint
    y1*: cint
  fz_irect* = struct_fz_irect ## Generated based on /usr/include/mupdf/fitz/geometry.h:251:3
  struct_fz_matrix* {.pure, inheritable, bycopy.} = object
    a*: cfloat               ## Generated based on /usr/include/mupdf/fitz/geometry.h:381:9
    b*: cfloat
    c*: cfloat
    d*: cfloat
    e*: cfloat
    f*: cfloat
  fz_matrix* = struct_fz_matrix ## Generated based on /usr/include/mupdf/fitz/geometry.h:384:3
  struct_fz_quad* {.pure, inheritable, bycopy.} = object
    ul*: fz_point            ## Generated based on /usr/include/mupdf/fitz/geometry.h:762:9
    ur*: fz_point
    ll*: fz_point
    lr*: fz_point
  fz_quad* = struct_fz_quad  ## Generated based on /usr/include/mupdf/fitz/geometry.h:765:3
  fz_font_context* = struct_fz_font_context ## Generated based on /usr/include/mupdf/fitz/context.h:35:32
  fz_colorspace_context* = struct_fz_colorspace_context ## Generated based on /usr/include/mupdf/fitz/context.h:36:38
  fz_style_context* = struct_fz_style_context ## Generated based on /usr/include/mupdf/fitz/context.h:37:33
  fz_tuning_context* = struct_fz_tuning_context ## Generated based on /usr/include/mupdf/fitz/context.h:38:34
  fz_store* = struct_fz_store ## Generated based on /usr/include/mupdf/fitz/context.h:39:25
  fz_glyph_cache* = struct_fz_glyph_cache ## Generated based on /usr/include/mupdf/fitz/context.h:40:31
  fz_document_handler_context* = struct_fz_document_handler_context ## Generated based on /usr/include/mupdf/fitz/context.h:41:44
  fz_archive_handler_context* = struct_fz_archive_handler_context ## Generated based on /usr/include/mupdf/fitz/context.h:42:43
  fz_output* = struct_fz_output ## Generated based on /usr/include/mupdf/fitz/context.h:43:26
  struct_fz_output* {.pure, inheritable, bycopy.} = object
    state*: pointer          ## Generated based on /usr/include/mupdf/fitz/output.h:110:8
    write*: fz_output_write_fn
    seek*: fz_output_seek_fn
    tell*: fz_output_tell_fn
    close*: fz_output_close_fn
    drop*: fz_output_drop_fn
    reset*: fz_output_reset_fn
    as_stream*: fz_stream_from_output_fn
    truncate*: fz_truncate_fn
    closed*: cint
    bp*: cstring
    wp*: cstring
    ep*: cstring
    buffered*: cint
    bits*: cint
  fz_context* = struct_fz_context ## Generated based on /usr/include/mupdf/fitz/context.h:44:27
  struct_fz_context* {.pure, inheritable, bycopy.} = object
    user*: pointer           ## Generated based on /usr/include/mupdf/fitz/context.h:825:8
    alloc*: fz_alloc_context
    locks*: fz_locks_context
    error*: fz_error_context
    warn*: fz_warn_context
    aa*: fz_aa_context
    seed48*: array[7'i64, uint16]
    icc_enabled*: cint
    throw_on_repair*: cint
    handler*: ptr fz_document_handler_context
    archive*: ptr fz_archive_handler_context
    style*: ptr fz_style_context
    tuning*: ptr fz_tuning_context
    stddbg*: ptr fz_output
    font*: ptr fz_font_context
    colorspace*: ptr fz_colorspace_context
    store*: ptr fz_store
    glyph_cache*: ptr fz_glyph_cache
  struct_fz_alloc_context* {.pure, inheritable, bycopy.} = object
    user*: pointer           ## Generated based on /usr/include/mupdf/fitz/context.h:49:9
    malloc*: proc (a0: pointer; a1: csize_t): pointer {.cdecl.}
    realloc*: proc (a0: pointer; a1: pointer; a2: csize_t): pointer {.cdecl.}
    free*: proc (a0: pointer; a1: pointer): void {.cdecl.}
  fz_alloc_context* = struct_fz_alloc_context ## Generated based on /usr/include/mupdf/fitz/context.h:55:3
  struct_fz_locks_context* {.pure, inheritable, bycopy.} = object
    user*: pointer           ## Generated based on /usr/include/mupdf/fitz/context.h:271:9
    lock*: proc (a0: pointer; a1: cint): void {.cdecl.}
    unlock*: proc (a0: pointer; a1: cint): void {.cdecl.}
  fz_locks_context* = struct_fz_locks_context ## Generated based on /usr/include/mupdf/fitz/context.h:276:3
  fz_error_cb* = proc (a0: pointer; a1: cstring): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/context.h:419:15
  fz_warning_cb* = proc (a0: pointer; a1: cstring): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/context.h:426:15
  fz_tune_image_decode_fn* = proc (a0: pointer; a1: cint; a2: cint; a3: cint;
                                   a4: ptr fz_irect): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/context.h:482:15
  fz_tune_image_scale_fn* = proc (a0: pointer; a1: cint; a2: cint; a3: cint;
                                  a4: cint): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/context.h:499:14
  struct_fz_string* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/context.h:747:9
    str*: array[1'i64, cschar]
  fz_string* = struct_fz_string ## Generated based on /usr/include/mupdf/fitz/context.h:751:3
  struct_fz_error_stack_slot* {.pure, inheritable, bycopy.} = object
    buffer*: fz_jmp_buf      ## Generated based on /usr/include/mupdf/fitz/context.h:787:9
    state*: cint
    code*: cint
    padding*: array[24'i64, cschar]
  fz_error_stack_slot* = struct_fz_error_stack_slot ## Generated based on /usr/include/mupdf/fitz/context.h:792:3
  struct_fz_error_context* {.pure, inheritable, bycopy.} = object
    top*: ptr fz_error_stack_slot ## Generated based on /usr/include/mupdf/fitz/context.h:794:9
    stack*: array[256'i64, fz_error_stack_slot]
    padding*: fz_error_stack_slot
    stack_base*: ptr fz_error_stack_slot
    errcode*: cint
    errnum*: cint
    print_user*: pointer
    print*: proc (a0: pointer; a1: cstring): void {.cdecl.}
    message*: array[256'i64, cschar]
  fz_error_context* = struct_fz_error_context ## Generated based on /usr/include/mupdf/fitz/context.h:805:3
  struct_fz_warn_context* {.pure, inheritable, bycopy.} = object
    print_user*: pointer     ## Generated based on /usr/include/mupdf/fitz/context.h:807:9
    print*: proc (a0: pointer; a1: cstring): void {.cdecl.}
    count*: cint
    message*: array[256'i64, cschar]
  fz_warn_context* = struct_fz_warn_context ## Generated based on /usr/include/mupdf/fitz/context.h:813:3
  struct_fz_aa_context* {.pure, inheritable, bycopy.} = object
    hscale*: cint            ## Generated based on /usr/include/mupdf/fitz/context.h:815:9
    vscale*: cint
    scale*: cint
    bits*: cint
    text_bits*: cint
    min_line_width*: cfloat
  fz_aa_context* = struct_fz_aa_context ## Generated based on /usr/include/mupdf/fitz/context.h:823:3
  struct_fz_buffer* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/buffer.h:40:9
    data*: ptr uint8
    cap*: csize_t
    len*: csize_t
    unused_bits*: cint
    shared*: cint
  fz_buffer* = struct_fz_buffer ## Generated based on /usr/include/mupdf/fitz/buffer.h:47:3
  fz_stream* = struct_fz_stream ## Generated based on /usr/include/mupdf/fitz/stream.h:44:26
  struct_fz_stream* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/stream.h:313:8
    error*: cint
    eof*: cint
    progressive*: cint
    pos*: int64
    avail*: cint
    bits*: cint
    rp*: ptr uint8
    wp*: ptr uint8
    state*: pointer
    next*: fz_stream_next_fn
    drop*: fz_stream_drop_fn
    seek*: fz_stream_seek_fn
  fz_stream_next_fn* = proc (a0: ptr fz_context; a1: ptr fz_stream; a2: csize_t): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/stream.h:291:14
  fz_stream_drop_fn* = proc (a0: ptr fz_context; a1: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/stream.h:301:15
  fz_stream_seek_fn* = proc (a0: ptr fz_context; a1: ptr fz_stream; a2: int64;
                             a3: cint): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/stream.h:311:15
  fz_output_write_fn* = proc (a0: ptr fz_context; a1: pointer; a2: pointer;
                              a3: csize_t): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:48:15
  fz_output_seek_fn* = proc (a0: ptr fz_context; a1: pointer; a2: int64;
                             a3: cint): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:59:15
  fz_output_tell_fn* = proc (a0: ptr fz_context; a1: pointer): int64 {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:70:18
  fz_output_close_fn* = proc (a0: ptr fz_context; a1: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:77:15
  fz_output_reset_fn* = proc (a0: ptr fz_context; a1: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:85:15
  fz_output_drop_fn* = proc (a0: ptr fz_context; a1: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:93:15
  fz_stream_from_output_fn* = proc (a0: ptr fz_context; a1: pointer): ptr fz_stream {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/output.h:100:21
  fz_truncate_fn* = proc (a0: ptr fz_context; a1: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/output.h:108:15
  struct_fz_md5* {.pure, inheritable, bycopy.} = object
    lo*: uint32              ## Generated based on /usr/include/mupdf/fitz/crypt.h:34:9
    hi*: uint32
    a*: uint32
    b*: uint32
    c*: uint32
    d*: uint32
    buffer*: array[64'i64, uint8]
  fz_md5* = struct_fz_md5    ## Generated based on /usr/include/mupdf/fitz/crypt.h:39:3
  struct_fz_sha256_buffer_t* {.union, bycopy.} = object
    u8*: array[64'i64, uint8]
    u32*: array[16'i64, cuint]
  struct_fz_sha256* {.pure, inheritable, bycopy.} = object
    state*: array[8'i64, cuint] ## Generated based on /usr/include/mupdf/fitz/crypt.h:80:9
    count*: array[2'i64, cuint]
    buffer*: struct_fz_sha256_buffer_t
  fz_sha256* = struct_fz_sha256 ## Generated based on /usr/include/mupdf/fitz/crypt.h:88:3
  struct_fz_sha512_buffer_t* {.union, bycopy.} = object
    u8*: array[128'i64, uint8]
    u64*: array[16'i64, uint64]
  struct_fz_sha512* {.pure, inheritable, bycopy.} = object
    state*: array[8'i64, uint64] ## Generated based on /usr/include/mupdf/fitz/crypt.h:121:9
    count*: array[2'i64, cuint]
    buffer*: struct_fz_sha512_buffer_t
  fz_sha512* = struct_fz_sha512 ## Generated based on /usr/include/mupdf/fitz/crypt.h:129:3
  fz_sha384* = fz_sha512     ## Generated based on /usr/include/mupdf/fitz/crypt.h:158:19
  struct_fz_arc4* {.pure, inheritable, bycopy.} = object
    x*: cuint                ## Generated based on /usr/include/mupdf/fitz/crypt.h:191:9
    y*: cuint
    state*: array[256'i64, uint8]
  fz_arc4* = struct_fz_arc4  ## Generated based on /usr/include/mupdf/fitz/crypt.h:196:3
  struct_fz_aes* {.pure, inheritable, bycopy.} = object
    nr*: cint                ## Generated based on /usr/include/mupdf/fitz/crypt.h:227:9
    rk*: ptr uint32
    buf*: array[68'i64, uint32]
  fz_aes* = struct_fz_aes    ## Generated based on /usr/include/mupdf/fitz/crypt.h:232:3
  struct_fz_getopt_long_options* {.pure, inheritable, bycopy.} = object
    option*: cstring         ## Generated based on /usr/include/mupdf/fitz/getopt.h:28:9
    flag*: ptr cint
    opaque*: pointer
  fz_getopt_long_options* = struct_fz_getopt_long_options ## Generated based on /usr/include/mupdf/fitz/getopt.h:33:3
  fz_hash_table* = struct_fz_hash_table ## Generated based on /usr/include/mupdf/fitz/hash.h:44:30
  fz_hash_table_drop_fn* = proc (a0: ptr fz_context; a1: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/hash.h:51:15
  fz_hash_table_for_each_fn* = proc (a0: ptr fz_context; a1: pointer;
                                     a2: pointer; a3: cint; a4: pointer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/hash.h:106:15
  fz_hash_table_filter_fn* = proc (a0: ptr fz_context; a1: pointer; a2: pointer;
                                   a3: cint; a4: pointer): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/hash.h:118:14
  fz_pool* = struct_fz_pool  ## Generated based on /usr/include/mupdf/fitz/pool.h:34:24
  fz_tree* = struct_fz_tree  ## Generated based on /usr/include/mupdf/fitz/tree.h:33:24
  fz_bidi_direction* = enum_fz_bidi_direction ## Generated based on /usr/include/mupdf/fitz/bidi.h:34:1
  fz_bidi_flags* = enum_fz_bidi_flags ## Generated based on /usr/include/mupdf/fitz/bidi.h:41:1
  fz_bidi_fragment_fn* = proc (a0: ptr uint32; a1: csize_t; a2: cint; a3: cint;
                               a4: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/bidi.h:56:15
  fz_archive* = struct_fz_archive ## Generated based on /usr/include/mupdf/fitz/archive.h:45:27
  struct_fz_archive* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/archive.h:422:8
    file*: ptr fz_stream
    format*: cstring
    drop_archive*: proc (a0: ptr fz_context; a1: ptr fz_archive): void {.cdecl.}
    count_entries*: proc (a0: ptr fz_context; a1: ptr fz_archive): cint {.cdecl.}
    list_entry*: proc (a0: ptr fz_context; a1: ptr fz_archive; a2: cint): cstring {.
        cdecl.}
    has_entry*: proc (a0: ptr fz_context; a1: ptr fz_archive; a2: cstring): cint {.
        cdecl.}
    read_entry*: proc (a0: ptr fz_context; a1: ptr fz_archive; a2: cstring): ptr fz_buffer {.
        cdecl.}
    open_entry*: proc (a0: ptr fz_context; a1: ptr fz_archive; a2: cstring): ptr fz_stream {.
        cdecl.}
  fz_zip_writer* = struct_fz_zip_writer ## Generated based on /usr/include/mupdf/fitz/archive.h:323:30
  fz_recognize_archive_fn* = proc (a0: ptr fz_context; a1: ptr fz_stream): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/archive.h:404:14
  fz_open_archive_fn* = proc (a0: ptr fz_context; a1: ptr fz_stream): ptr fz_archive {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/archive.h:405:22
  struct_fz_archive_handler* {.pure, inheritable, bycopy.} = object
    recognize*: fz_recognize_archive_fn ## Generated based on /usr/include/mupdf/fitz/archive.h:407:9
    open*: fz_open_archive_fn
  fz_archive_handler* = struct_fz_archive_handler ## Generated based on /usr/include/mupdf/fitz/archive.h:412:1
  fz_xml* = struct_fz_xml    ## Generated based on /usr/include/mupdf/fitz/xml.h:36:23
  fz_xml_doc* = fz_xml       ## Generated based on /usr/include/mupdf/fitz/xml.h:39:16
  fz_storable* = struct_fz_storable ## Generated based on /usr/include/mupdf/fitz/store.h:52:28
  struct_fz_storable* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/store.h:75:8
    drop*: fz_store_drop_fn
    droppable*: fz_store_droppable_fn
  fz_store_drop_fn* = proc (a0: ptr fz_context; a1: ptr fz_storable): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/store.h:60:15
  fz_store_droppable_fn* = proc (a0: ptr fz_context; a1: ptr fz_storable): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/store.h:68:14
  struct_fz_key_storable* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/fitz/store.h:86:9
    store_key_refs*: cshort
  fz_key_storable* = struct_fz_key_storable ## Generated based on /usr/include/mupdf/fitz/store.h:90:3
  struct_fz_store_hash_u_t_pi_t* {.pure, inheritable, bycopy.} = object
    ptr_field*: pointer
    i*: cint
  struct_fz_store_hash_u_t_pir_t* {.pure, inheritable, bycopy.} = object
    ptr_field*: pointer
    i*: cint
    r*: fz_irect
  struct_fz_store_hash_u_t_im_t* {.pure, inheritable, bycopy.} = object
    id*: cint
    has_shape*: cschar
    has_group_alpha*: cschar
    m*: array[4'i64, cfloat]
    ptr_field*: pointer
  struct_fz_store_hash_u_t_link_t* {.pure, inheritable, bycopy.} = object
    src_md5*: array[16'i64, uint8]
    dst_md5*: array[16'i64, uint8]
    ri* {.bitsize: 2'i64.}: cuint
    bp* {.bitsize: 1'i64.}: cuint
    format* {.bitsize: 1'i64.}: cuint
    proof* {.bitsize: 1'i64.}: cuint
    src_extras* {.bitsize: 5'i64.}: cuint
    dst_extras* {.bitsize: 5'i64.}: cuint
    copy_spots* {.bitsize: 1'i64.}: cuint
    bgr* {.bitsize: 1'i64.}: cuint
  struct_fz_store_hash_u_t* {.union, bycopy.} = object
    pi*: struct_fz_store_hash_u_t_pi_t
    pir*: struct_fz_store_hash_u_t_pir_t
    im*: struct_fz_store_hash_u_t_im_t
    link*: struct_fz_store_hash_u_t_link_t
  struct_fz_store_hash* {.pure, inheritable, bycopy.} = object
    drop*: fz_store_drop_fn  ## Generated based on /usr/include/mupdf/fitz/store.h:217:9
    u*: struct_fz_store_hash_u_t
  fz_store_hash* = struct_fz_store_hash ## Generated based on /usr/include/mupdf/fitz/store.h:255:3
  struct_fz_store_type* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/mupdf/fitz/store.h:262:9
    make_hash_key*: proc (a0: ptr fz_context; a1: ptr fz_store_hash; a2: pointer): cint {.
        cdecl.}
    keep_key*: proc (a0: ptr fz_context; a1: pointer): pointer {.cdecl.}
    drop_key*: proc (a0: ptr fz_context; a1: pointer): void {.cdecl.}
    cmp_key*: proc (a0: ptr fz_context; a1: pointer; a2: pointer): cint {.cdecl.}
    format_key*: proc (a0: ptr fz_context; a1: cstring; a2: csize_t; a3: pointer): void {.
        cdecl.}
    needs_reap*: proc (a0: ptr fz_context; a1: pointer): cint {.cdecl.}
  fz_store_type* = struct_fz_store_type ## Generated based on /usr/include/mupdf/fitz/store.h:271:3
  fz_store_filter_fn* = proc (a0: ptr fz_context; a1: pointer; a2: pointer): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/store.h:397:14
  fz_icc_profile* = struct_fz_icc_profile ## Generated based on /usr/include/mupdf/fitz/color.h:34:31
  fz_colorspace* = struct_fz_colorspace ## Generated based on /usr/include/mupdf/fitz/color.h:40:30
  struct_fz_colorspace_u_t_icc_t* {.pure, inheritable, bycopy.} = object
    buffer*: ptr fz_buffer
    md5*: array[16'i64, uint8]
    profile*: ptr fz_icc_profile
  struct_fz_colorspace_u_t_indexed_t* {.pure, inheritable, bycopy.} = object
    base*: ptr fz_colorspace
    high*: cint
    lookup*: ptr uint8
  struct_fz_colorspace_u_t_separation_t* {.pure, inheritable, bycopy.} = object
    base*: ptr fz_colorspace
    eval*: proc (a0: ptr fz_context; a1: pointer; a2: ptr cfloat; a3: cint;
                 a4: ptr cfloat; a5: cint): void {.cdecl.}
    drop*: proc (a0: ptr fz_context; a1: pointer): void {.cdecl.}
    tint*: pointer
    colorant*: array[32'i64, cstring]
  struct_fz_colorspace_u_t* {.union, bycopy.} = object
    icc*: struct_fz_colorspace_u_t_icc_t
    indexed*: struct_fz_colorspace_u_t_indexed_t
    separation*: struct_fz_colorspace_u_t_separation_t
  struct_fz_colorspace* {.pure, inheritable, bycopy.} = object
    key_storable*: fz_key_storable ## Generated based on /usr/include/mupdf/fitz/color.h:395:8
    type_field*: enum_fz_colorspace_type
    flags*: cint
    n*: cint
    name*: cstring
    u*: struct_fz_colorspace_u_t
  fz_pixmap* = struct_fz_pixmap ## Generated based on /usr/include/mupdf/fitz/color.h:50:26
  struct_fz_pixmap* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/fitz/pixmap.h:430:8
    x*: cint
    y*: cint
    w*: cint
    h*: cint
    n*: uint8
    s*: uint8
    alpha*: uint8
    flags*: uint8
    stride*: ptrdiff_t
    seps*: ptr fz_separations
    xres*: cint
    yres*: cint
    colorspace*: ptr fz_colorspace
    samples*: ptr uint8
    underlying*: ptr fz_pixmap
  struct_fz_color_params* {.pure, inheritable, bycopy.} = object
    ri*: uint8               ## Generated based on /usr/include/mupdf/fitz/color.h:63:9
    bp*: uint8
    op*: uint8
    opm*: uint8
  fz_color_params* = struct_fz_color_params ## Generated based on /usr/include/mupdf/fitz/color.h:69:4
  struct_fz_default_colorspaces* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/color.h:317:9
    gray*: ptr fz_colorspace
    rgb*: ptr fz_colorspace
    cmyk*: ptr fz_colorspace
    oi*: ptr fz_colorspace
  fz_default_colorspaces* = struct_fz_default_colorspaces ## Generated based on /usr/include/mupdf/fitz/color.h:324:4
  fz_separations* = struct_fz_separations ## Generated based on /usr/include/mupdf/fitz/separation.h:43:31
  fz_separation_behavior* = enum_fz_separation_behavior ## Generated based on /usr/include/mupdf/fitz/separation.h:55:3
  fz_overprint* = struct_fz_overprint ## Generated based on /usr/include/mupdf/fitz/pixmap.h:41:29
  ptrdiff_t* = clong         ## Generated based on /usr/lib/clang/19/include/__stddef_ptrdiff_t.h:18:26
  fz_deflate_level* = enum_fz_deflate_level ## Generated based on /usr/include/mupdf/fitz/compress.h:36:3
  fz_jbig2_globals* = struct_fz_jbig2_globals ## Generated based on /usr/include/mupdf/fitz/filter.h:32:33
  struct_fz_range* {.pure, inheritable, bycopy.} = object
    offset*: int64           ## Generated based on /usr/include/mupdf/fitz/filter.h:34:9
    length*: uint64
  fz_range* = struct_fz_range ## Generated based on /usr/include/mupdf/fitz/filter.h:38:3
  struct_fz_compression_params_u_t_jpeg_t* {.pure, inheritable, bycopy.} = object
    color_transform*: cint
    invert_cmyk*: cint
  struct_fz_compression_params_u_t_jpx_t* {.pure, inheritable, bycopy.} = object
    smask_in_data*: cint
  struct_fz_compression_params_u_t_jbig2_t* {.pure, inheritable, bycopy.} = object
    globals*: ptr fz_jbig2_globals
    embedded*: cint
  struct_fz_compression_params_u_t_fax_t* {.pure, inheritable, bycopy.} = object
    columns*: cint
    rows*: cint
    k*: cint
    end_of_line*: cint
    encoded_byte_align*: cint
    end_of_block*: cint
    black_is_1*: cint
    damaged_rows_before_error*: cint
  struct_fz_compression_params_u_t_flate_t* {.pure, inheritable, bycopy.} = object
    columns*: cint
    colors*: cint
    predictor*: cint
    bpc*: cint
  struct_fz_compression_params_u_t_lzw_t* {.pure, inheritable, bycopy.} = object
    columns*: cint
    colors*: cint
    predictor*: cint
    bpc*: cint
    early_change*: cint
  struct_fz_compression_params_u_t* {.union, bycopy.} = object
    jpeg*: struct_fz_compression_params_u_t_jpeg_t
    jpx*: struct_fz_compression_params_u_t_jpx_t
    jbig2*: struct_fz_compression_params_u_t_jbig2_t
    fax*: struct_fz_compression_params_u_t_fax_t
    flate*: struct_fz_compression_params_u_t_flate_t
    lzw*: struct_fz_compression_params_u_t_lzw_t
  struct_fz_compression_params* {.pure, inheritable, bycopy.} = object
    type_field*: cint        ## Generated based on /usr/include/mupdf/fitz/compressed-buffer.h:36:9
    u*: struct_fz_compression_params_u_t
  fz_compression_params* = struct_fz_compression_params ## Generated based on /usr/include/mupdf/fitz/compressed-buffer.h:78:3
  struct_fz_compressed_buffer* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/compressed-buffer.h:84:9
    params*: fz_compression_params
    buffer*: ptr fz_buffer
  fz_compressed_buffer* = struct_fz_compressed_buffer ## Generated based on /usr/include/mupdf/fitz/compressed-buffer.h:89:3
  struct_fz_int_heap* {.pure, inheritable, bycopy.} = object
    max*: cint               ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:41:9
    len*: cint
    heap*: ptr cint
  struct_fz_ptr_heap* {.pure, inheritable, bycopy.} = object
    max*: cint               ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:41:9
    len*: cint
    heap*: ptr pointer
  struct_fz_int2* {.pure, inheritable, bycopy.} = object
    a*: cint                 ## Generated based on /usr/include/mupdf/fitz/heap.h:116:9
    b*: cint
  struct_fz_int2_heap* {.pure, inheritable, bycopy.} = object
    max*: cint               ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:41:9
    len*: cint
    heap*: ptr fz_int2
  struct_fz_intptr* {.pure, inheritable, bycopy.} = object
    a*: cint                 ## Generated based on /usr/include/mupdf/fitz/heap.h:129:9
    b*: cint
  struct_fz_intptr_heap* {.pure, inheritable, bycopy.} = object
    max*: cint               ## Generated based on /usr/include/mupdf/fitz/heap-imp.h:41:9
    len*: cint
    heap*: ptr fz_intptr
  struct_fz_bitmap* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/bitmap.h:39:9
    w*: cint
    h*: cint
    stride*: cint
    n*: cint
    xres*: cint
    yres*: cint
    samples*: ptr uint8
  fz_bitmap* = struct_fz_bitmap ## Generated based on /usr/include/mupdf/fitz/bitmap.h:45:3
  fz_halftone* = struct_fz_halftone ## Generated based on /usr/include/mupdf/fitz/bitmap.h:77:28
  fz_image* = struct_fz_image ## Generated based on /usr/include/mupdf/fitz/image.h:41:25
  struct_fz_image* {.pure, inheritable, bycopy.} = object
    key_storable*: fz_key_storable ## Generated based on /usr/include/mupdf/fitz/image.h:330:8
    w*: cint
    h*: cint
    n*: uint8
    bpc*: uint8
    imagemask* {.bitsize: 1'i64.}: cuint
    interpolate* {.bitsize: 1'i64.}: cuint
    use_colorkey* {.bitsize: 1'i64.}: cuint
    use_decode* {.bitsize: 1'i64.}: cuint
    decoded* {.bitsize: 1'i64.}: cuint
    scalable* {.bitsize: 1'i64.}: cuint
    orientation*: uint8
    mask*: ptr fz_image
    xres*: cint
    yres*: cint
    colorspace*: ptr fz_colorspace
    drop_image*: fz_drop_image_fn
    get_pixmap*: fz_image_get_pixmap_fn
    get_size*: fz_image_get_size_fn
    colorkey*: array[64'i64, cint]
    decode*: array[64'i64, cfloat]
  fz_compressed_image* = struct_fz_compressed_image ## Generated based on /usr/include/mupdf/fitz/image.h:42:36
  fz_pixmap_image* = struct_fz_pixmap_image ## Generated based on /usr/include/mupdf/fitz/image.h:43:32
  fz_drop_image_fn* = proc (a0: ptr fz_context; a1: ptr fz_image): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/image.h:113:15
  fz_image_get_pixmap_fn* = proc (a0: ptr fz_context; a1: ptr fz_image;
                                  a2: ptr fz_irect; a3: cint; a4: cint;
                                  a5: ptr cint): ptr fz_pixmap {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/image.h:138:21
  fz_image_get_size_fn* = proc (a0: ptr fz_context; a1: ptr fz_image): csize_t {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/image.h:146:17
  struct_fz_shade_u_t_l_or_r_t* {.pure, inheritable, bycopy.} = object
    extend*: array[2'i64, cint]
    coords*: array[2'i64, array[3'i64, cfloat]]
  struct_fz_shade_u_t_m_t* {.pure, inheritable, bycopy.} = object
    vprow*: cint
    bpflag*: cint
    bpcoord*: cint
    bpcomp*: cint
    x0*: cfloat
    x1*: cfloat
    y0*: cfloat
    y1*: cfloat
    c0*: array[32'i64, cfloat]
    c1*: array[32'i64, cfloat]
  struct_fz_shade_u_t_f_t* {.pure, inheritable, bycopy.} = object
    matrix*: fz_matrix
    xdivs*: cint
    ydivs*: cint
    domain*: array[2'i64, array[2'i64, cfloat]]
    fn_vals*: ptr cfloat
  struct_fz_shade_u_t* {.union, bycopy.} = object
    l_or_r*: struct_fz_shade_u_t_l_or_r_t
    m*: struct_fz_shade_u_t_m_t
    f*: struct_fz_shade_u_t_f_t
  struct_fz_shade* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/fitz/shade.h:52:9
    bbox*: fz_rect
    colorspace*: ptr fz_colorspace
    matrix*: fz_matrix
    use_background*: cint
    background*: array[32'i64, cfloat]
    function_stride*: cint
    function*: ptr cfloat
    type_field*: cint
    u*: struct_fz_shade_u_t
    buffer*: ptr fz_compressed_buffer
  fz_shade* = struct_fz_shade ## Generated based on /usr/include/mupdf/fitz/shade.h:103:3
  fz_shade_color_cache* = struct_fz_shade_color_cache ## Generated based on /usr/include/mupdf/fitz/shade.h:134:37
  struct_fz_vertex* {.pure, inheritable, bycopy.} = object
    p*: fz_point             ## Generated based on /usr/include/mupdf/fitz/shade.h:166:9
    c*: array[32'i64, cfloat]
  fz_vertex* = struct_fz_vertex ## Generated based on /usr/include/mupdf/fitz/shade.h:170:3
  fz_shade_prepare_fn* = proc (a0: ptr fz_context; a1: pointer;
                               a2: ptr fz_vertex; a3: ptr cfloat): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/shade.h:182:15
  fz_shade_process_fn* = proc (a0: ptr fz_context; a1: pointer;
                               a2: ptr fz_vertex; a3: ptr fz_vertex;
                               a4: ptr fz_vertex): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/shade.h:194:15
  fz_text_decoder* = struct_fz_text_decoder ## Generated based on /usr/include/mupdf/fitz/font.h:68:32
  struct_fz_text_decoder* {.pure, inheritable, bycopy.} = object
    decode_bound*: proc (a0: ptr fz_text_decoder; a1: ptr uint8; a2: cint): cint {.
        cdecl.}              ## Generated based on /usr/include/mupdf/fitz/font.h:70:8
    decode_size*: proc (a0: ptr fz_text_decoder; a1: ptr uint8; a2: cint): cint {.
        cdecl.}
    decode*: proc (a0: ptr fz_text_decoder; a1: cstring; a2: ptr uint8; a3: cint): void {.
        cdecl.}
    table1*: pointer
    table2*: pointer
  fz_font* = struct_fz_font  ## Generated based on /usr/include/mupdf/fitz/font.h:106:24
  struct_fz_font* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/font.h:753:8
    name*: array[32'i64, cschar]
    buffer*: ptr fz_buffer
    flags*: fz_font_flags_t
    ft_face*: pointer
    shaper_data*: fz_shaper_data_t
    t3matrix*: fz_matrix
    t3resources*: pointer
    t3procs*: ptr ptr fz_buffer
    t3lists*: ptr ptr struct_fz_display_list
    t3widths*: ptr cfloat
    t3flags*: ptr cushort
    t3doc*: pointer
    t3run*: proc (a0: ptr fz_context; a1: pointer; a2: pointer;
                  a3: ptr fz_buffer; a4: ptr struct_fz_device; a5: fz_matrix;
                  a6: pointer; a7: ptr fz_default_colorspaces): void {.cdecl.}
    t3freeres*: proc (a0: ptr fz_context; a1: pointer; a2: pointer): void {.
        cdecl.}
    bbox*: fz_rect
    ascender*: cfloat
    descender*: cfloat
    glyph_count*: cint
    bbox_table*: ptr ptr fz_rect
    use_glyph_bbox*: cint
    width_count*: cint
    width_default*: cshort
    width_table*: ptr cshort
    advance_cache*: ptr ptr cfloat
    encoding_cache*: array[256'i64, ptr uint16]
    has_digest*: cint
    digest*: array[16'i64, uint8]
    subfont*: cint
  struct_fz_font_flags_t* {.pure, inheritable, bycopy.} = object
    is_mono* {.bitsize: 1'i64.}: cuint ## Generated based on /usr/include/mupdf/fitz/font.h:144:9
    is_serif* {.bitsize: 1'i64.}: cuint
    is_bold* {.bitsize: 1'i64.}: cuint
    is_italic* {.bitsize: 1'i64.}: cuint
    ft_substitute* {.bitsize: 1'i64.}: cuint
    ft_stretch* {.bitsize: 1'i64.}: cuint
    fake_bold* {.bitsize: 1'i64.}: cuint
    fake_italic* {.bitsize: 1'i64.}: cuint
    has_opentype* {.bitsize: 1'i64.}: cuint
    invalid_bbox* {.bitsize: 1'i64.}: cuint
    cjk* {.bitsize: 1'i64.}: cuint
    cjk_lang* {.bitsize: 2'i64.}: cuint
    embed* {.bitsize: 1'i64.}: cuint
    never_embed* {.bitsize: 1'i64.}: cuint
  fz_font_flags_t* = struct_fz_font_flags_t ## Generated based on /usr/include/mupdf/fitz/font.h:163:3
  struct_fz_shaper_data_t* {.pure, inheritable, bycopy.} = object
    shaper_handle*: pointer  ## Generated based on /usr/include/mupdf/fitz/font.h:185:9
    destroy*: proc (a0: ptr fz_context; a1: pointer): void {.cdecl.}
  fz_shaper_data_t* = struct_fz_shaper_data_t ## Generated based on /usr/include/mupdf/fitz/font.h:189:3
  fz_load_system_font_fn* = proc (a0: ptr fz_context; a1: cstring; a2: cint;
                                  a3: cint; a4: cint): ptr fz_font {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/font.h:255:19
  fz_load_system_cjk_font_fn* = proc (a0: ptr fz_context; a1: cstring; a2: cint;
                                      a3: cint): ptr fz_font {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/font.h:269:19
  fz_load_system_fallback_font_fn* = proc (a0: ptr fz_context; a1: cint;
      a2: cint; a3: cint; a4: cint; a5: cint): ptr fz_font {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/font.h:284:19
  struct_fz_device* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/device.h:291:8
    hints*: cint
    flags*: cint
    close_device*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    drop_device*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    fill_path*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_path;
                      a3: cint; a4: fz_matrix; a5: ptr fz_colorspace;
                      a6: ptr cfloat; a7: cfloat; a8: fz_color_params): void {.
        cdecl.}
    stroke_path*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_path;
                        a3: ptr fz_stroke_state; a4: fz_matrix;
                        a5: ptr fz_colorspace; a6: ptr cfloat; a7: cfloat;
                        a8: fz_color_params): void {.cdecl.}
    clip_path*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_path;
                      a3: cint; a4: fz_matrix; a5: fz_rect): void {.cdecl.}
    clip_stroke_path*: proc (a0: ptr fz_context; a1: ptr fz_device;
                             a2: ptr fz_path; a3: ptr fz_stroke_state;
                             a4: fz_matrix; a5: fz_rect): void {.cdecl.}
    fill_text*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_text;
                      a3: fz_matrix; a4: ptr fz_colorspace; a5: ptr cfloat;
                      a6: cfloat; a7: fz_color_params): void {.cdecl.}
    stroke_text*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_text;
                        a3: ptr fz_stroke_state; a4: fz_matrix;
                        a5: ptr fz_colorspace; a6: ptr cfloat; a7: cfloat;
                        a8: fz_color_params): void {.cdecl.}
    clip_text*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_text;
                      a3: fz_matrix; a4: fz_rect): void {.cdecl.}
    clip_stroke_text*: proc (a0: ptr fz_context; a1: ptr fz_device;
                             a2: ptr fz_text; a3: ptr fz_stroke_state;
                             a4: fz_matrix; a5: fz_rect): void {.cdecl.}
    ignore_text*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_text;
                        a3: fz_matrix): void {.cdecl.}
    fill_shade*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_shade;
                       a3: fz_matrix; a4: cfloat; a5: fz_color_params): void {.
        cdecl.}
    fill_image*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_image;
                       a3: fz_matrix; a4: cfloat; a5: fz_color_params): void {.
        cdecl.}
    fill_image_mask*: proc (a0: ptr fz_context; a1: ptr fz_device;
                            a2: ptr fz_image; a3: fz_matrix;
                            a4: ptr fz_colorspace; a5: ptr cfloat; a6: cfloat;
                            a7: fz_color_params): void {.cdecl.}
    clip_image_mask*: proc (a0: ptr fz_context; a1: ptr fz_device;
                            a2: ptr fz_image; a3: fz_matrix; a4: fz_rect): void {.
        cdecl.}
    pop_clip*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    begin_mask*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: fz_rect;
                       a3: cint; a4: ptr fz_colorspace; a5: ptr cfloat;
                       a6: fz_color_params): void {.cdecl.}
    end_mask*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: ptr fz_function): void {.
        cdecl.}
    begin_group*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: fz_rect;
                        a3: ptr fz_colorspace; a4: cint; a5: cint; a6: cint;
                        a7: cfloat): void {.cdecl.}
    end_group*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    begin_tile*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: fz_rect;
                       a3: fz_rect; a4: cfloat; a5: cfloat; a6: fz_matrix;
                       a7: cint): cint {.cdecl.}
    end_tile*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    render_flags*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: cint;
                         a3: cint): void {.cdecl.}
    set_default_colorspaces*: proc (a0: ptr fz_context; a1: ptr fz_device;
                                    a2: ptr fz_default_colorspaces): void {.
        cdecl.}
    begin_layer*: proc (a0: ptr fz_context; a1: ptr fz_device; a2: cstring): void {.
        cdecl.}
    end_layer*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    begin_structure*: proc (a0: ptr fz_context; a1: ptr fz_device;
                            a2: fz_structure; a3: cstring; a4: cint): void {.
        cdecl.}
    end_structure*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    begin_metatext*: proc (a0: ptr fz_context; a1: ptr fz_device;
                           a2: fz_metatext; a3: cstring): void {.cdecl.}
    end_metatext*: proc (a0: ptr fz_context; a1: ptr fz_device): void {.cdecl.}
    d1_rect*: fz_rect
    container_len*: cint
    container_cap*: cint
    container*: ptr fz_device_container_stack
  fz_cmap_callback* = proc (a0: ptr fz_context; a1: pointer; a2: culong;
                            a3: cuint): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/font.h:746:15
  fz_path* = struct_fz_path  ## Generated based on /usr/include/mupdf/fitz/path.h:39:24
  fz_linecap* = enum_fz_linecap ## Generated based on /usr/include/mupdf/fitz/path.h:47:3
  fz_linejoin* = enum_fz_linejoin ## Generated based on /usr/include/mupdf/fitz/path.h:55:3
  struct_fz_stroke_state* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/path.h:57:9
    start_cap*: fz_linecap
    dash_cap*: fz_linecap
    end_cap*: fz_linecap
    linejoin*: fz_linejoin
    linewidth*: cfloat
    miterlimit*: cfloat
    dash_phase*: cfloat
    dash_len*: cint
    dash_list*: array[32'i64, cfloat]
  fz_stroke_state* = struct_fz_stroke_state ## Generated based on /usr/include/mupdf/fitz/path.h:67:3
  struct_fz_path_walker* {.pure, inheritable, bycopy.} = object
    moveto*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat): void {.
        cdecl.}              ## Generated based on /usr/include/mupdf/fitz/path.h:69:9
    lineto*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat): void {.
        cdecl.}
    curveto*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat;
                    a4: cfloat; a5: cfloat; a6: cfloat; a7: cfloat): void {.
        cdecl.}
    closepath*: proc (a0: ptr fz_context; a1: pointer): void {.cdecl.}
    quadto*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat;
                   a4: cfloat; a5: cfloat): void {.cdecl.}
    curvetov*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat;
                     a4: cfloat; a5: cfloat): void {.cdecl.}
    curvetoy*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat;
                     a4: cfloat; a5: cfloat): void {.cdecl.}
    rectto*: proc (a0: ptr fz_context; a1: pointer; a2: cfloat; a3: cfloat;
                   a4: cfloat; a5: cfloat): void {.cdecl.}
  fz_path_walker* = struct_fz_path_walker ## Generated based on /usr/include/mupdf/fitz/path.h:81:3
  struct_fz_text_item* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /usr/include/mupdf/fitz/text.h:44:9
    y*: cfloat
    adv*: cfloat
    gid*: cint
    ucs*: cint
    cid*: cint
  fz_text_item* = struct_fz_text_item ## Generated based on /usr/include/mupdf/fitz/text.h:51:3
  fz_text_language* = enum_fz_text_language ## Generated based on /usr/include/mupdf/fitz/text.h:66:3
  struct_fz_text_span* {.pure, inheritable, bycopy.} = object
    font*: ptr fz_font       ## Generated based on /usr/include/mupdf/fitz/text.h:68:16
    trm*: fz_matrix
    wmode* {.bitsize: 1'i64.}: cuint
    bidi_level* {.bitsize: 7'i64.}: cuint
    markup_dir* {.bitsize: 2'i64.}: cuint
    language* {.bitsize: 15'i64.}: cuint
    len*: cint
    cap*: cint
    items*: ptr fz_text_item
    next*: ptr struct_fz_text_span
  fz_text_span* = struct_fz_text_span ## Generated based on /usr/include/mupdf/fitz/text.h:79:3
  struct_fz_text* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/text.h:81:9
    head*: ptr fz_text_span
    tail*: ptr fz_text_span
  fz_text* = struct_fz_text  ## Generated based on /usr/include/mupdf/fitz/text.h:85:3
  fz_glyph* = struct_fz_glyph ## Generated based on /usr/include/mupdf/fitz/glyph.h:37:25
  fz_device* = struct_fz_device ## Generated based on /usr/include/mupdf/fitz/device.h:45:26
  fz_function* = struct_fz_function ## Generated based on /usr/include/mupdf/fitz/device.h:114:28
  struct_fz_function* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/fitz/device.h:124:8
    size*: csize_t
    m*: cint
    n*: cint
    eval*: fz_function_eval_fn
  fz_function_eval_fn* = proc (a0: ptr fz_context; a1: ptr fz_function;
                               a2: ptr cfloat; a3: ptr cfloat): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/device.h:116:15
  struct_fz_device_container_stack* {.pure, inheritable, bycopy.} = object
    scissor*: fz_rect        ## Generated based on /usr/include/mupdf/fitz/device.h:179:9
    type_field*: cint
    user*: cint
  fz_device_container_stack* = struct_fz_device_container_stack ## Generated based on /usr/include/mupdf/fitz/device.h:184:3
  fz_structure* = enum_fz_structure ## Generated based on /usr/include/mupdf/fitz/device.h:278:3
  fz_metatext* = enum_fz_metatext ## Generated based on /usr/include/mupdf/fitz/device.h:289:3
  struct_fz_cookie* {.pure, inheritable, bycopy.} = object
    abort*: cint             ## Generated based on /usr/include/mupdf/fitz/device.h:481:9
    progress*: cint
    progress_max*: csize_t
    errors*: cint
    incomplete*: cint
  fz_cookie* = struct_fz_cookie ## Generated based on /usr/include/mupdf/fitz/device.h:488:3
  struct_fz_draw_options* {.pure, inheritable, bycopy.} = object
    rotate*: cint            ## Generated based on /usr/include/mupdf/fitz/device.h:622:9
    x_resolution*: cint
    y_resolution*: cint
    width*: cint
    height*: cint
    colorspace*: ptr fz_colorspace
    alpha*: cint
    graphics*: cint
    text*: cint
  fz_draw_options* = struct_fz_draw_options ## Generated based on /usr/include/mupdf/fitz/device.h:633:3
  fz_display_list* = struct_fz_display_list ## Generated based on /usr/include/mupdf/fitz/display-list.h:47:32
  fz_document* = struct_fz_document ## Generated based on /usr/include/mupdf/fitz/types.h:26:28
  struct_fz_document* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/document.h:1051:8
    drop_document*: fz_document_drop_fn
    needs_password*: fz_document_needs_password_fn
    authenticate_password*: fz_document_authenticate_password_fn
    has_permission*: fz_document_has_permission_fn
    load_outline*: fz_document_load_outline_fn
    outline_iterator*: fz_document_outline_iterator_fn
    layout*: fz_document_layout_fn
    make_bookmark*: fz_document_make_bookmark_fn
    lookup_bookmark*: fz_document_lookup_bookmark_fn
    resolve_link_dest*: fz_document_resolve_link_dest_fn
    format_link_uri*: fz_document_format_link_uri_fn
    count_chapters*: fz_document_count_chapters_fn
    count_pages*: fz_document_count_pages_fn
    load_page*: fz_document_load_page_fn
    page_label*: fz_document_page_label_fn
    lookup_metadata*: fz_document_lookup_metadata_fn
    set_metadata*: fz_document_set_metadata_fn
    get_output_intent*: fz_document_output_intent_fn
    output_accelerator*: fz_document_output_accelerator_fn
    run_structure*: fz_document_run_structure_fn
    as_pdf*: fz_document_as_pdf_fn
    did_layout*: cint
    is_reflowable*: cint
    open*: ptr fz_page
  struct_fz_location* {.pure, inheritable, bycopy.} = object
    chapter*: cint           ## Generated based on /usr/include/mupdf/fitz/types.h:35:9
    page*: cint
  fz_location* = struct_fz_location ## Generated based on /usr/include/mupdf/fitz/types.h:39:3
  struct_fz_layout_char* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /usr/include/mupdf/fitz/structured-text.h:39:16
    advance*: cfloat
    p*: cstring
    next*: ptr struct_fz_layout_char
  fz_layout_char* = struct_fz_layout_char ## Generated based on /usr/include/mupdf/fitz/structured-text.h:44:3
  struct_fz_layout_line* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /usr/include/mupdf/fitz/structured-text.h:46:16
    y*: cfloat
    font_size*: cfloat
    p*: cstring
    text*: ptr fz_layout_char
    next*: ptr struct_fz_layout_line
  fz_layout_line* = struct_fz_layout_line ## Generated based on /usr/include/mupdf/fitz/structured-text.h:52:3
  struct_fz_layout_block* {.pure, inheritable, bycopy.} = object
    pool*: ptr fz_pool       ## Generated based on /usr/include/mupdf/fitz/structured-text.h:54:9
    matrix*: fz_matrix
    inv_matrix*: fz_matrix
    head*: ptr fz_layout_line
    tailp*: ptr ptr fz_layout_line
    text_tailp*: ptr ptr fz_layout_char
  fz_layout_block* = struct_fz_layout_block ## Generated based on /usr/include/mupdf/fitz/structured-text.h:61:3
  fz_stext_char* = struct_fz_stext_char ## Generated based on /usr/include/mupdf/fitz/structured-text.h:92:30
  struct_fz_stext_char* {.pure, inheritable, bycopy.} = object
    c*: cint                 ## Generated based on /usr/include/mupdf/fitz/structured-text.h:336:8
    bidi*: uint16
    flags*: uint16
    argb*: uint32
    origin*: fz_point
    quad*: fz_quad
    size*: cfloat
    font*: ptr fz_font
    next*: ptr fz_stext_char
  fz_stext_line* = struct_fz_stext_line ## Generated based on /usr/include/mupdf/fitz/structured-text.h:93:30
  struct_fz_stext_line* {.pure, inheritable, bycopy.} = object
    wmode*: cint             ## Generated based on /usr/include/mupdf/fitz/structured-text.h:323:8
    dir*: fz_point
    bbox*: fz_rect
    first_char*: ptr fz_stext_char
    last_char*: ptr fz_stext_char
    prev*: ptr fz_stext_line
    next*: ptr fz_stext_line
  fz_stext_block* = struct_fz_stext_block ## Generated based on /usr/include/mupdf/fitz/structured-text.h:94:31
  struct_fz_stext_block_u_t_t_t* {.pure, inheritable, bycopy.} = object
    first_line*: ptr fz_stext_line
    last_line*: ptr fz_stext_line
  struct_fz_stext_block_u_t_i_t* {.pure, inheritable, bycopy.} = object
    transform*: fz_matrix
    image*: ptr fz_image
  struct_fz_stext_block_u_t_s_t* {.pure, inheritable, bycopy.} = object
    down*: ptr fz_stext_struct
    index*: cint
  struct_fz_stext_block_u_t_v_t* {.pure, inheritable, bycopy.} = object
    stroked*: uint8
    argb*: uint32
  struct_fz_stext_block_u_t_b_t* {.pure, inheritable, bycopy.} = object
    xs*: ptr fz_stext_grid_positions
    ys*: ptr fz_stext_grid_positions
  struct_fz_stext_block_u_t* {.union, bycopy.} = object
    t*: struct_fz_stext_block_u_t_t_t
    i*: struct_fz_stext_block_u_t_i_t
    s*: struct_fz_stext_block_u_t_s_t
    v*: struct_fz_stext_block_u_t_v_t
    b*: struct_fz_stext_block_u_t_b_t
  struct_fz_stext_block* {.pure, inheritable, bycopy.} = object
    type_field*: cint        ## Generated based on /usr/include/mupdf/fitz/structured-text.h:306:8
    bbox*: fz_rect
    u*: struct_fz_stext_block_u_t
    prev*: ptr fz_stext_block
    next*: ptr fz_stext_block
  fz_stext_struct* = struct_fz_stext_struct ## Generated based on /usr/include/mupdf/fitz/structured-text.h:95:32
  struct_fz_stext_struct* {.pure, inheritable, bycopy.} = object
    up*: ptr fz_stext_block  ## Generated based on /usr/include/mupdf/fitz/structured-text.h:369:8
    parent*: ptr fz_stext_struct
    first_block*: ptr fz_stext_block
    last_block*: ptr fz_stext_block
    standard*: fz_structure
    raw*: array[1'i64, cschar]
  fz_stext_grid_positions* = struct_fz_stext_grid_positions ## Generated based on /usr/include/mupdf/fitz/structured-text.h:96:40
  struct_fz_stext_grid_positions_list_t* {.pure, inheritable, bycopy.} = object
    pos*: cfloat
    uncertainty*: cint
  struct_fz_stext_grid_positions* {.pure, inheritable, bycopy.} = object
    len*: cint               ## Generated based on /usr/include/mupdf/fitz/structured-text.h:421:9
    max_uncertainty*: cint
    list*: array[1'i64, struct_fz_stext_grid_positions_list_t]
  struct_fz_stext_page* {.pure, inheritable, bycopy.} = object
    pool*: ptr fz_pool       ## Generated based on /usr/include/mupdf/fitz/structured-text.h:279:9
    mediabox*: fz_rect
    first_block*: ptr fz_stext_block
    last_block*: ptr fz_stext_block
    last_struct*: ptr fz_stext_struct
  fz_stext_page* = struct_fz_stext_page ## Generated based on /usr/include/mupdf/fitz/structured-text.h:291:3
  fz_search_callback_fn* = proc (a0: ptr fz_context; a1: pointer; a2: cint;
                                 a3: ptr fz_quad): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/structured-text.h:492:14
  struct_fz_stext_options* {.pure, inheritable, bycopy.} = object
    flags*: cint             ## Generated based on /usr/include/mupdf/fitz/structured-text.h:546:9
    scale*: cfloat
  fz_stext_options* = struct_fz_stext_options ## Generated based on /usr/include/mupdf/fitz/structured-text.h:550:3
  struct_fz_transition* {.pure, inheritable, bycopy.} = object
    type_field*: cint        ## Generated based on /usr/include/mupdf/fitz/transition.h:45:9
    duration*: cfloat
    vertical*: cint
    outwards*: cint
    direction*: cint
    state0*: cint
    state1*: cint
  fz_transition* = struct_fz_transition ## Generated based on /usr/include/mupdf/fitz/transition.h:59:3
  fz_link* = struct_fz_link  ## Generated based on /usr/include/mupdf/fitz/link.h:64:3
  struct_fz_link* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/link.h:55:16
    next*: ptr struct_fz_link
    rect*: fz_rect
    uri*: cstring
    set_rect_fn*: fz_link_set_rect_fn
    set_uri_fn*: fz_link_set_uri_fn
    drop*: fz_link_drop_link_fn
  fz_link_set_rect_fn* = proc (a0: ptr fz_context; a1: ptr fz_link; a2: fz_rect): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/link.h:32:15
  fz_link_set_uri_fn* = proc (a0: ptr fz_context; a1: ptr fz_link; a2: cstring): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/link.h:33:15
  fz_link_drop_link_fn* = proc (a0: ptr fz_context; a1: ptr fz_link): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/link.h:34:15
  fz_link_dest_type* = enum_fz_link_dest_type ## Generated based on /usr/include/mupdf/fitz/link.h:76:3
  struct_fz_link_dest* {.pure, inheritable, bycopy.} = object
    loc*: fz_location        ## Generated based on /usr/include/mupdf/fitz/link.h:78:9
    type_field*: fz_link_dest_type
    x*: cfloat
    y*: cfloat
    w*: cfloat
    h*: cfloat
    zoom*: cfloat
  fz_link_dest* = struct_fz_link_dest ## Generated based on /usr/include/mupdf/fitz/link.h:83:3
  struct_fz_outline_item* {.pure, inheritable, bycopy.} = object
    title*: cstring          ## Generated based on /usr/include/mupdf/fitz/outline.h:34:9
    uri*: cstring
    is_open*: cint
  fz_outline_item* = struct_fz_outline_item ## Generated based on /usr/include/mupdf/fitz/outline.h:38:3
  fz_outline_iterator* = struct_fz_outline_iterator ## Generated based on /usr/include/mupdf/fitz/outline.h:40:36
  struct_fz_outline_iterator* {.pure, inheritable, bycopy.} = object
    drop*: fz_outline_iterator_drop_fn ## Generated based on /usr/include/mupdf/fitz/outline.h:221:8
    item*: fz_outline_iterator_item_fn
    next*: fz_outline_iterator_next_fn
    prev*: fz_outline_iterator_prev_fn
    up*: fz_outline_iterator_up_fn
    down*: fz_outline_iterator_down_fn
    insert*: fz_outline_iterator_insert_fn
    update*: fz_outline_iterator_update_fn
    del*: fz_outline_iterator_delete_fn
    doc*: ptr fz_document
  struct_fz_outline* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/outline.h:119:16
    title*: cstring
    uri*: cstring
    page*: fz_location
    x*: cfloat
    y*: cfloat
    next*: ptr struct_fz_outline
    down*: ptr struct_fz_outline
    is_open*: cint
  fz_outline* = struct_fz_outline ## Generated based on /usr/include/mupdf/fitz/outline.h:129:3
  fz_outline_iterator_item_fn* = proc (a0: ptr fz_context;
                                       a1: ptr fz_outline_iterator): ptr fz_outline_item {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/outline.h:173:27
  fz_outline_iterator_next_fn* = proc (a0: ptr fz_context;
                                       a1: ptr fz_outline_iterator): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/outline.h:182:14
  fz_outline_iterator_prev_fn* = proc (a0: ptr fz_context;
                                       a1: ptr fz_outline_iterator): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/outline.h:183:14
  fz_outline_iterator_up_fn* = proc (a0: ptr fz_context;
                                     a1: ptr fz_outline_iterator): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/outline.h:184:14
  fz_outline_iterator_down_fn* = proc (a0: ptr fz_context;
                                       a1: ptr fz_outline_iterator): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/outline.h:185:14
  fz_outline_iterator_insert_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_outline_iterator; a2: ptr fz_outline_item): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/outline.h:195:14
  fz_outline_iterator_delete_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_outline_iterator): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/outline.h:202:14
  fz_outline_iterator_update_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_outline_iterator; a2: ptr fz_outline_item): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/outline.h:207:15
  fz_outline_iterator_drop_fn* = proc (a0: ptr fz_context;
                                       a1: ptr fz_outline_iterator): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/outline.h:212:15
  fz_document_handler* = struct_fz_document_handler ## Generated based on /usr/include/mupdf/fitz/document.h:37:36
  struct_fz_document_handler* {.pure, inheritable, bycopy.} = object
    recognize*: fz_document_recognize_fn ## Generated based on /usr/include/mupdf/fitz/document.h:1088:8
    open*: fz_document_open_fn
    extensions*: ptr cstring
    mimetypes*: ptr cstring
    recognize_content*: fz_document_recognize_content_fn
    wants_dir*: cint
    wants_file*: cint
    fin*: fz_document_handler_fin_fn
  fz_page* = struct_fz_page  ## Generated based on /usr/include/mupdf/fitz/document.h:38:24
  struct_fz_page* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/fitz/document.h:1016:8
    doc*: ptr fz_document
    chapter*: cint
    number*: cint
    incomplete*: cint
    drop_page*: fz_page_drop_page_fn
    bound_page*: fz_page_bound_page_fn
    run_page_contents*: fz_page_run_page_fn
    run_page_annots*: fz_page_run_page_fn
    run_page_widgets*: fz_page_run_page_fn
    load_links*: fz_page_load_links_fn
    page_presentation*: fz_page_page_presentation_fn
    control_separation*: fz_page_control_separation_fn
    separation_disabled*: fz_page_separation_disabled_fn
    separations*: fz_page_separations_fn
    overprint*: fz_page_uses_overprint_fn
    create_link*: fz_page_create_link_fn
    delete_link*: fz_page_delete_link_fn
    prev*: ptr ptr fz_page
    next*: ptr fz_page
  fz_bookmark* = intptr_t    ## Generated based on /usr/include/mupdf/fitz/document.h:39:18
  fz_box_type* = enum_fz_box_type ## Generated based on /usr/include/mupdf/fitz/document.h:49:3
  fz_permission* = enum_fz_permission ## Generated based on /usr/include/mupdf/fitz/document.h:117:1
  fz_document_drop_fn* = proc (a0: ptr fz_context; a1: ptr fz_document): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:126:15
  fz_document_needs_password_fn* = proc (a0: ptr fz_context; a1: ptr fz_document): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:133:14
  fz_document_authenticate_password_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: cstring): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:140:14
  fz_document_has_permission_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: fz_permission): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:147:14
  fz_document_load_outline_fn* = proc (a0: ptr fz_context; a1: ptr fz_document): ptr fz_outline {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:154:22
  fz_document_outline_iterator_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document): ptr fz_outline_iterator {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:160:31
  fz_document_layout_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                 a2: cfloat; a3: cfloat; a4: cfloat): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:166:15
  fz_document_resolve_link_dest_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: cstring): fz_link_dest {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:173:23
  fz_document_format_link_uri_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: fz_link_dest): cstring {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:180:17
  fz_document_count_chapters_fn* = proc (a0: ptr fz_context; a1: ptr fz_document): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:187:14
  fz_document_count_pages_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                      a2: cint): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:194:14
  fz_document_load_page_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                    a2: cint; a3: cint): ptr fz_page {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:200:19
  fz_document_page_label_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                     a2: cint; a3: cint; a4: cstring;
                                     a5: csize_t): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:206:15
  fz_document_lookup_metadata_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: cstring; a3: cstring; a4: csize_t): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:213:14
  fz_document_set_metadata_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                       a2: cstring; a3: cstring): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:220:15
  fz_document_output_intent_fn* = proc (a0: ptr fz_context; a1: ptr fz_document): ptr fz_colorspace {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:225:25
  fz_document_output_accelerator_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: ptr fz_output): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:230:15
  fz_document_run_structure_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                        a2: ptr fz_device; a3: ptr fz_cookie): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:235:15
  fz_document_as_pdf_fn* = proc (a0: ptr fz_context; a1: ptr fz_document): ptr fz_document {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:242:23
  fz_document_make_bookmark_fn* = proc (a0: ptr fz_context; a1: ptr fz_document;
                                        a2: fz_location): fz_bookmark {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:248:22
  fz_document_lookup_bookmark_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document; a2: fz_bookmark): fz_location {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:254:22
  fz_page_drop_page_fn* = proc (a0: ptr fz_context; a1: ptr fz_page): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:261:15
  fz_page_bound_page_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
                                 a2: fz_box_type): fz_rect {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:268:18
  fz_page_run_page_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
                               a2: ptr fz_device; a3: fz_matrix;
                               a4: ptr fz_cookie): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:275:15
  fz_page_load_links_fn* = proc (a0: ptr fz_context; a1: ptr fz_page): ptr fz_link {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:281:19
  fz_page_page_presentation_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
                                        a2: ptr fz_transition; a3: ptr cfloat): ptr fz_transition {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:289:25
  fz_page_control_separation_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
      a2: cint; a3: cint): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:296:15
  fz_page_separation_disabled_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
      a2: cint): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:303:14
  fz_page_separations_fn* = proc (a0: ptr fz_context; a1: ptr fz_page): ptr fz_separations {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:310:26
  fz_page_uses_overprint_fn* = proc (a0: ptr fz_context; a1: ptr fz_page): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:316:14
  fz_page_create_link_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
                                  a2: fz_rect; a3: cstring): ptr fz_link {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:322:19
  fz_page_delete_link_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
                                  a2: ptr fz_link): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:327:15
  fz_document_open_fn* = proc (a0: ptr fz_context; a1: ptr fz_document_handler;
                               a2: ptr fz_stream; a3: ptr fz_stream;
                               a4: ptr fz_archive; a5: pointer): ptr fz_document {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:351:23
  fz_document_recognize_fn* = proc (a0: ptr fz_context;
                                    a1: ptr fz_document_handler; a2: cstring): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:366:14
  fz_document_recognize_state_free_fn* = proc (a0: ptr fz_context; a1: pointer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:368:15
  fz_document_recognize_content_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document_handler; a2: ptr fz_stream; a3: ptr fz_archive;
      a4: ptr pointer; a5: ptr fz_document_recognize_state_free_fn): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/document.h:393:14
  fz_document_handler_fin_fn* = proc (a0: ptr fz_context;
                                      a1: ptr fz_document_handler): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:403:15
  fz_process_opened_page_fn* = proc (a0: ptr fz_context; a1: ptr fz_page;
                                     a2: pointer): pointer {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/document.h:411:16
  fz_document_writer* = struct_fz_document_writer ## Generated based on /usr/include/mupdf/fitz/writer.h:32:35
  struct_fz_document_writer* {.pure, inheritable, bycopy.} = object
    begin_page*: fz_document_writer_begin_page_fn ## Generated based on /usr/include/mupdf/fitz/writer.h:243:8
    end_page*: fz_document_writer_end_page_fn
    close_writer*: fz_document_writer_close_writer_fn
    drop_writer*: fz_document_writer_drop_writer_fn
    dev*: ptr fz_device
  fz_document_writer_begin_page_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document_writer; a2: fz_rect): ptr fz_device {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/writer.h:42:21
  fz_document_writer_end_page_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document_writer; a2: ptr fz_device): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/writer.h:50:15
  fz_document_writer_close_writer_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document_writer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/writer.h:59:15
  fz_document_writer_drop_writer_fn* = proc (a0: ptr fz_context;
      a1: ptr fz_document_writer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/writer.h:70:15
  fz_pdfocr_progress_fn* = proc (a0: ptr fz_context; a1: pointer; a2: cint;
                                 a3: cint): cint {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/writer.h:169:14
  fz_band_writer* = struct_fz_band_writer ## Generated based on /usr/include/mupdf/fitz/band-writer.h:35:31
  struct_fz_band_writer* {.pure, inheritable, bycopy.} = object
    drop*: fz_drop_band_writer_fn ## Generated based on /usr/include/mupdf/fitz/band-writer.h:93:8
    close*: fz_close_band_writer_fn
    header*: fz_write_header_fn
    band*: fz_write_band_fn
    trailer*: fz_write_trailer_fn
    out_field*: ptr fz_output
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
  fz_write_header_fn* = proc (a0: ptr fz_context; a1: ptr fz_band_writer;
                              a2: ptr fz_colorspace): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/band-writer.h:87:15
  fz_write_band_fn* = proc (a0: ptr fz_context; a1: ptr fz_band_writer;
                            a2: cint; a3: cint; a4: cint; a5: ptr uint8): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/band-writer.h:88:15
  fz_write_trailer_fn* = proc (a0: ptr fz_context; a1: ptr fz_band_writer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/band-writer.h:89:15
  fz_close_band_writer_fn* = proc (a0: ptr fz_context; a1: ptr fz_band_writer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/band-writer.h:90:15
  fz_drop_band_writer_fn* = proc (a0: ptr fz_context; a1: ptr fz_band_writer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/band-writer.h:91:15
  struct_fz_pcl_options* {.pure, inheritable, bycopy.} = object
    features*: cint          ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:39:9
    odd_page_init*: cstring
    even_page_init*: cstring
    tumble*: cint
    duplex_set*: cint
    duplex*: cint
    paper_size*: cint
    manual_feed_set*: cint
    manual_feed*: cint
    media_position_set*: cint
    media_position*: cint
    orientation*: cint
    page_count*: cint
  fz_pcl_options* = struct_fz_pcl_options ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:59:3
  struct_fz_pclm_options* {.pure, inheritable, bycopy.} = object
    compress*: cint          ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:136:9
    strip_height*: cint
    page_count*: cint
  fz_pclm_options* = struct_fz_pclm_options ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:143:3
  struct_fz_pdfocr_options* {.pure, inheritable, bycopy.} = object
    compress*: cint          ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:174:9
    strip_height*: cint
    language*: array[256'i64, cschar]
    datadir*: array[1024'i64, cschar]
    skew_correct*: cint
    skew_angle*: cfloat
    skew_border*: cint
    page_count*: cint
  fz_pdfocr_options* = struct_fz_pdfocr_options ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:187:3
  struct_fz_pwg_options* {.pure, inheritable, bycopy.} = object
    media_class*: array[64'i64, cschar] ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:408:9
    media_color*: array[64'i64, cschar]
    media_type*: array[64'i64, cschar]
    output_type*: array[64'i64, cschar]
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
    PageSize*: array[2'i64, cuint]
    separations*: cint
    tray_switch*: cint
    tumble*: cint
    media_type_num*: cint
    compression*: cint
    row_count*: cuint
    row_feed*: cuint
    row_step*: cuint
    rendering_intent*: array[64'i64, cschar]
    page_size_name*: array[64'i64, cschar]
  fz_pwg_options* = struct_fz_pwg_options ## Generated based on /usr/include/mupdf/fitz/write-pixmap.h:448:3
  fz_story* = struct_fz_story ## Generated based on /usr/include/mupdf/fitz/story.h:52:25
  struct_fz_story_element_position* {.pure, inheritable, bycopy.} = object
    depth*: cint             ## Generated based on /usr/include/mupdf/fitz/story.h:158:9
    heading*: cint
    id*: cstring
    href*: cstring
    rect*: fz_rect
    text*: cstring
    open_close*: cint
    rectangle_num*: cint
  fz_story_element_position* = struct_fz_story_element_position ## Generated based on /usr/include/mupdf/fitz/story.h:220:3
  fz_story_position_callback* = proc (a0: ptr fz_context; a1: pointer;
                                      a2: ptr fz_story_element_position): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/story.h:222:15
  struct_fz_write_story_position* {.pure, inheritable, bycopy.} = object
    element*: fz_story_element_position ## Generated based on /usr/include/mupdf/fitz/story-writer.h:33:9
    page_num*: cint
  fz_write_story_position* = struct_fz_write_story_position ## Generated based on /usr/include/mupdf/fitz/story-writer.h:37:3
  struct_fz_write_story_positions* {.pure, inheritable, bycopy.} = object
    positions*: ptr fz_write_story_position ## Generated based on /usr/include/mupdf/fitz/story-writer.h:43:9
    num*: cint
  fz_write_story_positions* = struct_fz_write_story_positions ## Generated based on /usr/include/mupdf/fitz/story-writer.h:47:3
  fz_write_story_rectfn* = proc (a0: ptr fz_context; a1: pointer; a2: cint;
                                 a3: fz_rect; a4: ptr fz_rect;
                                 a5: ptr fz_matrix; a6: ptr fz_rect): cint {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/story-writer.h:70:14
  fz_write_story_positionfn* = proc (a0: ptr fz_context; a1: pointer;
                                     a2: ptr fz_write_story_position): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/story-writer.h:82:15
  fz_write_story_pagefn* = proc (a0: ptr fz_context; a1: pointer; a2: cint;
                                 a3: fz_rect; a4: ptr fz_device; a5: cint): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/fitz/story-writer.h:101:15
  fz_write_story_contentfn* = proc (a0: ptr fz_context; a1: pointer;
                                    a2: ptr fz_write_story_positions;
                                    a3: ptr fz_buffer): void {.cdecl.} ## Generated based on /usr/include/mupdf/fitz/story-writer.h:117:15
  pdf_document* = struct_pdf_document ## Generated based on /usr/include/mupdf/pdf/document.h:39:29
  struct_pdf_document_resources_t* {.pure, inheritable, bycopy.} = object
    fonts*: ptr fz_hash_table
  struct_pdf_document* {.pure, inheritable, bycopy.} = object
    super*: fz_document      ## Generated based on /usr/include/mupdf/pdf/document.h:419:8
    file*: ptr fz_stream
    version*: cint
    is_fdf*: cint
    startxref*: int64
    file_size*: int64
    crypt*: ptr pdf_crypt
    ocg*: ptr pdf_ocg_descriptor
    oi*: ptr fz_colorspace
    max_xref_len*: cint
    num_xref_sections*: cint
    saved_num_xref_sections*: cint
    num_incremental_sections*: cint
    xref_base*: cint
    disallow_new_increments*: cint
    local_xref*: ptr pdf_xref
    local_xref_nesting*: cint
    xref_sections*: ptr pdf_xref
    saved_xref_sections*: ptr pdf_xref
    xref_index*: ptr cint
    save_in_progress*: cint
    last_xref_was_old_style*: cint
    has_linearization_object*: cint
    map_page_count*: cint
    rev_page_map*: ptr pdf_rev_page_map
    fwd_page_map*: ptr ptr pdf_obj
    page_tree_broken*: cint
    repair_attempted*: cint
    repair_in_progress*: cint
    non_structural_change*: cint
    file_reading_linearly*: cint
    file_length*: int64
    linear_page_count*: cint
    linear_obj*: ptr pdf_obj
    linear_page_refs*: ptr ptr pdf_obj
    linear_page1_obj_num*: cint
    linear_pos*: int64
    linear_page_num*: cint
    hint_object_offset*: cint
    hint_object_length*: cint
    hints_loaded*: cint
    hint_page*: ptr pdf_hint_page
    hint_shared_ref*: ptr cint
    hint_shared*: ptr pdf_hint_shared
    hint_obj_offsets_max*: cint
    hint_obj_offsets*: ptr int64
    resources_localised*: cint
    lexbuf*: pdf_lexbuf_large
    js*: ptr pdf_js
    recalculate*: cint
    redacted*: cint
    resynth_required*: cint
    event_cb*: pdf_doc_event_cb
    free_event_data_cb*: pdf_free_doc_event_data_cb
    event_cb_data*: pointer
    num_type3_fonts*: cint
    max_type3_fonts*: cint
    type3_fonts*: ptr ptr fz_font
    resources*: struct_pdf_document_resources_t
    orphans_max*: cint
    orphans_count*: cint
    orphans*: ptr ptr pdf_obj
    xfa*: ptr fz_xml_doc
    journal*: ptr pdf_journal
  pdf_crypt* = struct_pdf_crypt ## Generated based on /usr/include/mupdf/pdf/object.h:29:26
  pdf_journal* = struct_pdf_journal ## Generated based on /usr/include/mupdf/pdf/object.h:30:28
  pdf_obj* = struct_pdf_obj  ## Generated based on /usr/include/mupdf/pdf/object.h:42:24
  pdf_cycle_list* = struct_pdf_cycle_list ## Generated based on /usr/include/mupdf/pdf/object.h:103:31
  struct_pdf_cycle_list* {.pure, inheritable, bycopy.} = object
    up*: ptr pdf_cycle_list  ## Generated based on /usr/include/mupdf/pdf/object.h:104:8
    num*: cint
  struct_pdf_mark_bits* {.pure, inheritable, bycopy.} = object
    len*: cint               ## Generated based on /usr/include/mupdf/pdf/object.h:110:9
    bits*: array[1'i64, uint8]
  pdf_mark_bits* = struct_pdf_mark_bits ## Generated based on /usr/include/mupdf/pdf/object.h:114:3
  struct_pdf_mark_list* {.pure, inheritable, bycopy.} = object
    len*: cint               ## Generated based on /usr/include/mupdf/pdf/object.h:121:9
    max*: cint
    list*: ptr cint
    local_list*: array[8'i64, cint]
  pdf_mark_list* = struct_pdf_mark_list ## Generated based on /usr/include/mupdf/pdf/object.h:127:3
  pdf_xref* = struct_pdf_xref ## Generated based on /usr/include/mupdf/pdf/document.h:33:25
  struct_pdf_xref* {.pure, inheritable, bycopy.} = object
    num_objects*: cint       ## Generated based on /usr/include/mupdf/pdf/xref.h:85:8
    subsec*: ptr pdf_xref_subsec
    trailer*: ptr pdf_obj
    pre_repair_trailer*: ptr pdf_obj
    unsaved_sigs*: ptr pdf_unsaved_sig
    unsaved_sigs_end*: ptr ptr pdf_unsaved_sig
    end_ofs*: int64
  pdf_ocg_descriptor* = struct_pdf_ocg_descriptor ## Generated based on /usr/include/mupdf/pdf/document.h:34:35
  pdf_page* = struct_pdf_page ## Generated based on /usr/include/mupdf/pdf/document.h:36:25
  struct_pdf_page* {.pure, inheritable, bycopy.} = object
    super*: fz_page          ## Generated based on /usr/include/mupdf/pdf/page.h:302:8
    doc*: ptr pdf_document
    obj*: ptr pdf_obj
    transparency*: cint
    overprint*: cint
    links*: ptr fz_link
    annots*: ptr pdf_annot
    annot_tailp*: ptr ptr pdf_annot
    widgets*: ptr pdf_annot
    widget_tailp*: ptr ptr pdf_annot
  pdf_annot* = struct_pdf_annot ## Generated based on /usr/include/mupdf/pdf/annot.h:32:26
  pdf_js* = struct_pdf_js    ## Generated based on /usr/include/mupdf/pdf/document.h:38:23
  struct_pdf_lexbuf* {.pure, inheritable, bycopy.} = object
    size*: csize_t           ## Generated based on /usr/include/mupdf/pdf/document.h:47:9
    base_size*: csize_t
    len*: csize_t
    i*: int64
    f*: cfloat
    scratch*: cstring
    buffer*: array[256'i64, cschar]
  pdf_lexbuf* = struct_pdf_lexbuf ## Generated based on /usr/include/mupdf/pdf/document.h:56:3
  struct_pdf_lexbuf_large* {.pure, inheritable, bycopy.} = object
    base*: pdf_lexbuf        ## Generated based on /usr/include/mupdf/pdf/document.h:58:9
    buffer*: array[65280'i64, cschar]
  pdf_lexbuf_large* = struct_pdf_lexbuf_large ## Generated based on /usr/include/mupdf/pdf/document.h:62:3
  pdf_doc_event* = struct_pdf_doc_event ## Generated based on /usr/include/mupdf/pdf/document.h:68:30
  struct_pdf_doc_event* {.pure, inheritable, bycopy.} = object
    type_field*: cint        ## Generated based on /usr/include/mupdf/pdf/event.h:35:8
  pdf_doc_event_cb* = proc (a0: ptr fz_context; a1: ptr pdf_document;
                            a2: ptr pdf_doc_event; a3: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/document.h:74:15
  pdf_free_doc_event_data_cb* = proc (a0: ptr fz_context; a1: pointer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/document.h:80:15
  pdf_js_console* = struct_pdf_js_console ## Generated based on /usr/include/mupdf/pdf/document.h:124:3
  struct_pdf_js_console* {.pure, inheritable, bycopy.} = object
    drop*: pdf_js_console_drop_cb ## Generated based on /usr/include/mupdf/pdf/document.h:118:16
    show*: pdf_js_console_show_cb
    hide*: pdf_js_console_hide_cb
    clear*: pdf_js_console_clear_cb
    write*: pdf_js_console_write_cb
  pdf_js_console_drop_cb* = proc (a0: ptr pdf_js_console; a1: pointer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/document.h:89:15
  pdf_js_console_show_cb* = proc (a0: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/document.h:95:15
  pdf_js_console_hide_cb* = proc (a0: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/document.h:101:15
  pdf_js_console_clear_cb* = proc (a0: pointer): void {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/document.h:107:15
  pdf_js_console_write_cb* = proc (a0: pointer; a1: cstring): void {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/document.h:113:15
  struct_pdf_layer_config* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/mupdf/pdf/document.h:264:9
    creator*: cstring
  pdf_layer_config* = struct_pdf_layer_config ## Generated based on /usr/include/mupdf/pdf/document.h:268:3
  pdf_layer_config_ui_type* = enum_pdf_layer_config_ui_type ## Generated based on /usr/include/mupdf/pdf/document.h:345:3
  struct_pdf_layer_config_ui* {.pure, inheritable, bycopy.} = object
    text*: cstring           ## Generated based on /usr/include/mupdf/pdf/document.h:347:9
    depth*: cint
    type_field*: pdf_layer_config_ui_type
    selected*: cint
    locked*: cint
  pdf_layer_config_ui* = struct_pdf_layer_config_ui ## Generated based on /usr/include/mupdf/pdf/document.h:354:3
  pdf_pkcs7_signer* = struct_pdf_pkcs7_signer ## Generated based on /usr/include/mupdf/pdf/document.h:386:33
  struct_pdf_pkcs7_signer* {.pure, inheritable, bycopy.} = object
    keep*: pdf_pkcs7_keep_signer_fn ## Generated based on /usr/include/mupdf/pdf/form.h:229:8
    drop*: pdf_pkcs7_drop_signer_fn
    get_signing_name*: pdf_pkcs7_get_signing_name_fn
    max_digest_size*: pdf_pkcs7_max_digest_size_fn
    create_digest*: pdf_pkcs7_create_digest_fn
  struct_pdf_unsaved_sig* {.pure, inheritable, bycopy.} = object
    field*: ptr pdf_obj      ## Generated based on /usr/include/mupdf/pdf/document.h:389:16
    byte_range_start*: csize_t
    byte_range_end*: csize_t
    contents_start*: csize_t
    contents_end*: csize_t
    signer*: ptr pdf_pkcs7_signer
    next*: ptr struct_pdf_unsaved_sig
  pdf_unsaved_sig* = struct_pdf_unsaved_sig ## Generated based on /usr/include/mupdf/pdf/document.h:398:3
  struct_pdf_rev_page_map* {.pure, inheritable, bycopy.} = object
    page*: cint              ## Generated based on /usr/include/mupdf/pdf/document.h:400:9
    object_field*: cint
  pdf_rev_page_map* = struct_pdf_rev_page_map ## Generated based on /usr/include/mupdf/pdf/document.h:404:3
  struct_pdf_hint_page* {.pure, inheritable, bycopy.} = object
    number*: cint            ## Generated based on /usr/include/mupdf/pdf/document.h:406:9
    offset*: int64
    index*: int64
  pdf_hint_page* = struct_pdf_hint_page ## Generated based on /usr/include/mupdf/pdf/document.h:411:3
  struct_pdf_hint_shared* {.pure, inheritable, bycopy.} = object
    number*: cint            ## Generated based on /usr/include/mupdf/pdf/document.h:413:9
    offset*: int64
  pdf_hint_shared* = struct_pdf_hint_shared ## Generated based on /usr/include/mupdf/pdf/document.h:417:3
  pdf_graft_map* = struct_pdf_graft_map ## Generated based on /usr/include/mupdf/pdf/document.h:530:30
  pdf_page_label_style* = enum_pdf_page_label_style ## Generated based on /usr/include/mupdf/pdf/document.h:705:3
  struct_pdf_write_options* {.pure, inheritable, bycopy.} = object
    do_incremental*: cint    ## Generated based on /usr/include/mupdf/pdf/document.h:718:9
    do_pretty*: cint
    do_ascii*: cint
    do_compress*: cint
    do_compress_images*: cint
    do_compress_fonts*: cint
    do_decompress*: cint
    do_garbage*: cint
    do_linear*: cint
    do_clean*: cint
    do_sanitize*: cint
    do_appearance*: cint
    do_encrypt*: cint
    dont_regenerate_id*: cint
    permissions*: cint
    opwd_utf8*: array[128'i64, cschar]
    upwd_utf8*: array[128'i64, cschar]
    do_snapshot*: cint
    do_preserve_metadata*: cint
    do_use_objstms*: cint
    compression_effort*: cint
  pdf_write_options* = struct_pdf_write_options ## Generated based on /usr/include/mupdf/pdf/document.h:741:3
  pdf_token* = enum_pdf_token ## Generated based on /usr/include/mupdf/pdf/parse.h:41:3
  struct_pdf_xref_entry* {.pure, inheritable, bycopy.} = object
    type_field*: cschar      ## Generated based on /usr/include/mupdf/pdf/xref.h:65:9
    marked*: uint8
    gen*: cushort
    num*: cint
    ofs*: int64
    stm_ofs*: int64
    stm_buf*: ptr fz_buffer
    obj*: ptr pdf_obj
  pdf_xref_entry* = struct_pdf_xref_entry ## Generated based on /usr/include/mupdf/pdf/xref.h:75:3
  struct_pdf_xref_subsec* {.pure, inheritable, bycopy.} = object
    next*: ptr struct_pdf_xref_subsec ## Generated based on /usr/include/mupdf/pdf/xref.h:77:16
    len*: cint
    start*: cint
    table*: ptr pdf_xref_entry
  pdf_xref_subsec* = struct_pdf_xref_subsec ## Generated based on /usr/include/mupdf/pdf/xref.h:83:3
  pdf_locked_fields* = struct_pdf_locked_fields ## Generated based on /usr/include/mupdf/pdf/xref.h:252:34
  struct_pdf_range* {.pure, inheritable, bycopy.} = object
    low*: cushort            ## Generated based on /usr/include/mupdf/pdf/cmap.h:31:9
    high*: cushort
    out_field*: cushort
  pdf_range* = struct_pdf_range ## Generated based on /usr/include/mupdf/pdf/cmap.h:34:3
  struct_pdf_xrange* {.pure, inheritable, bycopy.} = object
    low*: cuint              ## Generated based on /usr/include/mupdf/pdf/cmap.h:36:9
    high*: cuint
    out_field*: cuint
  pdf_xrange* = struct_pdf_xrange ## Generated based on /usr/include/mupdf/pdf/cmap.h:39:3
  struct_pdf_mrange* {.pure, inheritable, bycopy.} = object
    low*: cuint              ## Generated based on /usr/include/mupdf/pdf/cmap.h:41:9
    out_field*: cuint
  pdf_mrange* = struct_pdf_mrange ## Generated based on /usr/include/mupdf/pdf/cmap.h:44:3
  cmap_splay* = struct_cmap_splay ## Generated based on /usr/include/mupdf/pdf/cmap.h:46:27
  struct_pdf_cmap_codespace_t* {.pure, inheritable, bycopy.} = object
    n*: cint
    low*: cuint
    high*: cuint
  struct_pdf_cmap* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/pdf/cmap.h:48:16
    cmap_name*: array[32'i64, cschar]
    usecmap_name*: array[32'i64, cschar]
    usecmap*: ptr struct_pdf_cmap
    wmode*: cint
    codespace_len*: cint
    codespace*: array[40'i64, struct_pdf_cmap_codespace_t]
    rlen*: cint
    rcap*: cint
    ranges*: ptr pdf_range
    xlen*: cint
    xcap*: cint
    xranges*: ptr pdf_xrange
    mlen*: cint
    mcap*: cint
    mranges*: ptr pdf_mrange
    dlen*: cint
    dcap*: cint
    dict*: ptr cint
    tlen*: cint
    tcap*: cint
    ttop*: cint
    tree*: ptr cmap_splay
  pdf_cmap* = struct_pdf_cmap ## Generated based on /usr/include/mupdf/pdf/cmap.h:80:3
  struct_pdf_hmtx* {.pure, inheritable, bycopy.} = object
    lo*: cushort             ## Generated based on /usr/include/mupdf/pdf/font.h:45:9
    hi*: cushort
    w*: cint
  pdf_hmtx* = struct_pdf_hmtx ## Generated based on /usr/include/mupdf/pdf/font.h:50:3
  struct_pdf_vmtx* {.pure, inheritable, bycopy.} = object
    lo*: cushort             ## Generated based on /usr/include/mupdf/pdf/font.h:52:9
    hi*: cushort
    x*: cshort
    y*: cshort
    w*: cshort
  pdf_vmtx* = struct_pdf_vmtx ## Generated based on /usr/include/mupdf/pdf/font.h:59:3
  struct_pdf_font_desc* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/pdf/font.h:61:9
    size*: csize_t
    font*: ptr fz_font
    flags*: cint
    italic_angle*: cfloat
    ascent*: cfloat
    descent*: cfloat
    cap_height*: cfloat
    x_height*: cfloat
    missing_width*: cfloat
    encoding*: ptr pdf_cmap
    to_ttf_cmap*: ptr pdf_cmap
    cid_to_gid_len*: csize_t
    cid_to_gid*: ptr cushort
    to_unicode*: ptr pdf_cmap
    cid_to_ucs_len*: csize_t
    cid_to_ucs*: ptr cushort
    wmode*: cint
    hmtx_len*: cint
    hmtx_cap*: cint
    dhmtx*: pdf_hmtx
    hmtx*: ptr pdf_hmtx
    vmtx_len*: cint
    vmtx_cap*: cint
    dvmtx*: pdf_vmtx
    vmtx*: ptr pdf_vmtx
    is_embedded*: cint
    t3loading*: cint
  pdf_font_desc* = struct_pdf_font_desc ## Generated based on /usr/include/mupdf/pdf/font.h:101:3
  struct_pdf_font_resource_key* {.pure, inheritable, bycopy.} = object
    digest*: array[16'i64, uint8] ## Generated based on /usr/include/mupdf/pdf/resource.h:52:9
    type_field*: cint
    encoding*: cint
    local_xref*: cint
  pdf_font_resource_key* = struct_pdf_font_resource_key ## Generated based on /usr/include/mupdf/pdf/resource.h:58:3
  pdf_function* = struct_pdf_function ## Generated based on /usr/include/mupdf/pdf/resource.h:65:29
  pdf_recolor_vertex* = proc (a0: ptr fz_context; a1: pointer;
                              a2: ptr fz_colorspace; a3: ptr cfloat;
                              a4: ptr fz_colorspace; a5: ptr cfloat): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/resource.h:83:15
  pdf_shade_recolorer* = proc (a0: ptr fz_context; a1: pointer;
                               a2: ptr fz_colorspace; a3: ptr ptr fz_colorspace): pdf_recolor_vertex {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/resource.h:91:30
  struct_pdf_pattern* {.pure, inheritable, bycopy.} = object
    storable*: fz_storable   ## Generated based on /usr/include/mupdf/pdf/resource.h:105:9
    ismask*: cint
    xstep*: cfloat
    ystep*: cfloat
    matrix*: fz_matrix
    bbox*: fz_rect
    document*: ptr pdf_document
    resources*: ptr pdf_obj
    contents*: ptr pdf_obj
    id*: cint
  pdf_pattern* = struct_pdf_pattern ## Generated based on /usr/include/mupdf/pdf/resource.h:117:3
  pdf_gstate* = struct_pdf_gstate ## Generated based on /usr/include/mupdf/pdf/interpret.h:30:27
  pdf_processor* = struct_pdf_processor ## Generated based on /usr/include/mupdf/pdf/interpret.h:31:30
  struct_pdf_processor* {.pure, inheritable, bycopy.} = object
    refs*: cint              ## Generated based on /usr/include/mupdf/pdf/interpret.h:43:8
    closed*: cint
    close_processor*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.
        cdecl.}
    drop_processor*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.
        cdecl.}
    reset_processor*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.
        cdecl.}
    push_resources*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                           a2: ptr pdf_obj): void {.cdecl.}
    pop_resources*: proc (a0: ptr fz_context; a1: ptr pdf_processor): ptr pdf_obj {.
        cdecl.}
    op_w*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_j*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint): void {.
        cdecl.}
    op_J_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint): void {.
        cdecl.}
    op_M*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_d*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: ptr pdf_obj;
                 a3: cfloat): void {.cdecl.}
    op_ri*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring): void {.
        cdecl.}
    op_i*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_gs_begin*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                        a3: ptr pdf_obj): void {.cdecl.}
    op_gs_BM*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring): void {.
        cdecl.}
    op_gs_ca*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_gs_CA_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_gs_SMask*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                        a2: ptr pdf_obj; a3: ptr fz_colorspace; a4: ptr cfloat;
                        a5: cint; a6: ptr pdf_obj): void {.cdecl.}
    op_gs_end*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_q*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_Q_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_cm*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat; a7: cfloat): void {.
        cdecl.}
    op_m_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                       a3: cfloat): void {.cdecl.}
    op_l*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                 a3: cfloat): void {.cdecl.}
    op_c*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                 a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat; a7: cfloat): void {.
        cdecl.}
    op_v*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                 a3: cfloat; a4: cfloat; a5: cfloat): void {.cdecl.}
    op_y*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                 a3: cfloat; a4: cfloat; a5: cfloat): void {.cdecl.}
    op_h*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_re*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat; a4: cfloat; a5: cfloat): void {.cdecl.}
    op_S*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_s_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_F*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_f_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_fstar*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_B*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_Bstar*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_b_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_bstar_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.
        cdecl.}
    op_n*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_W_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_Wstar*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_BT*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_ET*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_Tc*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_Tw*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_Tz*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_TL*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_Tf*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                  a3: ptr pdf_font_desc; a4: cfloat): void {.cdecl.}
    op_Tr*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint): void {.
        cdecl.}
    op_Ts*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_Td*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat): void {.cdecl.}
    op_TD_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                        a3: cfloat): void {.cdecl.}
    op_Tm*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat; a7: cfloat): void {.
        cdecl.}
    op_Tstar*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_TJ*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: ptr pdf_obj): void {.
        cdecl.}
    op_Tj_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                        a3: csize_t): void {.cdecl.}
    op_squote*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                      a3: csize_t): void {.cdecl.}
    op_dquote*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                      a3: cfloat; a4: cstring; a5: csize_t): void {.cdecl.}
    op_d0*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat): void {.cdecl.}
    op_d1*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat; a4: cfloat; a5: cfloat; a6: cfloat; a7: cfloat): void {.
        cdecl.}
    op_CS*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                  a3: ptr fz_colorspace): void {.cdecl.}
    op_cs_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                        a3: ptr fz_colorspace): void {.cdecl.}
    op_SC_pattern*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                          a2: cstring; a3: ptr pdf_pattern; a4: cint;
                          a5: ptr cfloat): void {.cdecl.}
    op_sc_pattern_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                                a2: cstring; a3: ptr pdf_pattern; a4: cint;
                                a5: ptr cfloat): void {.cdecl.}
    op_SC_shade*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                        a3: ptr fz_shade): void {.cdecl.}
    op_sc_shade_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                              a2: cstring; a3: ptr fz_shade): void {.cdecl.}
    op_SC_color*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint;
                        a3: ptr cfloat): void {.cdecl.}
    op_sc_color_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                              a2: cint; a3: ptr cfloat): void {.cdecl.}
    op_G*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_g_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat): void {.
        cdecl.}
    op_RG*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                  a3: cfloat; a4: cfloat): void {.cdecl.}
    op_rg_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                        a3: cfloat; a4: cfloat): void {.cdecl.}
    op_K*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                 a3: cfloat; a4: cfloat; a5: cfloat): void {.cdecl.}
    op_k_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cfloat;
                       a3: cfloat; a4: cfloat; a5: cfloat): void {.cdecl.}
    op_BI*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: ptr fz_image;
                  a3: cstring): void {.cdecl.}
    op_sh*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                  a3: ptr fz_shade): void {.cdecl.}
    op_Do_image*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                        a3: ptr fz_image): void {.cdecl.}
    op_Do_form*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                       a3: ptr pdf_obj): void {.cdecl.}
    op_MP*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring): void {.
        cdecl.}
    op_DP*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                  a3: ptr pdf_obj; a4: ptr pdf_obj): void {.cdecl.}
    op_BMC*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring): void {.
        cdecl.}
    op_BDC*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cstring;
                   a3: ptr pdf_obj; a4: ptr pdf_obj): void {.cdecl.}
    op_EMC*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_BX*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_EX*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    op_gs_OP*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint): void {.
        cdecl.}
    op_gs_op_field*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint): void {.
        cdecl.}
    op_gs_OPM*: proc (a0: ptr fz_context; a1: ptr pdf_processor; a2: cint): void {.
        cdecl.}
    op_gs_UseBlackPtComp*: proc (a0: ptr fz_context; a1: ptr pdf_processor;
                                 a2: ptr pdf_obj): void {.cdecl.}
    op_END*: proc (a0: ptr fz_context; a1: ptr pdf_processor): void {.cdecl.}
    usage*: cstring
    hidden*: cint
    requirements*: pdf_processor_requirements
  pdf_processor_requirements* = enum_pdf_processor_requirements ## Generated based on /usr/include/mupdf/pdf/interpret.h:41:3
  struct_pdf_csi* {.pure, inheritable, bycopy.} = object
    doc*: ptr pdf_document   ## Generated based on /usr/include/mupdf/pdf/interpret.h:191:9
    rdb*: ptr pdf_obj
    buf*: ptr pdf_lexbuf
    cookie*: ptr fz_cookie
    gstate*: cint
    xbalance*: cint
    in_text*: cint
    d1_rect*: fz_rect
    obj*: ptr pdf_obj
    name*: array[256'i64, cschar]
    string*: array[256'i64, cschar]
    string_len*: csize_t
    top*: cint
    stack*: array[32'i64, cfloat]
  pdf_csi* = struct_pdf_csi  ## Generated based on /usr/include/mupdf/pdf/interpret.h:212:3
  pdf_filter_options* = struct_pdf_filter_options ## Generated based on /usr/include/mupdf/pdf/interpret.h:260:35
  struct_pdf_filter_options* {.pure, inheritable, bycopy.} = object
    recurse*: cint           ## Generated based on /usr/include/mupdf/pdf/interpret.h:311:8
    instance_forms*: cint
    ascii*: cint
    no_update*: cint
    opaque*: pointer
    complete*: proc (a0: ptr fz_context; a1: ptr fz_buffer; a2: pointer): void {.
        cdecl.}
    filters*: ptr pdf_filter_factory
    newlines*: cint
  pdf_filter_factory_fn* = proc (a0: ptr fz_context; a1: ptr pdf_document;
                                 a2: ptr pdf_processor; a3: cint; a4: fz_matrix;
                                 a5: ptr pdf_filter_options; a6: pointer): ptr pdf_processor {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/interpret.h:273:25
  struct_pdf_filter_factory* {.pure, inheritable, bycopy.} = object
    filter*: pdf_filter_factory_fn ## Generated based on /usr/include/mupdf/pdf/interpret.h:279:9
    options*: pointer
  pdf_filter_factory* = struct_pdf_filter_factory ## Generated based on /usr/include/mupdf/pdf/interpret.h:283:3
  fz_cull_type* = enum_fz_cull_type ## Generated based on /usr/include/mupdf/pdf/interpret.h:338:3
  struct_pdf_sanitize_filter_options* {.pure, inheritable, bycopy.} = object
    opaque*: pointer         ## Generated based on /usr/include/mupdf/pdf/interpret.h:354:9
    image_filter*: proc (a0: ptr fz_context; a1: pointer; a2: fz_matrix;
                         a3: cstring; a4: ptr fz_image; a5: fz_rect): ptr fz_image {.
        cdecl.}
    text_filter*: proc (a0: ptr fz_context; a1: pointer; a2: ptr cint; a3: cint;
                        a4: fz_matrix; a5: fz_matrix; a6: fz_rect): cint {.cdecl.}
    after_text_object*: proc (a0: ptr fz_context; a1: pointer;
                              a2: ptr pdf_document; a3: ptr pdf_processor;
                              a4: fz_matrix): void {.cdecl.}
    culler*: proc (a0: ptr fz_context; a1: pointer; a2: fz_rect;
                   a3: fz_cull_type): cint {.cdecl.}
  pdf_sanitize_filter_options* = struct_pdf_sanitize_filter_options ## Generated based on /usr/include/mupdf/pdf/interpret.h:362:1
  struct_pdf_color_filter_options* {.pure, inheritable, bycopy.} = object
    opaque*: pointer         ## Generated based on /usr/include/mupdf/pdf/interpret.h:431:9
    color_rewrite*: proc (a0: ptr fz_context; a1: pointer; a2: ptr ptr pdf_obj;
                          a3: ptr cint; a4: array[32'i64, cfloat]): void {.cdecl.}
    image_rewrite*: proc (a0: ptr fz_context; a1: pointer; a2: ptr ptr fz_image;
                          a3: fz_matrix; a4: ptr pdf_obj): void {.cdecl.}
    shade_rewrite*: pdf_shade_recolorer
    repeated_image_rewrite*: cint
  pdf_color_filter_options* = struct_pdf_color_filter_options ## Generated based on /usr/include/mupdf/pdf/interpret.h:438:3
  struct_pdf_text_state* {.pure, inheritable, bycopy.} = object
    char_space*: cfloat      ## Generated based on /usr/include/mupdf/pdf/interpret.h:457:9
    word_space*: cfloat
    scale*: cfloat
    leading*: cfloat
    font*: ptr pdf_font_desc
    fontname*: ptr fz_string
    size*: cfloat
    render*: cint
    rise*: cfloat
  pdf_text_state* = struct_pdf_text_state ## Generated based on /usr/include/mupdf/pdf/interpret.h:468:3
  struct_pdf_text_object_state* {.pure, inheritable, bycopy.} = object
    text*: ptr fz_text       ## Generated based on /usr/include/mupdf/pdf/interpret.h:470:9
    text_bbox*: fz_rect
    tlm*: fz_matrix
    tm*: fz_matrix
    text_mode*: cint
    cid*: cint
    gid*: cint
    char_bbox*: fz_rect
    fontdesc*: ptr pdf_font_desc
    char_tx*: cfloat
    char_ty*: cfloat
  pdf_text_object_state* = struct_pdf_text_object_state ## Generated based on /usr/include/mupdf/pdf/interpret.h:484:3
  struct_pdf_redact_options* {.pure, inheritable, bycopy.} = object
    black_boxes*: cint       ## Generated based on /usr/include/mupdf/pdf/page.h:279:9
    image_method*: cint
    line_art*: cint
    text*: cint
  pdf_redact_options* = struct_pdf_redact_options ## Generated based on /usr/include/mupdf/pdf/page.h:285:3
  pdf_embedded_file_params* = struct_pdf_filespec_params ## Generated based on /usr/include/mupdf/pdf/annot.h:904:36
  struct_pdf_filespec_params* {.pure, inheritable, bycopy.} = object
    filename*: cstring       ## Generated based on /usr/include/mupdf/pdf/annot.h:911:16
    mimetype*: cstring
    size*: cint
    created*: int64
    modified*: int64
  pdf_filespec_params* = struct_pdf_filespec_params ## Generated based on /usr/include/mupdf/pdf/annot.h:917:3
  struct_pdf_pkcs7_distinguished_name* {.pure, inheritable, bycopy.} = object
    cn*: cstring             ## Generated based on /usr/include/mupdf/pdf/form.h:191:9
    o*: cstring
    ou*: cstring
    email*: cstring
    c*: cstring
  pdf_pkcs7_distinguished_name* = struct_pdf_pkcs7_distinguished_name ## Generated based on /usr/include/mupdf/pdf/form.h:199:1
  pdf_signature_error* = enum_pdf_signature_error ## Generated based on /usr/include/mupdf/pdf/form.h:212:3
  pdf_pkcs7_keep_signer_fn* = proc (a0: ptr fz_context; a1: ptr pdf_pkcs7_signer): ptr pdf_pkcs7_signer {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/form.h:215:28
  pdf_pkcs7_drop_signer_fn* = proc (a0: ptr fz_context; a1: ptr pdf_pkcs7_signer): void {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/form.h:218:15
  pdf_pkcs7_get_signing_name_fn* = proc (a0: ptr fz_context;
      a1: ptr pdf_pkcs7_signer): ptr pdf_pkcs7_distinguished_name {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/form.h:221:40
  pdf_pkcs7_max_digest_size_fn* = proc (a0: ptr fz_context;
                                        a1: ptr pdf_pkcs7_signer): csize_t {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/form.h:224:17
  pdf_pkcs7_create_digest_fn* = proc (a0: ptr fz_context;
                                      a1: ptr pdf_pkcs7_signer;
                                      a2: ptr fz_stream; a3: ptr uint8;
                                      a4: csize_t): cint {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/form.h:227:14
  pdf_pkcs7_verifier* = struct_pdf_pkcs7_verifier ## Generated based on /usr/include/mupdf/pdf/form.h:238:35
  struct_pdf_pkcs7_verifier* {.pure, inheritable, bycopy.} = object
    drop*: pdf_pkcs7_drop_verifier_fn ## Generated based on /usr/include/mupdf/pdf/form.h:245:8
    check_certificate*: pdf_pkcs7_check_certificate_fn
    check_digest*: pdf_pkcs7_check_digest_fn
    get_signatory*: pdf_pkcs7_get_signatory_fn
  pdf_pkcs7_drop_verifier_fn* = proc (a0: ptr fz_context;
                                      a1: ptr pdf_pkcs7_verifier): void {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/form.h:240:15
  pdf_pkcs7_check_certificate_fn* = proc (a0: ptr fz_context;
      a1: ptr pdf_pkcs7_verifier; a2: ptr uint8; a3: csize_t): pdf_signature_error {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/form.h:241:30
  pdf_pkcs7_check_digest_fn* = proc (a0: ptr fz_context;
                                     a1: ptr pdf_pkcs7_verifier;
                                     a2: ptr fz_stream; a3: ptr uint8;
                                     a4: csize_t): pdf_signature_error {.cdecl.} ## Generated based on /usr/include/mupdf/pdf/form.h:242:30
  pdf_pkcs7_get_signatory_fn* = proc (a0: ptr fz_context;
                                      a1: ptr pdf_pkcs7_verifier; a2: ptr uint8;
                                      a3: csize_t): ptr pdf_pkcs7_distinguished_name {.
      cdecl.}                ## Generated based on /usr/include/mupdf/pdf/form.h:243:40
  struct_pdf_keystroke_event* {.pure, inheritable, bycopy.} = object
    value*: cstring          ## Generated based on /usr/include/mupdf/pdf/form.h:336:9
    change*: cstring
    selStart*: cint
    selEnd*: cint
    willCommit*: cint
    newChange*: cstring
    newValue*: cstring
  pdf_keystroke_event* = struct_pdf_keystroke_event ## Generated based on /usr/include/mupdf/pdf/form.h:344:3
  struct_pdf_alert_event* {.pure, inheritable, bycopy.} = object
    doc*: ptr pdf_document   ## Generated based on /usr/include/mupdf/pdf/event.h:71:9
    message*: cstring
    icon_type*: cint
    button_group_type*: cint
    title*: cstring
    has_check_box*: cint
    check_box_message*: cstring
    initially_checked*: cint
    finally_checked*: cint
    button_pressed*: cint
  pdf_alert_event* = struct_pdf_alert_event ## Generated based on /usr/include/mupdf/pdf/event.h:83:3
  struct_pdf_launch_url_event* {.pure, inheritable, bycopy.} = object
    url*: cstring            ## Generated based on /usr/include/mupdf/pdf/event.h:131:9
    new_frame*: cint
  pdf_launch_url_event* = struct_pdf_launch_url_event ## Generated based on /usr/include/mupdf/pdf/event.h:135:3
  struct_pdf_mail_doc_event* {.pure, inheritable, bycopy.} = object
    ask_user*: cint          ## Generated based on /usr/include/mupdf/pdf/event.h:149:9
    to*: cstring
    cc*: cstring
    bcc*: cstring
    subject*: cstring
    message*: cstring
  pdf_mail_doc_event* = struct_pdf_mail_doc_event ## Generated based on /usr/include/mupdf/pdf/event.h:157:3
  struct_pdf_image_rewriter_options* {.pure, inheritable, bycopy.} = object
    color_lossless_image_subsample_method*: cint ## Generated based on /usr/include/mupdf/pdf/image-rewriter.h:44:9
    color_lossy_image_subsample_method*: cint
    color_lossless_image_subsample_threshold*: cint
    color_lossless_image_subsample_to*: cint
    color_lossy_image_subsample_threshold*: cint
    color_lossy_image_subsample_to*: cint
    color_lossless_image_recompress_method*: cint
    color_lossy_image_recompress_method*: cint
    color_lossy_image_recompress_quality*: cstring
    color_lossless_image_recompress_quality*: cstring
    gray_lossless_image_subsample_method*: cint
    gray_lossy_image_subsample_method*: cint
    gray_lossless_image_subsample_threshold*: cint
    gray_lossless_image_subsample_to*: cint
    gray_lossy_image_subsample_threshold*: cint
    gray_lossy_image_subsample_to*: cint
    gray_lossless_image_recompress_method*: cint
    gray_lossy_image_recompress_method*: cint
    gray_lossy_image_recompress_quality*: cstring
    gray_lossless_image_recompress_quality*: cstring
    bitonal_image_subsample_method*: cint
    bitonal_image_subsample_threshold*: cint
    bitonal_image_subsample_to*: cint
    bitonal_image_recompress_method*: cint
    bitonal_image_recompress_quality*: cstring
  pdf_image_rewriter_options* = struct_pdf_image_rewriter_options ## Generated based on /usr/include/mupdf/pdf/image-rewriter.h:71:3
  pdf_clean_options_structure* = enum_pdf_clean_options_structure ## Generated based on /usr/include/mupdf/pdf/clean.h:42:3
  struct_pdf_clean_options* {.pure, inheritable, bycopy.} = object
    write*: pdf_write_options ## Generated based on /usr/include/mupdf/pdf/clean.h:44:9
    image*: pdf_image_rewriter_options
    subset_fonts*: cint
    structure*: pdf_clean_options_structure
  pdf_clean_options* = struct_pdf_clean_options ## Generated based on /usr/include/mupdf/pdf/clean.h:56:3
  struct_pdf_recolor_options* {.pure, inheritable, bycopy.} = object
    num_comp*: cint          ## Generated based on /usr/include/mupdf/pdf/recolor.h:28:9
  pdf_recolor_options* = struct_pdf_recolor_options ## Generated based on /usr/include/mupdf/pdf/recolor.h:35:3
when "1.25.4" is static:
  const
    FZ_VERSION* = "1.25.4"   ## Generated based on /usr/include/mupdf/fitz/version.h:26:9
else:
  let FZ_VERSION* = "1.25.4" ## Generated based on /usr/include/mupdf/fitz/version.h:26:9
when 1 is static:
  const
    FZ_VERSION_MAJOR* = 1    ## Generated based on /usr/include/mupdf/fitz/version.h:27:9
else:
  let FZ_VERSION_MAJOR* = 1  ## Generated based on /usr/include/mupdf/fitz/version.h:27:9
when 25 is static:
  const
    FZ_VERSION_MINOR* = 25   ## Generated based on /usr/include/mupdf/fitz/version.h:28:9
else:
  let FZ_VERSION_MINOR* = 25 ## Generated based on /usr/include/mupdf/fitz/version.h:28:9
when 4 is static:
  const
    FZ_VERSION_PATCH* = 4    ## Generated based on /usr/include/mupdf/fitz/version.h:29:9
else:
  let FZ_VERSION_PATCH* = 4  ## Generated based on /usr/include/mupdf/fitz/version.h:29:9
when 1 is static:
  const
    FZ_ENABLE_SPOT_RENDERING* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:141:9
else:
  let FZ_ENABLE_SPOT_RENDERING* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:141:9
when 1 is static:
  const
    FZ_PLOTTERS_N* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:146:9
else:
  let FZ_PLOTTERS_N* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:146:9
when 1 is static:
  const
    FZ_PLOTTERS_G* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:150:9
else:
  let FZ_PLOTTERS_G* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:150:9
when 1 is static:
  const
    FZ_PLOTTERS_RGB* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:154:9
else:
  let FZ_PLOTTERS_RGB* = 1   ## Generated based on /usr/include/mupdf/fitz/config.h:154:9
when 1 is static:
  const
    FZ_PLOTTERS_CMYK* = 1    ## Generated based on /usr/include/mupdf/fitz/config.h:158:9
else:
  let FZ_PLOTTERS_CMYK* = 1  ## Generated based on /usr/include/mupdf/fitz/config.h:158:9
when 1 is static:
  const
    FZ_ENABLE_PDF* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:172:9
else:
  let FZ_ENABLE_PDF* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:172:9
when 1 is static:
  const
    FZ_ENABLE_XPS* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:176:9
else:
  let FZ_ENABLE_XPS* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:176:9
when 1 is static:
  const
    FZ_ENABLE_SVG* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:180:9
else:
  let FZ_ENABLE_SVG* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:180:9
when 1 is static:
  const
    FZ_ENABLE_CBZ* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:184:9
else:
  let FZ_ENABLE_CBZ* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:184:9
when 1 is static:
  const
    FZ_ENABLE_IMG* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:188:9
else:
  let FZ_ENABLE_IMG* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:188:9
when 1 is static:
  const
    FZ_ENABLE_HTML* = 1      ## Generated based on /usr/include/mupdf/fitz/config.h:192:9
else:
  let FZ_ENABLE_HTML* = 1    ## Generated based on /usr/include/mupdf/fitz/config.h:192:9
when 1 is static:
  const
    FZ_ENABLE_EPUB* = 1      ## Generated based on /usr/include/mupdf/fitz/config.h:196:9
else:
  let FZ_ENABLE_EPUB* = 1    ## Generated based on /usr/include/mupdf/fitz/config.h:196:9
when 1 is static:
  const
    FZ_ENABLE_FB2* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:200:9
else:
  let FZ_ENABLE_FB2* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:200:9
when 1 is static:
  const
    FZ_ENABLE_MOBI* = 1      ## Generated based on /usr/include/mupdf/fitz/config.h:204:9
else:
  let FZ_ENABLE_MOBI* = 1    ## Generated based on /usr/include/mupdf/fitz/config.h:204:9
when 1 is static:
  const
    FZ_ENABLE_TXT* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:208:9
else:
  let FZ_ENABLE_TXT* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:208:9
when 1 is static:
  const
    FZ_ENABLE_OFFICE* = 1    ## Generated based on /usr/include/mupdf/fitz/config.h:212:9
else:
  let FZ_ENABLE_OFFICE* = 1  ## Generated based on /usr/include/mupdf/fitz/config.h:212:9
when 1 is static:
  const
    FZ_ENABLE_OCR_OUTPUT* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:216:9
else:
  let FZ_ENABLE_OCR_OUTPUT* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:216:9
when 1 is static:
  const
    FZ_ENABLE_ODT_OUTPUT* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:220:9
else:
  let FZ_ENABLE_ODT_OUTPUT* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:220:9
when 1 is static:
  const
    FZ_ENABLE_DOCX_OUTPUT* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:224:9
else:
  let FZ_ENABLE_DOCX_OUTPUT* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:224:9
when 1 is static:
  const
    FZ_ENABLE_JPX* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:228:9
else:
  let FZ_ENABLE_JPX* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:228:9
when 1 is static:
  const
    FZ_ENABLE_JS* = 1        ## Generated based on /usr/include/mupdf/fitz/config.h:232:9
else:
  let FZ_ENABLE_JS* = 1      ## Generated based on /usr/include/mupdf/fitz/config.h:232:9
when 1 is static:
  const
    FZ_ENABLE_ICC* = 1       ## Generated based on /usr/include/mupdf/fitz/config.h:236:9
else:
  let FZ_ENABLE_ICC* = 1     ## Generated based on /usr/include/mupdf/fitz/config.h:236:9
when 1 is static:
  const
    FZ_ENABLE_HTML_ENGINE* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:262:9
else:
  let FZ_ENABLE_HTML_ENGINE* = 1 ## Generated based on /usr/include/mupdf/fitz/config.h:262:9
when 1 is static:
  const
    internal_SETJMP_H* = 1   ## Generated based on /usr/include/setjmp.h:23:9
else:
  let internal_SETJMP_H* = 1 ## Generated based on /usr/include/setjmp.h:23:9
when 1 is static:
  const
    internal_FEATURES_H* = 1 ## Generated based on /usr/include/features.h:19:9
else:
  let internal_FEATURES_H* = 1 ## Generated based on /usr/include/features.h:19:9
when 1 is static:
  const
    internal_DEFAULT_SOURCE* = 1 ## Generated based on /usr/include/features.h:250:10
else:
  let internal_DEFAULT_SOURCE* = 1 ## Generated based on /usr/include/features.h:250:10
when 0 is static:
  const
    compiler_GLIBC_USE_ISOC2Y* = 0 ## Generated based on /usr/include/features.h:258:10
else:
  let compiler_GLIBC_USE_ISOC2Y* = 0 ## Generated based on /usr/include/features.h:258:10
when 0 is static:
  const
    compiler_GLIBC_USE_ISOC23* = 0 ## Generated based on /usr/include/features.h:266:10
else:
  let compiler_GLIBC_USE_ISOC23* = 0 ## Generated based on /usr/include/features.h:266:10
when 1 is static:
  const
    compiler_USE_ISOC11* = 1 ## Generated based on /usr/include/features.h:273:10
else:
  let compiler_USE_ISOC11* = 1 ## Generated based on /usr/include/features.h:273:10
when 1 is static:
  const
    compiler_USE_ISOC99* = 1 ## Generated based on /usr/include/features.h:368:10
else:
  let compiler_USE_ISOC99* = 1 ## Generated based on /usr/include/features.h:368:10
when 1 is static:
  const
    compiler_USE_ISOC95* = 1 ## Generated based on /usr/include/features.h:366:10
else:
  let compiler_USE_ISOC95* = 1 ## Generated based on /usr/include/features.h:366:10
when 1 is static:
  const
    compiler_USE_POSIX_IMPLICITLY* = 1 ## Generated based on /usr/include/features.h:308:11
else:
  let compiler_USE_POSIX_IMPLICITLY* = 1 ## Generated based on /usr/include/features.h:308:11
when 1 is static:
  const
    internal_POSIX_SOURCE* = 1 ## Generated based on /usr/include/features.h:311:10
else:
  let internal_POSIX_SOURCE* = 1 ## Generated based on /usr/include/features.h:311:10
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /usr/include/features.h:313:10
else:
  let internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /usr/include/features.h:313:10
when 1 is static:
  const
    compiler_USE_POSIX* = 1  ## Generated based on /usr/include/features.h:348:10
else:
  let compiler_USE_POSIX* = 1 ## Generated based on /usr/include/features.h:348:10
when 1 is static:
  const
    compiler_USE_POSIX2* = 1 ## Generated based on /usr/include/features.h:352:10
else:
  let compiler_USE_POSIX2* = 1 ## Generated based on /usr/include/features.h:352:10
when 1 is static:
  const
    compiler_USE_POSIX199309* = 1 ## Generated based on /usr/include/features.h:356:10
else:
  let compiler_USE_POSIX199309* = 1 ## Generated based on /usr/include/features.h:356:10
when 1 is static:
  const
    compiler_USE_POSIX199506* = 1 ## Generated based on /usr/include/features.h:360:10
else:
  let compiler_USE_POSIX199506* = 1 ## Generated based on /usr/include/features.h:360:10
when 1 is static:
  const
    compiler_USE_XOPEN2K* = 1 ## Generated based on /usr/include/features.h:364:10
else:
  let compiler_USE_XOPEN2K* = 1 ## Generated based on /usr/include/features.h:364:10
when 1 is static:
  const
    compiler_USE_XOPEN2K8* = 1 ## Generated based on /usr/include/features.h:372:10
else:
  let compiler_USE_XOPEN2K8* = 1 ## Generated based on /usr/include/features.h:372:10
when 1 is static:
  const
    internal_ATFILE_SOURCE* = 1 ## Generated based on /usr/include/features.h:374:10
else:
  let internal_ATFILE_SOURCE* = 1 ## Generated based on /usr/include/features.h:374:10
when 64 is static:
  const
    compiler_WORDSIZE* = 64  ## Generated based on /usr/include/bits/wordsize.h:4:10
else:
  let compiler_WORDSIZE* = 64 ## Generated based on /usr/include/bits/wordsize.h:4:10
when 1 is static:
  const
    compiler_WORDSIZE_TIME64_COMPAT32* = 1 ## Generated based on /usr/include/bits/wordsize.h:11:9
else:
  let compiler_WORDSIZE_TIME64_COMPAT32* = 1 ## Generated based on /usr/include/bits/wordsize.h:11:9
when 64 is static:
  const
    compiler_SYSCALL_WORDSIZE* = 64 ## Generated based on /usr/include/bits/wordsize.h:15:10
else:
  let compiler_SYSCALL_WORDSIZE* = 64 ## Generated based on /usr/include/bits/wordsize.h:15:10
when compiler_WORDSIZE is typedesc:
  type
    compiler_TIMESIZE* = compiler_WORDSIZE ## Generated based on /usr/include/bits/timesize.h:26:10
else:
  when compiler_WORDSIZE is static:
    const
      compiler_TIMESIZE* = compiler_WORDSIZE ## Generated based on /usr/include/bits/timesize.h:26:10
  else:
    let compiler_TIMESIZE* = compiler_WORDSIZE ## Generated based on /usr/include/bits/timesize.h:26:10
when 1 is static:
  const
    compiler_USE_TIME_BITS64* = 1 ## Generated based on /usr/include/features-time64.h:37:10
else:
  let compiler_USE_TIME_BITS64* = 1 ## Generated based on /usr/include/features-time64.h:37:10
when 1 is static:
  const
    compiler_USE_MISC* = 1   ## Generated based on /usr/include/features.h:418:10
else:
  let compiler_USE_MISC* = 1 ## Generated based on /usr/include/features.h:418:10
when 1 is static:
  const
    compiler_USE_ATFILE* = 1 ## Generated based on /usr/include/features.h:422:10
else:
  let compiler_USE_ATFILE* = 1 ## Generated based on /usr/include/features.h:422:10
when 0 is static:
  const
    compiler_USE_FORTIFY_LEVEL* = 0 ## Generated based on /usr/include/features.h:455:10
else:
  let compiler_USE_FORTIFY_LEVEL* = 0 ## Generated based on /usr/include/features.h:455:10
when 0 is static:
  const
    compiler_GLIBC_USE_DEPRECATED_GETS* = 0 ## Generated based on /usr/include/features.h:463:10
else:
  let compiler_GLIBC_USE_DEPRECATED_GETS* = 0 ## Generated based on /usr/include/features.h:463:10
when 0 is static:
  const
    compiler_GLIBC_USE_DEPRECATED_SCANF* = 0 ## Generated based on /usr/include/features.h:486:10
else:
  let compiler_GLIBC_USE_DEPRECATED_SCANF* = 0 ## Generated based on /usr/include/features.h:486:10
when 0 is static:
  const
    compiler_GLIBC_USE_C23_STRTOL* = 0 ## Generated based on /usr/include/features.h:497:10
else:
  let compiler_GLIBC_USE_C23_STRTOL* = 0 ## Generated based on /usr/include/features.h:497:10
when 1 is static:
  const
    internal_STDC_PREDEF_H* = 1 ## Generated based on /usr/include/stdc-predef.h:19:9
else:
  let internal_STDC_PREDEF_H* = 1 ## Generated based on /usr/include/stdc-predef.h:19:9
when 1 is static:
  const
    compiler_STDC_IEC_559_private* = 1 ## Generated based on /usr/include/stdc-predef.h:42:10
else:
  let compiler_STDC_IEC_559_private* = 1 ## Generated based on /usr/include/stdc-predef.h:42:10
when cast[clong](201404'i64) is static:
  const
    compiler_STDC_IEC_60559_BFP_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:43:10
else:
  let compiler_STDC_IEC_60559_BFP_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:43:10
when 1 is static:
  const
    compiler_STDC_IEC_559_COMPLEX_private* = 1 ## Generated based on /usr/include/stdc-predef.h:52:10
else:
  let compiler_STDC_IEC_559_COMPLEX_private* = 1 ## Generated based on /usr/include/stdc-predef.h:52:10
when cast[clong](201404'i64) is static:
  const
    compiler_STDC_IEC_60559_COMPLEX_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:53:10
else:
  let compiler_STDC_IEC_60559_COMPLEX_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:53:10
when cast[clong](201706'i64) is static:
  const
    compiler_STDC_ISO_10646_private* = cast[clong](201706'i64) ## Generated based on /usr/include/stdc-predef.h:62:9
else:
  let compiler_STDC_ISO_10646_private* = cast[clong](201706'i64) ## Generated based on /usr/include/stdc-predef.h:62:9
when 6 is static:
  const
    compiler_GNU_LIBRARY_private* = 6 ## Generated based on /usr/include/features.h:511:9
else:
  let compiler_GNU_LIBRARY_private* = 6 ## Generated based on /usr/include/features.h:511:9
when 2 is static:
  const
    compiler_GLIBC_private* = 2 ## Generated based on /usr/include/features.h:515:9
else:
  let compiler_GLIBC_private* = 2 ## Generated based on /usr/include/features.h:515:9
when 41 is static:
  const
    compiler_GLIBC_MINOR_private* = 41 ## Generated based on /usr/include/features.h:516:9
else:
  let compiler_GLIBC_MINOR_private* = 41 ## Generated based on /usr/include/features.h:516:9
when 1 is static:
  const
    internal_SYS_CDEFS_H* = 1 ## Generated based on /usr/include/sys/cdefs.h:20:9
else:
  let internal_SYS_CDEFS_H* = 1 ## Generated based on /usr/include/sys/cdefs.h:20:9
when 1 is static:
  const
    compiler_glibc_c99_flexarr_available* = 1 ## Generated based on /usr/include/sys/cdefs.h:380:10
else:
  let compiler_glibc_c99_flexarr_available* = 1 ## Generated based on /usr/include/sys/cdefs.h:380:10
when 0 is static:
  const
    compiler_LDOUBLE_REDIRECTS_TO_FLOAT128_ABI* = 0 ## Generated based on /usr/include/bits/long-double.h:21:9
else:
  let compiler_LDOUBLE_REDIRECTS_TO_FLOAT128_ABI* = 0 ## Generated based on /usr/include/bits/long-double.h:21:9
when 1 is static:
  const
    compiler_HAVE_GENERIC_SELECTION* = 1 ## Generated based on /usr/include/sys/cdefs.h:826:10
else:
  let compiler_HAVE_GENERIC_SELECTION* = 1 ## Generated based on /usr/include/sys/cdefs.h:826:10
when 1 is static:
  const
    internal_BITS_SETJMP_H* = 1 ## Generated based on /usr/include/bits/setjmp.h:20:9
else:
  let internal_BITS_SETJMP_H* = 1 ## Generated based on /usr/include/bits/setjmp.h:20:9
when 1 is static:
  const
    compiler_jmp_buf_tag_defined* = 1 ## Generated based on /usr/include/bits/types/struct___jmp_buf_tag.h:20:9
else:
  let compiler_jmp_buf_tag_defined* = 1 ## Generated based on /usr/include/bits/types/struct___jmp_buf_tag.h:20:9
when 1 is static:
  const
    internal_STDIO_H* = 1    ## Generated based on /usr/include/stdio.h:25:9
else:
  let internal_STDIO_H* = 1  ## Generated based on /usr/include/stdio.h:25:9
when 0 is static:
  const
    compiler_GLIBC_USE_LIB_EXT2* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:42:10
else:
  let compiler_GLIBC_USE_LIB_EXT2* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:42:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_BFP_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:71:10
else:
  let compiler_GLIBC_USE_IEC_60559_BFP_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:71:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_BFP_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:77:10
else:
  let compiler_GLIBC_USE_IEC_60559_BFP_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:77:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:83:10
else:
  let compiler_GLIBC_USE_IEC_60559_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:83:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_FUNCS_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:94:10
else:
  let compiler_GLIBC_USE_IEC_60559_FUNCS_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:94:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_FUNCS_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:100:10
else:
  let compiler_GLIBC_USE_IEC_60559_FUNCS_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:100:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_TYPES_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:109:10
else:
  let compiler_GLIBC_USE_IEC_60559_TYPES_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:109:10
when 1 is static:
  const
    internal_BITS_TYPES_H* = 1 ## Generated based on /usr/include/bits/types.h:24:9
else:
  let internal_BITS_TYPES_H* = 1 ## Generated based on /usr/include/bits/types.h:24:9
when int is typedesc:
  type
    compiler_S32_TYPE* = int ## Generated based on /usr/include/bits/types.h:111:9
else:
  when int is static:
    const
      compiler_S32_TYPE* = int ## Generated based on /usr/include/bits/types.h:111:9
  else:
    let compiler_S32_TYPE* = int ## Generated based on /usr/include/bits/types.h:111:9
when int is typedesc:
  type
    compiler_SLONG32_TYPE* = int ## Generated based on /usr/include/bits/types.h:132:10
else:
  when int is static:
    const
      compiler_SLONG32_TYPE* = int ## Generated based on /usr/include/bits/types.h:132:10
  else:
    let compiler_SLONG32_TYPE* = int ## Generated based on /usr/include/bits/types.h:132:10
when typedef is typedesc:
  type
    compiler_STD_TYPE* = typedef ## Generated based on /usr/include/bits/types.h:137:10
else:
  when typedef is static:
    const
      compiler_STD_TYPE* = typedef ## Generated based on /usr/include/bits/types.h:137:10
  else:
    let compiler_STD_TYPE* = typedef ## Generated based on /usr/include/bits/types.h:137:10
when 1 is static:
  const
    internal_BITS_TYPESIZES_H* = 1 ## Generated based on /usr/include/bits/typesizes.h:24:9
else:
  let internal_BITS_TYPESIZES_H* = 1 ## Generated based on /usr/include/bits/typesizes.h:24:9
when 1 is static:
  const
    compiler_OFF_T_MATCHES_OFF64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:81:10
else:
  let compiler_OFF_T_MATCHES_OFF64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:81:10
when 1 is static:
  const
    compiler_INO_T_MATCHES_INO64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:84:10
else:
  let compiler_INO_T_MATCHES_INO64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:84:10
when 1 is static:
  const
    compiler_RLIM_T_MATCHES_RLIM64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:87:10
else:
  let compiler_RLIM_T_MATCHES_RLIM64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:87:10
when 1 is static:
  const
    compiler_STATFS_MATCHES_STATFS64* = 1 ## Generated based on /usr/include/bits/typesizes.h:90:10
else:
  let compiler_STATFS_MATCHES_STATFS64* = 1 ## Generated based on /usr/include/bits/typesizes.h:90:10
when 1 is static:
  const
    compiler_KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64* = 1 ## Generated based on /usr/include/bits/typesizes.h:93:10
else:
  let compiler_KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64* = 1 ## Generated based on /usr/include/bits/typesizes.h:93:10
when 1024 is static:
  const
    compiler_FD_SETSIZE* = 1024 ## Generated based on /usr/include/bits/typesizes.h:103:9
else:
  let compiler_FD_SETSIZE* = 1024 ## Generated based on /usr/include/bits/typesizes.h:103:9
when 1 is static:
  const
    internal_BITS_TIME64_H* = 1 ## Generated based on /usr/include/bits/time64.h:24:9
else:
  let internal_BITS_TIME64_H* = 1 ## Generated based on /usr/include/bits/time64.h:24:9
when 1 is static:
  const
    compiler_fpos_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos_t.h:2:9
else:
  let compiler_fpos_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos_t.h:2:9
when 1 is static:
  const
    compiler_mbstate_t_defined* = 1 ## Generated based on /usr/include/bits/types/__mbstate_t.h:2:9
else:
  let compiler_mbstate_t_defined* = 1 ## Generated based on /usr/include/bits/types/__mbstate_t.h:2:9
when 1 is static:
  const
    compiler_fpos64_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos64_t.h:2:9
else:
  let compiler_fpos64_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos64_t.h:2:9
when 1 is static:
  const
    compiler_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/__FILE.h:2:9
else:
  let compiler_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/__FILE.h:2:9
when 1 is static:
  const
    compiler_FILE_defined_const* = 1 ## Generated based on /usr/include/bits/types/FILE.h:2:9
else:
  let compiler_FILE_defined_const* = 1 ## Generated based on /usr/include/bits/types/FILE.h:2:9
when 1 is static:
  const
    compiler_struct_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/struct_FILE.h:20:9
else:
  let compiler_struct_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/struct_FILE.h:20:9
when 16 is static:
  const
    internal_IO_EOF_SEEN* = 16 ## Generated based on /usr/include/bits/types/struct_FILE.h:114:9
else:
  let internal_IO_EOF_SEEN* = 16 ## Generated based on /usr/include/bits/types/struct_FILE.h:114:9
when 32 is static:
  const
    internal_IO_ERR_SEEN* = 32 ## Generated based on /usr/include/bits/types/struct_FILE.h:117:9
else:
  let internal_IO_ERR_SEEN* = 32 ## Generated based on /usr/include/bits/types/struct_FILE.h:117:9
when 32768 is static:
  const
    internal_IO_USER_LOCK* = 32768 ## Generated based on /usr/include/bits/types/struct_FILE.h:120:9
else:
  let internal_IO_USER_LOCK* = 32768 ## Generated based on /usr/include/bits/types/struct_FILE.h:120:9
when 1 is static:
  const
    compiler_cookie_io_functions_t_defined* = 1 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:19:9
else:
  let compiler_cookie_io_functions_t_defined* = 1 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:19:9
when 0 is static:
  const
    internal_IOFBF* = 0      ## Generated based on /usr/include/stdio.h:94:9
else:
  let internal_IOFBF* = 0    ## Generated based on /usr/include/stdio.h:94:9
when 1 is static:
  const
    internal_IOLBF* = 1      ## Generated based on /usr/include/stdio.h:95:9
else:
  let internal_IOLBF* = 1    ## Generated based on /usr/include/stdio.h:95:9
when 2 is static:
  const
    internal_IONBF* = 2      ## Generated based on /usr/include/stdio.h:96:9
else:
  let internal_IONBF* = 2    ## Generated based on /usr/include/stdio.h:96:9
when 8192 is static:
  const
    BUFSIZ* = 8192           ## Generated based on /usr/include/stdio.h:100:9
else:
  let BUFSIZ* = 8192         ## Generated based on /usr/include/stdio.h:100:9
when -1 is static:
  const
    EOF* = -1                ## Generated based on /usr/include/stdio.h:105:9
else:
  let EOF* = -1              ## Generated based on /usr/include/stdio.h:105:9
when 0 is static:
  const
    SEEK_SET* = 0            ## Generated based on /usr/include/stdio.h:110:9
else:
  let SEEK_SET* = 0          ## Generated based on /usr/include/stdio.h:110:9
when 1 is static:
  const
    SEEK_CUR* = 1            ## Generated based on /usr/include/stdio.h:111:9
else:
  let SEEK_CUR* = 1          ## Generated based on /usr/include/stdio.h:111:9
when 2 is static:
  const
    SEEK_END* = 2            ## Generated based on /usr/include/stdio.h:112:9
else:
  let SEEK_END* = 2          ## Generated based on /usr/include/stdio.h:112:9
when "/tmp" is static:
  const
    P_tmpdir* = "/tmp"       ## Generated based on /usr/include/stdio.h:121:10
else:
  let P_tmpdir* = "/tmp"     ## Generated based on /usr/include/stdio.h:121:10
when 20 is static:
  const
    L_tmpnam* = 20           ## Generated based on /usr/include/stdio.h:124:9
else:
  let L_tmpnam* = 20         ## Generated based on /usr/include/stdio.h:124:9
when 238328 is static:
  const
    TMP_MAX* = 238328        ## Generated based on /usr/include/stdio.h:125:9
else:
  let TMP_MAX* = 238328      ## Generated based on /usr/include/stdio.h:125:9
when 1 is static:
  const
    internal_BITS_STDIO_LIM_H* = 1 ## Generated based on /usr/include/bits/stdio_lim.h:20:9
else:
  let internal_BITS_STDIO_LIM_H* = 1 ## Generated based on /usr/include/bits/stdio_lim.h:20:9
when 4096 is static:
  const
    FILENAME_MAX* = 4096     ## Generated based on /usr/include/bits/stdio_lim.h:26:9
else:
  let FILENAME_MAX* = 4096   ## Generated based on /usr/include/bits/stdio_lim.h:26:9
when 9 is static:
  const
    L_ctermid* = 9           ## Generated based on /usr/include/stdio.h:132:10
else:
  let L_ctermid* = 9         ## Generated based on /usr/include/stdio.h:132:10
when 16 is static:
  const
    FOPEN_MAX* = 16          ## Generated based on /usr/include/stdio.h:139:9
else:
  let FOPEN_MAX* = 16        ## Generated based on /usr/include/stdio.h:139:9
var stdin* {.importc: "stdin".}: ptr FILE
var stdout* {.importc: "stdout".}: ptr FILE
var stderr* {.importc: "stderr".}: ptr FILE
when 1 is static:
  const
    compiler_HAVE_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:37:10
else:
  let compiler_HAVE_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:37:10
when 1 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:45:10
else:
  let compiler_HAVE_DISTINCT_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:45:10
when 1 is static:
  const
    compiler_HAVE_FLOAT64X* = 1 ## Generated based on /usr/include/bits/floatn.h:53:9
else:
  let compiler_HAVE_FLOAT64X* = 1 ## Generated based on /usr/include/bits/floatn.h:53:9
when 1 is static:
  const
    compiler_HAVE_FLOAT64X_LONG_DOUBLE* = 1 ## Generated based on /usr/include/bits/floatn.h:59:9
else:
  let compiler_HAVE_FLOAT64X_LONG_DOUBLE* = 1 ## Generated based on /usr/include/bits/floatn.h:59:9
proc compiler_signbitf128*(compiler_value: internal_Float128): cint {.cdecl,
    importc: "__signbitf128".}
when 0 is static:
  const
    compiler_HAVE_FLOAT16* = 0 ## Generated based on /usr/include/bits/floatn-common.h:34:9
else:
  let compiler_HAVE_FLOAT16* = 0 ## Generated based on /usr/include/bits/floatn-common.h:34:9
when 1 is static:
  const
    compiler_HAVE_FLOAT32* = 1 ## Generated based on /usr/include/bits/floatn-common.h:35:9
else:
  let compiler_HAVE_FLOAT32* = 1 ## Generated based on /usr/include/bits/floatn-common.h:35:9
when 1 is static:
  const
    compiler_HAVE_FLOAT64* = 1 ## Generated based on /usr/include/bits/floatn-common.h:36:9
else:
  let compiler_HAVE_FLOAT64* = 1 ## Generated based on /usr/include/bits/floatn-common.h:36:9
when 1 is static:
  const
    compiler_HAVE_FLOAT32X* = 1 ## Generated based on /usr/include/bits/floatn-common.h:37:9
else:
  let compiler_HAVE_FLOAT32X* = 1 ## Generated based on /usr/include/bits/floatn-common.h:37:9
when 0 is static:
  const
    compiler_HAVE_FLOAT128X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:38:9
else:
  let compiler_HAVE_FLOAT128X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:38:9
when compiler_HAVE_FLOAT16 is typedesc:
  type
    compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
else:
  when compiler_HAVE_FLOAT16 is static:
    const
      compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
  else:
    let compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT32* = 0 ## Generated based on /usr/include/bits/floatn-common.h:53:9
else:
  let compiler_HAVE_DISTINCT_FLOAT32* = 0 ## Generated based on /usr/include/bits/floatn-common.h:53:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT64* = 0 ## Generated based on /usr/include/bits/floatn-common.h:54:9
else:
  let compiler_HAVE_DISTINCT_FLOAT64* = 0 ## Generated based on /usr/include/bits/floatn-common.h:54:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT32X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:55:9
else:
  let compiler_HAVE_DISTINCT_FLOAT32X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:55:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT64X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:56:9
else:
  let compiler_HAVE_DISTINCT_FLOAT64X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:56:9
when compiler_HAVE_FLOAT128X is typedesc:
  type
    compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /usr/include/bits/floatn-common.h:57:9
else:
  when compiler_HAVE_FLOAT128X is static:
    const
      compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /usr/include/bits/floatn-common.h:57:9
  else:
    let compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /usr/include/bits/floatn-common.h:57:9
when 0 is static:
  const
    compiler_HAVE_FLOATN_NOT_TYPEDEF* = 0 ## Generated based on /usr/include/bits/floatn-common.h:72:10
else:
  let compiler_HAVE_FLOATN_NOT_TYPEDEF* = 0 ## Generated based on /usr/include/bits/floatn-common.h:72:10
when 1 is static:
  const
    internal_STDINT_H* = 1   ## Generated based on /usr/include/stdint.h:23:9
else:
  let internal_STDINT_H* = 1 ## Generated based on /usr/include/stdint.h:23:9
when 1 is static:
  const
    internal_BITS_WCHAR_H* = 1 ## Generated based on /usr/include/bits/wchar.h:20:9
else:
  let internal_BITS_WCHAR_H* = 1 ## Generated based on /usr/include/bits/wchar.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /usr/include/bits/stdint-intn.h:20:9
else:
  let internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /usr/include/bits/stdint-intn.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /usr/include/bits/stdint-uintn.h:20:9
else:
  let internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /usr/include/bits/stdint-uintn.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_LEAST_H* = 1 ## Generated based on /usr/include/bits/stdint-least.h:20:9
else:
  let internal_BITS_STDINT_LEAST_H* = 1 ## Generated based on /usr/include/bits/stdint-least.h:20:9
when -128 is static:
  const
    INT8_MIN* = -128         ## Generated based on /usr/include/stdint.h:105:10
else:
  let INT8_MIN* = -128       ## Generated based on /usr/include/stdint.h:105:10
when 127 is static:
  const
    INT8_MAX* = 127          ## Generated based on /usr/include/stdint.h:110:10
else:
  let INT8_MAX* = 127        ## Generated based on /usr/include/stdint.h:110:10
when 32767 is static:
  const
    INT16_MAX* = 32767       ## Generated based on /usr/include/stdint.h:111:10
else:
  let INT16_MAX* = 32767     ## Generated based on /usr/include/stdint.h:111:10
when 2147483647 is static:
  const
    INT32_MAX* = 2147483647  ## Generated based on /usr/include/stdint.h:112:10
else:
  let INT32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:112:10
when 255 is static:
  const
    UINT8_MAX* = 255         ## Generated based on /usr/include/stdint.h:116:10
else:
  let UINT8_MAX* = 255       ## Generated based on /usr/include/stdint.h:116:10
when 65535 is static:
  const
    UINT16_MAX* = 65535      ## Generated based on /usr/include/stdint.h:117:10
else:
  let UINT16_MAX* = 65535    ## Generated based on /usr/include/stdint.h:117:10
when cast[cuint](4294967295'i64) is static:
  const
    UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  let UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
when -128 is static:
  const
    INT_LEAST8_MIN* = -128   ## Generated based on /usr/include/stdint.h:123:10
else:
  let INT_LEAST8_MIN* = -128 ## Generated based on /usr/include/stdint.h:123:10
when 127 is static:
  const
    INT_LEAST8_MAX* = 127    ## Generated based on /usr/include/stdint.h:128:10
else:
  let INT_LEAST8_MAX* = 127  ## Generated based on /usr/include/stdint.h:128:10
when 32767 is static:
  const
    INT_LEAST16_MAX* = 32767 ## Generated based on /usr/include/stdint.h:129:10
else:
  let INT_LEAST16_MAX* = 32767 ## Generated based on /usr/include/stdint.h:129:10
when 2147483647 is static:
  const
    INT_LEAST32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:130:10
else:
  let INT_LEAST32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:130:10
when 255 is static:
  const
    UINT_LEAST8_MAX* = 255   ## Generated based on /usr/include/stdint.h:134:10
else:
  let UINT_LEAST8_MAX* = 255 ## Generated based on /usr/include/stdint.h:134:10
when 65535 is static:
  const
    UINT_LEAST16_MAX* = 65535 ## Generated based on /usr/include/stdint.h:135:10
else:
  let UINT_LEAST16_MAX* = 65535 ## Generated based on /usr/include/stdint.h:135:10
when cast[cuint](4294967295'i64) is static:
  const
    UINT_LEAST32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:136:10
else:
  let UINT_LEAST32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:136:10
when -128 is static:
  const
    INT_FAST8_MIN* = -128    ## Generated based on /usr/include/stdint.h:141:10
else:
  let INT_FAST8_MIN* = -128  ## Generated based on /usr/include/stdint.h:141:10
when 127 is static:
  const
    INT_FAST8_MAX* = 127     ## Generated based on /usr/include/stdint.h:151:10
else:
  let INT_FAST8_MAX* = 127   ## Generated based on /usr/include/stdint.h:151:10
when cast[clong](9223372036854775807'i64) is static:
  const
    INT_FAST16_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:153:11
else:
  let INT_FAST16_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:153:11
when cast[clong](9223372036854775807'i64) is static:
  const
    INT_FAST32_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:154:11
else:
  let INT_FAST32_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:154:11
when 255 is static:
  const
    UINT_FAST8_MAX* = 255    ## Generated based on /usr/include/stdint.h:162:10
else:
  let UINT_FAST8_MAX* = 255  ## Generated based on /usr/include/stdint.h:162:10
when cast[culong](18446744073709551615'u) is static:
  const
    UINT_FAST16_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:164:11
else:
  let UINT_FAST16_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:164:11
when cast[culong](18446744073709551615'u) is static:
  const
    UINT_FAST32_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:165:11
else:
  let UINT_FAST32_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:165:11
when cast[clong](9223372036854775807'i64) is static:
  const
    INTPTR_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:176:11
else:
  let INTPTR_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:176:11
when cast[culong](18446744073709551615'u) is static:
  const
    UINTPTR_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:177:11
else:
  let UINTPTR_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:177:11
when cast[clong](9223372036854775807'i64) is static:
  const
    PTRDIFF_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:199:11
else:
  let PTRDIFF_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:199:11
when 2147483647 is static:
  const
    SIG_ATOMIC_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:212:10
else:
  let SIG_ATOMIC_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:212:10
when cast[culong](18446744073709551615'u) is static:
  const
    SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
else:
  let SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
when cast[cuint](0'i64) is static:
  const
    WINT_MIN* = cast[cuint](0'i64) ## Generated based on /usr/include/stdint.h:233:10
else:
  let WINT_MIN* = cast[cuint](0'i64) ## Generated based on /usr/include/stdint.h:233:10
when cast[cuint](4294967295'i64) is static:
  const
    WINT_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:234:10
else:
  let WINT_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:234:10
when 1 is static:
  const
    internal_STDLIB_H* = 1   ## Generated based on /usr/include/stdlib.h:36:9
else:
  let internal_STDLIB_H* = 1 ## Generated based on /usr/include/stdlib.h:36:9
when 1 is static:
  const
    WNOHANG* = 1             ## Generated based on /usr/include/bits/waitflags.h:25:9
else:
  let WNOHANG* = 1           ## Generated based on /usr/include/bits/waitflags.h:25:9
when 2 is static:
  const
    WUNTRACED* = 2           ## Generated based on /usr/include/bits/waitflags.h:26:9
else:
  let WUNTRACED* = 2         ## Generated based on /usr/include/bits/waitflags.h:26:9
when 2 is static:
  const
    WSTOPPED* = 2            ## Generated based on /usr/include/bits/waitflags.h:30:10
else:
  let WSTOPPED* = 2          ## Generated based on /usr/include/bits/waitflags.h:30:10
when 4 is static:
  const
    WEXITED* = 4             ## Generated based on /usr/include/bits/waitflags.h:31:10
else:
  let WEXITED* = 4           ## Generated based on /usr/include/bits/waitflags.h:31:10
when 8 is static:
  const
    WCONTINUED* = 8          ## Generated based on /usr/include/bits/waitflags.h:32:10
else:
  let WCONTINUED* = 8        ## Generated based on /usr/include/bits/waitflags.h:32:10
when 16777216 is static:
  const
    WNOWAIT* = 16777216      ## Generated based on /usr/include/bits/waitflags.h:33:10
else:
  let WNOWAIT* = 16777216    ## Generated based on /usr/include/bits/waitflags.h:33:10
when 536870912 is static:
  const
    compiler_WNOTHREAD* = 536870912 ## Generated based on /usr/include/bits/waitflags.h:36:9
else:
  let compiler_WNOTHREAD* = 536870912 ## Generated based on /usr/include/bits/waitflags.h:36:9
when 1073741824 is static:
  const
    compiler_WALL* = 1073741824 ## Generated based on /usr/include/bits/waitflags.h:38:9
else:
  let compiler_WALL* = 1073741824 ## Generated based on /usr/include/bits/waitflags.h:38:9
when 2147483648 is static:
  const
    compiler_WCLONE* = 2147483648'i64 ## Generated based on /usr/include/bits/waitflags.h:39:9
else:
  let compiler_WCLONE* = 2147483648'i64 ## Generated based on /usr/include/bits/waitflags.h:39:9
when 65535 is static:
  const
    compiler_W_CONTINUED* = 65535 ## Generated based on /usr/include/bits/waitstatus.h:58:9
else:
  let compiler_W_CONTINUED* = 65535 ## Generated based on /usr/include/bits/waitstatus.h:58:9
when 128 is static:
  const
    compiler_WCOREFLAG* = 128 ## Generated based on /usr/include/bits/waitstatus.h:59:9
else:
  let compiler_WCOREFLAG* = 128 ## Generated based on /usr/include/bits/waitstatus.h:59:9
when 1 is static:
  const
    compiler_ldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:72:10
else:
  let compiler_ldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:72:10
when 1 is static:
  const
    compiler_lldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:82:10
else:
  let compiler_lldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:82:10
when 2147483647 is static:
  const
    RAND_MAX* = 2147483647   ## Generated based on /usr/include/stdlib.h:87:9
else:
  let RAND_MAX* = 2147483647 ## Generated based on /usr/include/stdlib.h:87:9
when 1 is static:
  const
    EXIT_FAILURE* = 1        ## Generated based on /usr/include/stdlib.h:92:9
else:
  let EXIT_FAILURE* = 1      ## Generated based on /usr/include/stdlib.h:92:9
when 0 is static:
  const
    EXIT_SUCCESS* = 0        ## Generated based on /usr/include/stdlib.h:93:9
else:
  let EXIT_SUCCESS* = 0      ## Generated based on /usr/include/stdlib.h:93:9
when 1 is static:
  const
    internal_SYS_TYPES_H* = 1 ## Generated based on /usr/include/sys/types.h:23:9
else:
  let internal_SYS_TYPES_H* = 1 ## Generated based on /usr/include/sys/types.h:23:9
when 1 is static:
  const
    compiler_clock_t_defined* = 1 ## Generated based on /usr/include/bits/types/clock_t.h:2:9
else:
  let compiler_clock_t_defined* = 1 ## Generated based on /usr/include/bits/types/clock_t.h:2:9
when 1 is static:
  const
    compiler_clockid_t_defined* = 1 ## Generated based on /usr/include/bits/types/clockid_t.h:2:9
else:
  let compiler_clockid_t_defined* = 1 ## Generated based on /usr/include/bits/types/clockid_t.h:2:9
when 1 is static:
  const
    compiler_time_t_defined* = 1 ## Generated based on /usr/include/bits/types/time_t.h:2:9
else:
  let compiler_time_t_defined* = 1 ## Generated based on /usr/include/bits/types/time_t.h:2:9
when 1 is static:
  const
    compiler_timer_t_defined* = 1 ## Generated based on /usr/include/bits/types/timer_t.h:2:9
else:
  let compiler_timer_t_defined* = 1 ## Generated based on /usr/include/bits/types/timer_t.h:2:9
when 1 is static:
  const
    compiler_BIT_TYPES_DEFINED_private* = 1 ## Generated based on /usr/include/sys/types.h:171:9
else:
  let compiler_BIT_TYPES_DEFINED_private* = 1 ## Generated based on /usr/include/sys/types.h:171:9
when 1 is static:
  const
    internal_ENDIAN_H* = 1   ## Generated based on /usr/include/endian.h:19:9
else:
  let internal_ENDIAN_H* = 1 ## Generated based on /usr/include/endian.h:19:9
when 1 is static:
  const
    internal_BITS_ENDIAN_H* = 1 ## Generated based on /usr/include/bits/endian.h:20:9
else:
  let internal_BITS_ENDIAN_H* = 1 ## Generated based on /usr/include/bits/endian.h:20:9
when 1234 is static:
  const
    compiler_LITTLE_ENDIAN* = 1234 ## Generated based on /usr/include/bits/endian.h:30:9
else:
  let compiler_LITTLE_ENDIAN* = 1234 ## Generated based on /usr/include/bits/endian.h:30:9
when 4321 is static:
  const
    compiler_BIG_ENDIAN* = 4321 ## Generated based on /usr/include/bits/endian.h:31:9
else:
  let compiler_BIG_ENDIAN* = 4321 ## Generated based on /usr/include/bits/endian.h:31:9
when 3412 is static:
  const
    compiler_PDP_ENDIAN* = 3412 ## Generated based on /usr/include/bits/endian.h:32:9
else:
  let compiler_PDP_ENDIAN* = 3412 ## Generated based on /usr/include/bits/endian.h:32:9
when 1 is static:
  const
    internal_BITS_ENDIANNESS_H* = 1 ## Generated based on /usr/include/bits/endianness.h:2:9
else:
  let internal_BITS_ENDIANNESS_H* = 1 ## Generated based on /usr/include/bits/endianness.h:2:9
when compiler_LITTLE_ENDIAN is typedesc:
  type
    compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/bits/endianness.h:9:9
else:
  when compiler_LITTLE_ENDIAN is static:
    const
      compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/bits/endianness.h:9:9
  else:
    let compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/bits/endianness.h:9:9
when compiler_LITTLE_ENDIAN is typedesc:
  type
    LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/endian.h:27:10
else:
  when compiler_LITTLE_ENDIAN is static:
    const
      LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/endian.h:27:10
  else:
    let LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/endian.h:27:10
when compiler_BIG_ENDIAN is typedesc:
  type
    BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /usr/include/endian.h:28:10
else:
  when compiler_BIG_ENDIAN is static:
    const
      BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /usr/include/endian.h:28:10
  else:
    let BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /usr/include/endian.h:28:10
when compiler_PDP_ENDIAN is typedesc:
  type
    PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /usr/include/endian.h:29:10
else:
  when compiler_PDP_ENDIAN is static:
    const
      PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /usr/include/endian.h:29:10
  else:
    let PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /usr/include/endian.h:29:10
when 1 is static:
  const
    internal_BITS_BYTESWAP_H* = 1 ## Generated based on /usr/include/bits/byteswap.h:24:9
else:
  let internal_BITS_BYTESWAP_H* = 1 ## Generated based on /usr/include/bits/byteswap.h:24:9
when 1 is static:
  const
    internal_BITS_UINTN_IDENTITY_H* = 1 ## Generated based on /usr/include/bits/uintn-identity.h:24:9
else:
  let internal_BITS_UINTN_IDENTITY_H* = 1 ## Generated based on /usr/include/bits/uintn-identity.h:24:9
when 1 is static:
  const
    internal_SYS_SELECT_H* = 1 ## Generated based on /usr/include/sys/select.h:22:9
else:
  let internal_SYS_SELECT_H* = 1 ## Generated based on /usr/include/sys/select.h:22:9
when 1 is static:
  const
    compiler_sigset_t_defined* = 1 ## Generated based on /usr/include/bits/types/sigset_t.h:2:9
else:
  let compiler_sigset_t_defined* = 1 ## Generated based on /usr/include/bits/types/sigset_t.h:2:9
when 1 is static:
  const
    compiler_timeval_defined* = 1 ## Generated based on /usr/include/bits/types/struct_timeval.h:2:9
else:
  let compiler_timeval_defined* = 1 ## Generated based on /usr/include/bits/types/struct_timeval.h:2:9
when 1 is static:
  const
    internal_STRUCT_TIMESPEC* = 1 ## Generated based on /usr/include/bits/types/struct_timespec.h:3:9
else:
  let internal_STRUCT_TIMESPEC* = 1 ## Generated based on /usr/include/bits/types/struct_timespec.h:3:9
when compiler_FD_SETSIZE is typedesc:
  type
    FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /usr/include/sys/select.h:73:9
else:
  when compiler_FD_SETSIZE is static:
    const
      FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /usr/include/sys/select.h:73:9
  else:
    let FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /usr/include/sys/select.h:73:9
when 1 is static:
  const
    internal_BITS_PTHREADTYPES_COMMON_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:20:10
else:
  let internal_BITS_PTHREADTYPES_COMMON_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:20:10
when 1 is static:
  const
    internal_THREAD_SHARED_TYPES_H* = 1 ## Generated based on /usr/include/bits/thread-shared-types.h:20:9
else:
  let internal_THREAD_SHARED_TYPES_H* = 1 ## Generated based on /usr/include/bits/thread-shared-types.h:20:9
when 1 is static:
  const
    internal_BITS_PTHREADTYPES_ARCH_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:19:9
else:
  let internal_BITS_PTHREADTYPES_ARCH_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:19:9
when 40 is static:
  const
    compiler_SIZEOF_PTHREAD_MUTEX_T* = 40 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:25:11
else:
  let compiler_SIZEOF_PTHREAD_MUTEX_T* = 40 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:25:11
when 56 is static:
  const
    compiler_SIZEOF_PTHREAD_ATTR_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:26:11
else:
  let compiler_SIZEOF_PTHREAD_ATTR_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:26:11
when 56 is static:
  const
    compiler_SIZEOF_PTHREAD_RWLOCK_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:27:11
else:
  let compiler_SIZEOF_PTHREAD_RWLOCK_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:27:11
when 32 is static:
  const
    compiler_SIZEOF_PTHREAD_BARRIER_T* = 32 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:28:11
else:
  let compiler_SIZEOF_PTHREAD_BARRIER_T* = 32 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:28:11
when 4 is static:
  const
    compiler_SIZEOF_PTHREAD_MUTEXATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:41:9
else:
  let compiler_SIZEOF_PTHREAD_MUTEXATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:41:9
when 48 is static:
  const
    compiler_SIZEOF_PTHREAD_COND_T* = 48 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:42:9
else:
  let compiler_SIZEOF_PTHREAD_COND_T* = 48 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:42:9
when 4 is static:
  const
    compiler_SIZEOF_PTHREAD_CONDATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:43:9
else:
  let compiler_SIZEOF_PTHREAD_CONDATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:43:9
when 8 is static:
  const
    compiler_SIZEOF_PTHREAD_RWLOCKATTR_T* = 8 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:44:9
else:
  let compiler_SIZEOF_PTHREAD_RWLOCKATTR_T* = 8 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:44:9
when 4 is static:
  const
    compiler_SIZEOF_PTHREAD_BARRIERATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:45:9
else:
  let compiler_SIZEOF_PTHREAD_BARRIERATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:45:9
when 1 is static:
  const
    internal_THREAD_MUTEX_INTERNAL_H* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:20:9
else:
  let internal_THREAD_MUTEX_INTERNAL_H* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:20:9
when 1 is static:
  const
    compiler_PTHREAD_MUTEX_HAVE_PREV* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:37:10
else:
  let compiler_PTHREAD_MUTEX_HAVE_PREV* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:37:10
when 1 is static:
  const
    compiler_have_pthread_attr_t* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:63:10
else:
  let compiler_have_pthread_attr_t* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:63:10
when 1 is static:
  const
    internal_ALLOCA_H* = 1   ## Generated based on /usr/include/alloca.h:19:9
else:
  let internal_ALLOCA_H* = 1 ## Generated based on /usr/include/alloca.h:19:9
when 1 is static:
  const
    internal_STRING_H* = 1   ## Generated based on /usr/include/string.h:23:9
else:
  let internal_STRING_H* = 1 ## Generated based on /usr/include/string.h:23:9
when 1 is static:
  const
    internal_BITS_TYPES_LOCALE_T_H* = 1 ## Generated based on /usr/include/bits/types/locale_t.h:20:9
else:
  let internal_BITS_TYPES_LOCALE_T_H* = 1 ## Generated based on /usr/include/bits/types/locale_t.h:20:9
when 1 is static:
  const
    internal_BITS_TYPES_LOCALE_T_H_const* = 1 ## Generated based on /usr/include/bits/types/__locale_t.h:20:9
else:
  let internal_BITS_TYPES_LOCALE_T_H_const* = 1 ## Generated based on /usr/include/bits/types/__locale_t.h:20:9
when 1 is static:
  const
    internal_STRINGS_H* = 1  ## Generated based on /usr/include/strings.h:19:9
else:
  let internal_STRINGS_H* = 1 ## Generated based on /usr/include/strings.h:19:9
proc malloc*(compiler_size: culong): pointer {.cdecl, importc: "malloc".}
proc free*(compiler_ptr: pointer): void {.cdecl, importc: "free".}
proc realloc*(compiler_ptr: pointer; compiler_size: culong): pointer {.cdecl,
    importc: "realloc".}
proc calloc*(compiler_nmemb: culong; compiler_size: culong): pointer {.cdecl,
    importc: "calloc".}
when 166 is static:
  const
    MEMENTO_PREFILL* = 166   ## Generated based on /usr/include/mupdf/memento.h:255:9
else:
  let MEMENTO_PREFILL* = 166 ## Generated based on /usr/include/mupdf/memento.h:255:9
when 167 is static:
  const
    MEMENTO_POSTFILL* = 167  ## Generated based on /usr/include/mupdf/memento.h:256:9
else:
  let MEMENTO_POSTFILL* = 167 ## Generated based on /usr/include/mupdf/memento.h:256:9
when 168 is static:
  const
    MEMENTO_ALLOCFILL* = 168 ## Generated based on /usr/include/mupdf/memento.h:257:9
else:
  let MEMENTO_ALLOCFILL* = 168 ## Generated based on /usr/include/mupdf/memento.h:257:9
when 169 is static:
  const
    MEMENTO_FREEFILL* = 169  ## Generated based on /usr/include/mupdf/memento.h:258:9
else:
  let MEMENTO_FREEFILL* = 169 ## Generated based on /usr/include/mupdf/memento.h:258:9
proc Memento_malloc*(s: csize_t): pointer {.cdecl, importc: "Memento_malloc".}
proc Memento_free*(a0: pointer): void {.cdecl, importc: "Memento_free".}
proc Memento_realloc*(a0: pointer; s: csize_t): pointer {.cdecl,
    importc: "Memento_realloc".}
proc Memento_calloc*(a0: csize_t; a1: csize_t): pointer {.cdecl,
    importc: "Memento_calloc".}
proc Memento_strdup*(a0: cstring): cstring {.cdecl, importc: "Memento_strdup".}
proc strdup*(compiler_s: cstring): cstring {.cdecl, importc: "strdup".}
proc Memento_asprintf*(ret: ptr cstring; format: cstring): cint {.cdecl,
    varargs, importc: "Memento_asprintf".}
proc asprintf*(compiler_ptr: ptr cstring; compiler_fmt: cstring): cint {.cdecl,
    varargs, importc: "asprintf".}
proc Memento_vasprintf*(ret: ptr cstring; format: cstring): cint {.cdecl,
    varargs, importc: "Memento_vasprintf".}
proc vasprintf*(compiler_ptr: ptr cstring; compiler_f: cstring;
                compiler_arg: compiler_gnuc_va_list): cint {.cdecl,
    importc: "vasprintf".}
when 4096 is static:
  const
    PATH_MAX* = 4096         ## Generated based on /usr/include/mupdf/fitz/system.h:66:9
else:
  let PATH_MAX* = 4096       ## Generated based on /usr/include/mupdf/fitz/system.h:66:9
when 3.14159265 is static:
  const
    FZ_PI* = 3.14159265      ## Generated based on /usr/include/mupdf/fitz/system.h:69:9
else:
  let FZ_PI* = 3.14159265    ## Generated based on /usr/include/mupdf/fitz/system.h:69:9
when 57.2957795 is static:
  const
    FZ_RADIAN* = 57.2957795  ## Generated based on /usr/include/mupdf/fitz/system.h:70:9
else:
  let FZ_RADIAN* = 57.2957795 ## Generated based on /usr/include/mupdf/fitz/system.h:70:9
when 0.017453292 is static:
  const
    FZ_DEGREE* = 0.017453292 ## Generated based on /usr/include/mupdf/fitz/system.h:71:9
else:
  let FZ_DEGREE* = 0.017453292 ## Generated based on /usr/include/mupdf/fitz/system.h:71:9
when 1.41421356 is static:
  const
    FZ_SQRT2* = 1.41421356   ## Generated based on /usr/include/mupdf/fitz/system.h:72:9
else:
  let FZ_SQRT2* = 1.41421356 ## Generated based on /usr/include/mupdf/fitz/system.h:72:9
when 0.69314718 is static:
  const
    FZ_LN2* = 0.69314718     ## Generated based on /usr/include/mupdf/fitz/system.h:73:9
else:
  let FZ_LN2* = 0.69314718   ## Generated based on /usr/include/mupdf/fitz/system.h:73:9
when 0 is static:
  const
    ARCH_HAS_NEON* = 0       ## Generated based on /usr/include/mupdf/fitz/system.h:94:9
else:
  let ARCH_HAS_NEON* = 0     ## Generated based on /usr/include/mupdf/fitz/system.h:94:9
when 0 is static:
  const
    ARCH_HAS_SSE* = 0        ## Generated based on /usr/include/mupdf/fitz/system.h:106:9
else:
  let ARCH_HAS_SSE* = 0      ## Generated based on /usr/include/mupdf/fitz/system.h:106:9
when 1 is static:
  const
    HAVE_SIGSETJMP* = 1      ## Generated based on /usr/include/mupdf/fitz/system.h:122:9
else:
  let HAVE_SIGSETJMP* = 1    ## Generated based on /usr/include/mupdf/fitz/system.h:122:9
when 4 is static:
  const
    FZ_POINTER_ALIGN_MOD* = 4 ## Generated based on /usr/include/mupdf/fitz/system.h:330:9
else:
  let FZ_POINTER_ALIGN_MOD* = 4 ## Generated based on /usr/include/mupdf/fitz/system.h:330:9
when 1 is static:
  const
    internal_MATH_H* = 1     ## Generated based on /usr/include/math.h:24:9
else:
  let internal_MATH_H* = 1   ## Generated based on /usr/include/math.h:24:9
when 1 is static:
  const
    internal_BITS_LIBM_SIMD_DECL_STUBS_H* = 1 ## Generated based on /usr/include/bits/libm-simd-decl-stubs.h:34:9
else:
  let internal_BITS_LIBM_SIMD_DECL_STUBS_H* = 1 ## Generated based on /usr/include/bits/libm-simd-decl-stubs.h:34:9
when 1 is static:
  const
    compiler_FP_LOGB0_IS_MIN* = 1 ## Generated based on /usr/include/bits/fp-logb.h:23:9
else:
  let compiler_FP_LOGB0_IS_MIN* = 1 ## Generated based on /usr/include/bits/fp-logb.h:23:9
when 1 is static:
  const
    compiler_FP_LOGBNAN_IS_MIN* = 1 ## Generated based on /usr/include/bits/fp-logb.h:24:9
else:
  let compiler_FP_LOGBNAN_IS_MIN* = 1 ## Generated based on /usr/include/bits/fp-logb.h:24:9
when 0 is static:
  const
    compiler_MATH_DECLARING_DOUBLE* = 0 ## Generated based on /usr/include/math.h:481:10
else:
  let compiler_MATH_DECLARING_DOUBLE* = 0 ## Generated based on /usr/include/math.h:481:10
when 1 is static:
  const
    compiler_MATH_DECLARING_FLOATN* = 1 ## Generated based on /usr/include/math.h:482:10
else:
  let compiler_MATH_DECLARING_FLOATN* = 1 ## Generated based on /usr/include/math.h:482:10
when 1 is static:
  const
    compiler_MATH_DECLARE_LDOUBLE* = 1 ## Generated based on /usr/include/math.h:366:11
else:
  let compiler_MATH_DECLARE_LDOUBLE* = 1 ## Generated based on /usr/include/math.h:366:11
# when 0 is static:
#   const
#     FP_NAN* = 0              ## Generated based on /usr/include/math.h:906:10
# else:
#   let FP_NAN* = 0            ## Generated based on /usr/include/math.h:906:10
# when 1 is static:
#   const
#     FP_INFINITE* = 1         ## Generated based on /usr/include/math.h:909:10
# else:
#   let FP_INFINITE* = 1       ## Generated based on /usr/include/math.h:909:10
# when 2 is static:
#   const
#     FP_ZERO* = 2             ## Generated based on /usr/include/math.h:912:10
# else:
#   let FP_ZERO* = 2           ## Generated based on /usr/include/math.h:912:10
# when 3 is static:
#   const
#     FP_SUBNORMAL* = 3        ## Generated based on /usr/include/math.h:915:10
# else:
#   let FP_SUBNORMAL* = 3      ## Generated based on /usr/include/math.h:915:10
# when 4 is static:
#   const
#     FP_NORMAL* = 4           ## Generated based on /usr/include/math.h:918:10
# else:
#   let FP_NORMAL* = 4         ## Generated based on /usr/include/math.h:918:10
when 1 is static:
  const
    MATH_ERRNO* = 1          ## Generated based on /usr/include/math.h:1005:10
else:
  let MATH_ERRNO* = 1        ## Generated based on /usr/include/math.h:1005:10
when 2 is static:
  const
    MATH_ERREXCEPT* = 2      ## Generated based on /usr/include/math.h:1006:10
else:
  let MATH_ERREXCEPT* = 2    ## Generated based on /usr/include/math.h:1006:10
when 2.718281828459045 is static:
  const
    M_E* = 2.718281828459045 ## Generated based on /usr/include/math.h:1116:10
else:
  let M_E* = 2.718281828459045 ## Generated based on /usr/include/math.h:1116:10
when 1.442695040888963 is static:
  const
    M_LOG2E* = 1.442695040888963 ## Generated based on /usr/include/math.h:1117:10
else:
  let M_LOG2E* = 1.442695040888963 ## Generated based on /usr/include/math.h:1117:10
when 0.4342944819032518 is static:
  const
    M_LOG10E* = 0.4342944819032518 ## Generated based on /usr/include/math.h:1118:10
else:
  let M_LOG10E* = 0.4342944819032518 ## Generated based on /usr/include/math.h:1118:10
when 0.6931471805599453 is static:
  const
    M_LN2* = 0.6931471805599453 ## Generated based on /usr/include/math.h:1119:10
else:
  let M_LN2* = 0.6931471805599453 ## Generated based on /usr/include/math.h:1119:10
when 2.302585092994046 is static:
  const
    M_LN10* = 2.302585092994046 ## Generated based on /usr/include/math.h:1120:10
else:
  let M_LN10* = 2.302585092994046 ## Generated based on /usr/include/math.h:1120:10
when 3.141592653589793 is static:
  const
    M_PI* = 3.141592653589793 ## Generated based on /usr/include/math.h:1121:10
else:
  let M_PI* = 3.141592653589793 ## Generated based on /usr/include/math.h:1121:10
when 1.570796326794897 is static:
  const
    M_PI_2* = 1.570796326794897 ## Generated based on /usr/include/math.h:1122:10
else:
  let M_PI_2* = 1.570796326794897 ## Generated based on /usr/include/math.h:1122:10
when 0.7853981633974483 is static:
  const
    M_PI_4* = 0.7853981633974483 ## Generated based on /usr/include/math.h:1123:10
else:
  let M_PI_4* = 0.7853981633974483 ## Generated based on /usr/include/math.h:1123:10
when 0.3183098861837907 is static:
  const
    M_1_PI* = 0.3183098861837907 ## Generated based on /usr/include/math.h:1124:10
else:
  let M_1_PI* = 0.3183098861837907 ## Generated based on /usr/include/math.h:1124:10
when 0.6366197723675814 is static:
  const
    M_2_PI* = 0.6366197723675814 ## Generated based on /usr/include/math.h:1125:10
else:
  let M_2_PI* = 0.6366197723675814 ## Generated based on /usr/include/math.h:1125:10
when 1.128379167095513 is static:
  const
    M_2_SQRTPI* = 1.128379167095513 ## Generated based on /usr/include/math.h:1126:10
else:
  let M_2_SQRTPI* = 1.128379167095513 ## Generated based on /usr/include/math.h:1126:10
when 1.414213562373095 is static:
  const
    M_SQRT2* = 1.414213562373095 ## Generated based on /usr/include/math.h:1127:10
else:
  let M_SQRT2* = 1.414213562373095 ## Generated based on /usr/include/math.h:1127:10
when 0.7071067811865476 is static:
  const
    M_SQRT1_2* = 0.7071067811865476 ## Generated based on /usr/include/math.h:1128:10
else:
  let M_SQRT1_2* = 0.7071067811865476 ## Generated based on /usr/include/math.h:1128:10
when 1 is static:
  const
    internal_ASSERT_H* = 1   ## Generated based on /usr/include/assert.h:34:9
else:
  let internal_ASSERT_H* = 1 ## Generated based on /usr/include/assert.h:34:9
when void is typedesc:
  type
    compiler_ASSERT_VOID_CAST* = void ## Generated based on /usr/include/assert.h:40:10
else:
  when void is static:
    const
      compiler_ASSERT_VOID_CAST* = void ## Generated based on /usr/include/assert.h:40:10
  else:
    let compiler_ASSERT_VOID_CAST* = void ## Generated based on /usr/include/assert.h:40:10
when 0 is static:
  const
    FZ_VERBOSE_EXCEPTIONS* = 0 ## Generated based on /usr/include/mupdf/fitz/context.h:32:9
else:
  let FZ_VERBOSE_EXCEPTIONS* = 0 ## Generated based on /usr/include/mupdf/fitz/context.h:32:9
when 32 is static:
  const
    FZ_JMPBUF_ALIGN* = 32    ## Generated based on /usr/include/mupdf/fitz/context.h:784:9
else:
  let FZ_JMPBUF_ALIGN* = 32  ## Generated based on /usr/include/mupdf/fitz/context.h:784:9
when 65533 is static:
  const
    FZ_REPLACEMENT_CHARACTER* = 65533 ## Generated based on /usr/include/mupdf/fitz/string-util.h:31:9
else:
  let FZ_REPLACEMENT_CHARACTER* = 65533 ## Generated based on /usr/include/mupdf/fitz/string-util.h:31:9
when 0 is static:
  const
    FZ_AES_DECRYPT* = 0      ## Generated based on /usr/include/mupdf/fitz/crypt.h:234:9
else:
  let FZ_AES_DECRYPT* = 0    ## Generated based on /usr/include/mupdf/fitz/crypt.h:234:9
when 1 is static:
  const
    FZ_AES_ENCRYPT* = 1      ## Generated based on /usr/include/mupdf/fitz/crypt.h:235:9
else:
  let FZ_AES_ENCRYPT* = 1    ## Generated based on /usr/include/mupdf/fitz/crypt.h:235:9
when 48 is static:
  const
    FZ_HASH_TABLE_KEY_LENGTH* = 48 ## Generated based on /usr/include/mupdf/fitz/hash.h:30:9
else:
  let FZ_HASH_TABLE_KEY_LENGTH* = 48 ## Generated based on /usr/include/mupdf/fitz/hash.h:30:9
when fz_intptr_heap is typedesc:
  type
    HEAP_TYPE_NAME* = fz_intptr_heap ## Generated based on /usr/include/mupdf/fitz/heap.h:135:9
else:
  when fz_intptr_heap is static:
    const
      HEAP_TYPE_NAME* = fz_intptr_heap ## Generated based on /usr/include/mupdf/fitz/heap.h:135:9
  else:
    let HEAP_TYPE_NAME* = fz_intptr_heap ## Generated based on /usr/include/mupdf/fitz/heap.h:135:9
when fz_intptr is typedesc:
  type
    HEAP_CONTAINER_TYPE* = fz_intptr ## Generated based on /usr/include/mupdf/fitz/heap.h:136:9
else:
  when fz_intptr is static:
    const
      HEAP_CONTAINER_TYPE* = fz_intptr ## Generated based on /usr/include/mupdf/fitz/heap.h:136:9
  else:
    let HEAP_CONTAINER_TYPE* = fz_intptr ## Generated based on /usr/include/mupdf/fitz/heap.h:136:9
when "format" is static:
  const
    FZ_META_FORMAT* = "format" ## Generated based on /usr/include/mupdf/fitz/document.h:947:9
else:
  let FZ_META_FORMAT* = "format" ## Generated based on /usr/include/mupdf/fitz/document.h:947:9
when "encryption" is static:
  const
    FZ_META_ENCRYPTION* = "encryption" ## Generated based on /usr/include/mupdf/fitz/document.h:948:9
else:
  let FZ_META_ENCRYPTION* = "encryption" ## Generated based on /usr/include/mupdf/fitz/document.h:948:9
when "info:" is static:
  const
    FZ_META_INFO* = "info:"  ## Generated based on /usr/include/mupdf/fitz/document.h:950:9
else:
  let FZ_META_INFO* = "info:" ## Generated based on /usr/include/mupdf/fitz/document.h:950:9
when "info:Title" is static:
  const
    FZ_META_INFO_TITLE* = "info:Title" ## Generated based on /usr/include/mupdf/fitz/document.h:951:9
else:
  let FZ_META_INFO_TITLE* = "info:Title" ## Generated based on /usr/include/mupdf/fitz/document.h:951:9
when "info:Author" is static:
  const
    FZ_META_INFO_AUTHOR* = "info:Author" ## Generated based on /usr/include/mupdf/fitz/document.h:952:9
else:
  let FZ_META_INFO_AUTHOR* = "info:Author" ## Generated based on /usr/include/mupdf/fitz/document.h:952:9
when "info:Subject" is static:
  const
    FZ_META_INFO_SUBJECT* = "info:Subject" ## Generated based on /usr/include/mupdf/fitz/document.h:953:9
else:
  let FZ_META_INFO_SUBJECT* = "info:Subject" ## Generated based on /usr/include/mupdf/fitz/document.h:953:9
when "info:Keywords" is static:
  const
    FZ_META_INFO_KEYWORDS* = "info:Keywords" ## Generated based on /usr/include/mupdf/fitz/document.h:954:9
else:
  let FZ_META_INFO_KEYWORDS* = "info:Keywords" ## Generated based on /usr/include/mupdf/fitz/document.h:954:9
when "info:Creator" is static:
  const
    FZ_META_INFO_CREATOR* = "info:Creator" ## Generated based on /usr/include/mupdf/fitz/document.h:955:9
else:
  let FZ_META_INFO_CREATOR* = "info:Creator" ## Generated based on /usr/include/mupdf/fitz/document.h:955:9
when "info:Producer" is static:
  const
    FZ_META_INFO_PRODUCER* = "info:Producer" ## Generated based on /usr/include/mupdf/fitz/document.h:956:9
else:
  let FZ_META_INFO_PRODUCER* = "info:Producer" ## Generated based on /usr/include/mupdf/fitz/document.h:956:9
when "info:CreationDate" is static:
  const
    FZ_META_INFO_CREATIONDATE* = "info:CreationDate" ## Generated based on /usr/include/mupdf/fitz/document.h:957:9
else:
  let FZ_META_INFO_CREATIONDATE* = "info:CreationDate" ## Generated based on /usr/include/mupdf/fitz/document.h:957:9
when "info:ModDate" is static:
  const
    FZ_META_INFO_MODIFICATIONDATE* = "info:ModDate" ## Generated based on /usr/include/mupdf/fitz/document.h:958:9
else:
  let FZ_META_INFO_MODIFICATIONDATE* = "info:ModDate" ## Generated based on /usr/include/mupdf/fitz/document.h:958:9
when 8388607 is static:
  const
    PDF_MAX_OBJECT_NUMBER* = 8388607 ## Generated based on /usr/include/mupdf/pdf/object.h:33:9
else:
  let PDF_MAX_OBJECT_NUMBER* = 8388607 ## Generated based on /usr/include/mupdf/pdf/object.h:33:9
when 65535 is static:
  const
    PDF_MAX_GEN_NUMBER* = 65535 ## Generated based on /usr/include/mupdf/pdf/object.h:34:9
else:
  let PDF_MAX_GEN_NUMBER* = 65535 ## Generated based on /usr/include/mupdf/pdf/object.h:34:9
when 32 is static:
  const
    PDF_MRANGE_CAP* = 32     ## Generated based on /usr/include/mupdf/pdf/cmap.h:29:9
else:
  let PDF_MRANGE_CAP* = 32   ## Generated based on /usr/include/mupdf/pdf/cmap.h:29:9
proc setjmp*(compiler_env: ptr struct_jmp_buf_tag): cint {.cdecl,
    importc: "setjmp".}
proc compiler_sigsetjmp*(compiler_env: array[1'i64, struct_jmp_buf_tag];
                         compiler_savemask: cint): cint {.cdecl,
    importc: "__sigsetjmp".}
proc internal_setjmp*(compiler_env: ptr struct_jmp_buf_tag): cint {.cdecl,
    importc: "_setjmp".}
proc longjmp*(compiler_env: ptr struct_jmp_buf_tag; compiler_val: cint): void {.
    cdecl, importc: "longjmp".}
proc internal_longjmp*(compiler_env: ptr struct_jmp_buf_tag; compiler_val: cint): void {.
    cdecl, importc: "_longjmp".}
proc siglongjmp*(compiler_env: ptr struct_jmp_buf_tag; compiler_val: cint): void {.
    cdecl, importc: "siglongjmp".}
proc remove*(compiler_filename: cstring): cint {.cdecl, importc: "remove".}
proc rename*(compiler_old: cstring; compiler_new: cstring): cint {.cdecl,
    importc: "rename".}
proc renameat*(compiler_oldfd: cint; compiler_old: cstring;
               compiler_newfd: cint; compiler_new: cstring): cint {.cdecl,
    importc: "renameat".}
proc fclose*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fclose".}
proc tmpfile*(): ptr FILE {.cdecl, importc: "tmpfile".}
proc tmpnam*(a0: array[20'i64, cschar]): cstring {.cdecl, importc: "tmpnam".}
proc tmpnam_r*(compiler_s: array[20'i64, cschar]): cstring {.cdecl,
    importc: "tmpnam_r".}
proc tempnam*(compiler_dir: cstring; compiler_pfx: cstring): cstring {.cdecl,
    importc: "tempnam".}
proc fflush*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fflush".}
proc fflush_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fflush_unlocked".}
proc fopen*(compiler_filename: cstring; compiler_modes: cstring): ptr FILE {.
    cdecl, importc: "fopen".}
proc freopen*(compiler_filename: cstring; compiler_modes: cstring;
              compiler_stream: ptr FILE): ptr FILE {.cdecl, importc: "freopen".}
proc fdopen*(compiler_fd: cint; compiler_modes: cstring): ptr FILE {.cdecl,
    importc: "fdopen".}
proc fopencookie*(compiler_magic_cookie: pointer; compiler_modes: cstring;
                  compiler_io_funcs: cookie_io_functions_t): ptr FILE {.cdecl,
    importc: "fopencookie".}
proc fmemopen*(compiler_s: pointer; compiler_len: csize_t;
               compiler_modes: cstring): ptr FILE {.cdecl, importc: "fmemopen".}
proc open_memstream*(compiler_bufloc: ptr cstring; compiler_sizeloc: ptr csize_t): ptr FILE {.
    cdecl, importc: "open_memstream".}
proc setbuf*(compiler_stream: ptr FILE; compiler_buf: cstring): void {.cdecl,
    importc: "setbuf".}
proc setvbuf*(compiler_stream: ptr FILE; compiler_buf: cstring;
              compiler_modes: cint; compiler_n: csize_t): cint {.cdecl,
    importc: "setvbuf".}
proc setbuffer*(compiler_stream: ptr FILE; compiler_buf: cstring;
                compiler_size: csize_t): void {.cdecl, importc: "setbuffer".}
proc setlinebuf*(compiler_stream: ptr FILE): void {.cdecl, importc: "setlinebuf".}
proc fprintf*(compiler_stream: ptr FILE; compiler_format: cstring): cint {.
    cdecl, varargs, importc: "fprintf".}
proc printf*(compiler_format: cstring): cint {.cdecl, varargs, importc: "printf".}
proc sprintf*(compiler_s: cstring; compiler_format: cstring): cint {.cdecl,
    varargs, importc: "sprintf".}
proc vfprintf*(compiler_s: ptr FILE; compiler_format: cstring;
               compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vfprintf".}
proc vprintf*(compiler_format: cstring; compiler_arg: ptr compiler_va_list_tag): cint {.
    cdecl, importc: "vprintf".}
proc vsprintf*(compiler_s: cstring; compiler_format: cstring;
               compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vsprintf".}
proc snprintf*(compiler_s: cstring; compiler_maxlen: culong;
               compiler_format: cstring): cint {.cdecl, varargs,
    importc: "snprintf".}
proc vsnprintf*(compiler_s: cstring; compiler_maxlen: culong;
                compiler_format: cstring; compiler_arg: ptr compiler_va_list_tag): cint {.
    cdecl, importc: "vsnprintf".}
proc compiler_asprintf*(compiler_ptr: ptr cstring; compiler_fmt: cstring): cint {.
    cdecl, varargs, importc: "__asprintf".}
proc vdprintf*(compiler_fd: cint; compiler_fmt: cstring;
               compiler_arg: compiler_gnuc_va_list): cint {.cdecl,
    importc: "vdprintf".}
proc dprintf*(compiler_fd: cint; compiler_fmt: cstring): cint {.cdecl, varargs,
    importc: "dprintf".}
proc fscanf*(compiler_stream: ptr FILE; compiler_format: cstring): cint {.cdecl,
    varargs, importc: "fscanf".}
proc scanf*(compiler_format: cstring): cint {.cdecl, varargs, importc: "scanf".}
proc sscanf*(compiler_s: cstring; compiler_format: cstring): cint {.cdecl,
    varargs, importc: "sscanf".}
proc vfscanf*(compiler_s: ptr FILE; compiler_format: cstring;
              compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vfscanf".}
proc vscanf*(compiler_format: cstring; compiler_arg: ptr compiler_va_list_tag): cint {.
    cdecl, importc: "vscanf".}
proc vsscanf*(compiler_s: cstring; compiler_format: cstring;
              compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vsscanf".}
proc fgetc*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fgetc".}
proc getc*(compiler_stream: ptr FILE): cint {.cdecl, importc: "getc".}
proc getchar*(): cint {.cdecl, importc: "getchar".}
proc getc_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "getc_unlocked".}
proc getchar_unlocked*(): cint {.cdecl, importc: "getchar_unlocked".}
proc fgetc_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fgetc_unlocked".}
proc fputc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputc".}
proc putc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putc".}
proc putchar*(compiler_c: cint): cint {.cdecl, importc: "putchar".}
proc fputc_unlocked*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputc_unlocked".}
proc putc_unlocked*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putc_unlocked".}
proc putchar_unlocked*(compiler_c: cint): cint {.cdecl,
    importc: "putchar_unlocked".}
proc getw*(compiler_stream: ptr FILE): cint {.cdecl, importc: "getw".}
proc putw*(compiler_w: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putw".}
proc fgets*(compiler_s: cstring; compiler_n: cint; compiler_stream: ptr FILE): cstring {.
    cdecl, importc: "fgets".}
proc compiler_getdelim*(compiler_lineptr: ptr cstring; compiler_n: ptr csize_t;
                        compiler_delimiter: cint; compiler_stream: ptr FILE): compiler_ssize_t {.
    cdecl, importc: "__getdelim".}
proc getdelim*(compiler_lineptr: ptr cstring; compiler_n: ptr csize_t;
               compiler_delimiter: cint; compiler_stream: ptr FILE): compiler_ssize_t {.
    cdecl, importc: "getdelim".}
proc getline*(compiler_lineptr: ptr cstring; compiler_n: ptr csize_t;
              compiler_stream: ptr FILE): compiler_ssize_t {.cdecl,
    importc: "getline".}
proc fputs*(compiler_s: cstring; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputs".}
proc puts*(compiler_s: cstring): cint {.cdecl, importc: "puts".}
proc ungetc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ungetc".}
proc fread*(compiler_ptr: pointer; compiler_size: culong; compiler_n: culong;
            compiler_stream: ptr FILE): culong {.cdecl, importc: "fread".}
proc fwrite*(compiler_ptr: pointer; compiler_size: culong; compiler_n: culong;
             compiler_s: ptr FILE): culong {.cdecl, importc: "fwrite".}
proc fread_unlocked*(compiler_ptr: pointer; compiler_size: csize_t;
                     compiler_n: csize_t; compiler_stream: ptr FILE): csize_t {.
    cdecl, importc: "fread_unlocked".}
proc fwrite_unlocked*(compiler_ptr: pointer; compiler_size: csize_t;
                      compiler_n: csize_t; compiler_stream: ptr FILE): csize_t {.
    cdecl, importc: "fwrite_unlocked".}
proc fseek*(compiler_stream: ptr FILE; compiler_off: clong;
            compiler_whence: cint): cint {.cdecl, importc: "fseek".}
proc ftell*(compiler_stream: ptr FILE): clong {.cdecl, importc: "ftell".}
proc rewind*(compiler_stream: ptr FILE): void {.cdecl, importc: "rewind".}
proc fseeko*(compiler_stream: ptr FILE; compiler_off: compiler_off_t;
             compiler_whence: cint): cint {.cdecl, importc: "fseeko".}
proc ftello*(compiler_stream: ptr FILE): compiler_off_t {.cdecl,
    importc: "ftello".}
proc fgetpos*(compiler_stream: ptr FILE; compiler_pos: ptr fpos_t): cint {.
    cdecl, importc: "fgetpos".}
proc fsetpos*(compiler_stream: ptr FILE; compiler_pos: ptr fpos_t): cint {.
    cdecl, importc: "fsetpos".}
proc clearerr*(compiler_stream: ptr FILE): void {.cdecl, importc: "clearerr".}
proc feof*(compiler_stream: ptr FILE): cint {.cdecl, importc: "feof".}
proc ferror*(compiler_stream: ptr FILE): cint {.cdecl, importc: "ferror".}
proc clearerr_unlocked*(compiler_stream: ptr FILE): void {.cdecl,
    importc: "clearerr_unlocked".}
proc feof_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "feof_unlocked".}
proc ferror_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ferror_unlocked".}
proc perror*(compiler_s: cstring): void {.cdecl, importc: "perror".}
proc fileno*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fileno".}
proc fileno_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fileno_unlocked".}
proc pclose*(compiler_stream: ptr FILE): cint {.cdecl, importc: "pclose".}
proc popen*(compiler_command: cstring; compiler_modes: cstring): ptr FILE {.
    cdecl, importc: "popen".}
proc ctermid*(compiler_s: cstring): cstring {.cdecl, importc: "ctermid".}
proc flockfile*(compiler_stream: ptr FILE): void {.cdecl, importc: "flockfile".}
proc ftrylockfile*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ftrylockfile".}
proc funlockfile*(compiler_stream: ptr FILE): void {.cdecl,
    importc: "funlockfile".}
proc compiler_uflow*(a0: ptr FILE): cint {.cdecl, importc: "__uflow".}
proc compiler_overflow*(a0: ptr FILE; a1: cint): cint {.cdecl,
    importc: "__overflow".}
proc compiler_ctype_get_mb_cur_max*(): csize_t {.cdecl,
    importc: "__ctype_get_mb_cur_max".}
proc atof*(compiler_nptr: cstring): cdouble {.cdecl, importc: "atof".}
proc atoi*(compiler_nptr: cstring): cint {.cdecl, importc: "atoi".}
proc atol*(compiler_nptr: cstring): clong {.cdecl, importc: "atol".}
proc atoll*(compiler_nptr: cstring): clonglong {.cdecl, importc: "atoll".}
proc strtod*(compiler_nptr: cstring; compiler_endptr: ptr cstring): cdouble {.
    cdecl, importc: "strtod".}
proc strtof*(compiler_nptr: cstring; compiler_endptr: ptr cstring): cfloat {.
    cdecl, importc: "strtof".}
proc strtold*(compiler_nptr: cstring; compiler_endptr: ptr cstring): clongdouble {.
    cdecl, importc: "strtold".}
proc strtol*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
             compiler_base: cint): clong {.cdecl, importc: "strtol".}
proc strtoul*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
              compiler_base: cint): culong {.cdecl, importc: "strtoul".}
proc strtoq*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
             compiler_base: cint): clonglong {.cdecl, importc: "strtoq".}
proc strtouq*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
              compiler_base: cint): culonglong {.cdecl, importc: "strtouq".}
proc strtoll*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
              compiler_base: cint): clonglong {.cdecl, importc: "strtoll".}
proc strtoull*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
               compiler_base: cint): culonglong {.cdecl, importc: "strtoull".}
proc l64a*(compiler_n: clong): cstring {.cdecl, importc: "l64a".}
proc a64l*(compiler_s: cstring): clong {.cdecl, importc: "a64l".}
proc select*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
             compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
             compiler_timeout: ptr struct_timeval): cint {.cdecl,
    importc: "select".}
proc pselect*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
              compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
              compiler_timeout: ptr struct_timespec;
              compiler_sigmask: ptr compiler_sigset_t): cint {.cdecl,
    importc: "pselect".}
proc random*(): clong {.cdecl, importc: "random".}
proc srandom*(compiler_seed: cuint): void {.cdecl, importc: "srandom".}
proc initstate*(compiler_seed: cuint; compiler_statebuf: cstring;
                compiler_statelen: csize_t): cstring {.cdecl,
    importc: "initstate".}
proc setstate*(compiler_statebuf: cstring): cstring {.cdecl, importc: "setstate".}
proc random_r*(compiler_buf: ptr struct_random_data; compiler_result: ptr int32): cint {.
    cdecl, importc: "random_r".}
proc srandom_r*(compiler_seed: cuint; compiler_buf: ptr struct_random_data): cint {.
    cdecl, importc: "srandom_r".}
proc initstate_r*(compiler_seed: cuint; compiler_statebuf: cstring;
                  compiler_statelen: csize_t;
                  compiler_buf: ptr struct_random_data): cint {.cdecl,
    importc: "initstate_r".}
proc setstate_r*(compiler_statebuf: cstring;
                 compiler_buf: ptr struct_random_data): cint {.cdecl,
    importc: "setstate_r".}
proc rand*(): cint {.cdecl, importc: "rand".}
proc srand*(compiler_seed: cuint): void {.cdecl, importc: "srand".}
proc rand_r*(compiler_seed: ptr cuint): cint {.cdecl, importc: "rand_r".}
proc drand48*(): cdouble {.cdecl, importc: "drand48".}
proc erand48*(compiler_xsubi: array[3'i64, cushort]): cdouble {.cdecl,
    importc: "erand48".}
proc lrand48*(): clong {.cdecl, importc: "lrand48".}
proc nrand48*(compiler_xsubi: array[3'i64, cushort]): clong {.cdecl,
    importc: "nrand48".}
proc mrand48*(): clong {.cdecl, importc: "mrand48".}
proc jrand48*(compiler_xsubi: array[3'i64, cushort]): clong {.cdecl,
    importc: "jrand48".}
proc srand48*(compiler_seedval: clong): void {.cdecl, importc: "srand48".}
proc seed48*(compiler_seed16v: array[3'i64, cushort]): ptr cushort {.cdecl,
    importc: "seed48".}
proc lcong48*(compiler_param: array[7'i64, cushort]): void {.cdecl,
    importc: "lcong48".}
proc drand48_r*(compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr cdouble): cint {.cdecl,
    importc: "drand48_r".}
proc erand48_r*(compiler_xsubi: array[3'i64, cushort];
                compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr cdouble): cint {.cdecl,
    importc: "erand48_r".}
proc lrand48_r*(compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "lrand48_r".}
proc nrand48_r*(compiler_xsubi: array[3'i64, cushort];
                compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "nrand48_r".}
proc mrand48_r*(compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "mrand48_r".}
proc jrand48_r*(compiler_xsubi: array[3'i64, cushort];
                compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "jrand48_r".}
proc srand48_r*(compiler_seedval: clong;
                compiler_buffer: ptr struct_drand48_data): cint {.cdecl,
    importc: "srand48_r".}
proc seed48_r*(compiler_seed16v: array[3'i64, cushort];
               compiler_buffer: ptr struct_drand48_data): cint {.cdecl,
    importc: "seed48_r".}
proc lcong48_r*(compiler_param: array[7'i64, cushort];
                compiler_buffer: ptr struct_drand48_data): cint {.cdecl,
    importc: "lcong48_r".}
proc arc4random*(): compiler_uint32_t {.cdecl, importc: "arc4random".}
proc arc4random_buf*(compiler_buf: pointer; compiler_size: csize_t): void {.
    cdecl, importc: "arc4random_buf".}
proc arc4random_uniform*(compiler_upper_bound: compiler_uint32_t): compiler_uint32_t {.
    cdecl, importc: "arc4random_uniform".}
proc reallocarray*(compiler_ptr: pointer; compiler_nmemb: csize_t;
                   compiler_size: csize_t): pointer {.cdecl,
    importc: "reallocarray".}
proc alloca*(compiler_size: culong): pointer {.cdecl, importc: "alloca".}
proc valloc*(compiler_size: csize_t): pointer {.cdecl, importc: "valloc".}
proc posix_memalign*(compiler_memptr: ptr pointer; compiler_alignment: csize_t;
                     compiler_size: csize_t): cint {.cdecl,
    importc: "posix_memalign".}
proc aligned_alloc*(compiler_alignment: culong; compiler_size: culong): pointer {.
    cdecl, importc: "aligned_alloc".}
proc abort*(): void {.cdecl, importc: "abort".}
proc atexit*(compiler_func: proc (): void {.cdecl.}): cint {.cdecl,
    importc: "atexit".}
proc at_quick_exit*(compiler_func: proc (): void {.cdecl.}): cint {.cdecl,
    importc: "at_quick_exit".}
proc on_exit*(compiler_func: proc (a0: cint; a1: pointer): void {.cdecl.};
              compiler_arg: pointer): cint {.cdecl, importc: "on_exit".}
proc exit*(compiler_status: cint): void {.cdecl, importc: "exit".}
proc quick_exit*(compiler_status: cint): void {.cdecl, importc: "quick_exit".}
proc internal_Exit*(compiler_status: cint): void {.cdecl, importc: "_Exit".}
proc getenv*(compiler_name: cstring): cstring {.cdecl, importc: "getenv".}
proc putenv*(compiler_string: cstring): cint {.cdecl, importc: "putenv".}
proc setenv*(compiler_name: cstring; compiler_value: cstring;
             compiler_replace: cint): cint {.cdecl, importc: "setenv".}
proc unsetenv*(compiler_name: cstring): cint {.cdecl, importc: "unsetenv".}
proc clearenv*(): cint {.cdecl, importc: "clearenv".}
proc mktemp*(compiler_template: cstring): cstring {.cdecl, importc: "mktemp".}
proc mkstemp*(compiler_template: cstring): cint {.cdecl, importc: "mkstemp".}
proc mkstemps*(compiler_template: cstring; compiler_suffixlen: cint): cint {.
    cdecl, importc: "mkstemps".}
proc mkdtemp*(compiler_template: cstring): cstring {.cdecl, importc: "mkdtemp".}
proc system*(compiler_command: cstring): cint {.cdecl, importc: "system".}
proc realpath*(compiler_name: cstring; compiler_resolved: cstring): cstring {.
    cdecl, importc: "realpath".}
proc bsearch*(compiler_key: pointer; compiler_base: pointer;
              compiler_nmemb: csize_t; compiler_size: csize_t;
              compiler_compar: compiler_compar_fn_t): pointer {.cdecl,
    importc: "bsearch".}
proc qsort*(compiler_base: pointer; compiler_nmemb: csize_t;
            compiler_size: csize_t; compiler_compar: compiler_compar_fn_t): void {.
    cdecl, importc: "qsort".}
proc abs*(compiler_x: cint): cint {.cdecl, importc: "abs".}
proc labs*(compiler_x: clong): clong {.cdecl, importc: "labs".}
proc llabs*(compiler_x: clonglong): clonglong {.cdecl, importc: "llabs".}
proc div_proc*(compiler_numer: cint; compiler_denom: cint): div_t {.cdecl,
    importc: "div".}
proc ldiv*(compiler_numer: clong; compiler_denom: clong): ldiv_t {.cdecl,
    importc: "ldiv".}
proc lldiv*(compiler_numer: clonglong; compiler_denom: clonglong): lldiv_t {.
    cdecl, importc: "lldiv".}
proc ecvt*(compiler_value: cdouble; compiler_ndigit: cint;
           compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "ecvt".}
proc fcvt*(compiler_value: cdouble; compiler_ndigit: cint;
           compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "fcvt".}
proc gcvt*(compiler_value: cdouble; compiler_ndigit: cint; compiler_buf: cstring): cstring {.
    cdecl, importc: "gcvt".}
proc qecvt*(compiler_value: clongdouble; compiler_ndigit: cint;
            compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "qecvt".}
proc qfcvt*(compiler_value: clongdouble; compiler_ndigit: cint;
            compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "qfcvt".}
proc qgcvt*(compiler_value: clongdouble; compiler_ndigit: cint;
            compiler_buf: cstring): cstring {.cdecl, importc: "qgcvt".}
proc ecvt_r*(compiler_value: cdouble; compiler_ndigit: cint;
             compiler_decpt: ptr cint; compiler_sign: ptr cint;
             compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "ecvt_r".}
proc fcvt_r*(compiler_value: cdouble; compiler_ndigit: cint;
             compiler_decpt: ptr cint; compiler_sign: ptr cint;
             compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "fcvt_r".}
proc qecvt_r*(compiler_value: clongdouble; compiler_ndigit: cint;
              compiler_decpt: ptr cint; compiler_sign: ptr cint;
              compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "qecvt_r".}
proc qfcvt_r*(compiler_value: clongdouble; compiler_ndigit: cint;
              compiler_decpt: ptr cint; compiler_sign: ptr cint;
              compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "qfcvt_r".}
proc mblen*(compiler_s: cstring; compiler_n: csize_t): cint {.cdecl,
    importc: "mblen".}
proc mbtowc*(compiler_pwc: ptr wchar_t; compiler_s: cstring; compiler_n: csize_t): cint {.
    cdecl, importc: "mbtowc".}
proc wctomb*(compiler_s: cstring; compiler_wchar: wchar_t): cint {.cdecl,
    importc: "wctomb".}
proc mbstowcs*(compiler_pwcs: ptr wchar_t; compiler_s: cstring;
               compiler_n: csize_t): csize_t {.cdecl, importc: "mbstowcs".}
proc wcstombs*(compiler_s: cstring; compiler_pwcs: ptr wchar_t;
               compiler_n: csize_t): csize_t {.cdecl, importc: "wcstombs".}
proc rpmatch*(compiler_response: cstring): cint {.cdecl, importc: "rpmatch".}
proc getsubopt*(compiler_optionp: ptr cstring; compiler_tokens: ptr cstring;
                compiler_valuep: ptr cstring): cint {.cdecl,
    importc: "getsubopt".}
proc getloadavg*(compiler_loadavg: ptr UncheckedArray[cdouble];
                 compiler_nelem: cint): cint {.cdecl, importc: "getloadavg".}
proc memcpy*(compiler_dest: pointer; compiler_src: pointer; compiler_n: culong): pointer {.
    cdecl, importc: "memcpy".}
proc memmove*(compiler_dest: pointer; compiler_src: pointer; compiler_n: culong): pointer {.
    cdecl, importc: "memmove".}
proc memccpy*(compiler_dest: pointer; compiler_src: pointer; compiler_c: cint;
              compiler_n: culong): pointer {.cdecl, importc: "memccpy".}
proc memset*(compiler_s: pointer; compiler_c: cint; compiler_n: culong): pointer {.
    cdecl, importc: "memset".}
proc memcmp*(compiler_s1: pointer; compiler_s2: pointer; compiler_n: culong): cint {.
    cdecl, importc: "memcmp".}
proc compiler_memcmpeq*(compiler_s1: pointer; compiler_s2: pointer;
                        compiler_n: csize_t): cint {.cdecl,
    importc: "__memcmpeq".}
proc memchr*(compiler_s: pointer; compiler_c: cint; compiler_n: culong): pointer {.
    cdecl, importc: "memchr".}
proc strcpy*(compiler_dest: cstring; compiler_src: cstring): cstring {.cdecl,
    importc: "strcpy".}
proc strncpy*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): cstring {.
    cdecl, importc: "strncpy".}
proc strcat*(compiler_dest: cstring; compiler_src: cstring): cstring {.cdecl,
    importc: "strcat".}
proc strncat*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): cstring {.
    cdecl, importc: "strncat".}
proc strcmp*(compiler_s1: cstring; compiler_s2: cstring): cint {.cdecl,
    importc: "strcmp".}
proc strncmp*(compiler_s1: cstring; compiler_s2: cstring; compiler_n: culong): cint {.
    cdecl, importc: "strncmp".}
proc strcoll*(compiler_s1: cstring; compiler_s2: cstring): cint {.cdecl,
    importc: "strcoll".}
proc strxfrm*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): culong {.
    cdecl, importc: "strxfrm".}
proc strcoll_l*(compiler_s1: cstring; compiler_s2: cstring; compiler_l: locale_t): cint {.
    cdecl, importc: "strcoll_l".}
proc strxfrm_l*(compiler_dest: cstring; compiler_src: cstring;
                compiler_n: csize_t; compiler_l: locale_t): csize_t {.cdecl,
    importc: "strxfrm_l".}
proc strndup*(compiler_string: cstring; compiler_n: culong): cstring {.cdecl,
    importc: "strndup".}
proc strchr*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "strchr".}
proc strrchr*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "strrchr".}
proc strchrnul*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "strchrnul".}
proc strcspn*(compiler_s: cstring; compiler_reject: cstring): culong {.cdecl,
    importc: "strcspn".}
proc strspn*(compiler_s: cstring; compiler_accept: cstring): culong {.cdecl,
    importc: "strspn".}
proc strpbrk*(compiler_s: cstring; compiler_accept: cstring): cstring {.cdecl,
    importc: "strpbrk".}
proc strstr*(compiler_haystack: cstring; compiler_needle: cstring): cstring {.
    cdecl, importc: "strstr".}
proc strtok*(compiler_s: cstring; compiler_delim: cstring): cstring {.cdecl,
    importc: "strtok".}
proc compiler_strtok_r*(compiler_s: cstring; compiler_delim: cstring;
                        compiler_save_ptr: ptr cstring): cstring {.cdecl,
    importc: "__strtok_r".}
proc strtok_r*(compiler_s: cstring; compiler_delim: cstring;
               compiler_save_ptr: ptr cstring): cstring {.cdecl,
    importc: "strtok_r".}
proc strcasestr*(compiler_haystack: cstring; compiler_needle: cstring): cstring {.
    cdecl, importc: "strcasestr".}
proc memmem*(compiler_haystack: pointer; compiler_haystacklen: csize_t;
             compiler_needle: pointer; compiler_needlelen: csize_t): pointer {.
    cdecl, importc: "memmem".}
proc compiler_mempcpy*(compiler_dest: pointer; compiler_src: pointer;
                       compiler_n: csize_t): pointer {.cdecl,
    importc: "__mempcpy".}
proc mempcpy*(compiler_dest: pointer; compiler_src: pointer; compiler_n: culong): pointer {.
    cdecl, importc: "mempcpy".}
proc strlen*(compiler_s: cstring): culong {.cdecl, importc: "strlen".}
proc strnlen*(compiler_string: cstring; compiler_maxlen: csize_t): csize_t {.
    cdecl, importc: "strnlen".}
proc strerror*(compiler_errnum: cint): cstring {.cdecl, importc: "strerror".}
proc strerror_r*(compiler_errnum: cint; compiler_buf: cstring;
                 compiler_buflen: csize_t): cint {.cdecl, importc: "strerror_r".}
proc strerror_l*(compiler_errnum: cint; compiler_l: locale_t): cstring {.cdecl,
    importc: "strerror_l".}
proc bcmp*(compiler_s1: pointer; compiler_s2: pointer; compiler_n: culong): cint {.
    cdecl, importc: "bcmp".}
proc bcopy*(compiler_src: pointer; compiler_dest: pointer; compiler_n: culong): void {.
    cdecl, importc: "bcopy".}
proc bzero*(compiler_s: pointer; compiler_n: culong): void {.cdecl,
    importc: "bzero".}
proc index*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "index".}
proc rindex*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "rindex".}
proc ffs*(compiler_i: cint): cint {.cdecl, importc: "ffs".}
proc ffsl*(compiler_l: clong): cint {.cdecl, importc: "ffsl".}
proc ffsll*(compiler_ll: clonglong): cint {.cdecl, importc: "ffsll".}
proc strcasecmp*(compiler_s1: cstring; compiler_s2: cstring): cint {.cdecl,
    importc: "strcasecmp".}
proc strncasecmp*(compiler_s1: cstring; compiler_s2: cstring; compiler_n: culong): cint {.
    cdecl, importc: "strncasecmp".}
proc strcasecmp_l*(compiler_s1: cstring; compiler_s2: cstring;
                   compiler_loc: locale_t): cint {.cdecl,
    importc: "strcasecmp_l".}
proc strncasecmp_l*(compiler_s1: cstring; compiler_s2: cstring;
                    compiler_n: csize_t; compiler_loc: locale_t): cint {.cdecl,
    importc: "strncasecmp_l".}
proc explicit_bzero*(compiler_s: pointer; compiler_n: csize_t): void {.cdecl,
    importc: "explicit_bzero".}
proc strsep*(compiler_stringp: ptr cstring; compiler_delim: cstring): cstring {.
    cdecl, importc: "strsep".}
proc strsignal*(compiler_sig: cint): cstring {.cdecl, importc: "strsignal".}
proc compiler_stpcpy*(compiler_dest: cstring; compiler_src: cstring): cstring {.
    cdecl, importc: "__stpcpy".}
proc stpcpy*(compiler_dest: cstring; compiler_src: cstring): cstring {.cdecl,
    importc: "stpcpy".}
proc compiler_stpncpy*(compiler_dest: cstring; compiler_src: cstring;
                       compiler_n: csize_t): cstring {.cdecl,
    importc: "__stpncpy".}
proc stpncpy*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): cstring {.
    cdecl, importc: "stpncpy".}
proc strlcpy*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): culong {.
    cdecl, importc: "strlcpy".}
proc strlcat*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): culong {.
    cdecl, importc: "strlcat".}
proc Memento_checkBlock*(a0: pointer): cint {.cdecl,
    importc: "Memento_checkBlock".}
proc Memento_checkAllMemory*(): cint {.cdecl, importc: "Memento_checkAllMemory".}
proc Memento_check*(): cint {.cdecl, importc: "Memento_check".}
proc Memento_setParanoia*(a0: cint): cint {.cdecl,
    importc: "Memento_setParanoia".}
proc Memento_paranoidAt*(a0: cint): cint {.cdecl, importc: "Memento_paranoidAt".}
proc Memento_breakAt*(a0: cint): cint {.cdecl, importc: "Memento_breakAt".}
proc Memento_breakOnFree*(a: pointer): void {.cdecl,
    importc: "Memento_breakOnFree".}
proc Memento_breakOnRealloc*(a: pointer): void {.cdecl,
    importc: "Memento_breakOnRealloc".}
proc Memento_getBlockNum*(a0: pointer): cint {.cdecl,
    importc: "Memento_getBlockNum".}
proc Memento_find*(a: pointer): cint {.cdecl, importc: "Memento_find".}
proc Memento_breakpoint*(): void {.cdecl, importc: "Memento_breakpoint".}
proc Memento_failAt*(a0: cint): cint {.cdecl, importc: "Memento_failAt".}
proc Memento_failThisEvent*(): cint {.cdecl, importc: "Memento_failThisEvent".}
proc Memento_listBlocks*(): void {.cdecl, importc: "Memento_listBlocks".}
proc Memento_listNewBlocks*(): void {.cdecl, importc: "Memento_listNewBlocks".}
proc Memento_listLargeBlocks*(): void {.cdecl,
                                        importc: "Memento_listLargeBlocks".}
proc Memento_listPhasedBlocks*(): void {.cdecl,
    importc: "Memento_listPhasedBlocks".}
proc Memento_setMax*(a0: csize_t): csize_t {.cdecl, importc: "Memento_setMax".}
proc Memento_stats*(): void {.cdecl, importc: "Memento_stats".}
proc Memento_label*(a0: pointer; a1: cstring): pointer {.cdecl,
    importc: "Memento_label".}
proc Memento_tick*(): void {.cdecl, importc: "Memento_tick".}
proc Memento_setVerbose*(a0: cint): cint {.cdecl, importc: "Memento_setVerbose".}
proc Memento_addBacktraceLimitFnname*(fnname: cstring): cint {.cdecl,
    importc: "Memento_addBacktraceLimitFnname".}
proc Memento_setAtexitFin*(atexitfin: cint): cint {.cdecl,
    importc: "Memento_setAtexitFin".}
proc Memento_setIgnoreNewDelete*(ignore: cint): cint {.cdecl,
    importc: "Memento_setIgnoreNewDelete".}
proc Memento_info*(addr_arg: pointer): void {.cdecl, importc: "Memento_info".}
proc Memento_listBlockInfo*(): void {.cdecl, importc: "Memento_listBlockInfo".}
proc Memento_blockInfo*(blk: pointer): void {.cdecl,
    importc: "Memento_blockInfo".}
proc Memento_takeByteRef*(blk: pointer): pointer {.cdecl,
    importc: "Memento_takeByteRef".}
proc Memento_dropByteRef*(blk: pointer): pointer {.cdecl,
    importc: "Memento_dropByteRef".}
proc Memento_takeShortRef*(blk: pointer): pointer {.cdecl,
    importc: "Memento_takeShortRef".}
proc Memento_dropShortRef*(blk: pointer): pointer {.cdecl,
    importc: "Memento_dropShortRef".}
proc Memento_takeIntRef*(blk: pointer): pointer {.cdecl,
    importc: "Memento_takeIntRef".}
proc Memento_dropIntRef*(blk: pointer): pointer {.cdecl,
    importc: "Memento_dropIntRef".}
proc Memento_takeRef*(blk: pointer): pointer {.cdecl, importc: "Memento_takeRef".}
proc Memento_dropRef*(blk: pointer): pointer {.cdecl, importc: "Memento_dropRef".}
proc Memento_adjustRef*(blk: pointer; adjust: cint): pointer {.cdecl,
    importc: "Memento_adjustRef".}
proc Memento_reference*(blk: pointer): pointer {.cdecl,
    importc: "Memento_reference".}
proc Memento_checkPointerOrNull*(blk: pointer): cint {.cdecl,
    importc: "Memento_checkPointerOrNull".}
proc Memento_checkBytePointerOrNull*(blk: pointer): cint {.cdecl,
    importc: "Memento_checkBytePointerOrNull".}
proc Memento_checkShortPointerOrNull*(blk: pointer): cint {.cdecl,
    importc: "Memento_checkShortPointerOrNull".}
proc Memento_checkIntPointerOrNull*(blk: pointer): cint {.cdecl,
    importc: "Memento_checkIntPointerOrNull".}
proc Memento_startLeaking*(): void {.cdecl, importc: "Memento_startLeaking".}
proc Memento_stopLeaking*(): void {.cdecl, importc: "Memento_stopLeaking".}
proc Memento_sequence*(): cint {.cdecl, importc: "Memento_sequence".}
proc Memento_squeezing*(): cint {.cdecl, importc: "Memento_squeezing".}
proc Memento_fin*(): void {.cdecl, importc: "Memento_fin".}
proc Memento_bt*(): void {.cdecl, importc: "Memento_bt".}
proc Memento_cpp_new*(size: csize_t): pointer {.cdecl,
    importc: "Memento_cpp_new".}
proc Memento_cpp_delete*(pointer: pointer): void {.cdecl,
    importc: "Memento_cpp_delete".}
proc Memento_cpp_new_array*(size: csize_t): pointer {.cdecl,
    importc: "Memento_cpp_new_array".}
proc Memento_cpp_delete_array*(pointer: pointer): void {.cdecl,
    importc: "Memento_cpp_delete_array".}
proc Memento_showHash*(hash: cuint): void {.cdecl, importc: "Memento_showHash".}
proc fz_stat_ctime*(path: cstring): int64 {.cdecl, importc: "fz_stat_ctime".}
proc fz_stat_mtime*(path: cstring): int64 {.cdecl, importc: "fz_stat_mtime".}
proc fz_mkdir*(path: cstring): cint {.cdecl, importc: "fz_mkdir".}
proc compiler_fpclassify*(compiler_value: cdouble): cint {.cdecl,
    importc: "__fpclassify".}
proc compiler_signbit*(compiler_value: cdouble): cint {.cdecl,
    importc: "__signbit".}
proc compiler_isinf*(compiler_value: cdouble): cint {.cdecl, importc: "__isinf".}
proc compiler_finite*(compiler_value: cdouble): cint {.cdecl,
    importc: "__finite".}
proc compiler_isnan*(compiler_value: cdouble): cint {.cdecl, importc: "__isnan".}
proc compiler_iseqsig*(compiler_x: cdouble; compiler_y: cdouble): cint {.cdecl,
    importc: "__iseqsig".}
proc compiler_issignaling*(compiler_value: cdouble): cint {.cdecl,
    importc: "__issignaling".}
proc acos*(compiler_x: cdouble): cdouble {.cdecl, importc: "acos".}
proc compiler_acos*(compiler_x: cdouble): cdouble {.cdecl, importc: "__acos".}
proc asin*(compiler_x: cdouble): cdouble {.cdecl, importc: "asin".}
proc compiler_asin*(compiler_x: cdouble): cdouble {.cdecl, importc: "__asin".}
proc atan*(compiler_x: cdouble): cdouble {.cdecl, importc: "atan".}
proc compiler_atan*(compiler_x: cdouble): cdouble {.cdecl, importc: "__atan".}
proc atan2*(compiler_y: cdouble; compiler_x: cdouble): cdouble {.cdecl,
    importc: "atan2".}
proc compiler_atan2*(compiler_y: cdouble; compiler_x: cdouble): cdouble {.cdecl,
    importc: "__atan2".}
proc cos*(compiler_x: cdouble): cdouble {.cdecl, importc: "cos".}
proc compiler_cos*(compiler_x: cdouble): cdouble {.cdecl, importc: "__cos".}
proc sin*(compiler_x: cdouble): cdouble {.cdecl, importc: "sin".}
proc compiler_sin*(compiler_x: cdouble): cdouble {.cdecl, importc: "__sin".}
proc tan*(compiler_x: cdouble): cdouble {.cdecl, importc: "tan".}
proc compiler_tan*(compiler_x: cdouble): cdouble {.cdecl, importc: "__tan".}
proc cosh*(compiler_x: cdouble): cdouble {.cdecl, importc: "cosh".}
proc compiler_cosh*(compiler_x: cdouble): cdouble {.cdecl, importc: "__cosh".}
proc sinh*(compiler_x: cdouble): cdouble {.cdecl, importc: "sinh".}
proc compiler_sinh*(compiler_x: cdouble): cdouble {.cdecl, importc: "__sinh".}
proc tanh*(compiler_x: cdouble): cdouble {.cdecl, importc: "tanh".}
proc compiler_tanh*(compiler_x: cdouble): cdouble {.cdecl, importc: "__tanh".}
proc acosh*(compiler_x: cdouble): cdouble {.cdecl, importc: "acosh".}
proc compiler_acosh*(compiler_x: cdouble): cdouble {.cdecl, importc: "__acosh".}
proc asinh*(compiler_x: cdouble): cdouble {.cdecl, importc: "asinh".}
proc compiler_asinh*(compiler_x: cdouble): cdouble {.cdecl, importc: "__asinh".}
proc atanh*(compiler_x: cdouble): cdouble {.cdecl, importc: "atanh".}
proc compiler_atanh*(compiler_x: cdouble): cdouble {.cdecl, importc: "__atanh".}
proc exp*(compiler_x: cdouble): cdouble {.cdecl, importc: "exp".}
proc compiler_exp*(compiler_x: cdouble): cdouble {.cdecl, importc: "__exp".}
proc frexp*(compiler_x: cdouble; compiler_exponent: ptr cint): cdouble {.cdecl,
    importc: "frexp".}
proc compiler_frexp*(compiler_x: cdouble; compiler_exponent: ptr cint): cdouble {.
    cdecl, importc: "__frexp".}
proc ldexp*(compiler_x: cdouble; compiler_exponent: cint): cdouble {.cdecl,
    importc: "ldexp".}
proc compiler_ldexp*(compiler_x: cdouble; compiler_exponent: cint): cdouble {.
    cdecl, importc: "__ldexp".}
proc log*(compiler_x: cdouble): cdouble {.cdecl, importc: "log".}
proc compiler_log*(compiler_x: cdouble): cdouble {.cdecl, importc: "__log".}
proc log10*(compiler_x: cdouble): cdouble {.cdecl, importc: "log10".}
proc compiler_log10*(compiler_x: cdouble): cdouble {.cdecl, importc: "__log10".}
proc modf*(compiler_x: cdouble; compiler_iptr: ptr cdouble): cdouble {.cdecl,
    importc: "modf".}
proc compiler_modf*(compiler_x: cdouble; compiler_iptr: ptr cdouble): cdouble {.
    cdecl, importc: "__modf".}
proc expm1*(compiler_x: cdouble): cdouble {.cdecl, importc: "expm1".}
proc compiler_expm1*(compiler_x: cdouble): cdouble {.cdecl, importc: "__expm1".}
proc log1p*(compiler_x: cdouble): cdouble {.cdecl, importc: "log1p".}
proc compiler_log1p*(compiler_x: cdouble): cdouble {.cdecl, importc: "__log1p".}
proc logb*(compiler_x: cdouble): cdouble {.cdecl, importc: "logb".}
proc compiler_logb*(compiler_x: cdouble): cdouble {.cdecl, importc: "__logb".}
proc exp2*(compiler_x: cdouble): cdouble {.cdecl, importc: "exp2".}
proc compiler_exp2*(compiler_x: cdouble): cdouble {.cdecl, importc: "__exp2".}
proc log2*(compiler_x: cdouble): cdouble {.cdecl, importc: "log2".}
proc compiler_log2*(compiler_x: cdouble): cdouble {.cdecl, importc: "__log2".}
proc pow*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "pow".}
proc compiler_pow*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "__pow".}
proc sqrt*(compiler_x: cdouble): cdouble {.cdecl, importc: "sqrt".}
proc compiler_sqrt*(compiler_x: cdouble): cdouble {.cdecl, importc: "__sqrt".}
proc hypot*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "hypot".}
proc compiler_hypot*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "__hypot".}
proc cbrt*(compiler_x: cdouble): cdouble {.cdecl, importc: "cbrt".}
proc compiler_cbrt*(compiler_x: cdouble): cdouble {.cdecl, importc: "__cbrt".}
proc ceil*(compiler_x: cdouble): cdouble {.cdecl, importc: "ceil".}
proc fabs*(compiler_x: cdouble): cdouble {.cdecl, importc: "fabs".}
proc floor*(compiler_x: cdouble): cdouble {.cdecl, importc: "floor".}
proc fmod*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "fmod".}
proc compiler_fmod*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "__fmod".}
proc isinf*(compiler_value: cdouble): cint {.cdecl, importc: "isinf".}
proc finite*(compiler_value: cdouble): cint {.cdecl, importc: "finite".}
proc drem*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "drem".}
proc compiler_drem*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "__drem".}
proc significand*(compiler_x: cdouble): cdouble {.cdecl, importc: "significand".}
proc compiler_significand*(compiler_x: cdouble): cdouble {.cdecl,
    importc: "__significand".}
proc copysign*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "copysign".}
proc nan*(compiler_tagb: cstring): cdouble {.cdecl, importc: "nan".}
proc compiler_nan*(compiler_tagb: cstring): cdouble {.cdecl, importc: "__nan".}
proc isnan*(compiler_value: cdouble): cint {.cdecl, importc: "isnan".}
proc j0*(a0: cdouble): cdouble {.cdecl, importc: "j0".}
proc compiler_j0*(a0: cdouble): cdouble {.cdecl, importc: "__j0".}
proc j1*(a0: cdouble): cdouble {.cdecl, importc: "j1".}
proc compiler_j1*(a0: cdouble): cdouble {.cdecl, importc: "__j1".}
proc jn*(a0: cint; a1: cdouble): cdouble {.cdecl, importc: "jn".}
proc compiler_jn*(a0: cint; a1: cdouble): cdouble {.cdecl, importc: "__jn".}
proc y0*(a0: cdouble): cdouble {.cdecl, importc: "y0".}
proc compiler_y0*(a0: cdouble): cdouble {.cdecl, importc: "__y0".}
proc y1*(a0: cdouble): cdouble {.cdecl, importc: "y1".}
proc compiler_y1*(a0: cdouble): cdouble {.cdecl, importc: "__y1".}
proc yn*(a0: cint; a1: cdouble): cdouble {.cdecl, importc: "yn".}
proc compiler_yn*(a0: cint; a1: cdouble): cdouble {.cdecl, importc: "__yn".}
proc erf*(a0: cdouble): cdouble {.cdecl, importc: "erf".}
proc compiler_erf*(a0: cdouble): cdouble {.cdecl, importc: "__erf".}
proc erfc*(a0: cdouble): cdouble {.cdecl, importc: "erfc".}
proc compiler_erfc*(a0: cdouble): cdouble {.cdecl, importc: "__erfc".}
proc lgamma*(a0: cdouble): cdouble {.cdecl, importc: "lgamma".}
proc compiler_lgamma*(a0: cdouble): cdouble {.cdecl, importc: "__lgamma".}
proc tgamma*(a0: cdouble): cdouble {.cdecl, importc: "tgamma".}
proc compiler_tgamma*(a0: cdouble): cdouble {.cdecl, importc: "__tgamma".}
proc gamma*(a0: cdouble): cdouble {.cdecl, importc: "gamma".}
proc compiler_gamma*(a0: cdouble): cdouble {.cdecl, importc: "__gamma".}
proc lgamma_r*(a0: cdouble; compiler_signgamp: ptr cint): cdouble {.cdecl,
    importc: "lgamma_r".}
proc compiler_lgamma_r*(a0: cdouble; compiler_signgamp: ptr cint): cdouble {.
    cdecl, importc: "__lgamma_r".}
proc rint*(compiler_x: cdouble): cdouble {.cdecl, importc: "rint".}
proc compiler_rint*(compiler_x: cdouble): cdouble {.cdecl, importc: "__rint".}
proc nextafter*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "nextafter".}
proc compiler_nextafter*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.
    cdecl, importc: "__nextafter".}
proc nexttoward*(compiler_x: cdouble; compiler_y: clongdouble): cdouble {.cdecl,
    importc: "nexttoward".}
proc compiler_nexttoward*(compiler_x: cdouble; compiler_y: clongdouble): cdouble {.
    cdecl, importc: "__nexttoward".}
proc remainder*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "remainder".}
proc compiler_remainder*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.
    cdecl, importc: "__remainder".}
proc scalbn*(compiler_x: cdouble; compiler_n: cint): cdouble {.cdecl,
    importc: "scalbn".}
proc compiler_scalbn*(compiler_x: cdouble; compiler_n: cint): cdouble {.cdecl,
    importc: "__scalbn".}
proc ilogb*(compiler_x: cdouble): cint {.cdecl, importc: "ilogb".}
proc compiler_ilogb*(compiler_x: cdouble): cint {.cdecl, importc: "__ilogb".}
proc scalbln*(compiler_x: cdouble; compiler_n: clong): cdouble {.cdecl,
    importc: "scalbln".}
proc compiler_scalbln*(compiler_x: cdouble; compiler_n: clong): cdouble {.cdecl,
    importc: "__scalbln".}
proc nearbyint*(compiler_x: cdouble): cdouble {.cdecl, importc: "nearbyint".}
proc compiler_nearbyint*(compiler_x: cdouble): cdouble {.cdecl,
    importc: "__nearbyint".}
proc round*(compiler_x: cdouble): cdouble {.cdecl, importc: "round".}
proc trunc*(compiler_x: cdouble): cdouble {.cdecl, importc: "trunc".}
proc remquo*(compiler_x: cdouble; compiler_y: cdouble; compiler_quo: ptr cint): cdouble {.
    cdecl, importc: "remquo".}
proc compiler_remquo*(compiler_x: cdouble; compiler_y: cdouble;
                      compiler_quo: ptr cint): cdouble {.cdecl,
    importc: "__remquo".}
proc lrint*(compiler_x: cdouble): clong {.cdecl, importc: "lrint".}
proc compiler_lrint*(compiler_x: cdouble): clong {.cdecl, importc: "__lrint".}
proc llrint*(compiler_x: cdouble): clonglong {.cdecl, importc: "llrint".}
proc compiler_llrint*(compiler_x: cdouble): clonglong {.cdecl,
    importc: "__llrint".}
proc lround*(compiler_x: cdouble): clong {.cdecl, importc: "lround".}
proc compiler_lround*(compiler_x: cdouble): clong {.cdecl, importc: "__lround".}
proc llround*(compiler_x: cdouble): clonglong {.cdecl, importc: "llround".}
proc compiler_llround*(compiler_x: cdouble): clonglong {.cdecl,
    importc: "__llround".}
proc fdim*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "fdim".}
proc compiler_fdim*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "__fdim".}
proc fmax*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "fmax".}
proc fmin*(compiler_x: cdouble; compiler_y: cdouble): cdouble {.cdecl,
    importc: "fmin".}
proc fma*(compiler_x: cdouble; compiler_y: cdouble; compiler_z: cdouble): cdouble {.
    cdecl, importc: "fma".}
proc compiler_fma*(compiler_x: cdouble; compiler_y: cdouble; compiler_z: cdouble): cdouble {.
    cdecl, importc: "__fma".}
proc scalb*(compiler_x: cdouble; compiler_n: cdouble): cdouble {.cdecl,
    importc: "scalb".}
proc compiler_scalb*(compiler_x: cdouble; compiler_n: cdouble): cdouble {.cdecl,
    importc: "__scalb".}
proc compiler_fpclassifyf*(compiler_value: cfloat): cint {.cdecl,
    importc: "__fpclassifyf".}
proc compiler_signbitf*(compiler_value: cfloat): cint {.cdecl,
    importc: "__signbitf".}
proc compiler_isinff*(compiler_value: cfloat): cint {.cdecl, importc: "__isinff".}
proc compiler_finitef*(compiler_value: cfloat): cint {.cdecl,
    importc: "__finitef".}
proc compiler_isnanf*(compiler_value: cfloat): cint {.cdecl, importc: "__isnanf".}
proc compiler_iseqsigf*(compiler_x: cfloat; compiler_y: cfloat): cint {.cdecl,
    importc: "__iseqsigf".}
proc compiler_issignalingf*(compiler_value: cfloat): cint {.cdecl,
    importc: "__issignalingf".}
proc acosf*(compiler_x: cfloat): cfloat {.cdecl, importc: "acosf".}
proc compiler_acosf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__acosf".}
proc asinf*(compiler_x: cfloat): cfloat {.cdecl, importc: "asinf".}
proc compiler_asinf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__asinf".}
proc atanf*(compiler_x: cfloat): cfloat {.cdecl, importc: "atanf".}
proc compiler_atanf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__atanf".}
proc atan2f*(compiler_y: cfloat; compiler_x: cfloat): cfloat {.cdecl,
    importc: "atan2f".}
proc compiler_atan2f*(compiler_y: cfloat; compiler_x: cfloat): cfloat {.cdecl,
    importc: "__atan2f".}
proc cosf*(compiler_x: cfloat): cfloat {.cdecl, importc: "cosf".}
proc compiler_cosf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__cosf".}
proc sinf*(compiler_x: cfloat): cfloat {.cdecl, importc: "sinf".}
proc compiler_sinf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__sinf".}
proc tanf*(compiler_x: cfloat): cfloat {.cdecl, importc: "tanf".}
proc compiler_tanf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__tanf".}
proc coshf*(compiler_x: cfloat): cfloat {.cdecl, importc: "coshf".}
proc compiler_coshf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__coshf".}
proc sinhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "sinhf".}
proc compiler_sinhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__sinhf".}
proc tanhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "tanhf".}
proc compiler_tanhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__tanhf".}
proc acoshf*(compiler_x: cfloat): cfloat {.cdecl, importc: "acoshf".}
proc compiler_acoshf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__acoshf".}
proc asinhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "asinhf".}
proc compiler_asinhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__asinhf".}
proc atanhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "atanhf".}
proc compiler_atanhf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__atanhf".}
proc expf*(compiler_x: cfloat): cfloat {.cdecl, importc: "expf".}
proc compiler_expf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__expf".}
proc frexpf*(compiler_x: cfloat; compiler_exponent: ptr cint): cfloat {.cdecl,
    importc: "frexpf".}
proc compiler_frexpf*(compiler_x: cfloat; compiler_exponent: ptr cint): cfloat {.
    cdecl, importc: "__frexpf".}
proc ldexpf*(compiler_x: cfloat; compiler_exponent: cint): cfloat {.cdecl,
    importc: "ldexpf".}
proc compiler_ldexpf*(compiler_x: cfloat; compiler_exponent: cint): cfloat {.
    cdecl, importc: "__ldexpf".}
proc logf*(compiler_x: cfloat): cfloat {.cdecl, importc: "logf".}
proc compiler_logf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__logf".}
proc log10f*(compiler_x: cfloat): cfloat {.cdecl, importc: "log10f".}
proc compiler_log10f*(compiler_x: cfloat): cfloat {.cdecl, importc: "__log10f".}
proc modff*(compiler_x: cfloat; compiler_iptr: ptr cfloat): cfloat {.cdecl,
    importc: "modff".}
proc compiler_modff*(compiler_x: cfloat; compiler_iptr: ptr cfloat): cfloat {.
    cdecl, importc: "__modff".}
proc expm1f*(compiler_x: cfloat): cfloat {.cdecl, importc: "expm1f".}
proc compiler_expm1f*(compiler_x: cfloat): cfloat {.cdecl, importc: "__expm1f".}
proc log1pf*(compiler_x: cfloat): cfloat {.cdecl, importc: "log1pf".}
proc compiler_log1pf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__log1pf".}
proc logbf*(compiler_x: cfloat): cfloat {.cdecl, importc: "logbf".}
proc compiler_logbf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__logbf".}
proc exp2f*(compiler_x: cfloat): cfloat {.cdecl, importc: "exp2f".}
proc compiler_exp2f*(compiler_x: cfloat): cfloat {.cdecl, importc: "__exp2f".}
proc log2f*(compiler_x: cfloat): cfloat {.cdecl, importc: "log2f".}
proc compiler_log2f*(compiler_x: cfloat): cfloat {.cdecl, importc: "__log2f".}
proc powf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "powf".}
proc compiler_powf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "__powf".}
proc sqrtf*(compiler_x: cfloat): cfloat {.cdecl, importc: "sqrtf".}
proc compiler_sqrtf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__sqrtf".}
proc hypotf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "hypotf".}
proc compiler_hypotf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "__hypotf".}
proc cbrtf*(compiler_x: cfloat): cfloat {.cdecl, importc: "cbrtf".}
proc compiler_cbrtf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__cbrtf".}
proc ceilf*(compiler_x: cfloat): cfloat {.cdecl, importc: "ceilf".}
proc fabsf*(compiler_x: cfloat): cfloat {.cdecl, importc: "fabsf".}
proc floorf*(compiler_x: cfloat): cfloat {.cdecl, importc: "floorf".}
proc fmodf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "fmodf".}
proc compiler_fmodf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "__fmodf".}
proc isinff*(compiler_value: cfloat): cint {.cdecl, importc: "isinff".}
proc finitef*(compiler_value: cfloat): cint {.cdecl, importc: "finitef".}
proc dremf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "dremf".}
proc compiler_dremf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "__dremf".}
proc significandf*(compiler_x: cfloat): cfloat {.cdecl, importc: "significandf".}
proc compiler_significandf*(compiler_x: cfloat): cfloat {.cdecl,
    importc: "__significandf".}
proc copysignf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "copysignf".}
proc nanf*(compiler_tagb: cstring): cfloat {.cdecl, importc: "nanf".}
proc compiler_nanf*(compiler_tagb: cstring): cfloat {.cdecl, importc: "__nanf".}
proc isnanf*(compiler_value: cfloat): cint {.cdecl, importc: "isnanf".}
proc j0f*(a0: cfloat): cfloat {.cdecl, importc: "j0f".}
proc compiler_j0f*(a0: cfloat): cfloat {.cdecl, importc: "__j0f".}
proc j1f*(a0: cfloat): cfloat {.cdecl, importc: "j1f".}
proc compiler_j1f*(a0: cfloat): cfloat {.cdecl, importc: "__j1f".}
proc jnf*(a0: cint; a1: cfloat): cfloat {.cdecl, importc: "jnf".}
proc compiler_jnf*(a0: cint; a1: cfloat): cfloat {.cdecl, importc: "__jnf".}
proc y0f*(a0: cfloat): cfloat {.cdecl, importc: "y0f".}
proc compiler_y0f*(a0: cfloat): cfloat {.cdecl, importc: "__y0f".}
proc y1f*(a0: cfloat): cfloat {.cdecl, importc: "y1f".}
proc compiler_y1f*(a0: cfloat): cfloat {.cdecl, importc: "__y1f".}
proc ynf*(a0: cint; a1: cfloat): cfloat {.cdecl, importc: "ynf".}
proc compiler_ynf*(a0: cint; a1: cfloat): cfloat {.cdecl, importc: "__ynf".}
proc erff*(a0: cfloat): cfloat {.cdecl, importc: "erff".}
proc compiler_erff*(a0: cfloat): cfloat {.cdecl, importc: "__erff".}
proc erfcf*(a0: cfloat): cfloat {.cdecl, importc: "erfcf".}
proc compiler_erfcf*(a0: cfloat): cfloat {.cdecl, importc: "__erfcf".}
proc lgammaf*(a0: cfloat): cfloat {.cdecl, importc: "lgammaf".}
proc compiler_lgammaf*(a0: cfloat): cfloat {.cdecl, importc: "__lgammaf".}
proc tgammaf*(a0: cfloat): cfloat {.cdecl, importc: "tgammaf".}
proc compiler_tgammaf*(a0: cfloat): cfloat {.cdecl, importc: "__tgammaf".}
proc gammaf*(a0: cfloat): cfloat {.cdecl, importc: "gammaf".}
proc compiler_gammaf*(a0: cfloat): cfloat {.cdecl, importc: "__gammaf".}
proc lgammaf_r*(a0: cfloat; compiler_signgamp: ptr cint): cfloat {.cdecl,
    importc: "lgammaf_r".}
proc compiler_lgammaf_r*(a0: cfloat; compiler_signgamp: ptr cint): cfloat {.
    cdecl, importc: "__lgammaf_r".}
proc rintf*(compiler_x: cfloat): cfloat {.cdecl, importc: "rintf".}
proc compiler_rintf*(compiler_x: cfloat): cfloat {.cdecl, importc: "__rintf".}
proc nextafterf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "nextafterf".}
proc compiler_nextafterf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.
    cdecl, importc: "__nextafterf".}
proc nexttowardf*(compiler_x: cfloat; compiler_y: clongdouble): cfloat {.cdecl,
    importc: "nexttowardf".}
proc compiler_nexttowardf*(compiler_x: cfloat; compiler_y: clongdouble): cfloat {.
    cdecl, importc: "__nexttowardf".}
proc remainderf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "remainderf".}
proc compiler_remainderf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.
    cdecl, importc: "__remainderf".}
proc scalbnf*(compiler_x: cfloat; compiler_n: cint): cfloat {.cdecl,
    importc: "scalbnf".}
proc compiler_scalbnf*(compiler_x: cfloat; compiler_n: cint): cfloat {.cdecl,
    importc: "__scalbnf".}
proc ilogbf*(compiler_x: cfloat): cint {.cdecl, importc: "ilogbf".}
proc compiler_ilogbf*(compiler_x: cfloat): cint {.cdecl, importc: "__ilogbf".}
proc scalblnf*(compiler_x: cfloat; compiler_n: clong): cfloat {.cdecl,
    importc: "scalblnf".}
proc compiler_scalblnf*(compiler_x: cfloat; compiler_n: clong): cfloat {.cdecl,
    importc: "__scalblnf".}
proc nearbyintf*(compiler_x: cfloat): cfloat {.cdecl, importc: "nearbyintf".}
proc compiler_nearbyintf*(compiler_x: cfloat): cfloat {.cdecl,
    importc: "__nearbyintf".}
proc roundf*(compiler_x: cfloat): cfloat {.cdecl, importc: "roundf".}
proc truncf*(compiler_x: cfloat): cfloat {.cdecl, importc: "truncf".}
proc remquof*(compiler_x: cfloat; compiler_y: cfloat; compiler_quo: ptr cint): cfloat {.
    cdecl, importc: "remquof".}
proc compiler_remquof*(compiler_x: cfloat; compiler_y: cfloat;
                       compiler_quo: ptr cint): cfloat {.cdecl,
    importc: "__remquof".}
proc lrintf*(compiler_x: cfloat): clong {.cdecl, importc: "lrintf".}
proc compiler_lrintf*(compiler_x: cfloat): clong {.cdecl, importc: "__lrintf".}
proc llrintf*(compiler_x: cfloat): clonglong {.cdecl, importc: "llrintf".}
proc compiler_llrintf*(compiler_x: cfloat): clonglong {.cdecl,
    importc: "__llrintf".}
proc lroundf*(compiler_x: cfloat): clong {.cdecl, importc: "lroundf".}
proc compiler_lroundf*(compiler_x: cfloat): clong {.cdecl, importc: "__lroundf".}
proc llroundf*(compiler_x: cfloat): clonglong {.cdecl, importc: "llroundf".}
proc compiler_llroundf*(compiler_x: cfloat): clonglong {.cdecl,
    importc: "__llroundf".}
proc fdimf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "fdimf".}
proc compiler_fdimf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "__fdimf".}
proc fmaxf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "fmaxf".}
proc fminf*(compiler_x: cfloat; compiler_y: cfloat): cfloat {.cdecl,
    importc: "fminf".}
proc fmaf*(compiler_x: cfloat; compiler_y: cfloat; compiler_z: cfloat): cfloat {.
    cdecl, importc: "fmaf".}
proc compiler_fmaf*(compiler_x: cfloat; compiler_y: cfloat; compiler_z: cfloat): cfloat {.
    cdecl, importc: "__fmaf".}
proc scalbf*(compiler_x: cfloat; compiler_n: cfloat): cfloat {.cdecl,
    importc: "scalbf".}
proc compiler_scalbf*(compiler_x: cfloat; compiler_n: cfloat): cfloat {.cdecl,
    importc: "__scalbf".}
proc compiler_fpclassifyl*(compiler_value: clongdouble): cint {.cdecl,
    importc: "__fpclassifyl".}
proc compiler_signbitl*(compiler_value: clongdouble): cint {.cdecl,
    importc: "__signbitl".}
proc compiler_isinfl*(compiler_value: clongdouble): cint {.cdecl,
    importc: "__isinfl".}
proc compiler_finitel*(compiler_value: clongdouble): cint {.cdecl,
    importc: "__finitel".}
proc compiler_isnanl*(compiler_value: clongdouble): cint {.cdecl,
    importc: "__isnanl".}
proc compiler_iseqsigl*(compiler_x: clongdouble; compiler_y: clongdouble): cint {.
    cdecl, importc: "__iseqsigl".}
proc compiler_issignalingl*(compiler_value: clongdouble): cint {.cdecl,
    importc: "__issignalingl".}
proc acosl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "acosl".}
proc compiler_acosl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__acosl".}
proc asinl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "asinl".}
proc compiler_asinl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__asinl".}
proc atanl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "atanl".}
proc compiler_atanl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__atanl".}
proc atan2l*(compiler_y: clongdouble; compiler_x: clongdouble): clongdouble {.
    cdecl, importc: "atan2l".}
proc compiler_atan2l*(compiler_y: clongdouble; compiler_x: clongdouble): clongdouble {.
    cdecl, importc: "__atan2l".}
proc cosl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "cosl".}
proc compiler_cosl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__cosl".}
proc sinl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "sinl".}
proc compiler_sinl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__sinl".}
proc tanl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "tanl".}
proc compiler_tanl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__tanl".}
proc coshl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "coshl".}
proc compiler_coshl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__coshl".}
proc sinhl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "sinhl".}
proc compiler_sinhl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__sinhl".}
proc tanhl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "tanhl".}
proc compiler_tanhl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__tanhl".}
proc acoshl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "acoshl".}
proc compiler_acoshl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__acoshl".}
proc asinhl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "asinhl".}
proc compiler_asinhl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__asinhl".}
proc atanhl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "atanhl".}
proc compiler_atanhl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__atanhl".}
proc expl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "expl".}
proc compiler_expl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__expl".}
proc frexpl*(compiler_x: clongdouble; compiler_exponent: ptr cint): clongdouble {.
    cdecl, importc: "frexpl".}
proc compiler_frexpl*(compiler_x: clongdouble; compiler_exponent: ptr cint): clongdouble {.
    cdecl, importc: "__frexpl".}
proc ldexpl*(compiler_x: clongdouble; compiler_exponent: cint): clongdouble {.
    cdecl, importc: "ldexpl".}
proc compiler_ldexpl*(compiler_x: clongdouble; compiler_exponent: cint): clongdouble {.
    cdecl, importc: "__ldexpl".}
proc logl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "logl".}
proc compiler_logl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__logl".}
proc log10l*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "log10l".}
proc compiler_log10l*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__log10l".}
proc modfl*(compiler_x: clongdouble; compiler_iptr: ptr clongdouble): clongdouble {.
    cdecl, importc: "modfl".}
proc compiler_modfl*(compiler_x: clongdouble; compiler_iptr: ptr clongdouble): clongdouble {.
    cdecl, importc: "__modfl".}
proc expm1l*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "expm1l".}
proc compiler_expm1l*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__expm1l".}
proc log1pl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "log1pl".}
proc compiler_log1pl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__log1pl".}
proc logbl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "logbl".}
proc compiler_logbl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__logbl".}
proc exp2l*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "exp2l".}
proc compiler_exp2l*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__exp2l".}
proc log2l*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "log2l".}
proc compiler_log2l*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__log2l".}
proc powl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "powl".}
proc compiler_powl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__powl".}
proc sqrtl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "sqrtl".}
proc compiler_sqrtl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__sqrtl".}
proc hypotl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "hypotl".}
proc compiler_hypotl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__hypotl".}
proc cbrtl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "cbrtl".}
proc compiler_cbrtl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__cbrtl".}
proc ceill*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "ceill".}
proc fabsl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "fabsl".}
proc floorl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "floorl".}
proc fmodl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "fmodl".}
proc compiler_fmodl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__fmodl".}
proc isinfl*(compiler_value: clongdouble): cint {.cdecl, importc: "isinfl".}
proc finitel*(compiler_value: clongdouble): cint {.cdecl, importc: "finitel".}
proc dreml*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "dreml".}
proc compiler_dreml*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__dreml".}
proc significandl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "significandl".}
proc compiler_significandl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__significandl".}
proc copysignl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "copysignl".}
proc nanl*(compiler_tagb: cstring): clongdouble {.cdecl, importc: "nanl".}
proc compiler_nanl*(compiler_tagb: cstring): clongdouble {.cdecl,
    importc: "__nanl".}
proc isnanl*(compiler_value: clongdouble): cint {.cdecl, importc: "isnanl".}
proc j0l*(a0: clongdouble): clongdouble {.cdecl, importc: "j0l".}
proc compiler_j0l*(a0: clongdouble): clongdouble {.cdecl, importc: "__j0l".}
proc j1l*(a0: clongdouble): clongdouble {.cdecl, importc: "j1l".}
proc compiler_j1l*(a0: clongdouble): clongdouble {.cdecl, importc: "__j1l".}
proc jnl*(a0: cint; a1: clongdouble): clongdouble {.cdecl, importc: "jnl".}
proc compiler_jnl*(a0: cint; a1: clongdouble): clongdouble {.cdecl,
    importc: "__jnl".}
proc y0l*(a0: clongdouble): clongdouble {.cdecl, importc: "y0l".}
proc compiler_y0l*(a0: clongdouble): clongdouble {.cdecl, importc: "__y0l".}
proc y1l*(a0: clongdouble): clongdouble {.cdecl, importc: "y1l".}
proc compiler_y1l*(a0: clongdouble): clongdouble {.cdecl, importc: "__y1l".}
proc ynl*(a0: cint; a1: clongdouble): clongdouble {.cdecl, importc: "ynl".}
proc compiler_ynl*(a0: cint; a1: clongdouble): clongdouble {.cdecl,
    importc: "__ynl".}
proc erfl*(a0: clongdouble): clongdouble {.cdecl, importc: "erfl".}
proc compiler_erfl*(a0: clongdouble): clongdouble {.cdecl, importc: "__erfl".}
proc erfcl*(a0: clongdouble): clongdouble {.cdecl, importc: "erfcl".}
proc compiler_erfcl*(a0: clongdouble): clongdouble {.cdecl, importc: "__erfcl".}
proc lgammal*(a0: clongdouble): clongdouble {.cdecl, importc: "lgammal".}
proc compiler_lgammal*(a0: clongdouble): clongdouble {.cdecl,
    importc: "__lgammal".}
proc tgammal*(a0: clongdouble): clongdouble {.cdecl, importc: "tgammal".}
proc compiler_tgammal*(a0: clongdouble): clongdouble {.cdecl,
    importc: "__tgammal".}
proc gammal*(a0: clongdouble): clongdouble {.cdecl, importc: "gammal".}
proc compiler_gammal*(a0: clongdouble): clongdouble {.cdecl, importc: "__gammal".}
proc lgammal_r*(a0: clongdouble; compiler_signgamp: ptr cint): clongdouble {.
    cdecl, importc: "lgammal_r".}
proc compiler_lgammal_r*(a0: clongdouble; compiler_signgamp: ptr cint): clongdouble {.
    cdecl, importc: "__lgammal_r".}
proc rintl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "rintl".}
proc compiler_rintl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__rintl".}
proc nextafterl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "nextafterl".}
proc compiler_nextafterl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__nextafterl".}
proc nexttowardl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "nexttowardl".}
proc compiler_nexttowardl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__nexttowardl".}
proc remainderl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "remainderl".}
proc compiler_remainderl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__remainderl".}
proc scalbnl*(compiler_x: clongdouble; compiler_n: cint): clongdouble {.cdecl,
    importc: "scalbnl".}
proc compiler_scalbnl*(compiler_x: clongdouble; compiler_n: cint): clongdouble {.
    cdecl, importc: "__scalbnl".}
proc ilogbl*(compiler_x: clongdouble): cint {.cdecl, importc: "ilogbl".}
proc compiler_ilogbl*(compiler_x: clongdouble): cint {.cdecl,
    importc: "__ilogbl".}
proc scalblnl*(compiler_x: clongdouble; compiler_n: clong): clongdouble {.cdecl,
    importc: "scalblnl".}
proc compiler_scalblnl*(compiler_x: clongdouble; compiler_n: clong): clongdouble {.
    cdecl, importc: "__scalblnl".}
proc nearbyintl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "nearbyintl".}
proc compiler_nearbyintl*(compiler_x: clongdouble): clongdouble {.cdecl,
    importc: "__nearbyintl".}
proc roundl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "roundl".}
proc truncl*(compiler_x: clongdouble): clongdouble {.cdecl, importc: "truncl".}
proc remquol*(compiler_x: clongdouble; compiler_y: clongdouble;
              compiler_quo: ptr cint): clongdouble {.cdecl, importc: "remquol".}
proc compiler_remquol*(compiler_x: clongdouble; compiler_y: clongdouble;
                       compiler_quo: ptr cint): clongdouble {.cdecl,
    importc: "__remquol".}
proc lrintl*(compiler_x: clongdouble): clong {.cdecl, importc: "lrintl".}
proc compiler_lrintl*(compiler_x: clongdouble): clong {.cdecl,
    importc: "__lrintl".}
proc llrintl*(compiler_x: clongdouble): clonglong {.cdecl, importc: "llrintl".}
proc compiler_llrintl*(compiler_x: clongdouble): clonglong {.cdecl,
    importc: "__llrintl".}
proc lroundl*(compiler_x: clongdouble): clong {.cdecl, importc: "lroundl".}
proc compiler_lroundl*(compiler_x: clongdouble): clong {.cdecl,
    importc: "__lroundl".}
proc llroundl*(compiler_x: clongdouble): clonglong {.cdecl, importc: "llroundl".}
proc compiler_llroundl*(compiler_x: clongdouble): clonglong {.cdecl,
    importc: "__llroundl".}
proc fdiml*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "fdiml".}
proc compiler_fdiml*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "__fdiml".}
proc fmaxl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "fmaxl".}
proc fminl*(compiler_x: clongdouble; compiler_y: clongdouble): clongdouble {.
    cdecl, importc: "fminl".}
proc fmal*(compiler_x: clongdouble; compiler_y: clongdouble;
           compiler_z: clongdouble): clongdouble {.cdecl, importc: "fmal".}
proc compiler_fmal*(compiler_x: clongdouble; compiler_y: clongdouble;
                    compiler_z: clongdouble): clongdouble {.cdecl,
    importc: "__fmal".}
proc scalbl*(compiler_x: clongdouble; compiler_n: clongdouble): clongdouble {.
    cdecl, importc: "scalbl".}
proc compiler_scalbl*(compiler_x: clongdouble; compiler_n: clongdouble): clongdouble {.
    cdecl, importc: "__scalbl".}
proc compiler_fpclassifyf128*(compiler_value: internal_Float128): cint {.cdecl,
    importc: "__fpclassifyf128".}
proc compiler_isinff128*(compiler_value: internal_Float128): cint {.cdecl,
    importc: "__isinff128".}
proc compiler_finitef128*(compiler_value: internal_Float128): cint {.cdecl,
    importc: "__finitef128".}
proc compiler_isnanf128*(compiler_value: internal_Float128): cint {.cdecl,
    importc: "__isnanf128".}
proc compiler_iseqsigf128*(compiler_x: internal_Float128;
                           compiler_y: internal_Float128): cint {.cdecl,
    importc: "__iseqsigf128".}
proc compiler_issignalingf128*(compiler_value: internal_Float128): cint {.cdecl,
    importc: "__issignalingf128".}
var signgam* {.importc: "signgam".}: cint
proc compiler_assert_fail*(compiler_assertion: cstring; compiler_file: cstring;
                           compiler_line: cuint; compiler_function: cstring): void {.
    cdecl, importc: "__assert_fail".}
proc compiler_assert_perror_fail*(compiler_errnum: cint; compiler_file: cstring;
                                  compiler_line: cuint;
                                  compiler_function: cstring): void {.cdecl,
    importc: "__assert_perror_fail".}
proc compiler_assert*(compiler_assertion: cstring; compiler_file: cstring;
                      compiler_line: cint): void {.cdecl, importc: "__assert".}
proc fz_atof*(s: cstring): cfloat {.cdecl, importc: "fz_atof".}
proc fz_atoi*(s: cstring): cint {.cdecl, importc: "fz_atoi".}
proc fz_atoi64*(s: cstring): int64 {.cdecl, importc: "fz_atoi64".}
proc fz_atoz*(s: cstring): csize_t {.cdecl, importc: "fz_atoz".}
var fz_unit_rect* {.importc: "fz_unit_rect".}: fz_rect
var fz_empty_rect* {.importc: "fz_empty_rect".}: fz_rect
var fz_empty_irect* {.importc: "fz_empty_irect".}: fz_irect
var fz_infinite_rect* {.importc: "fz_infinite_rect".}: fz_rect
var fz_infinite_irect* {.importc: "fz_infinite_irect".}: fz_irect
var fz_identity* {.importc: "fz_identity".}: fz_matrix
proc fz_concat*(left: fz_matrix; right: fz_matrix): fz_matrix {.cdecl,
    importc: "fz_concat".}
proc fz_scale*(sx: cfloat; sy: cfloat): fz_matrix {.cdecl, importc: "fz_scale".}
proc fz_pre_scale*(m: fz_matrix; sx: cfloat; sy: cfloat): fz_matrix {.cdecl,
    importc: "fz_pre_scale".}
proc fz_post_scale*(m: fz_matrix; sx: cfloat; sy: cfloat): fz_matrix {.cdecl,
    importc: "fz_post_scale".}
proc fz_shear*(sx: cfloat; sy: cfloat): fz_matrix {.cdecl, importc: "fz_shear".}
proc fz_pre_shear*(m: fz_matrix; sx: cfloat; sy: cfloat): fz_matrix {.cdecl,
    importc: "fz_pre_shear".}
proc fz_rotate*(degrees: cfloat): fz_matrix {.cdecl, importc: "fz_rotate".}
proc fz_pre_rotate*(m: fz_matrix; degrees: cfloat): fz_matrix {.cdecl,
    importc: "fz_pre_rotate".}
proc fz_translate*(tx: cfloat; ty: cfloat): fz_matrix {.cdecl,
    importc: "fz_translate".}
proc fz_pre_translate*(m: fz_matrix; tx: cfloat; ty: cfloat): fz_matrix {.cdecl,
    importc: "fz_pre_translate".}
proc fz_transform_page*(mediabox: fz_rect; resolution: cfloat; rotate: cfloat): fz_matrix {.
    cdecl, importc: "fz_transform_page".}
proc fz_invert_matrix*(matrix: fz_matrix): fz_matrix {.cdecl,
    importc: "fz_invert_matrix".}
proc fz_try_invert_matrix*(inv: ptr fz_matrix; src: fz_matrix): cint {.cdecl,
    importc: "fz_try_invert_matrix".}
proc fz_is_rectilinear*(m: fz_matrix): cint {.cdecl,
    importc: "fz_is_rectilinear".}
proc fz_matrix_expansion*(m: fz_matrix): cfloat {.cdecl,
    importc: "fz_matrix_expansion".}
proc fz_intersect_rect*(a: fz_rect; b: fz_rect): fz_rect {.cdecl,
    importc: "fz_intersect_rect".}
proc fz_intersect_irect*(a: fz_irect; b: fz_irect): fz_irect {.cdecl,
    importc: "fz_intersect_irect".}
proc fz_union_rect*(a: fz_rect; b: fz_rect): fz_rect {.cdecl,
    importc: "fz_union_rect".}
proc fz_irect_from_rect*(rect: fz_rect): fz_irect {.cdecl,
    importc: "fz_irect_from_rect".}
proc fz_round_rect*(rect: fz_rect): fz_irect {.cdecl, importc: "fz_round_rect".}
proc fz_rect_from_irect*(bbox: fz_irect): fz_rect {.cdecl,
    importc: "fz_rect_from_irect".}
proc fz_expand_rect*(b: fz_rect; expand: cfloat): fz_rect {.cdecl,
    importc: "fz_expand_rect".}
proc fz_expand_irect*(a: fz_irect; expand: cint): fz_irect {.cdecl,
    importc: "fz_expand_irect".}
proc fz_include_point_in_rect*(r: fz_rect; p: fz_point): fz_rect {.cdecl,
    importc: "fz_include_point_in_rect".}
proc fz_translate_rect*(a: fz_rect; xoff: cfloat; yoff: cfloat): fz_rect {.
    cdecl, importc: "fz_translate_rect".}
proc fz_translate_irect*(a: fz_irect; xoff: cint; yoff: cint): fz_irect {.cdecl,
    importc: "fz_translate_irect".}
proc fz_contains_rect*(a: fz_rect; b: fz_rect): cint {.cdecl,
    importc: "fz_contains_rect".}
proc fz_transform_point*(point: fz_point; m: fz_matrix): fz_point {.cdecl,
    importc: "fz_transform_point".}
proc fz_transform_point_xy*(x: cfloat; y: cfloat; m: fz_matrix): fz_point {.
    cdecl, importc: "fz_transform_point_xy".}
proc fz_transform_vector*(vector: fz_point; m: fz_matrix): fz_point {.cdecl,
    importc: "fz_transform_vector".}
proc fz_transform_rect*(rect: fz_rect; m: fz_matrix): fz_rect {.cdecl,
    importc: "fz_transform_rect".}
proc fz_normalize_vector*(p: fz_point): fz_point {.cdecl,
    importc: "fz_normalize_vector".}
proc fz_gridfit_matrix*(as_tiled: cint; m: fz_matrix): fz_matrix {.cdecl,
    importc: "fz_gridfit_matrix".}
proc fz_matrix_max_expansion*(m: fz_matrix): cfloat {.cdecl,
    importc: "fz_matrix_max_expansion".}
var fz_invalid_quad* {.importc: "fz_invalid_quad".}: fz_quad
var fz_infinite_quad* {.importc: "fz_infinite_quad".}: fz_quad
proc fz_is_valid_quad*(q: fz_quad): cint {.cdecl, importc: "fz_is_valid_quad".}
proc fz_is_empty_quad*(q: fz_quad): cint {.cdecl, importc: "fz_is_empty_quad".}
proc fz_is_infinite_quad*(q: fz_quad): cint {.cdecl,
    importc: "fz_is_infinite_quad".}
proc fz_quad_from_rect*(r: fz_rect): fz_quad {.cdecl,
    importc: "fz_quad_from_rect".}
proc fz_rect_from_quad*(q: fz_quad): fz_rect {.cdecl,
    importc: "fz_rect_from_quad".}
proc fz_transform_quad*(q: fz_quad; m: fz_matrix): fz_quad {.cdecl,
    importc: "fz_transform_quad".}
proc fz_is_point_inside_quad*(p: fz_point; q: fz_quad): cint {.cdecl,
    importc: "fz_is_point_inside_quad".}
proc fz_is_point_inside_rect*(p: fz_point; r: fz_rect): cint {.cdecl,
    importc: "fz_is_point_inside_rect".}
proc fz_is_point_inside_irect*(x: cint; y: cint; r: fz_irect): cint {.cdecl,
    importc: "fz_is_point_inside_irect".}
proc fz_is_quad_inside_quad*(needle: fz_quad; haystack: fz_quad): cint {.cdecl,
    importc: "fz_is_quad_inside_quad".}
proc fz_is_quad_intersecting_quad*(a: fz_quad; b: fz_quad): cint {.cdecl,
    importc: "fz_is_quad_intersecting_quad".}
proc fz_vthrow*(ctx: ptr fz_context; errcode: cint; a2: cstring): void {.cdecl,
    varargs, importc: "fz_vthrow".}
proc fz_throw*(ctx: ptr fz_context; errcode: cint; a2: cstring): void {.cdecl,
    varargs, importc: "fz_throw".}
proc fz_rethrow*(ctx: ptr fz_context): void {.cdecl, importc: "fz_rethrow".}
proc fz_morph_error*(ctx: ptr fz_context; fromcode: cint; tocode: cint): void {.
    cdecl, importc: "fz_morph_error".}
proc fz_vwarn*(ctx: ptr fz_context; fmt: cstring): void {.cdecl, varargs,
    importc: "fz_vwarn".}
proc fz_warn*(ctx: ptr fz_context; fmt: cstring): void {.cdecl, varargs,
    importc: "fz_warn".}
proc fz_caught_message*(ctx: ptr fz_context): cstring {.cdecl,
    importc: "fz_caught_message".}
proc fz_caught*(ctx: ptr fz_context): cint {.cdecl, importc: "fz_caught".}
proc fz_caught_errno*(ctx: ptr fz_context): cint {.cdecl,
    importc: "fz_caught_errno".}
proc fz_rethrow_if*(ctx: ptr fz_context; errcode: cint): void {.cdecl,
    importc: "fz_rethrow_if".}
proc fz_rethrow_unless*(ctx: ptr fz_context; errcode: cint): void {.cdecl,
    importc: "fz_rethrow_unless".}
proc fz_log_error_printf*(ctx: ptr fz_context; fmt: cstring): void {.cdecl,
    varargs, importc: "fz_log_error_printf".}
proc fz_vlog_error_printf*(ctx: ptr fz_context; fmt: cstring): void {.cdecl,
    varargs, importc: "fz_vlog_error_printf".}
proc fz_log_error*(ctx: ptr fz_context; str: cstring): void {.cdecl,
    importc: "fz_log_error".}
proc fz_start_throw_on_repair*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_start_throw_on_repair".}
proc fz_end_throw_on_repair*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_end_throw_on_repair".}
proc fz_report_error*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_report_error".}
proc fz_ignore_error*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_ignore_error".}
proc fz_convert_error*(ctx: ptr fz_context; code: ptr cint): cstring {.cdecl,
    importc: "fz_convert_error".}
proc fz_flush_warnings*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_flush_warnings".}
proc fz_assert_lock_held*(ctx: ptr fz_context; lock: cint): void {.cdecl,
    importc: "fz_assert_lock_held".}
proc fz_assert_lock_not_held*(ctx: ptr fz_context; lock: cint): void {.cdecl,
    importc: "fz_assert_lock_not_held".}
proc fz_lock_debug_lock*(ctx: ptr fz_context; lock: cint): void {.cdecl,
    importc: "fz_lock_debug_lock".}
proc fz_lock_debug_unlock*(ctx: ptr fz_context; lock: cint): void {.cdecl,
    importc: "fz_lock_debug_unlock".}
proc fz_clone_context*(ctx: ptr fz_context): ptr fz_context {.cdecl,
    importc: "fz_clone_context".}
proc fz_drop_context*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_drop_context".}
proc fz_set_user_context*(ctx: ptr fz_context; user: pointer): void {.cdecl,
    importc: "fz_set_user_context".}
proc fz_user_context*(ctx: ptr fz_context): pointer {.cdecl,
    importc: "fz_user_context".}
proc fz_default_error_callback*(user: pointer; message: cstring): void {.cdecl,
    importc: "fz_default_error_callback".}
proc fz_default_warning_callback*(user: pointer; message: cstring): void {.
    cdecl, importc: "fz_default_warning_callback".}
proc fz_set_error_callback*(ctx: ptr fz_context; error_cb: fz_error_cb;
                            user: pointer): void {.cdecl,
    importc: "fz_set_error_callback".}
proc fz_error_callback*(ctx: ptr fz_context; user: ptr pointer): fz_error_cb {.
    cdecl, importc: "fz_error_callback".}
proc fz_set_warning_callback*(ctx: ptr fz_context; warning_cb: fz_warning_cb;
                              user: pointer): void {.cdecl,
    importc: "fz_set_warning_callback".}
proc fz_warning_callback*(ctx: ptr fz_context; user: ptr pointer): fz_warning_cb {.
    cdecl, importc: "fz_warning_callback".}
proc fz_tune_image_decode*(ctx: ptr fz_context;
                           image_decode: fz_tune_image_decode_fn; arg: pointer): void {.
    cdecl, importc: "fz_tune_image_decode".}
proc fz_tune_image_scale*(ctx: ptr fz_context;
                          image_scale: fz_tune_image_scale_fn; arg: pointer): void {.
    cdecl, importc: "fz_tune_image_scale".}
proc fz_aa_level*(ctx: ptr fz_context): cint {.cdecl, importc: "fz_aa_level".}
proc fz_set_aa_level*(ctx: ptr fz_context; bits: cint): void {.cdecl,
    importc: "fz_set_aa_level".}
proc fz_text_aa_level*(ctx: ptr fz_context): cint {.cdecl,
    importc: "fz_text_aa_level".}
proc fz_set_text_aa_level*(ctx: ptr fz_context; bits: cint): void {.cdecl,
    importc: "fz_set_text_aa_level".}
proc fz_graphics_aa_level*(ctx: ptr fz_context): cint {.cdecl,
    importc: "fz_graphics_aa_level".}
proc fz_set_graphics_aa_level*(ctx: ptr fz_context; bits: cint): void {.cdecl,
    importc: "fz_set_graphics_aa_level".}
proc fz_graphics_min_line_width*(ctx: ptr fz_context): cfloat {.cdecl,
    importc: "fz_graphics_min_line_width".}
proc fz_set_graphics_min_line_width*(ctx: ptr fz_context; min_line_width: cfloat): void {.
    cdecl, importc: "fz_set_graphics_min_line_width".}
proc fz_user_css*(ctx: ptr fz_context): cstring {.cdecl, importc: "fz_user_css".}
proc fz_set_user_css*(ctx: ptr fz_context; text: cstring): void {.cdecl,
    importc: "fz_set_user_css".}
proc fz_load_user_css*(ctx: ptr fz_context; filename: cstring): void {.cdecl,
    importc: "fz_load_user_css".}
proc fz_use_document_css*(ctx: ptr fz_context): cint {.cdecl,
    importc: "fz_use_document_css".}
proc fz_set_use_document_css*(ctx: ptr fz_context; use: cint): void {.cdecl,
    importc: "fz_set_use_document_css".}
proc fz_enable_icc*(ctx: ptr fz_context): void {.cdecl, importc: "fz_enable_icc".}
proc fz_disable_icc*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_disable_icc".}
proc fz_malloc*(ctx: ptr fz_context; size: csize_t): pointer {.cdecl,
    importc: "fz_malloc".}
proc fz_calloc*(ctx: ptr fz_context; count: csize_t; size: csize_t): pointer {.
    cdecl, importc: "fz_calloc".}
proc fz_realloc*(ctx: ptr fz_context; p: pointer; size: csize_t): pointer {.
    cdecl, importc: "fz_realloc".}
proc fz_free*(ctx: ptr fz_context; p: pointer): void {.cdecl, importc: "fz_free".}
proc fz_malloc_no_throw*(ctx: ptr fz_context; size: csize_t): pointer {.cdecl,
    importc: "fz_malloc_no_throw".}
proc fz_calloc_no_throw*(ctx: ptr fz_context; count: csize_t; size: csize_t): pointer {.
    cdecl, importc: "fz_calloc_no_throw".}
proc fz_realloc_no_throw*(ctx: ptr fz_context; p: pointer; size: csize_t): pointer {.
    cdecl, importc: "fz_realloc_no_throw".}
proc fz_malloc_aligned*(ctx: ptr fz_context; size: csize_t; align: cint): pointer {.
    cdecl, importc: "fz_malloc_aligned".}
proc fz_free_aligned*(ctx: ptr fz_context; p: pointer): void {.cdecl,
    importc: "fz_free_aligned".}
proc fz_strdup*(ctx: ptr fz_context; s: cstring): cstring {.cdecl,
    importc: "fz_strdup".}
proc fz_memrnd*(ctx: ptr fz_context; block_arg: ptr uint8; len: cint): void {.
    cdecl, importc: "fz_memrnd".}
proc fz_new_string*(ctx: ptr fz_context; str: cstring): ptr fz_string {.cdecl,
    importc: "fz_new_string".}
proc fz_keep_string*(ctx: ptr fz_context; str: ptr fz_string): ptr fz_string {.
    cdecl, importc: "fz_keep_string".}
proc fz_drop_string*(ctx: ptr fz_context; str: ptr fz_string): void {.cdecl,
    importc: "fz_drop_string".}
proc fz_var_imp*(a0: pointer): void {.cdecl, importc: "fz_var_imp".}
proc fz_push_try*(ctx: ptr fz_context): ptr fz_jmp_buf {.cdecl,
    importc: "fz_push_try".}
proc fz_do_try*(ctx: ptr fz_context): cint {.cdecl, importc: "fz_do_try".}
proc fz_do_always*(ctx: ptr fz_context): cint {.cdecl, importc: "fz_do_always".}
proc fz_do_catch*(ctx: ptr fz_context): cint {.cdecl, importc: "fz_do_catch".}
proc fz_new_context_imp*(alloc: ptr fz_alloc_context;
                         locks: ptr fz_locks_context; max_store: csize_t;
                         version: cstring): ptr fz_context {.cdecl,
    importc: "fz_new_context_imp".}
proc fz_keep_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_buffer {.
    cdecl, importc: "fz_keep_buffer".}
proc fz_drop_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): void {.cdecl,
    importc: "fz_drop_buffer".}
proc fz_buffer_storage*(ctx: ptr fz_context; buf: ptr fz_buffer;
                        datap: ptr ptr uint8): csize_t {.cdecl,
    importc: "fz_buffer_storage".}
proc fz_string_from_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): cstring {.
    cdecl, importc: "fz_string_from_buffer".}
proc fz_new_buffer*(ctx: ptr fz_context; capacity: csize_t): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer".}
proc fz_new_buffer_from_data*(ctx: ptr fz_context; data: ptr uint8;
                              size: csize_t): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_data".}
proc fz_new_buffer_from_shared_data*(ctx: ptr fz_context; data: ptr uint8;
                                     size: csize_t): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_shared_data".}
proc fz_new_buffer_from_copied_data*(ctx: ptr fz_context; data: ptr uint8;
                                     size: csize_t): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_copied_data".}
proc fz_clone_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_buffer {.
    cdecl, importc: "fz_clone_buffer".}
proc fz_new_buffer_from_base64*(ctx: ptr fz_context; data: cstring;
                                size: csize_t): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_base64".}
proc fz_resize_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer;
                       capacity: csize_t): void {.cdecl,
    importc: "fz_resize_buffer".}
proc fz_grow_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): void {.cdecl,
    importc: "fz_grow_buffer".}
proc fz_trim_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): void {.cdecl,
    importc: "fz_trim_buffer".}
proc fz_clear_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): void {.cdecl,
    importc: "fz_clear_buffer".}
proc fz_slice_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer; start: int64;
                      end_arg: int64): ptr fz_buffer {.cdecl,
    importc: "fz_slice_buffer".}
proc fz_append_buffer*(ctx: ptr fz_context; destination: ptr fz_buffer;
                       source: ptr fz_buffer): void {.cdecl,
    importc: "fz_append_buffer".}
proc fz_append_base64*(ctx: ptr fz_context; out_arg: ptr fz_buffer;
                       data: ptr uint8; size: csize_t; newline: cint): void {.
    cdecl, importc: "fz_append_base64".}
proc fz_append_base64_buffer*(ctx: ptr fz_context; out_arg: ptr fz_buffer;
                              data: ptr fz_buffer; newline: cint): void {.cdecl,
    importc: "fz_append_base64_buffer".}
proc fz_append_data*(ctx: ptr fz_context; buf: ptr fz_buffer; data: pointer;
                     len: csize_t): void {.cdecl, importc: "fz_append_data".}
proc fz_append_string*(ctx: ptr fz_context; buf: ptr fz_buffer; data: cstring): void {.
    cdecl, importc: "fz_append_string".}
proc fz_append_byte*(ctx: ptr fz_context; buf: ptr fz_buffer; c: cint): void {.
    cdecl, importc: "fz_append_byte".}
proc fz_append_rune*(ctx: ptr fz_context; buf: ptr fz_buffer; c: cint): void {.
    cdecl, importc: "fz_append_rune".}
proc fz_append_int32_le*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint): void {.
    cdecl, importc: "fz_append_int32_le".}
proc fz_append_int16_le*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint): void {.
    cdecl, importc: "fz_append_int16_le".}
proc fz_append_int32_be*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint): void {.
    cdecl, importc: "fz_append_int32_be".}
proc fz_append_int16_be*(ctx: ptr fz_context; buf: ptr fz_buffer; x: cint): void {.
    cdecl, importc: "fz_append_int16_be".}
proc fz_append_bits*(ctx: ptr fz_context; buf: ptr fz_buffer; value: cint;
                     count: cint): void {.cdecl, importc: "fz_append_bits".}
proc fz_append_bits_pad*(ctx: ptr fz_context; buf: ptr fz_buffer): void {.cdecl,
    importc: "fz_append_bits_pad".}
proc fz_append_pdf_string*(ctx: ptr fz_context; buffer: ptr fz_buffer;
                           text: cstring): void {.cdecl,
    importc: "fz_append_pdf_string".}
proc fz_append_printf*(ctx: ptr fz_context; buffer: ptr fz_buffer; fmt: cstring): void {.
    cdecl, varargs, importc: "fz_append_printf".}
proc fz_append_vprintf*(ctx: ptr fz_context; buffer: ptr fz_buffer; fmt: cstring): void {.
    cdecl, varargs, importc: "fz_append_vprintf".}
proc fz_terminate_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): void {.
    cdecl, importc: "fz_terminate_buffer".}
proc fz_md5_buffer*(ctx: ptr fz_context; buffer: ptr fz_buffer;
                    digest: array[16'i64, uint8]): void {.cdecl,
    importc: "fz_md5_buffer".}
proc fz_buffer_extract*(ctx: ptr fz_context; buf: ptr fz_buffer;
                        data: ptr ptr uint8): csize_t {.cdecl,
    importc: "fz_buffer_extract".}
proc fz_strnlen*(s: cstring; maxlen: csize_t): csize_t {.cdecl,
    importc: "fz_strnlen".}
proc fz_strsep*(stringp: ptr cstring; delim: cstring): cstring {.cdecl,
    importc: "fz_strsep".}
proc fz_strlcpy*(dst: cstring; src: cstring; n: csize_t): csize_t {.cdecl,
    importc: "fz_strlcpy".}
proc fz_strlcat*(dst: cstring; src: cstring; n: csize_t): csize_t {.cdecl,
    importc: "fz_strlcat".}
proc fz_memmem*(haystack: pointer; haystacklen: csize_t; needle: pointer;
                needlelen: csize_t): pointer {.cdecl, importc: "fz_memmem".}
proc fz_dirname*(dir: cstring; path: cstring; dirsize: csize_t): void {.cdecl,
    importc: "fz_dirname".}
proc fz_basename*(path: cstring): cstring {.cdecl, importc: "fz_basename".}
proc fz_urldecode*(url: cstring): cstring {.cdecl, importc: "fz_urldecode".}
proc fz_decode_uri*(ctx: ptr fz_context; s: cstring): cstring {.cdecl,
    importc: "fz_decode_uri".}
proc fz_decode_uri_component*(ctx: ptr fz_context; s: cstring): cstring {.cdecl,
    importc: "fz_decode_uri_component".}
proc fz_encode_uri*(ctx: ptr fz_context; s: cstring): cstring {.cdecl,
    importc: "fz_encode_uri".}
proc fz_encode_uri_component*(ctx: ptr fz_context; s: cstring): cstring {.cdecl,
    importc: "fz_encode_uri_component".}
proc fz_encode_uri_pathname*(ctx: ptr fz_context; s: cstring): cstring {.cdecl,
    importc: "fz_encode_uri_pathname".}
proc fz_format_output_path*(ctx: ptr fz_context; path: cstring; size: csize_t;
                            fmt: cstring; page: cint): void {.cdecl,
    importc: "fz_format_output_path".}
proc fz_cleanname*(name: cstring): cstring {.cdecl, importc: "fz_cleanname".}
proc fz_cleanname_strdup*(ctx: ptr fz_context; name: cstring): cstring {.cdecl,
    importc: "fz_cleanname_strdup".}
proc fz_realpath*(path: cstring; resolved_path: cstring): cstring {.cdecl,
    importc: "fz_realpath".}
proc fz_strcasecmp*(a: cstring; b: cstring): cint {.cdecl,
    importc: "fz_strcasecmp".}
proc fz_strncasecmp*(a: cstring; b: cstring; n: csize_t): cint {.cdecl,
    importc: "fz_strncasecmp".}
proc fz_chartorune*(rune: ptr cint; str: cstring): cint {.cdecl,
    importc: "fz_chartorune".}
proc fz_runetochar*(str: cstring; rune: cint): cint {.cdecl,
    importc: "fz_runetochar".}
proc fz_runelen*(rune: cint): cint {.cdecl, importc: "fz_runelen".}
proc fz_runeidx*(str: cstring; p: cstring): cint {.cdecl, importc: "fz_runeidx".}
proc fz_runeptr*(str: cstring; idx: cint): cstring {.cdecl,
    importc: "fz_runeptr".}
proc fz_utflen*(s: cstring): cint {.cdecl, importc: "fz_utflen".}
proc fz_utf8_from_wchar*(ctx: ptr fz_context; s: ptr wchar_t): cstring {.cdecl,
    importc: "fz_utf8_from_wchar".}
proc fz_wchar_from_utf8*(ctx: ptr fz_context; path: cstring): ptr wchar_t {.
    cdecl, importc: "fz_wchar_from_utf8".}
proc fz_strtof*(s: cstring; es: ptr cstring): cfloat {.cdecl,
    importc: "fz_strtof".}
proc fz_grisu*(f: cfloat; s: cstring; exp: ptr cint): cint {.cdecl,
    importc: "fz_grisu".}
proc fz_is_page_range*(ctx: ptr fz_context; s: cstring): cint {.cdecl,
    importc: "fz_is_page_range".}
proc fz_parse_page_range*(ctx: ptr fz_context; s: cstring; a: ptr cint;
                          b: ptr cint; n: cint): cstring {.cdecl,
    importc: "fz_parse_page_range".}
proc fz_tolower*(c: cint): cint {.cdecl, importc: "fz_tolower".}
proc fz_toupper*(c: cint): cint {.cdecl, importc: "fz_toupper".}
proc fz_file_exists*(ctx: ptr fz_context; path: cstring): cint {.cdecl,
    importc: "fz_file_exists".}
proc fz_open_file*(ctx: ptr fz_context; filename: cstring): ptr fz_stream {.
    cdecl, importc: "fz_open_file".}
proc fz_open_file_autodelete*(ctx: ptr fz_context; filename: cstring): ptr fz_stream {.
    cdecl, importc: "fz_open_file_autodelete".}
proc fz_try_open_file*(ctx: ptr fz_context; name: cstring): ptr fz_stream {.
    cdecl, importc: "fz_try_open_file".}
proc fz_stream_filename*(ctx: ptr fz_context; stm: ptr fz_stream): cstring {.
    cdecl, importc: "fz_stream_filename".}
proc fz_open_memory*(ctx: ptr fz_context; data: ptr uint8; len: csize_t): ptr fz_stream {.
    cdecl, importc: "fz_open_memory".}
proc fz_open_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_stream {.
    cdecl, importc: "fz_open_buffer".}
proc fz_open_leecher*(ctx: ptr fz_context; chain: ptr fz_stream;
                      buf: ptr fz_buffer): ptr fz_stream {.cdecl,
    importc: "fz_open_leecher".}
proc fz_keep_stream*(ctx: ptr fz_context; stm: ptr fz_stream): ptr fz_stream {.
    cdecl, importc: "fz_keep_stream".}
proc fz_drop_stream*(ctx: ptr fz_context; stm: ptr fz_stream): void {.cdecl,
    importc: "fz_drop_stream".}
proc fz_tell*(ctx: ptr fz_context; stm: ptr fz_stream): int64 {.cdecl,
    importc: "fz_tell".}
proc fz_seek*(ctx: ptr fz_context; stm: ptr fz_stream; offset: int64;
              whence: cint): void {.cdecl, importc: "fz_seek".}
proc fz_read*(ctx: ptr fz_context; stm: ptr fz_stream; data: ptr uint8;
              len: csize_t): csize_t {.cdecl, importc: "fz_read".}
proc fz_skip*(ctx: ptr fz_context; stm: ptr fz_stream; len: csize_t): csize_t {.
    cdecl, importc: "fz_skip".}
proc fz_read_all*(ctx: ptr fz_context; stm: ptr fz_stream; initial: csize_t): ptr fz_buffer {.
    cdecl, importc: "fz_read_all".}
proc fz_read_file*(ctx: ptr fz_context; filename: cstring): ptr fz_buffer {.
    cdecl, importc: "fz_read_file".}
proc fz_try_read_file*(ctx: ptr fz_context; filename: cstring): ptr fz_buffer {.
    cdecl, importc: "fz_try_read_file".}
proc fz_read_uint16*(ctx: ptr fz_context; stm: ptr fz_stream): uint16 {.cdecl,
    importc: "fz_read_uint16".}
proc fz_read_uint24*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.cdecl,
    importc: "fz_read_uint24".}
proc fz_read_uint32*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.cdecl,
    importc: "fz_read_uint32".}
proc fz_read_uint64*(ctx: ptr fz_context; stm: ptr fz_stream): uint64 {.cdecl,
    importc: "fz_read_uint64".}
proc fz_read_uint16_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint16 {.
    cdecl, importc: "fz_read_uint16_le".}
proc fz_read_uint24_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.
    cdecl, importc: "fz_read_uint24_le".}
proc fz_read_uint32_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint32 {.
    cdecl, importc: "fz_read_uint32_le".}
proc fz_read_uint64_le*(ctx: ptr fz_context; stm: ptr fz_stream): uint64 {.
    cdecl, importc: "fz_read_uint64_le".}
proc fz_read_int16*(ctx: ptr fz_context; stm: ptr fz_stream): int16 {.cdecl,
    importc: "fz_read_int16".}
proc fz_read_int32*(ctx: ptr fz_context; stm: ptr fz_stream): int32 {.cdecl,
    importc: "fz_read_int32".}
proc fz_read_int64*(ctx: ptr fz_context; stm: ptr fz_stream): int64 {.cdecl,
    importc: "fz_read_int64".}
proc fz_read_int16_le*(ctx: ptr fz_context; stm: ptr fz_stream): int16 {.cdecl,
    importc: "fz_read_int16_le".}
proc fz_read_int32_le*(ctx: ptr fz_context; stm: ptr fz_stream): int32 {.cdecl,
    importc: "fz_read_int32_le".}
proc fz_read_int64_le*(ctx: ptr fz_context; stm: ptr fz_stream): int64 {.cdecl,
    importc: "fz_read_int64_le".}
proc fz_read_float_le*(ctx: ptr fz_context; stm: ptr fz_stream): cfloat {.cdecl,
    importc: "fz_read_float_le".}
proc fz_read_float*(ctx: ptr fz_context; stm: ptr fz_stream): cfloat {.cdecl,
    importc: "fz_read_float".}
proc fz_read_string*(ctx: ptr fz_context; stm: ptr fz_stream; buffer: cstring;
                     len: cint): void {.cdecl, importc: "fz_read_string".}
proc fz_read_rune*(ctx: ptr fz_context; in_arg: ptr fz_stream): cint {.cdecl,
    importc: "fz_read_rune".}
proc fz_read_utf16_le*(ctx: ptr fz_context; stm: ptr fz_stream): cint {.cdecl,
    importc: "fz_read_utf16_le".}
proc fz_read_utf16_be*(ctx: ptr fz_context; stm: ptr fz_stream): cint {.cdecl,
    importc: "fz_read_utf16_be".}
proc fz_new_stream*(ctx: ptr fz_context; state: pointer;
                    next: fz_stream_next_fn; drop: fz_stream_drop_fn): ptr fz_stream {.
    cdecl, importc: "fz_new_stream".}
proc fz_read_best*(ctx: ptr fz_context; stm: ptr fz_stream; initial: csize_t;
                   truncated: ptr cint; worst_case: csize_t): ptr fz_buffer {.
    cdecl, importc: "fz_read_best".}
proc fz_read_line*(ctx: ptr fz_context; stm: ptr fz_stream; buf: cstring;
                   max: csize_t): cstring {.cdecl, importc: "fz_read_line".}
proc fz_skip_string*(ctx: ptr fz_context; stm: ptr fz_stream; str: cstring): cint {.
    cdecl, importc: "fz_skip_string".}
proc fz_skip_space*(ctx: ptr fz_context; stm: ptr fz_stream): void {.cdecl,
    importc: "fz_skip_space".}
proc fz_open_file_ptr_no_close*(ctx: ptr fz_context; file: ptr FILE): ptr fz_stream {.
    cdecl, importc: "fz_open_file_ptr_no_close".}
proc fz_new_output*(ctx: ptr fz_context; bufsiz: cint; state: pointer;
                    write: fz_output_write_fn; close: fz_output_close_fn;
                    drop: fz_output_drop_fn): ptr fz_output {.cdecl,
    importc: "fz_new_output".}
proc fz_new_output_with_path*(a0: ptr fz_context; filename: cstring;
                              append: cint): ptr fz_output {.cdecl,
    importc: "fz_new_output_with_path".}
proc fz_new_output_with_file_ptr*(ctx: ptr fz_context; file: ptr FILE): ptr fz_output {.
    cdecl, importc: "fz_new_output_with_file_ptr".}
proc fz_new_output_with_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_output {.
    cdecl, importc: "fz_new_output_with_buffer".}
proc fz_stdout*(ctx: ptr fz_context): ptr fz_output {.cdecl,
    importc: "fz_stdout".}
proc fz_stderr*(ctx: ptr fz_context): ptr fz_output {.cdecl,
    importc: "fz_stderr".}
proc fz_set_stddbg*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.cdecl,
    importc: "fz_set_stddbg".}
proc fz_stddbg*(ctx: ptr fz_context): ptr fz_output {.cdecl,
    importc: "fz_stddbg".}
proc fz_write_printf*(ctx: ptr fz_context; out_arg: ptr fz_output; fmt: cstring): void {.
    cdecl, varargs, importc: "fz_write_printf".}
proc fz_write_vprintf*(ctx: ptr fz_context; out_arg: ptr fz_output; fmt: cstring): void {.
    cdecl, varargs, importc: "fz_write_vprintf".}
proc fz_seek_output*(ctx: ptr fz_context; out_arg: ptr fz_output; off: int64;
                     whence: cint): void {.cdecl, importc: "fz_seek_output".}
proc fz_tell_output*(ctx: ptr fz_context; out_arg: ptr fz_output): int64 {.
    cdecl, importc: "fz_tell_output".}
proc fz_flush_output*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_flush_output".}
proc fz_close_output*(a0: ptr fz_context; a1: ptr fz_output): void {.cdecl,
    importc: "fz_close_output".}
proc fz_reset_output*(a0: ptr fz_context; a1: ptr fz_output): void {.cdecl,
    importc: "fz_reset_output".}
proc fz_drop_output*(a0: ptr fz_context; a1: ptr fz_output): void {.cdecl,
    importc: "fz_drop_output".}
proc fz_output_supports_stream*(ctx: ptr fz_context; out_arg: ptr fz_output): cint {.
    cdecl, importc: "fz_output_supports_stream".}
proc fz_stream_from_output*(a0: ptr fz_context; a1: ptr fz_output): ptr fz_stream {.
    cdecl, importc: "fz_stream_from_output".}
proc fz_truncate_output*(a0: ptr fz_context; a1: ptr fz_output): void {.cdecl,
    importc: "fz_truncate_output".}
proc fz_write_data*(ctx: ptr fz_context; out_arg: ptr fz_output; data: pointer;
                    size: csize_t): void {.cdecl, importc: "fz_write_data".}
proc fz_write_buffer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                      data: ptr fz_buffer): void {.cdecl,
    importc: "fz_write_buffer".}
proc fz_write_string*(ctx: ptr fz_context; out_arg: ptr fz_output; s: cstring): void {.
    cdecl, importc: "fz_write_string".}
proc fz_write_int32_be*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cint): void {.
    cdecl, importc: "fz_write_int32_be".}
proc fz_write_int32_le*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cint): void {.
    cdecl, importc: "fz_write_int32_le".}
proc fz_write_uint32_be*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cuint): void {.
    cdecl, importc: "fz_write_uint32_be".}
proc fz_write_uint32_le*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cuint): void {.
    cdecl, importc: "fz_write_uint32_le".}
proc fz_write_int16_be*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cint): void {.
    cdecl, importc: "fz_write_int16_be".}
proc fz_write_int16_le*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cint): void {.
    cdecl, importc: "fz_write_int16_le".}
proc fz_write_uint16_be*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cuint): void {.
    cdecl, importc: "fz_write_uint16_be".}
proc fz_write_uint16_le*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cuint): void {.
    cdecl, importc: "fz_write_uint16_le".}
proc fz_write_char*(ctx: ptr fz_context; out_arg: ptr fz_output; x: cschar): void {.
    cdecl, importc: "fz_write_char".}
proc fz_write_byte*(ctx: ptr fz_context; out_arg: ptr fz_output; x: uint8): void {.
    cdecl, importc: "fz_write_byte".}
proc fz_write_float_be*(ctx: ptr fz_context; out_arg: ptr fz_output; f: cfloat): void {.
    cdecl, importc: "fz_write_float_be".}
proc fz_write_float_le*(ctx: ptr fz_context; out_arg: ptr fz_output; f: cfloat): void {.
    cdecl, importc: "fz_write_float_le".}
proc fz_write_rune*(ctx: ptr fz_context; out_arg: ptr fz_output; rune: cint): void {.
    cdecl, importc: "fz_write_rune".}
proc fz_write_base64*(ctx: ptr fz_context; out_arg: ptr fz_output;
                      data: ptr uint8; size: csize_t; newline: cint): void {.
    cdecl, importc: "fz_write_base64".}
proc fz_write_base64_buffer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             data: ptr fz_buffer; newline: cint): void {.cdecl,
    importc: "fz_write_base64_buffer".}
proc fz_write_bits*(ctx: ptr fz_context; out_arg: ptr fz_output; data: cuint;
                    num_bits: cint): void {.cdecl, importc: "fz_write_bits".}
proc fz_write_bits_sync*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_write_bits_sync".}
proc fz_write_stream*(ctx: ptr fz_context; out_arg: ptr fz_output;
                      in_arg: ptr fz_stream): void {.cdecl,
    importc: "fz_write_stream".}
proc fz_format_string*(ctx: ptr fz_context; user: pointer; emit: proc (
    a0: ptr fz_context; a1: pointer; a2: cint): void {.cdecl.}; fmt: cstring): void {.
    cdecl, varargs, importc: "fz_format_string".}
proc fz_vsnprintf*(buffer: cstring; space: csize_t; fmt: cstring): csize_t {.
    cdecl, varargs, importc: "fz_vsnprintf".}
proc fz_snprintf*(buffer: cstring; space: csize_t; fmt: cstring): csize_t {.
    cdecl, varargs, importc: "fz_snprintf".}
proc fz_asprintf*(ctx: ptr fz_context; fmt: cstring): cstring {.cdecl, varargs,
    importc: "fz_asprintf".}
proc fz_save_buffer*(ctx: ptr fz_context; buf: ptr fz_buffer; filename: cstring): void {.
    cdecl, importc: "fz_save_buffer".}
proc fz_new_asciihex_output*(ctx: ptr fz_context; chain: ptr fz_output): ptr fz_output {.
    cdecl, importc: "fz_new_asciihex_output".}
proc fz_new_ascii85_output*(ctx: ptr fz_context; chain: ptr fz_output): ptr fz_output {.
    cdecl, importc: "fz_new_ascii85_output".}
proc fz_new_rle_output*(ctx: ptr fz_context; chain: ptr fz_output): ptr fz_output {.
    cdecl, importc: "fz_new_rle_output".}
proc fz_new_arc4_output*(ctx: ptr fz_context; chain: ptr fz_output;
                         key: ptr uint8; keylen: csize_t): ptr fz_output {.
    cdecl, importc: "fz_new_arc4_output".}
proc fz_new_deflate_output*(ctx: ptr fz_context; chain: ptr fz_output;
                            effort: cint; raw: cint): ptr fz_output {.cdecl,
    importc: "fz_new_deflate_output".}
proc fz_log*(ctx: ptr fz_context; fmt: cstring): void {.cdecl, varargs,
    importc: "fz_log".}
proc fz_log_module*(ctx: ptr fz_context; module: cstring; fmt: cstring): void {.
    cdecl, varargs, importc: "fz_log_module".}
proc fz_new_log_for_module*(ctx: ptr fz_context; module: cstring): ptr fz_output {.
    cdecl, importc: "fz_new_log_for_module".}
proc fz_md5_init*(state: ptr fz_md5): void {.cdecl, importc: "fz_md5_init".}
proc fz_md5_update*(state: ptr fz_md5; input: ptr uint8; inlen: csize_t): void {.
    cdecl, importc: "fz_md5_update".}
proc fz_md5_update_int64*(state: ptr fz_md5; i: int64): void {.cdecl,
    importc: "fz_md5_update_int64".}
proc fz_md5_final*(state: ptr fz_md5; digest: array[16'i64, uint8]): void {.
    cdecl, importc: "fz_md5_final".}
proc fz_sha256_init*(state: ptr fz_sha256): void {.cdecl,
    importc: "fz_sha256_init".}
proc fz_sha256_update*(state: ptr fz_sha256; input: ptr uint8; inlen: csize_t): void {.
    cdecl, importc: "fz_sha256_update".}
proc fz_sha256_final*(state: ptr fz_sha256; digest: array[32'i64, uint8]): void {.
    cdecl, importc: "fz_sha256_final".}
proc fz_sha512_init*(state: ptr fz_sha512): void {.cdecl,
    importc: "fz_sha512_init".}
proc fz_sha512_update*(state: ptr fz_sha512; input: ptr uint8; inlen: csize_t): void {.
    cdecl, importc: "fz_sha512_update".}
proc fz_sha512_final*(state: ptr fz_sha512; digest: array[64'i64, uint8]): void {.
    cdecl, importc: "fz_sha512_final".}
proc fz_sha384_init*(state: ptr fz_sha384): void {.cdecl,
    importc: "fz_sha384_init".}
proc fz_sha384_update*(state: ptr fz_sha384; input: ptr uint8; inlen: csize_t): void {.
    cdecl, importc: "fz_sha384_update".}
proc fz_sha384_final*(state: ptr fz_sha384; digest: array[64'i64, uint8]): void {.
    cdecl, importc: "fz_sha384_final".}
proc fz_arc4_init*(state: ptr fz_arc4; key: ptr uint8; len: csize_t): void {.
    cdecl, importc: "fz_arc4_init".}
proc fz_arc4_encrypt*(state: ptr fz_arc4; dest: ptr uint8; src: ptr uint8;
                      len: csize_t): void {.cdecl, importc: "fz_arc4_encrypt".}
proc fz_arc4_final*(state: ptr fz_arc4): void {.cdecl, importc: "fz_arc4_final".}
proc fz_aes_setkey_enc*(ctx: ptr fz_aes; key: ptr uint8; keysize: cint): cint {.
    cdecl, importc: "fz_aes_setkey_enc".}
proc fz_aes_setkey_dec*(ctx: ptr fz_aes; key: ptr uint8; keysize: cint): cint {.
    cdecl, importc: "fz_aes_setkey_dec".}
proc fz_aes_crypt_cbc*(ctx: ptr fz_aes; mode: cint; length: csize_t;
                       iv: array[16'i64, uint8]; input: ptr uint8;
                       output: ptr uint8): void {.cdecl,
    importc: "fz_aes_crypt_cbc".}
proc fz_getopt_long*(nargc: cint; nargv: ptr cstring; ostr: cstring;
                     longopts: ptr fz_getopt_long_options): cint {.cdecl,
    importc: "fz_getopt_long".}
proc fz_getopt*(nargc: cint; nargv: ptr cstring; ostr: cstring): cint {.cdecl,
    importc: "fz_getopt".}
var fz_optind* {.importc: "fz_optind".}: cint
var fz_optarg* {.importc: "fz_optarg".}: cstring
var fz_optlong* {.importc: "fz_optlong".}: ptr fz_getopt_long_options
var fz_optitem* {.importc: "fz_optitem".}: cint
proc fz_opt_from_list*(opt: cstring; optlist: cstring): cint {.cdecl,
    importc: "fz_opt_from_list".}
proc fz_new_hash_table*(ctx: ptr fz_context; initialsize: cint; keylen: cint;
                        lock: cint; drop_val: fz_hash_table_drop_fn): ptr fz_hash_table {.
    cdecl, importc: "fz_new_hash_table".}
proc fz_drop_hash_table*(ctx: ptr fz_context; table: ptr fz_hash_table): void {.
    cdecl, importc: "fz_drop_hash_table".}
proc fz_hash_find*(ctx: ptr fz_context; table: ptr fz_hash_table; key: pointer): pointer {.
    cdecl, importc: "fz_hash_find".}
proc fz_hash_insert*(ctx: ptr fz_context; table: ptr fz_hash_table;
                     key: pointer; val: pointer): pointer {.cdecl,
    importc: "fz_hash_insert".}
proc fz_hash_remove*(ctx: ptr fz_context; table: ptr fz_hash_table; key: pointer): void {.
    cdecl, importc: "fz_hash_remove".}
proc fz_hash_for_each*(ctx: ptr fz_context; table: ptr fz_hash_table;
                       state: pointer; callback: fz_hash_table_for_each_fn): void {.
    cdecl, importc: "fz_hash_for_each".}
proc fz_hash_filter*(ctx: ptr fz_context; table: ptr fz_hash_table;
                     state: pointer; callback: fz_hash_table_filter_fn): void {.
    cdecl, importc: "fz_hash_filter".}
proc fz_new_pool*(ctx: ptr fz_context): ptr fz_pool {.cdecl,
    importc: "fz_new_pool".}
proc fz_pool_alloc*(ctx: ptr fz_context; pool: ptr fz_pool; size: csize_t): pointer {.
    cdecl, importc: "fz_pool_alloc".}
proc fz_pool_strdup*(ctx: ptr fz_context; pool: ptr fz_pool; s: cstring): cstring {.
    cdecl, importc: "fz_pool_strdup".}
proc fz_pool_size*(ctx: ptr fz_context; pool: ptr fz_pool): csize_t {.cdecl,
    importc: "fz_pool_size".}
proc fz_drop_pool*(ctx: ptr fz_context; pool: ptr fz_pool): void {.cdecl,
    importc: "fz_drop_pool".}
proc fz_tree_lookup*(ctx: ptr fz_context; node: ptr fz_tree; key: cstring): pointer {.
    cdecl, importc: "fz_tree_lookup".}
proc fz_tree_insert*(ctx: ptr fz_context; root: ptr fz_tree; key: cstring;
                     value: pointer): ptr fz_tree {.cdecl,
    importc: "fz_tree_insert".}
proc fz_drop_tree*(ctx: ptr fz_context; node: ptr fz_tree; dropfunc: proc (
    a0: ptr fz_context; a1: pointer): void {.cdecl.}): void {.cdecl,
    importc: "fz_drop_tree".}
proc fz_bidi_fragment_text*(ctx: ptr fz_context; text: ptr uint32;
                            textlen: csize_t; baseDir: ptr fz_bidi_direction;
                            callback: fz_bidi_fragment_fn; arg: pointer;
                            flags: cint): void {.cdecl,
    importc: "fz_bidi_fragment_text".}
proc fz_open_archive*(ctx: ptr fz_context; filename: cstring): ptr fz_archive {.
    cdecl, importc: "fz_open_archive".}
proc fz_open_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    cdecl, importc: "fz_open_archive_with_stream".}
proc fz_try_open_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    cdecl, importc: "fz_try_open_archive_with_stream".}
proc fz_open_directory*(ctx: ptr fz_context; path: cstring): ptr fz_archive {.
    cdecl, importc: "fz_open_directory".}
proc fz_is_directory*(ctx: ptr fz_context; path: cstring): cint {.cdecl,
    importc: "fz_is_directory".}
proc fz_drop_archive*(ctx: ptr fz_context; arch: ptr fz_archive): void {.cdecl,
    importc: "fz_drop_archive".}
proc fz_keep_archive*(ctx: ptr fz_context; arch: ptr fz_archive): ptr fz_archive {.
    cdecl, importc: "fz_keep_archive".}
proc fz_archive_format*(ctx: ptr fz_context; arch: ptr fz_archive): cstring {.
    cdecl, importc: "fz_archive_format".}
proc fz_count_archive_entries*(ctx: ptr fz_context; arch: ptr fz_archive): cint {.
    cdecl, importc: "fz_count_archive_entries".}
proc fz_list_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive; idx: cint): cstring {.
    cdecl, importc: "fz_list_archive_entry".}
proc fz_has_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive;
                           name: cstring): cint {.cdecl,
    importc: "fz_has_archive_entry".}
proc fz_open_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive;
                            name: cstring): ptr fz_stream {.cdecl,
    importc: "fz_open_archive_entry".}
proc fz_try_open_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive;
                                name: cstring): ptr fz_stream {.cdecl,
    importc: "fz_try_open_archive_entry".}
proc fz_read_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive;
                            name: cstring): ptr fz_buffer {.cdecl,
    importc: "fz_read_archive_entry".}
proc fz_try_read_archive_entry*(ctx: ptr fz_context; arch: ptr fz_archive;
                                name: cstring): ptr fz_buffer {.cdecl,
    importc: "fz_try_read_archive_entry".}
proc fz_is_tar_archive*(ctx: ptr fz_context; file: ptr fz_stream): cint {.cdecl,
    importc: "fz_is_tar_archive".}
proc fz_is_libarchive_archive*(ctx: ptr fz_context; file: ptr fz_stream): cint {.
    cdecl, importc: "fz_is_libarchive_archive".}
proc fz_is_cfb_archive*(ctx: ptr fz_context; file: ptr fz_stream): cint {.cdecl,
    importc: "fz_is_cfb_archive".}
proc fz_open_tar_archive*(ctx: ptr fz_context; filename: cstring): ptr fz_archive {.
    cdecl, importc: "fz_open_tar_archive".}
proc fz_open_tar_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    cdecl, importc: "fz_open_tar_archive_with_stream".}
proc fz_open_libarchive_archive*(ctx: ptr fz_context; filename: cstring): ptr fz_archive {.
    cdecl, importc: "fz_open_libarchive_archive".}
proc fz_open_libarchive_archive_with_stream*(ctx: ptr fz_context;
    file: ptr fz_stream): ptr fz_archive {.cdecl,
    importc: "fz_open_libarchive_archive_with_stream".}
proc fz_open_cfb_archive*(ctx: ptr fz_context; filename: cstring): ptr fz_archive {.
    cdecl, importc: "fz_open_cfb_archive".}
proc fz_open_cfb_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    cdecl, importc: "fz_open_cfb_archive_with_stream".}
proc fz_is_zip_archive*(ctx: ptr fz_context; file: ptr fz_stream): cint {.cdecl,
    importc: "fz_is_zip_archive".}
proc fz_open_zip_archive*(ctx: ptr fz_context; path: cstring): ptr fz_archive {.
    cdecl, importc: "fz_open_zip_archive".}
proc fz_open_zip_archive_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr fz_archive {.
    cdecl, importc: "fz_open_zip_archive_with_stream".}
proc fz_new_zip_writer*(ctx: ptr fz_context; filename: cstring): ptr fz_zip_writer {.
    cdecl, importc: "fz_new_zip_writer".}
proc fz_new_zip_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_zip_writer {.
    cdecl, importc: "fz_new_zip_writer_with_output".}
proc fz_write_zip_entry*(ctx: ptr fz_context; zip: ptr fz_zip_writer;
                         name: cstring; buf: ptr fz_buffer; compress: cint): void {.
    cdecl, importc: "fz_write_zip_entry".}
proc fz_close_zip_writer*(ctx: ptr fz_context; zip: ptr fz_zip_writer): void {.
    cdecl, importc: "fz_close_zip_writer".}
proc fz_drop_zip_writer*(ctx: ptr fz_context; zip: ptr fz_zip_writer): void {.
    cdecl, importc: "fz_drop_zip_writer".}
proc fz_new_tree_archive*(ctx: ptr fz_context; tree: ptr fz_tree): ptr fz_archive {.
    cdecl, importc: "fz_new_tree_archive".}
proc fz_tree_archive_add_buffer*(ctx: ptr fz_context;
                                 arch_private: ptr fz_archive; name: cstring;
                                 buf: ptr fz_buffer): void {.cdecl,
    importc: "fz_tree_archive_add_buffer".}
proc fz_tree_archive_add_data*(ctx: ptr fz_context;
                               arch_private: ptr fz_archive; name: cstring;
                               data: pointer; size: csize_t): void {.cdecl,
    importc: "fz_tree_archive_add_data".}
proc fz_new_multi_archive*(ctx: ptr fz_context): ptr fz_archive {.cdecl,
    importc: "fz_new_multi_archive".}
proc fz_mount_multi_archive*(ctx: ptr fz_context; arch_private: ptr fz_archive;
                             sub: ptr fz_archive; path: cstring): void {.cdecl,
    importc: "fz_mount_multi_archive".}
var fz_libarchive_archive_handler* {.importc: "fz_libarchive_archive_handler".}: fz_archive_handler
proc fz_register_archive_handler*(ctx: ptr fz_context;
                                  handler: ptr fz_archive_handler): void {.
    cdecl, importc: "fz_register_archive_handler".}
proc fz_new_archive_of_size*(ctx: ptr fz_context; file: ptr fz_stream;
                             size: cint): ptr fz_archive {.cdecl,
    importc: "fz_new_archive_of_size".}
proc fz_parse_xml*(ctx: ptr fz_context; buf: ptr fz_buffer; preserve_white: cint): ptr fz_xml {.
    cdecl, importc: "fz_parse_xml".}
proc fz_parse_xml_stream*(ctx: ptr fz_context; stream: ptr fz_stream;
                          preserve_white: cint): ptr fz_xml {.cdecl,
    importc: "fz_parse_xml_stream".}
proc fz_parse_xml_archive_entry*(ctx: ptr fz_context; dir: ptr fz_archive;
                                 filename: cstring; preserve_white: cint): ptr fz_xml {.
    cdecl, importc: "fz_parse_xml_archive_entry".}
proc fz_try_parse_xml_archive_entry*(ctx: ptr fz_context; dir: ptr fz_archive;
                                     filename: cstring; preserve_white: cint): ptr fz_xml {.
    cdecl, importc: "fz_try_parse_xml_archive_entry".}
proc fz_parse_xml_from_html5*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_xml {.
    cdecl, importc: "fz_parse_xml_from_html5".}
proc fz_keep_xml*(ctx: ptr fz_context; xml: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_keep_xml".}
proc fz_drop_xml*(ctx: ptr fz_context; xml: ptr fz_xml): void {.cdecl,
    importc: "fz_drop_xml".}
proc fz_detach_xml*(ctx: ptr fz_context; node: ptr fz_xml): void {.cdecl,
    importc: "fz_detach_xml".}
proc fz_xml_root*(xml: ptr fz_xml_doc): ptr fz_xml {.cdecl,
    importc: "fz_xml_root".}
proc fz_xml_prev*(item: ptr fz_xml): ptr fz_xml {.cdecl, importc: "fz_xml_prev".}
proc fz_xml_next*(item: ptr fz_xml): ptr fz_xml {.cdecl, importc: "fz_xml_next".}
proc fz_xml_up*(item: ptr fz_xml): ptr fz_xml {.cdecl, importc: "fz_xml_up".}
proc fz_xml_down*(item: ptr fz_xml): ptr fz_xml {.cdecl, importc: "fz_xml_down".}
proc fz_xml_is_tag*(item: ptr fz_xml; name: cstring): cint {.cdecl,
    importc: "fz_xml_is_tag".}
proc fz_xml_tag*(item: ptr fz_xml): cstring {.cdecl, importc: "fz_xml_tag".}
proc fz_xml_att*(item: ptr fz_xml; att: cstring): cstring {.cdecl,
    importc: "fz_xml_att".}
proc fz_xml_att_alt*(item: ptr fz_xml; one: cstring; two: cstring): cstring {.
    cdecl, importc: "fz_xml_att_alt".}
proc fz_xml_att_eq*(item: ptr fz_xml; name: cstring; match: cstring): cint {.
    cdecl, importc: "fz_xml_att_eq".}
proc fz_xml_add_att*(ctx: ptr fz_context; pool: ptr fz_pool; node: ptr fz_xml;
                     key: cstring; val: cstring): void {.cdecl,
    importc: "fz_xml_add_att".}
proc fz_xml_text*(item: ptr fz_xml): cstring {.cdecl, importc: "fz_xml_text".}
proc fz_output_xml*(ctx: ptr fz_context; out_arg: ptr fz_output;
                    item: ptr fz_xml; level: cint): void {.cdecl,
    importc: "fz_output_xml".}
proc fz_debug_xml*(item: ptr fz_xml; level: cint): void {.cdecl,
    importc: "fz_debug_xml".}
proc fz_xml_find*(item: ptr fz_xml; tag: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find".}
proc fz_xml_find_next*(item: ptr fz_xml; tag: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_next".}
proc fz_xml_find_down*(item: ptr fz_xml; tag: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_down".}
proc fz_xml_find_match*(item: ptr fz_xml; tag: cstring; att: cstring;
                        match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_match".}
proc fz_xml_find_next_match*(item: ptr fz_xml; tag: cstring; att: cstring;
                             match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_next_match".}
proc fz_xml_find_down_match*(item: ptr fz_xml; tag: cstring; att: cstring;
                             match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_down_match".}
proc fz_xml_find_dfs*(item: ptr fz_xml; tag: cstring; att: cstring;
                      match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_dfs".}
proc fz_xml_find_dfs_top*(item: ptr fz_xml; tag: cstring; att: cstring;
                          match: cstring; top: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_dfs_top".}
proc fz_xml_find_next_dfs*(item: ptr fz_xml; tag: cstring; att: cstring;
                           match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_xml_find_next_dfs".}
proc fz_xml_find_next_dfs_top*(item: ptr fz_xml; tag: cstring; att: cstring;
                               match: cstring; top: ptr fz_xml): ptr fz_xml {.
    cdecl, importc: "fz_xml_find_next_dfs_top".}
proc fz_dom_body*(ctx: ptr fz_context; dom: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_dom_body".}
proc fz_dom_document_element*(ctx: ptr fz_context; dom: ptr fz_xml): ptr fz_xml {.
    cdecl, importc: "fz_dom_document_element".}
proc fz_dom_create_element*(ctx: ptr fz_context; dom: ptr fz_xml; tag: cstring): ptr fz_xml {.
    cdecl, importc: "fz_dom_create_element".}
proc fz_dom_create_text_node*(ctx: ptr fz_context; dom: ptr fz_xml;
                              text: cstring): ptr fz_xml {.cdecl,
    importc: "fz_dom_create_text_node".}
proc fz_dom_find*(ctx: ptr fz_context; elt: ptr fz_xml; tag: cstring;
                  att: cstring; match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_dom_find".}
proc fz_dom_find_next*(ctx: ptr fz_context; elt: ptr fz_xml; tag: cstring;
                       att: cstring; match: cstring): ptr fz_xml {.cdecl,
    importc: "fz_dom_find_next".}
proc fz_dom_append_child*(ctx: ptr fz_context; parent: ptr fz_xml;
                          child: ptr fz_xml): void {.cdecl,
    importc: "fz_dom_append_child".}
proc fz_dom_insert_before*(ctx: ptr fz_context; node: ptr fz_xml;
                           new_elt: ptr fz_xml): void {.cdecl,
    importc: "fz_dom_insert_before".}
proc fz_dom_insert_after*(ctx: ptr fz_context; node: ptr fz_xml;
                          new_elt: ptr fz_xml): void {.cdecl,
    importc: "fz_dom_insert_after".}
proc fz_dom_remove*(ctx: ptr fz_context; elt: ptr fz_xml): void {.cdecl,
    importc: "fz_dom_remove".}
proc fz_dom_clone*(ctx: ptr fz_context; elt: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_dom_clone".}
proc fz_dom_first_child*(ctx: ptr fz_context; elt: ptr fz_xml): ptr fz_xml {.
    cdecl, importc: "fz_dom_first_child".}
proc fz_dom_parent*(ctx: ptr fz_context; elt: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_dom_parent".}
proc fz_dom_next*(ctx: ptr fz_context; elt: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_dom_next".}
proc fz_dom_previous*(ctx: ptr fz_context; elt: ptr fz_xml): ptr fz_xml {.cdecl,
    importc: "fz_dom_previous".}
proc fz_dom_add_attribute*(ctx: ptr fz_context; elt: ptr fz_xml; att: cstring;
                           value: cstring): void {.cdecl,
    importc: "fz_dom_add_attribute".}
proc fz_dom_remove_attribute*(ctx: ptr fz_context; elt: ptr fz_xml; att: cstring): void {.
    cdecl, importc: "fz_dom_remove_attribute".}
proc fz_dom_attribute*(ctx: ptr fz_context; elt: ptr fz_xml; att: cstring): cstring {.
    cdecl, importc: "fz_dom_attribute".}
proc fz_dom_get_attribute*(ctx: ptr fz_context; elt: ptr fz_xml; i: cint;
                           att: ptr cstring): cstring {.cdecl,
    importc: "fz_dom_get_attribute".}
proc fz_new_dom*(ctx: ptr fz_context; tag: cstring): ptr fz_xml {.cdecl,
    importc: "fz_new_dom".}
proc fz_new_dom_node*(ctx: ptr fz_context; dom: ptr fz_xml; tag: cstring): ptr fz_xml {.
    cdecl, importc: "fz_new_dom_node".}
proc fz_new_dom_text_node*(ctx: ptr fz_context; dom: ptr fz_xml; text: cstring): ptr fz_xml {.
    cdecl, importc: "fz_new_dom_text_node".}
proc fz_write_xml*(ctx: ptr fz_context; root: ptr fz_xml;
                   out_arg: ptr fz_output; indented: cint): void {.cdecl,
    importc: "fz_write_xml".}
proc fz_save_xml*(ctx: ptr fz_context; root: ptr fz_xml; path: cstring;
                  indented: cint): void {.cdecl, importc: "fz_save_xml".}
proc fz_keep_storable*(a0: ptr fz_context; a1: ptr fz_storable): pointer {.
    cdecl, importc: "fz_keep_storable".}
proc fz_drop_storable*(a0: ptr fz_context; a1: ptr fz_storable): void {.cdecl,
    importc: "fz_drop_storable".}
proc fz_keep_key_storable*(a0: ptr fz_context; a1: ptr fz_key_storable): pointer {.
    cdecl, importc: "fz_keep_key_storable".}
proc fz_drop_key_storable*(a0: ptr fz_context; a1: ptr fz_key_storable): void {.
    cdecl, importc: "fz_drop_key_storable".}
proc fz_keep_key_storable_key*(a0: ptr fz_context; a1: ptr fz_key_storable): pointer {.
    cdecl, importc: "fz_keep_key_storable_key".}
proc fz_drop_key_storable_key*(a0: ptr fz_context; a1: ptr fz_key_storable): void {.
    cdecl, importc: "fz_drop_key_storable_key".}
proc fz_new_store_context*(ctx: ptr fz_context; max: csize_t): void {.cdecl,
    importc: "fz_new_store_context".}
proc fz_keep_store_context*(ctx: ptr fz_context): ptr fz_store {.cdecl,
    importc: "fz_keep_store_context".}
proc fz_drop_store_context*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_drop_store_context".}
proc fz_store_item*(ctx: ptr fz_context; key: pointer; val: pointer;
                    itemsize: csize_t; type_arg: ptr fz_store_type): pointer {.
    cdecl, importc: "fz_store_item".}
proc fz_find_item*(ctx: ptr fz_context; drop: fz_store_drop_fn; key: pointer;
                   type_arg: ptr fz_store_type): pointer {.cdecl,
    importc: "fz_find_item".}
proc fz_remove_item*(ctx: ptr fz_context; drop: fz_store_drop_fn; key: pointer;
                     type_arg: ptr fz_store_type): void {.cdecl,
    importc: "fz_remove_item".}
proc fz_empty_store*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_empty_store".}
proc fz_store_scavenge*(ctx: ptr fz_context; size: csize_t; phase: ptr cint): cint {.
    cdecl, importc: "fz_store_scavenge".}
proc fz_store_scavenge_external*(ctx: ptr fz_context; size: csize_t;
                                 phase: ptr cint): cint {.cdecl,
    importc: "fz_store_scavenge_external".}
proc fz_shrink_store*(ctx: ptr fz_context; percent: cuint): cint {.cdecl,
    importc: "fz_shrink_store".}
proc fz_filter_store*(ctx: ptr fz_context; fn: fz_store_filter_fn; arg: pointer;
                      type_arg: ptr fz_store_type): void {.cdecl,
    importc: "fz_filter_store".}
proc fz_debug_store*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.cdecl,
    importc: "fz_debug_store".}
proc fz_defer_reap_start*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_defer_reap_start".}
proc fz_defer_reap_end*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_defer_reap_end".}
var fz_default_color_params* {.importc: "fz_default_color_params".}: fz_color_params
proc fz_lookup_rendering_intent*(name: cstring): cint {.cdecl,
    importc: "fz_lookup_rendering_intent".}
proc fz_rendering_intent_name*(ri: cint): cstring {.cdecl,
    importc: "fz_rendering_intent_name".}
proc fz_new_colorspace*(ctx: ptr fz_context; type_arg: enum_fz_colorspace_type;
                        flags: cint; n: cint; name: cstring): ptr fz_colorspace {.
    cdecl, importc: "fz_new_colorspace".}
proc fz_keep_colorspace*(ctx: ptr fz_context; colorspace: ptr fz_colorspace): ptr fz_colorspace {.
    cdecl, importc: "fz_keep_colorspace".}
proc fz_drop_colorspace*(ctx: ptr fz_context; colorspace: ptr fz_colorspace): void {.
    cdecl, importc: "fz_drop_colorspace".}
proc fz_new_indexed_colorspace*(ctx: ptr fz_context; base: ptr fz_colorspace;
                                high: cint; lookup: ptr uint8): ptr fz_colorspace {.
    cdecl, importc: "fz_new_indexed_colorspace".}
proc fz_new_icc_colorspace*(ctx: ptr fz_context;
                            type_arg: enum_fz_colorspace_type; flags: cint;
                            name: cstring; buf: ptr fz_buffer): ptr fz_colorspace {.
    cdecl, importc: "fz_new_icc_colorspace".}
proc fz_new_cal_gray_colorspace*(ctx: ptr fz_context; wp: array[3'i64, cfloat];
                                 bp: array[3'i64, cfloat]; gamma: cfloat): ptr fz_colorspace {.
    cdecl, importc: "fz_new_cal_gray_colorspace".}
proc fz_new_cal_rgb_colorspace*(ctx: ptr fz_context; wp: array[3'i64, cfloat];
                                bp: array[3'i64, cfloat];
                                gamma: array[3'i64, cfloat];
                                matrix: array[9'i64, cfloat]): ptr fz_colorspace {.
    cdecl, importc: "fz_new_cal_rgb_colorspace".}
proc fz_colorspace_type*(ctx: ptr fz_context; cs: ptr fz_colorspace): enum_fz_colorspace_type {.
    cdecl, importc: "fz_colorspace_type".}
proc fz_colorspace_name*(ctx: ptr fz_context; cs: ptr fz_colorspace): cstring {.
    cdecl, importc: "fz_colorspace_name".}
proc fz_colorspace_n*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.cdecl,
    importc: "fz_colorspace_n".}
proc fz_colorspace_is_subtractive*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_subtractive".}
proc fz_colorspace_device_n_has_only_cmyk*(ctx: ptr fz_context;
    cs: ptr fz_colorspace): cint {.cdecl, importc: "fz_colorspace_device_n_has_only_cmyk".}
proc fz_colorspace_device_n_has_cmyk*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_device_n_has_cmyk".}
proc fz_colorspace_is_gray*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_gray".}
proc fz_colorspace_is_rgb*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_rgb".}
proc fz_colorspace_is_cmyk*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_cmyk".}
proc fz_colorspace_is_lab*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_lab".}
proc fz_colorspace_is_indexed*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_indexed".}
proc fz_colorspace_is_device_n*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_device_n".}
proc fz_colorspace_is_device*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_device".}
proc fz_colorspace_is_device_gray*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_device_gray".}
proc fz_colorspace_is_device_cmyk*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_device_cmyk".}
proc fz_colorspace_is_lab_icc*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_colorspace_is_lab_icc".}
proc fz_is_valid_blend_colorspace*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "fz_is_valid_blend_colorspace".}
proc fz_base_colorspace*(ctx: ptr fz_context; cs: ptr fz_colorspace): ptr fz_colorspace {.
    cdecl, importc: "fz_base_colorspace".}
proc fz_device_gray*(ctx: ptr fz_context): ptr fz_colorspace {.cdecl,
    importc: "fz_device_gray".}
proc fz_device_rgb*(ctx: ptr fz_context): ptr fz_colorspace {.cdecl,
    importc: "fz_device_rgb".}
proc fz_device_bgr*(ctx: ptr fz_context): ptr fz_colorspace {.cdecl,
    importc: "fz_device_bgr".}
proc fz_device_cmyk*(ctx: ptr fz_context): ptr fz_colorspace {.cdecl,
    importc: "fz_device_cmyk".}
proc fz_device_lab*(ctx: ptr fz_context): ptr fz_colorspace {.cdecl,
    importc: "fz_device_lab".}
proc fz_colorspace_name_colorant*(ctx: ptr fz_context; cs: ptr fz_colorspace;
                                  n: cint; name: cstring): void {.cdecl,
    importc: "fz_colorspace_name_colorant".}
proc fz_colorspace_colorant*(ctx: ptr fz_context; cs: ptr fz_colorspace; n: cint): cstring {.
    cdecl, importc: "fz_colorspace_colorant".}
proc fz_clamp_color*(ctx: ptr fz_context; cs: ptr fz_colorspace;
                     in_arg: ptr cfloat; out_arg: ptr cfloat): void {.cdecl,
    importc: "fz_clamp_color".}
proc fz_convert_color*(ctx: ptr fz_context; ss: ptr fz_colorspace;
                       sv: ptr cfloat; ds: ptr fz_colorspace; dv: ptr cfloat;
                       is_arg: ptr fz_colorspace; params: fz_color_params): void {.
    cdecl, importc: "fz_convert_color".}
proc fz_new_default_colorspaces*(ctx: ptr fz_context): ptr fz_default_colorspaces {.
    cdecl, importc: "fz_new_default_colorspaces".}
proc fz_keep_default_colorspaces*(ctx: ptr fz_context;
                                  default_cs: ptr fz_default_colorspaces): ptr fz_default_colorspaces {.
    cdecl, importc: "fz_keep_default_colorspaces".}
proc fz_drop_default_colorspaces*(ctx: ptr fz_context;
                                  default_cs: ptr fz_default_colorspaces): void {.
    cdecl, importc: "fz_drop_default_colorspaces".}
proc fz_clone_default_colorspaces*(ctx: ptr fz_context;
                                   base: ptr fz_default_colorspaces): ptr fz_default_colorspaces {.
    cdecl, importc: "fz_clone_default_colorspaces".}
proc fz_default_gray*(ctx: ptr fz_context;
                      default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    cdecl, importc: "fz_default_gray".}
proc fz_default_rgb*(ctx: ptr fz_context; default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    cdecl, importc: "fz_default_rgb".}
proc fz_default_cmyk*(ctx: ptr fz_context;
                      default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    cdecl, importc: "fz_default_cmyk".}
proc fz_default_output_intent*(ctx: ptr fz_context;
                               default_cs: ptr fz_default_colorspaces): ptr fz_colorspace {.
    cdecl, importc: "fz_default_output_intent".}
proc fz_set_default_gray*(ctx: ptr fz_context;
                          default_cs: ptr fz_default_colorspaces;
                          cs: ptr fz_colorspace): void {.cdecl,
    importc: "fz_set_default_gray".}
proc fz_set_default_rgb*(ctx: ptr fz_context;
                         default_cs: ptr fz_default_colorspaces;
                         cs: ptr fz_colorspace): void {.cdecl,
    importc: "fz_set_default_rgb".}
proc fz_set_default_cmyk*(ctx: ptr fz_context;
                          default_cs: ptr fz_default_colorspaces;
                          cs: ptr fz_colorspace): void {.cdecl,
    importc: "fz_set_default_cmyk".}
proc fz_set_default_output_intent*(ctx: ptr fz_context;
                                   default_cs: ptr fz_default_colorspaces;
                                   cs: ptr fz_colorspace): void {.cdecl,
    importc: "fz_set_default_output_intent".}
proc fz_drop_colorspace_imp*(ctx: ptr fz_context; cs_private: ptr fz_storable): void {.
    cdecl, importc: "fz_drop_colorspace_imp".}
proc fz_new_separations*(ctx: ptr fz_context; controllable: cint): ptr fz_separations {.
    cdecl, importc: "fz_new_separations".}
proc fz_keep_separations*(ctx: ptr fz_context; sep: ptr fz_separations): ptr fz_separations {.
    cdecl, importc: "fz_keep_separations".}
proc fz_drop_separations*(ctx: ptr fz_context; sep: ptr fz_separations): void {.
    cdecl, importc: "fz_drop_separations".}
proc fz_add_separation*(ctx: ptr fz_context; sep: ptr fz_separations;
                        name: cstring; cs: ptr fz_colorspace; cs_channel: cint): void {.
    cdecl, importc: "fz_add_separation".}
proc fz_add_separation_equivalents*(ctx: ptr fz_context;
                                    sep: ptr fz_separations; rgba: uint32;
                                    cmyk: uint32; name: cstring): void {.cdecl,
    importc: "fz_add_separation_equivalents".}
proc fz_set_separation_behavior*(ctx: ptr fz_context; sep: ptr fz_separations;
                                 separation: cint;
                                 behavior: fz_separation_behavior): void {.
    cdecl, importc: "fz_set_separation_behavior".}
proc fz_separation_current_behavior*(ctx: ptr fz_context;
                                     sep: ptr fz_separations; separation: cint): fz_separation_behavior {.
    cdecl, importc: "fz_separation_current_behavior".}
proc fz_separation_name*(ctx: ptr fz_context; sep: ptr fz_separations;
                         separation: cint): cstring {.cdecl,
    importc: "fz_separation_name".}
proc fz_count_separations*(ctx: ptr fz_context; sep: ptr fz_separations): cint {.
    cdecl, importc: "fz_count_separations".}
proc fz_count_active_separations*(ctx: ptr fz_context; seps: ptr fz_separations): cint {.
    cdecl, importc: "fz_count_active_separations".}
proc fz_compare_separations*(ctx: ptr fz_context; sep1: ptr fz_separations;
                             sep2: ptr fz_separations): cint {.cdecl,
    importc: "fz_compare_separations".}
proc fz_clone_separations_for_overprint*(ctx: ptr fz_context;
    seps: ptr fz_separations): ptr fz_separations {.cdecl,
    importc: "fz_clone_separations_for_overprint".}
proc fz_convert_separation_colors*(ctx: ptr fz_context;
                                   src_cs: ptr fz_colorspace;
                                   src_color: ptr cfloat;
                                   dst_seps: ptr fz_separations;
                                   dst_cs: ptr fz_colorspace;
                                   dst_color: ptr cfloat;
                                   color_params: fz_color_params): void {.cdecl,
    importc: "fz_convert_separation_colors".}
proc fz_separation_equivalent*(ctx: ptr fz_context; seps: ptr fz_separations;
                               idx: cint; dst_cs: ptr fz_colorspace;
                               dst_color: ptr cfloat; prf: ptr fz_colorspace;
                               color_params: fz_color_params): void {.cdecl,
    importc: "fz_separation_equivalent".}
proc fz_pixmap_bbox*(ctx: ptr fz_context; pix: ptr fz_pixmap): fz_irect {.cdecl,
    importc: "fz_pixmap_bbox".}
proc fz_pixmap_width*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_width".}
proc fz_pixmap_height*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_height".}
proc fz_pixmap_x*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_x".}
proc fz_pixmap_y*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_y".}
proc fz_pixmap_size*(ctx: ptr fz_context; pix: ptr fz_pixmap): csize_t {.cdecl,
    importc: "fz_pixmap_size".}
proc fz_new_pixmap*(ctx: ptr fz_context; cs: ptr fz_colorspace; w: cint;
                    h: cint; seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap".}
proc fz_new_pixmap_with_bbox*(ctx: ptr fz_context;
                              colorspace: ptr fz_colorspace; bbox: fz_irect;
                              seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_with_bbox".}
proc fz_new_pixmap_with_data*(ctx: ptr fz_context;
                              colorspace: ptr fz_colorspace; w: cint; h: cint;
                              seps: ptr fz_separations; alpha: cint;
                              stride: cint; samples: ptr uint8): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_with_data".}
proc fz_new_pixmap_with_bbox_and_data*(ctx: ptr fz_context;
                                       colorspace: ptr fz_colorspace;
                                       rect: fz_irect; seps: ptr fz_separations;
                                       alpha: cint; samples: ptr uint8): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_with_bbox_and_data".}
proc fz_new_pixmap_from_pixmap*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                                rect: ptr fz_irect): ptr fz_pixmap {.cdecl,
    importc: "fz_new_pixmap_from_pixmap".}
proc fz_clone_pixmap*(ctx: ptr fz_context; old: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_clone_pixmap".}
proc fz_keep_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_keep_pixmap".}
proc fz_drop_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap): void {.cdecl,
    importc: "fz_drop_pixmap".}
proc fz_pixmap_colorspace*(ctx: ptr fz_context; pix: ptr fz_pixmap): ptr fz_colorspace {.
    cdecl, importc: "fz_pixmap_colorspace".}
proc fz_pixmap_components*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.
    cdecl, importc: "fz_pixmap_components".}
proc fz_pixmap_colorants*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.
    cdecl, importc: "fz_pixmap_colorants".}
proc fz_pixmap_spots*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_spots".}
proc fz_pixmap_alpha*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_alpha".}
proc fz_pixmap_samples*(ctx: ptr fz_context; pix: ptr fz_pixmap): ptr uint8 {.
    cdecl, importc: "fz_pixmap_samples".}
proc fz_pixmap_stride*(ctx: ptr fz_context; pix: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_pixmap_stride".}
proc fz_set_pixmap_resolution*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                               xres: cint; yres: cint): void {.cdecl,
    importc: "fz_set_pixmap_resolution".}
proc fz_clear_pixmap_with_value*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                 value: cint): void {.cdecl,
    importc: "fz_clear_pixmap_with_value".}
proc fz_fill_pixmap_with_color*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                colorspace: ptr fz_colorspace;
                                color: ptr cfloat; color_params: fz_color_params): void {.
    cdecl, importc: "fz_fill_pixmap_with_color".}
proc fz_clear_pixmap_rect_with_value*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                      value: cint; r: fz_irect): void {.cdecl,
    importc: "fz_clear_pixmap_rect_with_value".}
proc fz_clear_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap): void {.cdecl,
    importc: "fz_clear_pixmap".}
proc fz_invert_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap): void {.cdecl,
    importc: "fz_invert_pixmap".}
proc fz_invert_pixmap_alpha*(ctx: ptr fz_context; pix: ptr fz_pixmap): void {.
    cdecl, importc: "fz_invert_pixmap_alpha".}
proc fz_invert_pixmap_luminance*(ctx: ptr fz_context; pix: ptr fz_pixmap): void {.
    cdecl, importc: "fz_invert_pixmap_luminance".}
proc fz_tint_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap; black: cint;
                     white: cint): void {.cdecl, importc: "fz_tint_pixmap".}
proc fz_invert_pixmap_rect*(ctx: ptr fz_context; image: ptr fz_pixmap;
                            rect: fz_irect): void {.cdecl,
    importc: "fz_invert_pixmap_rect".}
proc fz_invert_pixmap_raw*(ctx: ptr fz_context; pix: ptr fz_pixmap): void {.
    cdecl, importc: "fz_invert_pixmap_raw".}
proc fz_gamma_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap; gamma: cfloat): void {.
    cdecl, importc: "fz_gamma_pixmap".}
proc fz_convert_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                        cs_des: ptr fz_colorspace; prf: ptr fz_colorspace;
                        default_cs: ptr fz_default_colorspaces;
                        color_params: fz_color_params; keep_alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_convert_pixmap".}
proc fz_is_pixmap_monochrome*(ctx: ptr fz_context; pixmap: ptr fz_pixmap): cint {.
    cdecl, importc: "fz_is_pixmap_monochrome".}
proc fz_alpha_from_gray*(ctx: ptr fz_context; gray: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_alpha_from_gray".}
proc fz_decode_tile*(ctx: ptr fz_context; pix: ptr fz_pixmap; decode: ptr cfloat): void {.
    cdecl, importc: "fz_decode_tile".}
proc fz_md5_pixmap*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                    digest: array[16'i64, uint8]): void {.cdecl,
    importc: "fz_md5_pixmap".}
proc fz_unpack_stream*(ctx: ptr fz_context; src: ptr fz_stream; depth: cint;
                       w: cint; h: cint; n: cint; indexed: cint; pad: cint;
                       skip: cint): ptr fz_stream {.cdecl,
    importc: "fz_unpack_stream".}
proc fz_warp_pixmap*(ctx: ptr fz_context; src: ptr fz_pixmap;
                     points: array[4'i64, fz_point]; width: cint; height: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_warp_pixmap".}
proc fz_autowarp_pixmap*(ctx: ptr fz_context; src: ptr fz_pixmap;
                         points: array[4'i64, fz_point]): ptr fz_pixmap {.cdecl,
    importc: "fz_autowarp_pixmap".}
proc fz_detect_document*(ctx: ptr fz_context; points: ptr fz_point;
                         src: ptr fz_pixmap): cint {.cdecl,
    importc: "fz_detect_document".}
proc fz_clone_pixmap_area_with_different_seps*(ctx: ptr fz_context;
    src: ptr fz_pixmap; bbox: ptr fz_irect; dcs: ptr fz_colorspace;
    seps: ptr fz_separations; color_params: fz_color_params;
    default_cs: ptr fz_default_colorspaces): ptr fz_pixmap {.cdecl,
    importc: "fz_clone_pixmap_area_with_different_seps".}
proc fz_new_pixmap_from_alpha_channel*(ctx: ptr fz_context; src: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_from_alpha_channel".}
proc fz_new_pixmap_from_color_and_mask*(ctx: ptr fz_context;
                                        color: ptr fz_pixmap;
                                        mask: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_from_color_and_mask".}
proc fz_scale_pixmap*(ctx: ptr fz_context; src: ptr fz_pixmap; x: cfloat;
                      y: cfloat; w: cfloat; h: cfloat; clip: ptr fz_irect): ptr fz_pixmap {.
    cdecl, importc: "fz_scale_pixmap".}
proc fz_subsample_pixmap*(ctx: ptr fz_context; tile: ptr fz_pixmap; factor: cint): void {.
    cdecl, importc: "fz_subsample_pixmap".}
proc fz_copy_pixmap_rect*(ctx: ptr fz_context; dest: ptr fz_pixmap;
                          src: ptr fz_pixmap; r: fz_irect;
                          default_cs: ptr fz_default_colorspaces): void {.cdecl,
    importc: "fz_copy_pixmap_rect".}
proc fz_deflate_bound*(ctx: ptr fz_context; size: csize_t): csize_t {.cdecl,
    importc: "fz_deflate_bound".}
proc fz_deflate*(ctx: ptr fz_context; dest: ptr uint8;
                 compressed_length: ptr csize_t; source: ptr uint8;
                 source_length: csize_t; level: fz_deflate_level): void {.cdecl,
    importc: "fz_deflate".}
proc fz_new_deflated_data*(ctx: ptr fz_context; compressed_length: ptr csize_t;
                           source: ptr uint8; source_length: csize_t;
                           level: fz_deflate_level): ptr uint8 {.cdecl,
    importc: "fz_new_deflated_data".}
proc fz_new_deflated_data_from_buffer*(ctx: ptr fz_context;
                                       compressed_length: ptr csize_t;
                                       buffer: ptr fz_buffer;
                                       level: fz_deflate_level): ptr uint8 {.
    cdecl, importc: "fz_new_deflated_data_from_buffer".}
proc fz_compress_ccitt_fax_g3*(ctx: ptr fz_context; data: ptr uint8;
                               columns: cint; rows: cint; stride: ptrdiff_t): ptr fz_buffer {.
    cdecl, importc: "fz_compress_ccitt_fax_g3".}
proc fz_compress_ccitt_fax_g4*(ctx: ptr fz_context; data: ptr uint8;
                               columns: cint; rows: cint; stride: ptrdiff_t): ptr fz_buffer {.
    cdecl, importc: "fz_compress_ccitt_fax_g4".}
proc fz_open_null_filter*(ctx: ptr fz_context; chain: ptr fz_stream;
                          len: uint64; offset: int64): ptr fz_stream {.cdecl,
    importc: "fz_open_null_filter".}
proc fz_open_range_filter*(ctx: ptr fz_context; chain: ptr fz_stream;
                           ranges: ptr fz_range; nranges: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_range_filter".}
proc fz_open_endstream_filter*(ctx: ptr fz_context; chain: ptr fz_stream;
                               len: uint64; offset: int64): ptr fz_stream {.
    cdecl, importc: "fz_open_endstream_filter".}
proc fz_open_concat*(ctx: ptr fz_context; max: cint; pad: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_concat".}
proc fz_concat_push_drop*(ctx: ptr fz_context; concat: ptr fz_stream;
                          chain: ptr fz_stream): void {.cdecl,
    importc: "fz_concat_push_drop".}
proc fz_open_arc4*(ctx: ptr fz_context; chain: ptr fz_stream; key: ptr uint8;
                   keylen: cuint): ptr fz_stream {.cdecl,
    importc: "fz_open_arc4".}
proc fz_open_aesd*(ctx: ptr fz_context; chain: ptr fz_stream; key: ptr uint8;
                   keylen: cuint): ptr fz_stream {.cdecl,
    importc: "fz_open_aesd".}
proc fz_open_a85d*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.
    cdecl, importc: "fz_open_a85d".}
proc fz_open_ahxd*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.
    cdecl, importc: "fz_open_ahxd".}
proc fz_open_rld*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.
    cdecl, importc: "fz_open_rld".}
proc fz_open_dctd*(ctx: ptr fz_context; chain: ptr fz_stream;
                   color_transform: cint; invert_cmyk: cint; l2factor: cint;
                   jpegtables: ptr fz_stream): ptr fz_stream {.cdecl,
    importc: "fz_open_dctd".}
proc fz_open_faxd*(ctx: ptr fz_context; chain: ptr fz_stream; k: cint;
                   end_of_line: cint; encoded_byte_align: cint; columns: cint;
                   rows: cint; end_of_block: cint; black_is_1: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_faxd".}
proc fz_open_flated*(ctx: ptr fz_context; chain: ptr fz_stream;
                     window_bits: cint): ptr fz_stream {.cdecl,
    importc: "fz_open_flated".}
proc fz_open_libarchived*(ctx: ptr fz_context; chain: ptr fz_stream): ptr fz_stream {.
    cdecl, importc: "fz_open_libarchived".}
proc fz_open_lzwd*(ctx: ptr fz_context; chain: ptr fz_stream;
                   early_change: cint; min_bits: cint; reverse_bits: cint;
                   old_tiff: cint): ptr fz_stream {.cdecl,
    importc: "fz_open_lzwd".}
proc fz_open_predict*(ctx: ptr fz_context; chain: ptr fz_stream;
                      predictor: cint; columns: cint; colors: cint; bpc: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_predict".}
proc fz_open_jbig2d*(ctx: ptr fz_context; chain: ptr fz_stream;
                     globals: ptr fz_jbig2_globals; embedded: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_jbig2d".}
proc fz_load_jbig2_globals*(ctx: ptr fz_context; buf: ptr fz_buffer): ptr fz_jbig2_globals {.
    cdecl, importc: "fz_load_jbig2_globals".}
proc fz_keep_jbig2_globals*(ctx: ptr fz_context; globals: ptr fz_jbig2_globals): ptr fz_jbig2_globals {.
    cdecl, importc: "fz_keep_jbig2_globals".}
proc fz_drop_jbig2_globals*(ctx: ptr fz_context; globals: ptr fz_jbig2_globals): void {.
    cdecl, importc: "fz_drop_jbig2_globals".}
proc fz_drop_jbig2_globals_imp*(ctx: ptr fz_context; globals: ptr fz_storable): void {.
    cdecl, importc: "fz_drop_jbig2_globals_imp".}
proc fz_jbig2_globals_data*(ctx: ptr fz_context; globals: ptr fz_jbig2_globals): ptr fz_buffer {.
    cdecl, importc: "fz_jbig2_globals_data".}
proc fz_open_sgilog16*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_sgilog16".}
proc fz_open_sgilog24*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_sgilog24".}
proc fz_open_sgilog32*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_sgilog32".}
proc fz_open_thunder*(ctx: ptr fz_context; chain: ptr fz_stream; w: cint): ptr fz_stream {.
    cdecl, importc: "fz_open_thunder".}
proc fz_keep_compressed_buffer*(ctx: ptr fz_context;
                                cbuf: ptr fz_compressed_buffer): ptr fz_compressed_buffer {.
    cdecl, importc: "fz_keep_compressed_buffer".}
proc fz_compressed_buffer_size*(buffer: ptr fz_compressed_buffer): csize_t {.
    cdecl, importc: "fz_compressed_buffer_size".}
proc fz_open_compressed_buffer*(ctx: ptr fz_context;
                                a1: ptr fz_compressed_buffer): ptr fz_stream {.
    cdecl, importc: "fz_open_compressed_buffer".}
proc fz_open_image_decomp_stream_from_buffer*(ctx: ptr fz_context;
    a1: ptr fz_compressed_buffer; l2factor: ptr cint): ptr fz_stream {.cdecl,
    importc: "fz_open_image_decomp_stream_from_buffer".}
proc fz_open_image_decomp_stream*(ctx: ptr fz_context; a1: ptr fz_stream;
                                  a2: ptr fz_compression_params;
                                  l2factor: ptr cint): ptr fz_stream {.cdecl,
    importc: "fz_open_image_decomp_stream".}
proc fz_recognize_image_format*(ctx: ptr fz_context; p: array[8'i64, uint8]): cint {.
    cdecl, importc: "fz_recognize_image_format".}
proc fz_image_type_name*(type_arg: cint): cstring {.cdecl,
    importc: "fz_image_type_name".}
proc fz_lookup_image_type*(type_arg: cstring): cint {.cdecl,
    importc: "fz_lookup_image_type".}
proc fz_drop_compressed_buffer*(ctx: ptr fz_context;
                                buf: ptr fz_compressed_buffer): void {.cdecl,
    importc: "fz_drop_compressed_buffer".}
proc fz_new_compressed_buffer*(ctx: ptr fz_context): ptr fz_compressed_buffer {.
    cdecl, importc: "fz_new_compressed_buffer".}
proc fz_int_heap_insert*(ctx: ptr fz_context; heap: ptr fz_int_heap; v: cint): void {.
    cdecl, importc: "fz_int_heap_insert".}
proc fz_int_heap_sort*(ctx: ptr fz_context; heap: ptr fz_int_heap): void {.
    cdecl, importc: "fz_int_heap_sort".}
proc fz_int_heap_uniq*(ctx: ptr fz_context; heap: ptr fz_int_heap): void {.
    cdecl, importc: "fz_int_heap_uniq".}
proc fz_ptr_heap_insert*(ctx: ptr fz_context; heap: ptr fz_ptr_heap; v: pointer;
    HEAP_CMP: proc (a0: ptr pointer; a1: ptr pointer): cint {.cdecl.}): void {.
    cdecl, importc: "fz_ptr_heap_insert".}
proc fz_ptr_heap_sort*(ctx: ptr fz_context; heap: ptr fz_ptr_heap; HEAP_CMP: proc (
    a0: ptr pointer; a1: ptr pointer): cint {.cdecl.}): void {.cdecl,
    importc: "fz_ptr_heap_sort".}
proc fz_ptr_heap_uniq*(ctx: ptr fz_context; heap: ptr fz_ptr_heap; HEAP_CMP: proc (
    a0: ptr pointer; a1: ptr pointer): cint {.cdecl.}): void {.cdecl,
    importc: "fz_ptr_heap_uniq".}
proc fz_int2_heap_insert*(ctx: ptr fz_context; heap: ptr fz_int2_heap;
                          v: fz_int2): void {.cdecl,
    importc: "fz_int2_heap_insert".}
proc fz_int2_heap_sort*(ctx: ptr fz_context; heap: ptr fz_int2_heap): void {.
    cdecl, importc: "fz_int2_heap_sort".}
proc fz_int2_heap_uniq*(ctx: ptr fz_context; heap: ptr fz_int2_heap): void {.
    cdecl, importc: "fz_int2_heap_uniq".}
proc fz_intptr_heap_insert*(ctx: ptr fz_context; heap: ptr fz_intptr_heap;
                            v: fz_intptr): void {.cdecl,
    importc: "fz_intptr_heap_insert".}
proc fz_intptr_heap_sort*(ctx: ptr fz_context; heap: ptr fz_intptr_heap): void {.
    cdecl, importc: "fz_intptr_heap_sort".}
proc fz_intptr_heap_uniq*(ctx: ptr fz_context; heap: ptr fz_intptr_heap): void {.
    cdecl, importc: "fz_intptr_heap_uniq".}
proc fz_keep_bitmap*(ctx: ptr fz_context; bit: ptr fz_bitmap): ptr fz_bitmap {.
    cdecl, importc: "fz_keep_bitmap".}
proc fz_drop_bitmap*(ctx: ptr fz_context; bit: ptr fz_bitmap): void {.cdecl,
    importc: "fz_drop_bitmap".}
proc fz_invert_bitmap*(ctx: ptr fz_context; bmp: ptr fz_bitmap): void {.cdecl,
    importc: "fz_invert_bitmap".}
proc fz_new_bitmap_from_pixmap*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                ht: ptr fz_halftone): ptr fz_bitmap {.cdecl,
    importc: "fz_new_bitmap_from_pixmap".}
proc fz_new_bitmap_from_pixmap_band*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                     ht: ptr fz_halftone; band_start: cint): ptr fz_bitmap {.
    cdecl, importc: "fz_new_bitmap_from_pixmap_band".}
proc fz_new_bitmap*(ctx: ptr fz_context; w: cint; h: cint; n: cint; xres: cint;
                    yres: cint): ptr fz_bitmap {.cdecl, importc: "fz_new_bitmap".}
proc fz_bitmap_details*(bitmap: ptr fz_bitmap; w: ptr cint; h: ptr cint;
                        n: ptr cint; stride: ptr cint): void {.cdecl,
    importc: "fz_bitmap_details".}
proc fz_clear_bitmap*(ctx: ptr fz_context; bit: ptr fz_bitmap): void {.cdecl,
    importc: "fz_clear_bitmap".}
proc fz_default_halftone*(ctx: ptr fz_context; num_comps: cint): ptr fz_halftone {.
    cdecl, importc: "fz_default_halftone".}
proc fz_keep_halftone*(ctx: ptr fz_context; half: ptr fz_halftone): ptr fz_halftone {.
    cdecl, importc: "fz_keep_halftone".}
proc fz_drop_halftone*(ctx: ptr fz_context; ht: ptr fz_halftone): void {.cdecl,
    importc: "fz_drop_halftone".}
proc fz_get_pixmap_from_image*(ctx: ptr fz_context; image: ptr fz_image;
                               subarea: ptr fz_irect; ctm: ptr fz_matrix;
                               w: ptr cint; h: ptr cint): ptr fz_pixmap {.cdecl,
    importc: "fz_get_pixmap_from_image".}
proc fz_get_unscaled_pixmap_from_image*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_pixmap {.
    cdecl, importc: "fz_get_unscaled_pixmap_from_image".}
proc fz_keep_image*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_image {.
    cdecl, importc: "fz_keep_image".}
proc fz_drop_image*(ctx: ptr fz_context; image: ptr fz_image): void {.cdecl,
    importc: "fz_drop_image".}
proc fz_keep_image_store_key*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_image {.
    cdecl, importc: "fz_keep_image_store_key".}
proc fz_drop_image_store_key*(ctx: ptr fz_context; image: ptr fz_image): void {.
    cdecl, importc: "fz_drop_image_store_key".}
proc fz_new_image_of_size*(ctx: ptr fz_context; w: cint; h: cint; bpc: cint;
                           colorspace: ptr fz_colorspace; xres: cint;
                           yres: cint; interpolate: cint; imagemask: cint;
                           decode: ptr cfloat; colorkey: ptr cint;
                           mask: ptr fz_image; size: csize_t;
                           get_pixmap: fz_image_get_pixmap_fn;
                           get_size: fz_image_get_size_fn;
                           drop: fz_drop_image_fn): ptr fz_image {.cdecl,
    importc: "fz_new_image_of_size".}
proc fz_new_image_from_compressed_buffer*(ctx: ptr fz_context; w: cint; h: cint;
    bpc: cint; colorspace: ptr fz_colorspace; xres: cint; yres: cint;
    interpolate: cint; imagemask: cint; decode: ptr cfloat; colorkey: ptr cint;
    buffer: ptr fz_compressed_buffer; mask: ptr fz_image): ptr fz_image {.cdecl,
    importc: "fz_new_image_from_compressed_buffer".}
proc fz_new_image_from_pixmap*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                               mask: ptr fz_image): ptr fz_image {.cdecl,
    importc: "fz_new_image_from_pixmap".}
proc fz_new_image_from_buffer*(ctx: ptr fz_context; buffer: ptr fz_buffer): ptr fz_image {.
    cdecl, importc: "fz_new_image_from_buffer".}
proc fz_new_image_from_file*(ctx: ptr fz_context; path: cstring): ptr fz_image {.
    cdecl, importc: "fz_new_image_from_file".}
proc fz_drop_image_imp*(ctx: ptr fz_context; image: ptr fz_storable): void {.
    cdecl, importc: "fz_drop_image_imp".}
proc fz_drop_image_base*(ctx: ptr fz_context; image: ptr fz_image): void {.
    cdecl, importc: "fz_drop_image_base".}
proc fz_decomp_image_from_stream*(ctx: ptr fz_context; stm: ptr fz_stream;
                                  image: ptr fz_compressed_image;
                                  subarea: ptr fz_irect; indexed: cint;
                                  l2factor: cint; l2extra: ptr cint): ptr fz_pixmap {.
    cdecl, importc: "fz_decomp_image_from_stream".}
proc fz_convert_indexed_pixmap_to_base*(ctx: ptr fz_context; src: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_convert_indexed_pixmap_to_base".}
proc fz_convert_separation_pixmap_to_base*(ctx: ptr fz_context;
    src: ptr fz_pixmap): ptr fz_pixmap {.cdecl,
    importc: "fz_convert_separation_pixmap_to_base".}
proc fz_image_size*(ctx: ptr fz_context; im: ptr fz_image): csize_t {.cdecl,
    importc: "fz_image_size".}
proc fz_compressed_image_type*(ctx: ptr fz_context; image: ptr fz_image): cint {.
    cdecl, importc: "fz_compressed_image_type".}
proc fz_image_resolution*(image: ptr fz_image; xres: ptr cint; yres: ptr cint): void {.
    cdecl, importc: "fz_image_resolution".}
proc fz_image_orientation*(ctx: ptr fz_context; image: ptr fz_image): uint8 {.
    cdecl, importc: "fz_image_orientation".}
proc fz_image_orientation_matrix*(ctx: ptr fz_context; image: ptr fz_image): fz_matrix {.
    cdecl, importc: "fz_image_orientation_matrix".}
proc fz_compressed_image_buffer*(ctx: ptr fz_context; image: ptr fz_image): ptr fz_compressed_buffer {.
    cdecl, importc: "fz_compressed_image_buffer".}
proc fz_set_compressed_image_buffer*(ctx: ptr fz_context;
                                     cimg: ptr fz_compressed_image;
                                     buf: ptr fz_compressed_buffer): void {.
    cdecl, importc: "fz_set_compressed_image_buffer".}
proc fz_pixmap_image_tile*(ctx: ptr fz_context; cimg: ptr fz_pixmap_image): ptr fz_pixmap {.
    cdecl, importc: "fz_pixmap_image_tile".}
proc fz_set_pixmap_image_tile*(ctx: ptr fz_context; cimg: ptr fz_pixmap_image;
                               pix: ptr fz_pixmap): void {.cdecl,
    importc: "fz_set_pixmap_image_tile".}
proc fz_load_jpx*(ctx: ptr fz_context; data: ptr uint8; size: csize_t;
                  cs: ptr fz_colorspace): ptr fz_pixmap {.cdecl,
    importc: "fz_load_jpx".}
proc opj_lock*(ctx: ptr fz_context): void {.cdecl, importc: "opj_lock".}
proc opj_unlock*(ctx: ptr fz_context): void {.cdecl, importc: "opj_unlock".}
proc fz_load_tiff_subimage_count*(ctx: ptr fz_context; buf: ptr uint8;
                                  len: csize_t): cint {.cdecl,
    importc: "fz_load_tiff_subimage_count".}
proc fz_load_tiff_subimage*(ctx: ptr fz_context; buf: ptr uint8; len: csize_t;
                            subimage: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_load_tiff_subimage".}
proc fz_load_pnm_subimage_count*(ctx: ptr fz_context; buf: ptr uint8;
                                 len: csize_t): cint {.cdecl,
    importc: "fz_load_pnm_subimage_count".}
proc fz_load_pnm_subimage*(ctx: ptr fz_context; buf: ptr uint8; len: csize_t;
                           subimage: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_load_pnm_subimage".}
proc fz_load_jbig2_subimage_count*(ctx: ptr fz_context; buf: ptr uint8;
                                   len: csize_t): cint {.cdecl,
    importc: "fz_load_jbig2_subimage_count".}
proc fz_load_jbig2_subimage*(ctx: ptr fz_context; buf: ptr uint8; len: csize_t;
                             subimage: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_load_jbig2_subimage".}
proc fz_load_bmp_subimage_count*(ctx: ptr fz_context; buf: ptr uint8;
                                 len: csize_t): cint {.cdecl,
    importc: "fz_load_bmp_subimage_count".}
proc fz_load_bmp_subimage*(ctx: ptr fz_context; buf: ptr uint8; len: csize_t;
                           subimage: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_load_bmp_subimage".}
proc fz_keep_shade*(ctx: ptr fz_context; shade: ptr fz_shade): ptr fz_shade {.
    cdecl, importc: "fz_keep_shade".}
proc fz_drop_shade*(ctx: ptr fz_context; shade: ptr fz_shade): void {.cdecl,
    importc: "fz_drop_shade".}
proc fz_bound_shade*(ctx: ptr fz_context; shade: ptr fz_shade; ctm: fz_matrix): fz_rect {.
    cdecl, importc: "fz_bound_shade".}
proc fz_drop_shade_color_cache*(ctx: ptr fz_context;
                                cache: ptr fz_shade_color_cache): void {.cdecl,
    importc: "fz_drop_shade_color_cache".}
proc fz_paint_shade*(ctx: ptr fz_context; shade: ptr fz_shade;
                     override_cs: ptr fz_colorspace; ctm: fz_matrix;
                     dest: ptr fz_pixmap; color_params: fz_color_params;
                     bbox: fz_irect; eop: ptr fz_overprint;
                     cache: ptr ptr fz_shade_color_cache): void {.cdecl,
    importc: "fz_paint_shade".}
proc fz_process_shade*(ctx: ptr fz_context; shade: ptr fz_shade; ctm: fz_matrix;
                       scissor: fz_rect; prepare: fz_shade_prepare_fn;
                       process: fz_shade_process_fn; process_arg: pointer): void {.
    cdecl, importc: "fz_process_shade".}
proc fz_drop_shade_imp*(ctx: ptr fz_context; shade: ptr fz_storable): void {.
    cdecl, importc: "fz_drop_shade_imp".}
var fz_glyph_name_from_adobe_standard* {.
    importc: "fz_glyph_name_from_adobe_standard".}: array[256'i64, cstring]
var fz_glyph_name_from_iso8859_7* {.importc: "fz_glyph_name_from_iso8859_7".}: array[
    256'i64, cstring]
var fz_glyph_name_from_koi8u* {.importc: "fz_glyph_name_from_koi8u".}: array[
    256'i64, cstring]
var fz_glyph_name_from_mac_expert* {.importc: "fz_glyph_name_from_mac_expert".}: array[
    256'i64, cstring]
var fz_glyph_name_from_mac_roman* {.importc: "fz_glyph_name_from_mac_roman".}: array[
    256'i64, cstring]
var fz_glyph_name_from_win_ansi* {.importc: "fz_glyph_name_from_win_ansi".}: array[
    256'i64, cstring]
var fz_glyph_name_from_windows_1252* {.importc: "fz_glyph_name_from_windows_1252".}: array[
    256'i64, cstring]
var fz_unicode_from_iso8859_1* {.importc: "fz_unicode_from_iso8859_1".}: array[
    256'i64, cushort]
var fz_unicode_from_iso8859_7* {.importc: "fz_unicode_from_iso8859_7".}: array[
    256'i64, cushort]
var fz_unicode_from_koi8u* {.importc: "fz_unicode_from_koi8u".}: array[256'i64,
    cushort]
var fz_unicode_from_pdf_doc_encoding* {.importc: "fz_unicode_from_pdf_doc_encoding".}: array[
    256'i64, cushort]
var fz_unicode_from_windows_1250* {.importc: "fz_unicode_from_windows_1250".}: array[
    256'i64, cushort]
var fz_unicode_from_windows_1251* {.importc: "fz_unicode_from_windows_1251".}: array[
    256'i64, cushort]
var fz_unicode_from_windows_1252* {.importc: "fz_unicode_from_windows_1252".}: array[
    256'i64, cushort]
proc fz_iso8859_1_from_unicode*(u: cint): cint {.cdecl,
    importc: "fz_iso8859_1_from_unicode".}
proc fz_iso8859_7_from_unicode*(u: cint): cint {.cdecl,
    importc: "fz_iso8859_7_from_unicode".}
proc fz_koi8u_from_unicode*(u: cint): cint {.cdecl,
    importc: "fz_koi8u_from_unicode".}
proc fz_windows_1250_from_unicode*(u: cint): cint {.cdecl,
    importc: "fz_windows_1250_from_unicode".}
proc fz_windows_1251_from_unicode*(u: cint): cint {.cdecl,
    importc: "fz_windows_1251_from_unicode".}
proc fz_windows_1252_from_unicode*(u: cint): cint {.cdecl,
    importc: "fz_windows_1252_from_unicode".}
proc fz_unicode_from_glyph_name*(name: cstring): cint {.cdecl,
    importc: "fz_unicode_from_glyph_name".}
proc fz_unicode_from_glyph_name_strict*(name: cstring): cint {.cdecl,
    importc: "fz_unicode_from_glyph_name_strict".}
proc fz_duplicate_glyph_names_from_unicode*(unicode: cint): ptr cstring {.cdecl,
    importc: "fz_duplicate_glyph_names_from_unicode".}
proc fz_glyph_name_from_unicode_sc*(unicode: cint): cstring {.cdecl,
    importc: "fz_glyph_name_from_unicode_sc".}
proc fz_init_text_decoder*(ctx: ptr fz_context; dec: ptr fz_text_decoder;
                           encoding: cstring): void {.cdecl,
    importc: "fz_init_text_decoder".}
proc fz_font_ft_face*(ctx: ptr fz_context; font: ptr fz_font): pointer {.cdecl,
    importc: "fz_font_ft_face".}
proc fz_font_t3_procs*(ctx: ptr fz_context; font: ptr fz_font): ptr ptr fz_buffer {.
    cdecl, importc: "fz_font_t3_procs".}
proc fz_font_flags*(font: ptr fz_font): ptr fz_font_flags_t {.cdecl,
    importc: "fz_font_flags".}
proc fz_font_shaper_data*(ctx: ptr fz_context; font: ptr fz_font): ptr fz_shaper_data_t {.
    cdecl, importc: "fz_font_shaper_data".}
proc fz_font_name*(ctx: ptr fz_context; font: ptr fz_font): cstring {.cdecl,
    importc: "fz_font_name".}
proc fz_font_is_bold*(ctx: ptr fz_context; font: ptr fz_font): cint {.cdecl,
    importc: "fz_font_is_bold".}
proc fz_font_is_italic*(ctx: ptr fz_context; font: ptr fz_font): cint {.cdecl,
    importc: "fz_font_is_italic".}
proc fz_font_is_serif*(ctx: ptr fz_context; font: ptr fz_font): cint {.cdecl,
    importc: "fz_font_is_serif".}
proc fz_font_is_monospaced*(ctx: ptr fz_context; font: ptr fz_font): cint {.
    cdecl, importc: "fz_font_is_monospaced".}
proc fz_font_bbox*(ctx: ptr fz_context; font: ptr fz_font): fz_rect {.cdecl,
    importc: "fz_font_bbox".}
proc fz_install_load_system_font_funcs*(ctx: ptr fz_context;
                                        f: fz_load_system_font_fn;
                                        f_cjk: fz_load_system_cjk_font_fn;
    f_fallback: fz_load_system_fallback_font_fn): void {.cdecl,
    importc: "fz_install_load_system_font_funcs".}
proc fz_load_system_font*(ctx: ptr fz_context; name: cstring; bold: cint;
                          italic: cint; needs_exact_metrics: cint): ptr fz_font {.
    cdecl, importc: "fz_load_system_font".}
proc fz_load_system_cjk_font*(ctx: ptr fz_context; name: cstring;
                              ordering: cint; serif: cint): ptr fz_font {.cdecl,
    importc: "fz_load_system_cjk_font".}
proc fz_lookup_builtin_font*(ctx: ptr fz_context; name: cstring; bold: cint;
                             italic: cint; len: ptr cint): ptr uint8 {.cdecl,
    importc: "fz_lookup_builtin_font".}
proc fz_lookup_base14_font*(ctx: ptr fz_context; name: cstring; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_base14_font".}
proc fz_lookup_cjk_font*(ctx: ptr fz_context; ordering: cint; len: ptr cint;
                         index: ptr cint): ptr uint8 {.cdecl,
    importc: "fz_lookup_cjk_font".}
proc fz_lookup_cjk_font_by_language*(ctx: ptr fz_context; lang: cstring;
                                     len: ptr cint; subfont: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_cjk_font_by_language".}
proc fz_lookup_cjk_ordering_by_language*(name: cstring): cint {.cdecl,
    importc: "fz_lookup_cjk_ordering_by_language".}
proc fz_lookup_noto_font*(ctx: ptr fz_context; script: cint; lang: cint;
                          len: ptr cint; subfont: ptr cint): ptr uint8 {.cdecl,
    importc: "fz_lookup_noto_font".}
proc fz_lookup_noto_math_font*(ctx: ptr fz_context; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_noto_math_font".}
proc fz_lookup_noto_music_font*(ctx: ptr fz_context; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_noto_music_font".}
proc fz_lookup_noto_symbol1_font*(ctx: ptr fz_context; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_noto_symbol1_font".}
proc fz_lookup_noto_symbol2_font*(ctx: ptr fz_context; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_noto_symbol2_font".}
proc fz_lookup_noto_emoji_font*(ctx: ptr fz_context; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_noto_emoji_font".}
proc fz_lookup_noto_boxes_font*(ctx: ptr fz_context; len: ptr cint): ptr uint8 {.
    cdecl, importc: "fz_lookup_noto_boxes_font".}
proc fz_lookup_noto_stem_from_script*(ctx: ptr fz_context; script: cint;
                                      language: cint): cstring {.cdecl,
    importc: "fz_lookup_noto_stem_from_script".}
proc fz_load_fallback_font*(ctx: ptr fz_context; script: cint; language: cint;
                            serif: cint; bold: cint; italic: cint): ptr fz_font {.
    cdecl, importc: "fz_load_fallback_font".}
proc fz_new_type3_font*(ctx: ptr fz_context; name: cstring; matrix: fz_matrix): ptr fz_font {.
    cdecl, importc: "fz_new_type3_font".}
proc fz_new_font_from_memory*(ctx: ptr fz_context; name: cstring;
                              data: ptr uint8; len: cint; index: cint;
                              use_glyph_bbox: cint): ptr fz_font {.cdecl,
    importc: "fz_new_font_from_memory".}
proc fz_new_font_from_buffer*(ctx: ptr fz_context; name: cstring;
                              buffer: ptr fz_buffer; index: cint;
                              use_glyph_bbox: cint): ptr fz_font {.cdecl,
    importc: "fz_new_font_from_buffer".}
proc fz_new_font_from_file*(ctx: ptr fz_context; name: cstring; path: cstring;
                            index: cint; use_glyph_bbox: cint): ptr fz_font {.
    cdecl, importc: "fz_new_font_from_file".}
proc fz_new_base14_font*(ctx: ptr fz_context; name: cstring): ptr fz_font {.
    cdecl, importc: "fz_new_base14_font".}
proc fz_new_cjk_font*(ctx: ptr fz_context; ordering: cint): ptr fz_font {.cdecl,
    importc: "fz_new_cjk_font".}
proc fz_new_builtin_font*(ctx: ptr fz_context; name: cstring; is_bold: cint;
                          is_italic: cint): ptr fz_font {.cdecl,
    importc: "fz_new_builtin_font".}
proc fz_set_font_embedding*(ctx: ptr fz_context; font: ptr fz_font; embed: cint): void {.
    cdecl, importc: "fz_set_font_embedding".}
proc fz_keep_font*(ctx: ptr fz_context; font: ptr fz_font): ptr fz_font {.cdecl,
    importc: "fz_keep_font".}
proc fz_drop_font*(ctx: ptr fz_context; font: ptr fz_font): void {.cdecl,
    importc: "fz_drop_font".}
proc fz_set_font_bbox*(ctx: ptr fz_context; font: ptr fz_font; xmin: cfloat;
                       ymin: cfloat; xmax: cfloat; ymax: cfloat): void {.cdecl,
    importc: "fz_set_font_bbox".}
proc fz_bound_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint;
                     trm: fz_matrix): fz_rect {.cdecl, importc: "fz_bound_glyph".}
proc fz_glyph_cacheable*(ctx: ptr fz_context; font: ptr fz_font; gid: cint): cint {.
    cdecl, importc: "fz_glyph_cacheable".}
proc fz_run_t3_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint;
                      trm: fz_matrix; dev: ptr struct_fz_device): void {.cdecl,
    importc: "fz_run_t3_glyph".}
proc fz_advance_glyph*(ctx: ptr fz_context; font: ptr fz_font; glyph: cint;
                       wmode: cint): cfloat {.cdecl, importc: "fz_advance_glyph".}
proc fz_encode_character*(ctx: ptr fz_context; font: ptr fz_font; unicode: cint): cint {.
    cdecl, importc: "fz_encode_character".}
proc fz_encode_character_sc*(ctx: ptr fz_context; font: ptr fz_font;
                             unicode: cint): cint {.cdecl,
    importc: "fz_encode_character_sc".}
proc fz_encode_character_by_glyph_name*(ctx: ptr fz_context; font: ptr fz_font;
                                        glyphname: cstring): cint {.cdecl,
    importc: "fz_encode_character_by_glyph_name".}
proc fz_encode_character_with_fallback*(ctx: ptr fz_context; font: ptr fz_font;
                                        unicode: cint; script: cint;
                                        language: cint;
                                        out_font: ptr ptr fz_font): cint {.
    cdecl, importc: "fz_encode_character_with_fallback".}
proc fz_get_glyph_name*(ctx: ptr fz_context; font: ptr fz_font; glyph: cint;
                        buf: cstring; size: cint): void {.cdecl,
    importc: "fz_get_glyph_name".}
proc fz_font_ascender*(ctx: ptr fz_context; font: ptr fz_font): cfloat {.cdecl,
    importc: "fz_font_ascender".}
proc fz_font_descender*(ctx: ptr fz_context; font: ptr fz_font): cfloat {.cdecl,
    importc: "fz_font_descender".}
proc fz_font_digest*(ctx: ptr fz_context; font: ptr fz_font;
                     digest: array[16'i64, uint8]): void {.cdecl,
    importc: "fz_font_digest".}
proc fz_decouple_type3_font*(ctx: ptr fz_context; font: ptr fz_font;
                             t3doc: pointer): void {.cdecl,
    importc: "fz_decouple_type3_font".}
proc ft_error_string*(err: cint): cstring {.cdecl, importc: "ft_error_string".}
proc ft_char_index*(face: pointer; cid: cint): cint {.cdecl,
    importc: "ft_char_index".}
proc ft_name_index*(face: pointer; name: cstring): cint {.cdecl,
    importc: "ft_name_index".}
proc fz_hb_lock*(ctx: ptr fz_context): void {.cdecl, importc: "fz_hb_lock".}
proc fz_hb_unlock*(ctx: ptr fz_context): void {.cdecl, importc: "fz_hb_unlock".}
proc fz_enumerate_font_cmap*(ctx: ptr fz_context; font: ptr fz_font;
                             cb: fz_cmap_callback; opaque: pointer): void {.
    cdecl, importc: "fz_enumerate_font_cmap".}
proc fz_ft_lock*(ctx: ptr fz_context): void {.cdecl, importc: "fz_ft_lock".}
proc fz_ft_unlock*(ctx: ptr fz_context): void {.cdecl, importc: "fz_ft_unlock".}
proc fz_ft_lock_held*(ctx: ptr fz_context): cint {.cdecl,
    importc: "fz_ft_lock_held".}
proc fz_extract_ttf_from_ttc*(ctx: ptr fz_context; font: ptr fz_font): ptr fz_buffer {.
    cdecl, importc: "fz_extract_ttf_from_ttc".}
proc fz_subset_ttf_for_gids*(ctx: ptr fz_context; orig: ptr fz_buffer;
                             gids: ptr cint; num_gids: cint; symbolic: cint;
                             cidfont: cint): ptr fz_buffer {.cdecl,
    importc: "fz_subset_ttf_for_gids".}
proc fz_subset_cff_for_gids*(ctx: ptr fz_context; orig: ptr fz_buffer;
                             gids: ptr cint; num_gids: cint; symbolic: cint;
                             cidfont: cint): ptr fz_buffer {.cdecl,
    importc: "fz_subset_cff_for_gids".}
proc fz_walk_path*(ctx: ptr fz_context; path: ptr fz_path;
                   walker: ptr fz_path_walker; arg: pointer): void {.cdecl,
    importc: "fz_walk_path".}
proc fz_new_path*(ctx: ptr fz_context): ptr fz_path {.cdecl,
    importc: "fz_new_path".}
proc fz_keep_path*(ctx: ptr fz_context; path: ptr fz_path): ptr fz_path {.cdecl,
    importc: "fz_keep_path".}
proc fz_drop_path*(ctx: ptr fz_context; path: ptr fz_path): void {.cdecl,
    importc: "fz_drop_path".}
proc fz_trim_path*(ctx: ptr fz_context; path: ptr fz_path): void {.cdecl,
    importc: "fz_trim_path".}
proc fz_packed_path_size*(path: ptr fz_path): cint {.cdecl,
    importc: "fz_packed_path_size".}
proc fz_pack_path*(ctx: ptr fz_context; pack: ptr uint8; path: ptr fz_path): csize_t {.
    cdecl, importc: "fz_pack_path".}
proc fz_clone_path*(ctx: ptr fz_context; path: ptr fz_path): ptr fz_path {.
    cdecl, importc: "fz_clone_path".}
proc fz_currentpoint*(ctx: ptr fz_context; path: ptr fz_path): fz_point {.cdecl,
    importc: "fz_currentpoint".}
proc fz_moveto*(ctx: ptr fz_context; path: ptr fz_path; x: cfloat; y: cfloat): void {.
    cdecl, importc: "fz_moveto".}
proc fz_lineto*(ctx: ptr fz_context; path: ptr fz_path; x: cfloat; y: cfloat): void {.
    cdecl, importc: "fz_lineto".}
proc fz_rectto*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat;
                x1: cfloat; y1: cfloat): void {.cdecl, importc: "fz_rectto".}
proc fz_quadto*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat;
                x1: cfloat; y1: cfloat): void {.cdecl, importc: "fz_quadto".}
proc fz_curveto*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat; y0: cfloat;
                 x1: cfloat; y1: cfloat; x2: cfloat; y2: cfloat): void {.cdecl,
    importc: "fz_curveto".}
proc fz_curvetov*(ctx: ptr fz_context; path: ptr fz_path; x1: cfloat;
                  y1: cfloat; x2: cfloat; y2: cfloat): void {.cdecl,
    importc: "fz_curvetov".}
proc fz_curvetoy*(ctx: ptr fz_context; path: ptr fz_path; x0: cfloat;
                  y0: cfloat; x2: cfloat; y2: cfloat): void {.cdecl,
    importc: "fz_curvetoy".}
proc fz_closepath*(ctx: ptr fz_context; path: ptr fz_path): void {.cdecl,
    importc: "fz_closepath".}
proc fz_transform_path*(ctx: ptr fz_context; path: ptr fz_path;
                        transform: fz_matrix): void {.cdecl,
    importc: "fz_transform_path".}
proc fz_bound_path*(ctx: ptr fz_context; path: ptr fz_path;
                    stroke: ptr fz_stroke_state; ctm: fz_matrix): fz_rect {.
    cdecl, importc: "fz_bound_path".}
proc fz_adjust_rect_for_stroke*(ctx: ptr fz_context; rect: fz_rect;
                                stroke: ptr fz_stroke_state; ctm: fz_matrix): fz_rect {.
    cdecl, importc: "fz_adjust_rect_for_stroke".}
var fz_default_stroke_state* {.importc: "fz_default_stroke_state".}: fz_stroke_state
proc fz_new_stroke_state*(ctx: ptr fz_context): ptr fz_stroke_state {.cdecl,
    importc: "fz_new_stroke_state".}
proc fz_new_stroke_state_with_dash_len*(ctx: ptr fz_context; len: cint): ptr fz_stroke_state {.
    cdecl, importc: "fz_new_stroke_state_with_dash_len".}
proc fz_keep_stroke_state*(ctx: ptr fz_context; stroke: ptr fz_stroke_state): ptr fz_stroke_state {.
    cdecl, importc: "fz_keep_stroke_state".}
proc fz_drop_stroke_state*(ctx: ptr fz_context; stroke: ptr fz_stroke_state): void {.
    cdecl, importc: "fz_drop_stroke_state".}
proc fz_unshare_stroke_state*(ctx: ptr fz_context; shared: ptr fz_stroke_state): ptr fz_stroke_state {.
    cdecl, importc: "fz_unshare_stroke_state".}
proc fz_unshare_stroke_state_with_dash_len*(ctx: ptr fz_context;
    shared: ptr fz_stroke_state; len: cint): ptr fz_stroke_state {.cdecl,
    importc: "fz_unshare_stroke_state_with_dash_len".}
proc fz_clone_stroke_state*(ctx: ptr fz_context; stroke: ptr fz_stroke_state): ptr fz_stroke_state {.
    cdecl, importc: "fz_clone_stroke_state".}
proc fz_new_text*(ctx: ptr fz_context): ptr fz_text {.cdecl,
    importc: "fz_new_text".}
proc fz_keep_text*(ctx: ptr fz_context; text: ptr fz_text): ptr fz_text {.cdecl,
    importc: "fz_keep_text".}
proc fz_drop_text*(ctx: ptr fz_context; text: ptr fz_text): void {.cdecl,
    importc: "fz_drop_text".}
proc fz_show_glyph*(ctx: ptr fz_context; text: ptr fz_text; font: ptr fz_font;
                    trm: fz_matrix; glyph: cint; unicode: cint; wmode: cint;
                    bidi_level: cint; markup_dir: fz_bidi_direction;
                    language: fz_text_language): void {.cdecl,
    importc: "fz_show_glyph".}
proc fz_show_glyph_aux*(ctx: ptr fz_context; text: ptr fz_text;
                        font: ptr fz_font; trm: fz_matrix; adv: cfloat;
                        glyph: cint; unicode: cint; cid: cint; wmode: cint;
                        bidi_level: cint; markup_dir: fz_bidi_direction;
                        lang: fz_text_language): void {.cdecl,
    importc: "fz_show_glyph_aux".}
proc fz_show_string*(ctx: ptr fz_context; text: ptr fz_text; font: ptr fz_font;
                     trm: fz_matrix; s: cstring; wmode: cint; bidi_level: cint;
                     markup_dir: fz_bidi_direction; language: fz_text_language): fz_matrix {.
    cdecl, importc: "fz_show_string".}
proc fz_measure_string*(ctx: ptr fz_context; user_font: ptr fz_font;
                        trm: fz_matrix; s: cstring; wmode: cint;
                        bidi_level: cint; markup_dir: fz_bidi_direction;
                        language: fz_text_language): fz_matrix {.cdecl,
    importc: "fz_measure_string".}
proc fz_bound_text*(ctx: ptr fz_context; text: ptr fz_text;
                    stroke: ptr fz_stroke_state; ctm: fz_matrix): fz_rect {.
    cdecl, importc: "fz_bound_text".}
proc fz_text_language_from_string*(str: cstring): fz_text_language {.cdecl,
    importc: "fz_text_language_from_string".}
proc fz_string_from_text_language*(str: array[8'i64, cschar];
                                   lang: fz_text_language): cstring {.cdecl,
    importc: "fz_string_from_text_language".}
proc fz_glyph_bbox*(ctx: ptr fz_context; glyph: ptr fz_glyph): fz_irect {.cdecl,
    importc: "fz_glyph_bbox".}
proc fz_glyph_bbox_no_ctx*(src: ptr fz_glyph): fz_irect {.cdecl,
    importc: "fz_glyph_bbox_no_ctx".}
proc fz_glyph_width*(ctx: ptr fz_context; glyph: ptr fz_glyph): cint {.cdecl,
    importc: "fz_glyph_width".}
proc fz_glyph_height*(ctx: ptr fz_context; glyph: ptr fz_glyph): cint {.cdecl,
    importc: "fz_glyph_height".}
proc fz_keep_glyph*(ctx: ptr fz_context; pix: ptr fz_glyph): ptr fz_glyph {.
    cdecl, importc: "fz_keep_glyph".}
proc fz_drop_glyph*(ctx: ptr fz_context; pix: ptr fz_glyph): void {.cdecl,
    importc: "fz_drop_glyph".}
proc fz_outline_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint;
                       ctm: fz_matrix): ptr fz_path {.cdecl,
    importc: "fz_outline_glyph".}
proc fz_lookup_blendmode*(name: cstring): cint {.cdecl,
    importc: "fz_lookup_blendmode".}
proc fz_blendmode_name*(blendmode: cint): cstring {.cdecl,
    importc: "fz_blendmode_name".}
proc fz_new_function_of_size*(ctx: ptr fz_context; size: cint; size2: csize_t;
                              m: cint; n: cint; eval: fz_function_eval_fn;
                              drop: fz_store_drop_fn): ptr fz_function {.cdecl,
    importc: "fz_new_function_of_size".}
proc fz_eval_function*(ctx: ptr fz_context; func_arg: ptr fz_function;
                       in_arg: ptr cfloat; inlen: cint; out_arg: ptr cfloat;
                       outlen: cint): void {.cdecl, importc: "fz_eval_function".}
proc fz_keep_function*(ctx: ptr fz_context; func_arg: ptr fz_function): ptr fz_function {.
    cdecl, importc: "fz_keep_function".}
proc fz_drop_function*(ctx: ptr fz_context; func_arg: ptr fz_function): void {.
    cdecl, importc: "fz_drop_function".}
proc fz_function_size*(ctx: ptr fz_context; func_arg: ptr fz_function): csize_t {.
    cdecl, importc: "fz_function_size".}
proc fz_structure_to_string*(type_arg: fz_structure): cstring {.cdecl,
    importc: "fz_structure_to_string".}
proc fz_structure_from_string*(str: cstring): fz_structure {.cdecl,
    importc: "fz_structure_from_string".}
proc fz_fill_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                   even_odd: cint; ctm: fz_matrix;
                   colorspace: ptr fz_colorspace; color: ptr cfloat;
                   alpha: cfloat; color_params: fz_color_params): void {.cdecl,
    importc: "fz_fill_path".}
proc fz_stroke_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                     stroke: ptr fz_stroke_state; ctm: fz_matrix;
                     colorspace: ptr fz_colorspace; color: ptr cfloat;
                     alpha: cfloat; color_params: fz_color_params): void {.
    cdecl, importc: "fz_stroke_path".}
proc fz_clip_path*(ctx: ptr fz_context; dev: ptr fz_device; path: ptr fz_path;
                   even_odd: cint; ctm: fz_matrix; scissor: fz_rect): void {.
    cdecl, importc: "fz_clip_path".}
proc fz_clip_stroke_path*(ctx: ptr fz_context; dev: ptr fz_device;
                          path: ptr fz_path; stroke: ptr fz_stroke_state;
                          ctm: fz_matrix; scissor: fz_rect): void {.cdecl,
    importc: "fz_clip_stroke_path".}
proc fz_fill_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                   ctm: fz_matrix; colorspace: ptr fz_colorspace;
                   color: ptr cfloat; alpha: cfloat;
                   color_params: fz_color_params): void {.cdecl,
    importc: "fz_fill_text".}
proc fz_stroke_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                     stroke: ptr fz_stroke_state; ctm: fz_matrix;
                     colorspace: ptr fz_colorspace; color: ptr cfloat;
                     alpha: cfloat; color_params: fz_color_params): void {.
    cdecl, importc: "fz_stroke_text".}
proc fz_clip_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                   ctm: fz_matrix; scissor: fz_rect): void {.cdecl,
    importc: "fz_clip_text".}
proc fz_clip_stroke_text*(ctx: ptr fz_context; dev: ptr fz_device;
                          text: ptr fz_text; stroke: ptr fz_stroke_state;
                          ctm: fz_matrix; scissor: fz_rect): void {.cdecl,
    importc: "fz_clip_stroke_text".}
proc fz_ignore_text*(ctx: ptr fz_context; dev: ptr fz_device; text: ptr fz_text;
                     ctm: fz_matrix): void {.cdecl, importc: "fz_ignore_text".}
proc fz_pop_clip*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_pop_clip".}
proc fz_fill_shade*(ctx: ptr fz_context; dev: ptr fz_device;
                    shade: ptr fz_shade; ctm: fz_matrix; alpha: cfloat;
                    color_params: fz_color_params): void {.cdecl,
    importc: "fz_fill_shade".}
proc fz_fill_image*(ctx: ptr fz_context; dev: ptr fz_device;
                    image: ptr fz_image; ctm: fz_matrix; alpha: cfloat;
                    color_params: fz_color_params): void {.cdecl,
    importc: "fz_fill_image".}
proc fz_fill_image_mask*(ctx: ptr fz_context; dev: ptr fz_device;
                         image: ptr fz_image; ctm: fz_matrix;
                         colorspace: ptr fz_colorspace; color: ptr cfloat;
                         alpha: cfloat; color_params: fz_color_params): void {.
    cdecl, importc: "fz_fill_image_mask".}
proc fz_clip_image_mask*(ctx: ptr fz_context; dev: ptr fz_device;
                         image: ptr fz_image; ctm: fz_matrix; scissor: fz_rect): void {.
    cdecl, importc: "fz_clip_image_mask".}
proc fz_begin_mask*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                    luminosity: cint; colorspace: ptr fz_colorspace;
                    bc: ptr cfloat; color_params: fz_color_params): void {.
    cdecl, importc: "fz_begin_mask".}
proc fz_end_mask*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_end_mask".}
proc fz_end_mask_tr*(ctx: ptr fz_context; dev: ptr fz_device;
                     fn: ptr fz_function): void {.cdecl,
    importc: "fz_end_mask_tr".}
proc fz_begin_group*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                     cs: ptr fz_colorspace; isolated: cint; knockout: cint;
                     blendmode: cint; alpha: cfloat): void {.cdecl,
    importc: "fz_begin_group".}
proc fz_end_group*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_end_group".}
proc fz_begin_tile*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                    view: fz_rect; xstep: cfloat; ystep: cfloat; ctm: fz_matrix): void {.
    cdecl, importc: "fz_begin_tile".}
proc fz_begin_tile_id*(ctx: ptr fz_context; dev: ptr fz_device; area: fz_rect;
                       view: fz_rect; xstep: cfloat; ystep: cfloat;
                       ctm: fz_matrix; id: cint): cint {.cdecl,
    importc: "fz_begin_tile_id".}
proc fz_end_tile*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_end_tile".}
proc fz_render_flags*(ctx: ptr fz_context; dev: ptr fz_device; set: cint;
                      clear: cint): void {.cdecl, importc: "fz_render_flags".}
proc fz_set_default_colorspaces*(ctx: ptr fz_context; dev: ptr fz_device;
                                 default_cs: ptr fz_default_colorspaces): void {.
    cdecl, importc: "fz_set_default_colorspaces".}
proc fz_begin_layer*(ctx: ptr fz_context; dev: ptr fz_device;
                     layer_name: cstring): void {.cdecl,
    importc: "fz_begin_layer".}
proc fz_end_layer*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_end_layer".}
proc fz_begin_structure*(ctx: ptr fz_context; dev: ptr fz_device;
                         standard: fz_structure; raw: cstring; idx: cint): void {.
    cdecl, importc: "fz_begin_structure".}
proc fz_end_structure*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_end_structure".}
proc fz_begin_metatext*(ctx: ptr fz_context; dev: ptr fz_device;
                        meta: fz_metatext; text: cstring): void {.cdecl,
    importc: "fz_begin_metatext".}
proc fz_end_metatext*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_end_metatext".}
proc fz_new_device_of_size*(ctx: ptr fz_context; size: cint): ptr fz_device {.
    cdecl, importc: "fz_new_device_of_size".}
proc fz_close_device*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_close_device".}
proc fz_drop_device*(ctx: ptr fz_context; dev: ptr fz_device): void {.cdecl,
    importc: "fz_drop_device".}
proc fz_keep_device*(ctx: ptr fz_context; dev: ptr fz_device): ptr fz_device {.
    cdecl, importc: "fz_keep_device".}
proc fz_enable_device_hints*(ctx: ptr fz_context; dev: ptr fz_device;
                             hints: cint): void {.cdecl,
    importc: "fz_enable_device_hints".}
proc fz_disable_device_hints*(ctx: ptr fz_context; dev: ptr fz_device;
                              hints: cint): void {.cdecl,
    importc: "fz_disable_device_hints".}
proc fz_device_current_scissor*(ctx: ptr fz_context; dev: ptr fz_device): fz_rect {.
    cdecl, importc: "fz_device_current_scissor".}
proc fz_new_trace_device*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_device {.
    cdecl, importc: "fz_new_trace_device".}
proc fz_new_xmltext_device*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_device {.
    cdecl, importc: "fz_new_xmltext_device".}
proc fz_new_bbox_device*(ctx: ptr fz_context; rectp: ptr fz_rect): ptr fz_device {.
    cdecl, importc: "fz_new_bbox_device".}
proc fz_new_test_device*(ctx: ptr fz_context; is_color: ptr cint;
                         threshold: cfloat; options: cint;
                         passthrough: ptr fz_device): ptr fz_device {.cdecl,
    importc: "fz_new_test_device".}
proc fz_new_draw_device*(ctx: ptr fz_context; transform: fz_matrix;
                         dest: ptr fz_pixmap): ptr fz_device {.cdecl,
    importc: "fz_new_draw_device".}
proc fz_new_draw_device_with_bbox*(ctx: ptr fz_context; transform: fz_matrix;
                                   dest: ptr fz_pixmap; clip: ptr fz_irect): ptr fz_device {.
    cdecl, importc: "fz_new_draw_device_with_bbox".}
proc fz_new_draw_device_with_proof*(ctx: ptr fz_context; transform: fz_matrix;
                                    dest: ptr fz_pixmap;
                                    proof_cs: ptr fz_colorspace): ptr fz_device {.
    cdecl, importc: "fz_new_draw_device_with_proof".}
proc fz_new_draw_device_with_bbox_proof*(ctx: ptr fz_context;
    transform: fz_matrix; dest: ptr fz_pixmap; clip: ptr fz_irect;
    cs: ptr fz_colorspace): ptr fz_device {.cdecl,
    importc: "fz_new_draw_device_with_bbox_proof".}
proc fz_new_draw_device_type3*(ctx: ptr fz_context; transform: fz_matrix;
                               dest: ptr fz_pixmap): ptr fz_device {.cdecl,
    importc: "fz_new_draw_device_type3".}
var fz_draw_options_usage* {.importc: "fz_draw_options_usage".}: cstring
proc fz_parse_draw_options*(ctx: ptr fz_context; options: ptr fz_draw_options;
                            string: cstring): ptr fz_draw_options {.cdecl,
    importc: "fz_parse_draw_options".}
proc fz_new_draw_device_with_options*(ctx: ptr fz_context;
                                      options: ptr fz_draw_options;
                                      mediabox: fz_rect;
                                      pixmap: ptr ptr fz_pixmap): ptr fz_device {.
    cdecl, importc: "fz_new_draw_device_with_options".}
proc fz_new_display_list*(ctx: ptr fz_context; mediabox: fz_rect): ptr fz_display_list {.
    cdecl, importc: "fz_new_display_list".}
proc fz_new_list_device*(ctx: ptr fz_context; list: ptr fz_display_list): ptr fz_device {.
    cdecl, importc: "fz_new_list_device".}
proc fz_run_display_list*(ctx: ptr fz_context; list: ptr fz_display_list;
                          dev: ptr fz_device; ctm: fz_matrix; scissor: fz_rect;
                          cookie: ptr fz_cookie): void {.cdecl,
    importc: "fz_run_display_list".}
proc fz_keep_display_list*(ctx: ptr fz_context; list: ptr fz_display_list): ptr fz_display_list {.
    cdecl, importc: "fz_keep_display_list".}
proc fz_drop_display_list*(ctx: ptr fz_context; list: ptr fz_display_list): void {.
    cdecl, importc: "fz_drop_display_list".}
proc fz_bound_display_list*(ctx: ptr fz_context; list: ptr fz_display_list): fz_rect {.
    cdecl, importc: "fz_bound_display_list".}
proc fz_new_image_from_display_list*(ctx: ptr fz_context; w: cfloat; h: cfloat;
                                     list: ptr fz_display_list): ptr fz_image {.
    cdecl, importc: "fz_new_image_from_display_list".}
proc fz_display_list_is_empty*(ctx: ptr fz_context; list: ptr fz_display_list): cint {.
    cdecl, importc: "fz_display_list_is_empty".}
proc fz_new_layout*(ctx: ptr fz_context): ptr fz_layout_block {.cdecl,
    importc: "fz_new_layout".}
proc fz_drop_layout*(ctx: ptr fz_context; block_arg: ptr fz_layout_block): void {.
    cdecl, importc: "fz_drop_layout".}
proc fz_add_layout_line*(ctx: ptr fz_context; block_arg: ptr fz_layout_block;
                         x: cfloat; y: cfloat; h: cfloat; p: cstring): void {.
    cdecl, importc: "fz_add_layout_line".}
proc fz_add_layout_char*(ctx: ptr fz_context; block_arg: ptr fz_layout_block;
                         x: cfloat; w: cfloat; p: cstring): void {.cdecl,
    importc: "fz_add_layout_char".}
var fz_stext_options_usage* {.importc: "fz_stext_options_usage".}: cstring
proc fz_new_stext_page*(ctx: ptr fz_context; mediabox: fz_rect): ptr fz_stext_page {.
    cdecl, importc: "fz_new_stext_page".}
proc fz_drop_stext_page*(ctx: ptr fz_context; page: ptr fz_stext_page): void {.
    cdecl, importc: "fz_drop_stext_page".}
proc fz_print_stext_page_as_html*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  page: ptr fz_stext_page; id: cint): void {.
    cdecl, importc: "fz_print_stext_page_as_html".}
proc fz_print_stext_header_as_html*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_print_stext_header_as_html".}
proc fz_print_stext_trailer_as_html*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_print_stext_trailer_as_html".}
proc fz_print_stext_page_as_xhtml*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                   page: ptr fz_stext_page; id: cint): void {.
    cdecl, importc: "fz_print_stext_page_as_xhtml".}
proc fz_print_stext_header_as_xhtml*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_print_stext_header_as_xhtml".}
proc fz_print_stext_trailer_as_xhtml*(ctx: ptr fz_context;
                                      out_arg: ptr fz_output): void {.cdecl,
    importc: "fz_print_stext_trailer_as_xhtml".}
proc fz_print_stext_page_as_xml*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                 page: ptr fz_stext_page; id: cint): void {.
    cdecl, importc: "fz_print_stext_page_as_xml".}
proc fz_print_stext_page_as_json*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  page: ptr fz_stext_page; scale: cfloat): void {.
    cdecl, importc: "fz_print_stext_page_as_json".}
proc fz_print_stext_page_as_text*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  page: ptr fz_stext_page): void {.cdecl,
    importc: "fz_print_stext_page_as_text".}
proc fz_search_stext_page*(ctx: ptr fz_context; text: ptr fz_stext_page;
                           needle: cstring; hit_mark: ptr cint;
                           hit_bbox: ptr fz_quad; hit_max: cint): cint {.cdecl,
    importc: "fz_search_stext_page".}
proc fz_search_stext_page_cb*(ctx: ptr fz_context; text: ptr fz_stext_page;
                              needle: cstring; cb: fz_search_callback_fn;
                              opaque: pointer): cint {.cdecl,
    importc: "fz_search_stext_page_cb".}
proc fz_highlight_selection*(ctx: ptr fz_context; page: ptr fz_stext_page;
                             a: fz_point; b: fz_point; quads: ptr fz_quad;
                             max_quads: cint): cint {.cdecl,
    importc: "fz_highlight_selection".}
proc fz_snap_selection*(ctx: ptr fz_context; page: ptr fz_stext_page;
                        ap: ptr fz_point; bp: ptr fz_point; mode: cint): fz_quad {.
    cdecl, importc: "fz_snap_selection".}
proc fz_copy_selection*(ctx: ptr fz_context; page: ptr fz_stext_page;
                        a: fz_point; b: fz_point; crlf: cint): cstring {.cdecl,
    importc: "fz_copy_selection".}
proc fz_copy_rectangle*(ctx: ptr fz_context; page: ptr fz_stext_page;
                        area: fz_rect; crlf: cint): cstring {.cdecl,
    importc: "fz_copy_rectangle".}
proc fz_parse_stext_options*(ctx: ptr fz_context; opts: ptr fz_stext_options;
                             string: cstring): ptr fz_stext_options {.cdecl,
    importc: "fz_parse_stext_options".}
proc fz_segment_stext_page*(ctx: ptr fz_context; page: ptr fz_stext_page): cint {.
    cdecl, importc: "fz_segment_stext_page".}
proc fz_new_stext_device*(ctx: ptr fz_context; page: ptr fz_stext_page;
                          options: ptr fz_stext_options): ptr fz_device {.cdecl,
    importc: "fz_new_stext_device".}
proc fz_new_ocr_device*(ctx: ptr fz_context; target: ptr fz_device;
                        ctm: fz_matrix; mediabox: fz_rect; with_list: cint;
                        language: cstring; datadir: cstring; progress: proc (
    a0: ptr fz_context; a1: pointer; a2: cint): cint {.cdecl.};
                        progress_arg: pointer): ptr fz_device {.cdecl,
    importc: "fz_new_ocr_device".}
proc fz_open_reflowed_document*(ctx: ptr fz_context; underdoc: ptr fz_document;
                                opts: ptr fz_stext_options): ptr fz_document {.
    cdecl, importc: "fz_open_reflowed_document".}
proc fz_generate_transition*(ctx: ptr fz_context; tpix: ptr fz_pixmap;
                             opix: ptr fz_pixmap; npix: ptr fz_pixmap;
                             time: cint; trans: ptr fz_transition): cint {.
    cdecl, importc: "fz_generate_transition".}
proc fz_purge_glyph_cache*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_purge_glyph_cache".}
proc fz_render_glyph_pixmap*(ctx: ptr fz_context; font: ptr fz_font; gid: cint;
                             ctm: ptr fz_matrix; scissor: ptr fz_irect; aa: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_render_glyph_pixmap".}
proc fz_render_t3_glyph_direct*(ctx: ptr fz_context; dev: ptr fz_device;
                                font: ptr fz_font; gid: cint; trm: fz_matrix;
                                gstate: pointer;
                                def_cs: ptr fz_default_colorspaces): void {.
    cdecl, importc: "fz_render_t3_glyph_direct".}
proc fz_prepare_t3_glyph*(ctx: ptr fz_context; font: ptr fz_font; gid: cint): void {.
    cdecl, importc: "fz_prepare_t3_glyph".}
proc fz_dump_glyph_cache_stats*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_dump_glyph_cache_stats".}
proc fz_subpixel_adjust*(ctx: ptr fz_context; ctm: ptr fz_matrix;
                         subpix_ctm: ptr fz_matrix; qe: ptr uint8; qf: ptr uint8): cfloat {.
    cdecl, importc: "fz_subpixel_adjust".}
proc fz_make_link_dest_none*(): fz_link_dest {.cdecl,
    importc: "fz_make_link_dest_none".}
proc fz_make_link_dest_xyz*(chapter: cint; page: cint; x: cfloat; y: cfloat;
                            z: cfloat): fz_link_dest {.cdecl,
    importc: "fz_make_link_dest_xyz".}
proc fz_new_link_of_size*(ctx: ptr fz_context; size: cint; rect: fz_rect;
                          uri: cstring): ptr fz_link {.cdecl,
    importc: "fz_new_link_of_size".}
proc fz_keep_link*(ctx: ptr fz_context; link: ptr fz_link): ptr fz_link {.cdecl,
    importc: "fz_keep_link".}
proc fz_drop_link*(ctx: ptr fz_context; link: ptr fz_link): void {.cdecl,
    importc: "fz_drop_link".}
proc fz_is_external_link*(ctx: ptr fz_context; uri: cstring): cint {.cdecl,
    importc: "fz_is_external_link".}
proc fz_set_link_rect*(ctx: ptr fz_context; link: ptr fz_link; rect: fz_rect): void {.
    cdecl, importc: "fz_set_link_rect".}
proc fz_set_link_uri*(ctx: ptr fz_context; link: ptr fz_link; uri: cstring): void {.
    cdecl, importc: "fz_set_link_uri".}
proc fz_outline_iterator_item*(ctx: ptr fz_context;
                               iter: ptr fz_outline_iterator): ptr fz_outline_item {.
    cdecl, importc: "fz_outline_iterator_item".}
proc fz_outline_iterator_next*(ctx: ptr fz_context;
                               iter: ptr fz_outline_iterator): cint {.cdecl,
    importc: "fz_outline_iterator_next".}
proc fz_outline_iterator_prev*(ctx: ptr fz_context;
                               iter: ptr fz_outline_iterator): cint {.cdecl,
    importc: "fz_outline_iterator_prev".}
proc fz_outline_iterator_up*(ctx: ptr fz_context; iter: ptr fz_outline_iterator): cint {.
    cdecl, importc: "fz_outline_iterator_up".}
proc fz_outline_iterator_down*(ctx: ptr fz_context;
                               iter: ptr fz_outline_iterator): cint {.cdecl,
    importc: "fz_outline_iterator_down".}
proc fz_outline_iterator_insert*(ctx: ptr fz_context;
                                 iter: ptr fz_outline_iterator;
                                 item: ptr fz_outline_item): cint {.cdecl,
    importc: "fz_outline_iterator_insert".}
proc fz_outline_iterator_delete*(ctx: ptr fz_context;
                                 iter: ptr fz_outline_iterator): cint {.cdecl,
    importc: "fz_outline_iterator_delete".}
proc fz_outline_iterator_update*(ctx: ptr fz_context;
                                 iter: ptr fz_outline_iterator;
                                 item: ptr fz_outline_item): void {.cdecl,
    importc: "fz_outline_iterator_update".}
proc fz_drop_outline_iterator*(ctx: ptr fz_context;
                               iter: ptr fz_outline_iterator): void {.cdecl,
    importc: "fz_drop_outline_iterator".}
proc fz_new_outline*(ctx: ptr fz_context): ptr fz_outline {.cdecl,
    importc: "fz_new_outline".}
proc fz_keep_outline*(ctx: ptr fz_context; outline: ptr fz_outline): ptr fz_outline {.
    cdecl, importc: "fz_keep_outline".}
proc fz_drop_outline*(ctx: ptr fz_context; outline: ptr fz_outline): void {.
    cdecl, importc: "fz_drop_outline".}
proc fz_load_outline_from_iterator*(ctx: ptr fz_context;
                                    iter: ptr fz_outline_iterator): ptr fz_outline {.
    cdecl, importc: "fz_load_outline_from_iterator".}
proc fz_new_outline_iterator_of_size*(ctx: ptr fz_context; size: csize_t;
                                      doc: ptr fz_document): ptr fz_outline_iterator {.
    cdecl, importc: "fz_new_outline_iterator_of_size".}
proc fz_outline_iterator_from_outline*(ctx: ptr fz_context;
                                       outline: ptr fz_outline): ptr fz_outline_iterator {.
    cdecl, importc: "fz_outline_iterator_from_outline".}
proc fz_box_type_from_string*(name: cstring): fz_box_type {.cdecl,
    importc: "fz_box_type_from_string".}
proc fz_string_from_box_type*(box: fz_box_type): cstring {.cdecl,
    importc: "fz_string_from_box_type".}
proc fz_register_document_handler*(ctx: ptr fz_context;
                                   handler: ptr fz_document_handler): void {.
    cdecl, importc: "fz_register_document_handler".}
proc fz_register_document_handlers*(ctx: ptr fz_context): void {.cdecl,
    importc: "fz_register_document_handlers".}
proc fz_recognize_document*(ctx: ptr fz_context; magic: cstring): ptr fz_document_handler {.
    cdecl, importc: "fz_recognize_document".}
proc fz_recognize_document_content*(ctx: ptr fz_context; filename: cstring): ptr fz_document_handler {.
    cdecl, importc: "fz_recognize_document_content".}
proc fz_recognize_document_stream_content*(ctx: ptr fz_context;
    stream: ptr fz_stream; magic: cstring): ptr fz_document_handler {.cdecl,
    importc: "fz_recognize_document_stream_content".}
proc fz_recognize_document_stream_and_dir_content*(ctx: ptr fz_context;
    stream: ptr fz_stream; dir: ptr fz_archive; magic: cstring): ptr fz_document_handler {.
    cdecl, importc: "fz_recognize_document_stream_and_dir_content".}
proc fz_open_document*(ctx: ptr fz_context; filename: cstring): ptr fz_document {.
    cdecl, importc: "fz_open_document".}
proc fz_open_accelerated_document*(ctx: ptr fz_context; filename: cstring;
                                   accel: cstring): ptr fz_document {.cdecl,
    importc: "fz_open_accelerated_document".}
proc fz_open_document_with_stream*(ctx: ptr fz_context; magic: cstring;
                                   stream: ptr fz_stream): ptr fz_document {.
    cdecl, importc: "fz_open_document_with_stream".}
proc fz_open_document_with_stream_and_dir*(ctx: ptr fz_context; magic: cstring;
    stream: ptr fz_stream; dir: ptr fz_archive): ptr fz_document {.cdecl,
    importc: "fz_open_document_with_stream_and_dir".}
proc fz_open_document_with_buffer*(ctx: ptr fz_context; magic: cstring;
                                   buffer: ptr fz_buffer): ptr fz_document {.
    cdecl, importc: "fz_open_document_with_buffer".}
proc fz_open_accelerated_document_with_stream*(ctx: ptr fz_context;
    magic: cstring; stream: ptr fz_stream; accel: ptr fz_stream): ptr fz_document {.
    cdecl, importc: "fz_open_accelerated_document_with_stream".}
proc fz_open_accelerated_document_with_stream_and_dir*(ctx: ptr fz_context;
    magic: cstring; stream: ptr fz_stream; accel: ptr fz_stream;
    dir: ptr fz_archive): ptr fz_document {.cdecl,
    importc: "fz_open_accelerated_document_with_stream_and_dir".}
proc fz_document_supports_accelerator*(ctx: ptr fz_context; doc: ptr fz_document): cint {.
    cdecl, importc: "fz_document_supports_accelerator".}
proc fz_save_accelerator*(ctx: ptr fz_context; doc: ptr fz_document;
                          accel: cstring): void {.cdecl,
    importc: "fz_save_accelerator".}
proc fz_output_accelerator*(ctx: ptr fz_context; doc: ptr fz_document;
                            accel: ptr fz_output): void {.cdecl,
    importc: "fz_output_accelerator".}
proc fz_new_document_of_size*(ctx: ptr fz_context; size: cint): pointer {.cdecl,
    importc: "fz_new_document_of_size".}
proc fz_keep_document*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_document {.
    cdecl, importc: "fz_keep_document".}
proc fz_drop_document*(ctx: ptr fz_context; doc: ptr fz_document): void {.cdecl,
    importc: "fz_drop_document".}
proc fz_needs_password*(ctx: ptr fz_context; doc: ptr fz_document): cint {.
    cdecl, importc: "fz_needs_password".}
proc fz_authenticate_password*(ctx: ptr fz_context; doc: ptr fz_document;
                               password: cstring): cint {.cdecl,
    importc: "fz_authenticate_password".}
proc fz_load_outline*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_outline {.
    cdecl, importc: "fz_load_outline".}
proc fz_new_outline_iterator*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_outline_iterator {.
    cdecl, importc: "fz_new_outline_iterator".}
proc fz_is_document_reflowable*(ctx: ptr fz_context; doc: ptr fz_document): cint {.
    cdecl, importc: "fz_is_document_reflowable".}
proc fz_layout_document*(ctx: ptr fz_context; doc: ptr fz_document; w: cfloat;
                         h: cfloat; em: cfloat): void {.cdecl,
    importc: "fz_layout_document".}
proc fz_make_bookmark*(ctx: ptr fz_context; doc: ptr fz_document;
                       loc: fz_location): fz_bookmark {.cdecl,
    importc: "fz_make_bookmark".}
proc fz_lookup_bookmark*(ctx: ptr fz_context; doc: ptr fz_document;
                         mark: fz_bookmark): fz_location {.cdecl,
    importc: "fz_lookup_bookmark".}
proc fz_count_pages*(ctx: ptr fz_context; doc: ptr fz_document): cint {.cdecl,
    importc: "fz_count_pages".}
proc fz_resolve_link_dest*(ctx: ptr fz_context; doc: ptr fz_document;
                           uri: cstring): fz_link_dest {.cdecl,
    importc: "fz_resolve_link_dest".}
proc fz_format_link_uri*(ctx: ptr fz_context; doc: ptr fz_document;
                         dest: fz_link_dest): cstring {.cdecl,
    importc: "fz_format_link_uri".}
proc fz_resolve_link*(ctx: ptr fz_context; doc: ptr fz_document; uri: cstring;
                      xp: ptr cfloat; yp: ptr cfloat): fz_location {.cdecl,
    importc: "fz_resolve_link".}
proc fz_run_document_structure*(ctx: ptr fz_context; doc: ptr fz_document;
                                dev: ptr fz_device; cookie: ptr fz_cookie): void {.
    cdecl, importc: "fz_run_document_structure".}
proc fz_last_page*(ctx: ptr fz_context; doc: ptr fz_document): fz_location {.
    cdecl, importc: "fz_last_page".}
proc fz_next_page*(ctx: ptr fz_context; doc: ptr fz_document; loc: fz_location): fz_location {.
    cdecl, importc: "fz_next_page".}
proc fz_previous_page*(ctx: ptr fz_context; doc: ptr fz_document;
                       loc: fz_location): fz_location {.cdecl,
    importc: "fz_previous_page".}
proc fz_clamp_location*(ctx: ptr fz_context; doc: ptr fz_document;
                        loc: fz_location): fz_location {.cdecl,
    importc: "fz_clamp_location".}
proc fz_location_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                   number: cint): fz_location {.cdecl,
    importc: "fz_location_from_page_number".}
proc fz_page_number_from_location*(ctx: ptr fz_context; doc: ptr fz_document;
                                   loc: fz_location): cint {.cdecl,
    importc: "fz_page_number_from_location".}
proc fz_load_page*(ctx: ptr fz_context; doc: ptr fz_document; number: cint): ptr fz_page {.
    cdecl, importc: "fz_load_page".}
proc fz_count_chapters*(ctx: ptr fz_context; doc: ptr fz_document): cint {.
    cdecl, importc: "fz_count_chapters".}
proc fz_count_chapter_pages*(ctx: ptr fz_context; doc: ptr fz_document;
                             chapter: cint): cint {.cdecl,
    importc: "fz_count_chapter_pages".}
proc fz_load_chapter_page*(ctx: ptr fz_context; doc: ptr fz_document;
                           chapter: cint; page: cint): ptr fz_page {.cdecl,
    importc: "fz_load_chapter_page".}
proc fz_load_links*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_link {.
    cdecl, importc: "fz_load_links".}
proc fz_new_page_of_size*(ctx: ptr fz_context; size: cint; doc: ptr fz_document): ptr fz_page {.
    cdecl, importc: "fz_new_page_of_size".}
proc fz_bound_page*(ctx: ptr fz_context; page: ptr fz_page): fz_rect {.cdecl,
    importc: "fz_bound_page".}
proc fz_bound_page_box*(ctx: ptr fz_context; page: ptr fz_page; box: fz_box_type): fz_rect {.
    cdecl, importc: "fz_bound_page_box".}
proc fz_run_page*(ctx: ptr fz_context; page: ptr fz_page; dev: ptr fz_device;
                  transform: fz_matrix; cookie: ptr fz_cookie): void {.cdecl,
    importc: "fz_run_page".}
proc fz_run_page_contents*(ctx: ptr fz_context; page: ptr fz_page;
                           dev: ptr fz_device; transform: fz_matrix;
                           cookie: ptr fz_cookie): void {.cdecl,
    importc: "fz_run_page_contents".}
proc fz_run_page_annots*(ctx: ptr fz_context; page: ptr fz_page;
                         dev: ptr fz_device; transform: fz_matrix;
                         cookie: ptr fz_cookie): void {.cdecl,
    importc: "fz_run_page_annots".}
proc fz_run_page_widgets*(ctx: ptr fz_context; page: ptr fz_page;
                          dev: ptr fz_device; transform: fz_matrix;
                          cookie: ptr fz_cookie): void {.cdecl,
    importc: "fz_run_page_widgets".}
proc fz_keep_page*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_page {.cdecl,
    importc: "fz_keep_page".}
proc fz_drop_page*(ctx: ptr fz_context; page: ptr fz_page): void {.cdecl,
    importc: "fz_drop_page".}
proc fz_page_presentation*(ctx: ptr fz_context; page: ptr fz_page;
                           transition: ptr fz_transition; duration: ptr cfloat): ptr fz_transition {.
    cdecl, importc: "fz_page_presentation".}
proc fz_page_label*(ctx: ptr fz_context; page: ptr fz_page; buf: cstring;
                    size: cint): cstring {.cdecl, importc: "fz_page_label".}
proc fz_has_permission*(ctx: ptr fz_context; doc: ptr fz_document;
                        p: fz_permission): cint {.cdecl,
    importc: "fz_has_permission".}
proc fz_lookup_metadata*(ctx: ptr fz_context; doc: ptr fz_document;
                         key: cstring; buf: cstring; size: cint): cint {.cdecl,
    importc: "fz_lookup_metadata".}
proc fz_set_metadata*(ctx: ptr fz_context; doc: ptr fz_document; key: cstring;
                      value: cstring): void {.cdecl, importc: "fz_set_metadata".}
proc fz_document_output_intent*(ctx: ptr fz_context; doc: ptr fz_document): ptr fz_colorspace {.
    cdecl, importc: "fz_document_output_intent".}
proc fz_page_separations*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_separations {.
    cdecl, importc: "fz_page_separations".}
proc fz_page_uses_overprint*(ctx: ptr fz_context; page: ptr fz_page): cint {.
    cdecl, importc: "fz_page_uses_overprint".}
proc fz_create_link*(ctx: ptr fz_context; page: ptr fz_page; bbox: fz_rect;
                     uri: cstring): ptr fz_link {.cdecl,
    importc: "fz_create_link".}
proc fz_delete_link*(ctx: ptr fz_context; page: ptr fz_page; link: ptr fz_link): void {.
    cdecl, importc: "fz_delete_link".}
proc fz_process_opened_pages*(ctx: ptr fz_context; doc: ptr fz_document;
                              process_openend_page: fz_process_opened_page_fn;
                              state: pointer): pointer {.cdecl,
    importc: "fz_process_opened_pages".}
proc fz_new_display_list_from_page*(ctx: ptr fz_context; page: ptr fz_page): ptr fz_display_list {.
    cdecl, importc: "fz_new_display_list_from_page".}
proc fz_new_display_list_from_page_number*(ctx: ptr fz_context;
    doc: ptr fz_document; number: cint): ptr fz_display_list {.cdecl,
    importc: "fz_new_display_list_from_page_number".}
proc fz_new_display_list_from_page_contents*(ctx: ptr fz_context;
    page: ptr fz_page): ptr fz_display_list {.cdecl,
    importc: "fz_new_display_list_from_page_contents".}
proc fz_new_pixmap_from_display_list*(ctx: ptr fz_context;
                                      list: ptr fz_display_list; ctm: fz_matrix;
                                      cs: ptr fz_colorspace; alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_from_display_list".}
proc fz_new_pixmap_from_page*(ctx: ptr fz_context; page: ptr fz_page;
                              ctm: fz_matrix; cs: ptr fz_colorspace; alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_from_page".}
proc fz_new_pixmap_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                     number: cint; ctm: fz_matrix;
                                     cs: ptr fz_colorspace; alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "fz_new_pixmap_from_page_number".}
proc fz_new_pixmap_from_page_contents*(ctx: ptr fz_context; page: ptr fz_page;
                                       ctm: fz_matrix; cs: ptr fz_colorspace;
                                       alpha: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_new_pixmap_from_page_contents".}
proc fz_new_pixmap_from_display_list_with_separations*(ctx: ptr fz_context;
    list: ptr fz_display_list; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_new_pixmap_from_display_list_with_separations".}
proc fz_new_pixmap_from_page_with_separations*(ctx: ptr fz_context;
    page: ptr fz_page; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_new_pixmap_from_page_with_separations".}
proc fz_new_pixmap_from_page_number_with_separations*(ctx: ptr fz_context;
    doc: ptr fz_document; number: cint; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_new_pixmap_from_page_number_with_separations".}
proc fz_new_pixmap_from_page_contents_with_separations*(ctx: ptr fz_context;
    page: ptr fz_page; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_new_pixmap_from_page_contents_with_separations".}
proc fz_fill_pixmap_from_display_list*(ctx: ptr fz_context;
                                       list: ptr fz_display_list;
                                       ctm: fz_matrix; pix: ptr fz_pixmap): ptr fz_pixmap {.
    cdecl, importc: "fz_fill_pixmap_from_display_list".}
proc fz_new_stext_page_from_page*(ctx: ptr fz_context; page: ptr fz_page;
                                  options: ptr fz_stext_options): ptr fz_stext_page {.
    cdecl, importc: "fz_new_stext_page_from_page".}
proc fz_new_stext_page_from_page_number*(ctx: ptr fz_context;
    doc: ptr fz_document; number: cint; options: ptr fz_stext_options): ptr fz_stext_page {.
    cdecl, importc: "fz_new_stext_page_from_page_number".}
proc fz_new_stext_page_from_chapter_page_number*(ctx: ptr fz_context;
    doc: ptr fz_document; chapter: cint; number: cint;
    options: ptr fz_stext_options): ptr fz_stext_page {.cdecl,
    importc: "fz_new_stext_page_from_chapter_page_number".}
proc fz_new_stext_page_from_display_list*(ctx: ptr fz_context;
    list: ptr fz_display_list; options: ptr fz_stext_options): ptr fz_stext_page {.
    cdecl, importc: "fz_new_stext_page_from_display_list".}
proc fz_new_buffer_from_stext_page*(ctx: ptr fz_context; text: ptr fz_stext_page): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_stext_page".}
proc fz_new_buffer_from_page*(ctx: ptr fz_context; page: ptr fz_page;
                              options: ptr fz_stext_options): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_page".}
proc fz_new_buffer_from_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                     number: cint; options: ptr fz_stext_options): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_page_number".}
proc fz_new_buffer_from_display_list*(ctx: ptr fz_context;
                                      list: ptr fz_display_list;
                                      options: ptr fz_stext_options): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_display_list".}
proc fz_search_page*(ctx: ptr fz_context; page: ptr fz_page; needle: cstring;
                     hit_mark: ptr cint; hit_bbox: ptr fz_quad; hit_max: cint): cint {.
    cdecl, importc: "fz_search_page".}
proc fz_search_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                            number: cint; needle: cstring; hit_mark: ptr cint;
                            hit_bbox: ptr fz_quad; hit_max: cint): cint {.cdecl,
    importc: "fz_search_page_number".}
proc fz_search_chapter_page_number*(ctx: ptr fz_context; doc: ptr fz_document;
                                    chapter: cint; page: cint; needle: cstring;
                                    hit_mark: ptr cint; hit_bbox: ptr fz_quad;
                                    hit_max: cint): cint {.cdecl,
    importc: "fz_search_chapter_page_number".}
proc fz_search_display_list*(ctx: ptr fz_context; list: ptr fz_display_list;
                             needle: cstring; hit_mark: ptr cint;
                             hit_bbox: ptr fz_quad; hit_max: cint): cint {.
    cdecl, importc: "fz_search_display_list".}
proc fz_search_page_cb*(ctx: ptr fz_context; page: ptr fz_page; needle: cstring;
                        cb: fz_search_callback_fn; opaque: pointer): cint {.
    cdecl, importc: "fz_search_page_cb".}
proc fz_search_page_number_cb*(ctx: ptr fz_context; doc: ptr fz_document;
                               number: cint; needle: cstring;
                               cb: fz_search_callback_fn; opaque: pointer): cint {.
    cdecl, importc: "fz_search_page_number_cb".}
proc fz_search_chapter_page_number_cb*(ctx: ptr fz_context;
                                       doc: ptr fz_document; chapter: cint;
                                       page: cint; needle: cstring;
                                       cb: fz_search_callback_fn;
                                       opaque: pointer): cint {.cdecl,
    importc: "fz_search_chapter_page_number_cb".}
proc fz_search_display_list_cb*(ctx: ptr fz_context; list: ptr fz_display_list;
                                needle: cstring; cb: fz_search_callback_fn;
                                opaque: pointer): cint {.cdecl,
    importc: "fz_search_display_list_cb".}
proc fz_new_display_list_from_svg*(ctx: ptr fz_context; buf: ptr fz_buffer;
                                   base_uri: cstring; dir: ptr fz_archive;
                                   w: ptr cfloat; h: ptr cfloat): ptr fz_display_list {.
    cdecl, importc: "fz_new_display_list_from_svg".}
proc fz_new_image_from_svg*(ctx: ptr fz_context; buf: ptr fz_buffer;
                            base_uri: cstring; dir: ptr fz_archive): ptr fz_image {.
    cdecl, importc: "fz_new_image_from_svg".}
proc fz_new_display_list_from_svg_xml*(ctx: ptr fz_context;
                                       xmldoc: ptr fz_xml_doc; xml: ptr fz_xml;
                                       base_uri: cstring; dir: ptr fz_archive;
                                       w: ptr cfloat; h: ptr cfloat): ptr fz_display_list {.
    cdecl, importc: "fz_new_display_list_from_svg_xml".}
proc fz_new_image_from_svg_xml*(ctx: ptr fz_context; xmldoc: ptr fz_xml_doc;
                                xml: ptr fz_xml; base_uri: cstring;
                                dir: ptr fz_archive): ptr fz_image {.cdecl,
    importc: "fz_new_image_from_svg_xml".}
proc fz_write_image_as_data_uri*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                 image: ptr fz_image): void {.cdecl,
    importc: "fz_write_image_as_data_uri".}
proc fz_write_pixmap_as_data_uri*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_write_pixmap_as_data_uri".}
proc fz_append_image_as_data_uri*(ctx: ptr fz_context; out_arg: ptr fz_buffer;
                                  image: ptr fz_image): void {.cdecl,
    importc: "fz_append_image_as_data_uri".}
proc fz_append_pixmap_as_data_uri*(ctx: ptr fz_context; out_arg: ptr fz_buffer;
                                   pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_append_pixmap_as_data_uri".}
proc fz_new_xhtml_document_from_document*(ctx: ptr fz_context;
    old_doc: ptr fz_document; opts: ptr fz_stext_options): ptr fz_document {.
    cdecl, importc: "fz_new_xhtml_document_from_document".}
proc fz_new_buffer_from_page_with_format*(ctx: ptr fz_context;
    page: ptr fz_page; format: cstring; options: cstring; transform: fz_matrix;
    cookie: ptr fz_cookie): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_page_with_format".}
proc fz_has_option*(ctx: ptr fz_context; opts: cstring; key: cstring;
                    val: ptr cstring): cint {.cdecl, importc: "fz_has_option".}
proc fz_option_eq*(a: cstring; b: cstring): cint {.cdecl,
    importc: "fz_option_eq".}
proc fz_copy_option*(ctx: ptr fz_context; val: cstring; dest: cstring;
                     maxlen: csize_t): csize_t {.cdecl,
    importc: "fz_copy_option".}
proc fz_new_document_writer*(ctx: ptr fz_context; path: cstring;
                             format: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_document_writer".}
proc fz_new_document_writer_with_output*(ctx: ptr fz_context;
    out_arg: ptr fz_output; format: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_document_writer_with_output".}
proc fz_new_document_writer_with_buffer*(ctx: ptr fz_context;
    buf: ptr fz_buffer; format: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_document_writer_with_buffer".}
proc fz_new_pdf_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pdf_writer".}
proc fz_new_pdf_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pdf_writer_with_output".}
proc fz_new_svg_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_svg_writer".}
proc fz_new_svg_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_svg_writer_with_output".}
proc fz_new_text_writer*(ctx: ptr fz_context; format: cstring; path: cstring;
                         options: cstring): ptr fz_document_writer {.cdecl,
    importc: "fz_new_text_writer".}
proc fz_new_text_writer_with_output*(ctx: ptr fz_context; format: cstring;
                                     out_arg: ptr fz_output; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_text_writer_with_output".}
proc fz_new_odt_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_odt_writer".}
proc fz_new_odt_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_odt_writer_with_output".}
proc fz_new_docx_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_docx_writer".}
proc fz_new_docx_writer_with_output*(ctx: ptr fz_context;
                                     out_arg: ptr fz_output; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_docx_writer_with_output".}
proc fz_new_ps_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_ps_writer".}
proc fz_new_ps_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                   options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_ps_writer_with_output".}
proc fz_new_pcl_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pcl_writer".}
proc fz_new_pcl_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pcl_writer_with_output".}
proc fz_new_pclm_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pclm_writer".}
proc fz_new_pclm_writer_with_output*(ctx: ptr fz_context;
                                     out_arg: ptr fz_output; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pclm_writer_with_output".}
proc fz_new_pwg_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pwg_writer".}
proc fz_new_pwg_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pwg_writer_with_output".}
proc fz_new_cbz_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_cbz_writer".}
proc fz_new_cbz_writer_with_output*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                    options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_cbz_writer_with_output".}
proc fz_new_pdfocr_writer*(ctx: ptr fz_context; path: cstring; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pdfocr_writer".}
proc fz_new_pdfocr_writer_with_output*(ctx: ptr fz_context;
                                       out_arg: ptr fz_output; options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pdfocr_writer_with_output".}
proc fz_pdfocr_writer_set_progress*(ctx: ptr fz_context;
                                    writer: ptr fz_document_writer;
                                    progress: fz_pdfocr_progress_fn; a3: pointer): void {.
    cdecl, importc: "fz_pdfocr_writer_set_progress".}
proc fz_new_jpeg_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                                options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_jpeg_pixmap_writer".}
proc fz_new_png_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_png_pixmap_writer".}
proc fz_new_pam_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pam_pixmap_writer".}
proc fz_new_pnm_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pnm_pixmap_writer".}
proc fz_new_pgm_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pgm_pixmap_writer".}
proc fz_new_ppm_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_ppm_pixmap_writer".}
proc fz_new_pbm_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pbm_pixmap_writer".}
proc fz_new_pkm_pixmap_writer*(ctx: ptr fz_context; path: cstring;
                               options: cstring): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pkm_pixmap_writer".}
proc fz_begin_page*(ctx: ptr fz_context; wri: ptr fz_document_writer;
                    mediabox: fz_rect): ptr fz_device {.cdecl,
    importc: "fz_begin_page".}
proc fz_end_page*(ctx: ptr fz_context; wri: ptr fz_document_writer): void {.
    cdecl, importc: "fz_end_page".}
proc fz_write_document*(ctx: ptr fz_context; wri: ptr fz_document_writer;
                        doc: ptr fz_document): void {.cdecl,
    importc: "fz_write_document".}
proc fz_close_document_writer*(ctx: ptr fz_context; wri: ptr fz_document_writer): void {.
    cdecl, importc: "fz_close_document_writer".}
proc fz_drop_document_writer*(ctx: ptr fz_context; wri: ptr fz_document_writer): void {.
    cdecl, importc: "fz_drop_document_writer".}
proc fz_new_pixmap_writer*(ctx: ptr fz_context; path: cstring; options: cstring;
                           default_path: cstring; n: cint; save: proc (
    a0: ptr fz_context; a1: ptr fz_pixmap; a2: cstring): void {.cdecl.}): ptr fz_document_writer {.
    cdecl, importc: "fz_new_pixmap_writer".}
var fz_pdf_write_options_usage* {.importc: "fz_pdf_write_options_usage".}: cstring
var fz_svg_write_options_usage* {.importc: "fz_svg_write_options_usage".}: cstring
var fz_pcl_write_options_usage* {.importc: "fz_pcl_write_options_usage".}: cstring
var fz_pclm_write_options_usage* {.importc: "fz_pclm_write_options_usage".}: cstring
var fz_pwg_write_options_usage* {.importc: "fz_pwg_write_options_usage".}: cstring
var fz_pdfocr_write_options_usage* {.importc: "fz_pdfocr_write_options_usage".}: cstring
proc fz_new_document_writer_of_size*(ctx: ptr fz_context; size: csize_t;
    begin_page: fz_document_writer_begin_page_fn;
                                     end_page: fz_document_writer_end_page_fn;
                                     close: fz_document_writer_close_writer_fn;
                                     drop: fz_document_writer_drop_writer_fn): ptr fz_document_writer {.
    cdecl, importc: "fz_new_document_writer_of_size".}
proc fz_write_header*(ctx: ptr fz_context; writer: ptr fz_band_writer; w: cint;
                      h: cint; n: cint; alpha: cint; xres: cint; yres: cint;
                      pagenum: cint; cs: ptr fz_colorspace;
                      seps: ptr fz_separations): void {.cdecl,
    importc: "fz_write_header".}
proc fz_write_band*(ctx: ptr fz_context; writer: ptr fz_band_writer;
                    stride: cint; band_height: cint; samples: ptr uint8): void {.
    cdecl, importc: "fz_write_band".}
proc fz_close_band_writer*(ctx: ptr fz_context; writer: ptr fz_band_writer): void {.
    cdecl, importc: "fz_close_band_writer".}
proc fz_drop_band_writer*(ctx: ptr fz_context; writer: ptr fz_band_writer): void {.
    cdecl, importc: "fz_drop_band_writer".}
proc fz_new_band_writer_of_size*(ctx: ptr fz_context; size: csize_t;
                                 out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_band_writer_of_size".}
proc fz_pcl_preset*(ctx: ptr fz_context; opts: ptr fz_pcl_options;
                    preset: cstring): void {.cdecl, importc: "fz_pcl_preset".}
proc fz_parse_pcl_options*(ctx: ptr fz_context; opts: ptr fz_pcl_options;
                           args: cstring): ptr fz_pcl_options {.cdecl,
    importc: "fz_parse_pcl_options".}
proc fz_new_mono_pcl_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  options: ptr fz_pcl_options): ptr fz_band_writer {.
    cdecl, importc: "fz_new_mono_pcl_band_writer".}
proc fz_write_bitmap_as_pcl*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             bitmap: ptr fz_bitmap; pcl: ptr fz_pcl_options): void {.
    cdecl, importc: "fz_write_bitmap_as_pcl".}
proc fz_save_bitmap_as_pcl*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                            filename: cstring; append: cint;
                            pcl: ptr fz_pcl_options): void {.cdecl,
    importc: "fz_save_bitmap_as_pcl".}
proc fz_new_color_pcl_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                   options: ptr fz_pcl_options): ptr fz_band_writer {.
    cdecl, importc: "fz_new_color_pcl_band_writer".}
proc fz_write_pixmap_as_pcl*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pixmap: ptr fz_pixmap; pcl: ptr fz_pcl_options): void {.
    cdecl, importc: "fz_write_pixmap_as_pcl".}
proc fz_save_pixmap_as_pcl*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring; append: cint;
                            pcl: ptr fz_pcl_options): void {.cdecl,
    importc: "fz_save_pixmap_as_pcl".}
proc fz_parse_pclm_options*(ctx: ptr fz_context; opts: ptr fz_pclm_options;
                            args: cstring): ptr fz_pclm_options {.cdecl,
    importc: "fz_parse_pclm_options".}
proc fz_new_pclm_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                              options: ptr fz_pclm_options): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pclm_band_writer".}
proc fz_write_pixmap_as_pclm*(ctx: ptr fz_context; out_arg: ptr fz_output;
                              pixmap: ptr fz_pixmap;
                              options: ptr fz_pclm_options): void {.cdecl,
    importc: "fz_write_pixmap_as_pclm".}
proc fz_save_pixmap_as_pclm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                             filename: cstring; append: cint;
                             options: ptr fz_pclm_options): void {.cdecl,
    importc: "fz_save_pixmap_as_pclm".}
proc fz_parse_pdfocr_options*(ctx: ptr fz_context; opts: ptr fz_pdfocr_options;
                              args: cstring): ptr fz_pdfocr_options {.cdecl,
    importc: "fz_parse_pdfocr_options".}
proc fz_new_pdfocr_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                options: ptr fz_pdfocr_options): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pdfocr_band_writer".}
proc fz_pdfocr_band_writer_set_progress*(ctx: ptr fz_context;
    writer: ptr fz_band_writer; progress_fn: fz_pdfocr_progress_fn;
    progress_arg: pointer): void {.cdecl, importc: "fz_pdfocr_band_writer_set_progress".}
proc fz_write_pixmap_as_pdfocr*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                pixmap: ptr fz_pixmap;
                                options: ptr fz_pdfocr_options): void {.cdecl,
    importc: "fz_write_pixmap_as_pdfocr".}
proc fz_save_pixmap_as_pdfocr*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                               filename: cstring; append: cint;
                               options: ptr fz_pdfocr_options): void {.cdecl,
    importc: "fz_save_pixmap_as_pdfocr".}
proc fz_save_pixmap_as_png*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_pixmap_as_png".}
proc fz_write_pixmap_as_jpeg*(ctx: ptr fz_context; out_arg: ptr fz_output;
                              pix: ptr fz_pixmap; quality: cint;
                              invert_cmyk: cint): void {.cdecl,
    importc: "fz_write_pixmap_as_jpeg".}
proc fz_save_pixmap_as_jpeg*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                             filename: cstring; quality: cint): void {.cdecl,
    importc: "fz_save_pixmap_as_jpeg".}
proc fz_write_pixmap_as_png*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_write_pixmap_as_png".}
proc fz_write_pixmap_as_jpx*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pix: ptr fz_pixmap; quality: cint): void {.cdecl,
    importc: "fz_write_pixmap_as_jpx".}
proc fz_save_pixmap_as_jpx*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring; q: cint): void {.cdecl,
    importc: "fz_save_pixmap_as_jpx".}
proc fz_new_png_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_png_band_writer".}
proc fz_new_buffer_from_image_as_png*(ctx: ptr fz_context; image: ptr fz_image;
                                      color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_image_as_png".}
proc fz_new_buffer_from_image_as_pnm*(ctx: ptr fz_context; image: ptr fz_image;
                                      color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_image_as_pnm".}
proc fz_new_buffer_from_image_as_pam*(ctx: ptr fz_context; image: ptr fz_image;
                                      color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_image_as_pam".}
proc fz_new_buffer_from_image_as_psd*(ctx: ptr fz_context; image: ptr fz_image;
                                      color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_image_as_psd".}
proc fz_new_buffer_from_image_as_jpeg*(ctx: ptr fz_context; image: ptr fz_image;
                                       color_params: fz_color_params;
                                       quality: cint; invert_cmyk: cint): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_image_as_jpeg".}
proc fz_new_buffer_from_image_as_jpx*(ctx: ptr fz_context; image: ptr fz_image;
                                      color_params: fz_color_params;
                                      quality: cint): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_image_as_jpx".}
proc fz_new_buffer_from_pixmap_as_png*(ctx: ptr fz_context;
                                       pixmap: ptr fz_pixmap;
                                       color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_pixmap_as_png".}
proc fz_new_buffer_from_pixmap_as_pnm*(ctx: ptr fz_context;
                                       pixmap: ptr fz_pixmap;
                                       color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_pixmap_as_pnm".}
proc fz_new_buffer_from_pixmap_as_pam*(ctx: ptr fz_context;
                                       pixmap: ptr fz_pixmap;
                                       color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_pixmap_as_pam".}
proc fz_new_buffer_from_pixmap_as_psd*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                       color_params: fz_color_params): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_pixmap_as_psd".}
proc fz_new_buffer_from_pixmap_as_jpeg*(ctx: ptr fz_context;
                                        pixmap: ptr fz_pixmap;
                                        color_params: fz_color_params;
                                        quality: cint; invert_cmyk: cint): ptr fz_buffer {.
    cdecl, importc: "fz_new_buffer_from_pixmap_as_jpeg".}
proc fz_new_buffer_from_pixmap_as_jpx*(ctx: ptr fz_context; pix: ptr fz_pixmap;
                                       color_params: fz_color_params;
                                       quality: cint): ptr fz_buffer {.cdecl,
    importc: "fz_new_buffer_from_pixmap_as_jpx".}
proc fz_save_pixmap_as_pnm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_pixmap_as_pnm".}
proc fz_write_pixmap_as_pnm*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_write_pixmap_as_pnm".}
proc fz_new_pnm_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pnm_band_writer".}
proc fz_save_pixmap_as_pam*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_pixmap_as_pam".}
proc fz_write_pixmap_as_pam*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_write_pixmap_as_pam".}
proc fz_new_pam_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pam_band_writer".}
proc fz_save_bitmap_as_pbm*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_bitmap_as_pbm".}
proc fz_write_bitmap_as_pbm*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             bitmap: ptr fz_bitmap): void {.cdecl,
    importc: "fz_write_bitmap_as_pbm".}
proc fz_new_pbm_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pbm_band_writer".}
proc fz_save_pixmap_as_pbm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_pixmap_as_pbm".}
proc fz_save_bitmap_as_pkm*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_bitmap_as_pkm".}
proc fz_write_bitmap_as_pkm*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             bitmap: ptr fz_bitmap): void {.cdecl,
    importc: "fz_write_bitmap_as_pkm".}
proc fz_new_pkm_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pkm_band_writer".}
proc fz_save_pixmap_as_pkm*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_pixmap_as_pkm".}
proc fz_write_pixmap_as_ps*(ctx: ptr fz_context; out_arg: ptr fz_output;
                            pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_write_pixmap_as_ps".}
proc fz_save_pixmap_as_ps*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                           filename: cstring; append: cint): void {.cdecl,
    importc: "fz_save_pixmap_as_ps".}
proc fz_new_ps_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_ps_band_writer".}
proc fz_write_ps_file_header*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_write_ps_file_header".}
proc fz_write_ps_file_trailer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                               pages: cint): void {.cdecl,
    importc: "fz_write_ps_file_trailer".}
proc fz_save_pixmap_as_psd*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring): void {.cdecl,
    importc: "fz_save_pixmap_as_psd".}
proc fz_write_pixmap_as_psd*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pixmap: ptr fz_pixmap): void {.cdecl,
    importc: "fz_write_pixmap_as_psd".}
proc fz_new_psd_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output): ptr fz_band_writer {.
    cdecl, importc: "fz_new_psd_band_writer".}
proc fz_save_pixmap_as_pwg*(ctx: ptr fz_context; pixmap: ptr fz_pixmap;
                            filename: cstring; append: cint;
                            pwg: ptr fz_pwg_options): void {.cdecl,
    importc: "fz_save_pixmap_as_pwg".}
proc fz_save_bitmap_as_pwg*(ctx: ptr fz_context; bitmap: ptr fz_bitmap;
                            filename: cstring; append: cint;
                            pwg: ptr fz_pwg_options): void {.cdecl,
    importc: "fz_save_bitmap_as_pwg".}
proc fz_write_pixmap_as_pwg*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pixmap: ptr fz_pixmap; pwg: ptr fz_pwg_options): void {.
    cdecl, importc: "fz_write_pixmap_as_pwg".}
proc fz_write_bitmap_as_pwg*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             bitmap: ptr fz_bitmap; pwg: ptr fz_pwg_options): void {.
    cdecl, importc: "fz_write_bitmap_as_pwg".}
proc fz_write_pixmap_as_pwg_page*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  pixmap: ptr fz_pixmap; pwg: ptr fz_pwg_options): void {.
    cdecl, importc: "fz_write_pixmap_as_pwg_page".}
proc fz_write_bitmap_as_pwg_page*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  bitmap: ptr fz_bitmap; pwg: ptr fz_pwg_options): void {.
    cdecl, importc: "fz_write_bitmap_as_pwg_page".}
proc fz_new_mono_pwg_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                  pwg: ptr fz_pwg_options): ptr fz_band_writer {.
    cdecl, importc: "fz_new_mono_pwg_band_writer".}
proc fz_new_pwg_band_writer*(ctx: ptr fz_context; out_arg: ptr fz_output;
                             pwg: ptr fz_pwg_options): ptr fz_band_writer {.
    cdecl, importc: "fz_new_pwg_band_writer".}
proc fz_write_pwg_file_header*(ctx: ptr fz_context; out_arg: ptr fz_output): void {.
    cdecl, importc: "fz_write_pwg_file_header".}
proc fz_new_svg_device*(ctx: ptr fz_context; out_arg: ptr fz_output;
                        page_width: cfloat; page_height: cfloat;
                        text_format: cint; reuse_images: cint): ptr fz_device {.
    cdecl, importc: "fz_new_svg_device".}
proc fz_new_svg_device_with_id*(ctx: ptr fz_context; out_arg: ptr fz_output;
                                page_width: cfloat; page_height: cfloat;
                                text_format: cint; reuse_images: cint;
                                id: ptr cint): ptr fz_device {.cdecl,
    importc: "fz_new_svg_device_with_id".}
proc fz_new_story*(ctx: ptr fz_context; buf: ptr fz_buffer; user_css: cstring;
                   em: cfloat; dir: ptr fz_archive): ptr fz_story {.cdecl,
    importc: "fz_new_story".}
proc fz_story_warnings*(ctx: ptr fz_context; story: ptr fz_story): cstring {.
    cdecl, importc: "fz_story_warnings".}
proc fz_place_story*(ctx: ptr fz_context; story: ptr fz_story; where: fz_rect;
                     filled: ptr fz_rect): cint {.cdecl,
    importc: "fz_place_story".}
proc fz_place_story_flags*(ctx: ptr fz_context; story: ptr fz_story;
                           where: fz_rect; filled: ptr fz_rect; flags: cint): cint {.
    cdecl, importc: "fz_place_story_flags".}
proc fz_draw_story*(ctx: ptr fz_context; story: ptr fz_story;
                    dev: ptr fz_device; ctm: fz_matrix): void {.cdecl,
    importc: "fz_draw_story".}
proc fz_reset_story*(ctx: ptr fz_context; story: ptr fz_story): void {.cdecl,
    importc: "fz_reset_story".}
proc fz_drop_story*(ctx: ptr fz_context; story: ptr fz_story): void {.cdecl,
    importc: "fz_drop_story".}
proc fz_story_document*(ctx: ptr fz_context; story: ptr fz_story): ptr fz_xml {.
    cdecl, importc: "fz_story_document".}
proc fz_story_positions*(ctx: ptr fz_context; story: ptr fz_story;
                         cb: fz_story_position_callback; arg: pointer): void {.
    cdecl, importc: "fz_story_positions".}
proc fz_write_story*(ctx: ptr fz_context; writer: ptr fz_document_writer;
                     story: ptr fz_story; rectfn: fz_write_story_rectfn;
                     rectfn_ref: pointer; positionfn: fz_write_story_positionfn;
                     positionfn_ref: pointer; pagefn: fz_write_story_pagefn;
                     pagefn_ref: pointer): void {.cdecl,
    importc: "fz_write_story".}
proc fz_write_stabilized_story*(ctx: ptr fz_context;
                                writer: ptr fz_document_writer;
                                user_css: cstring; em: cfloat;
                                contentfn: fz_write_story_contentfn;
                                contentfn_ref: pointer;
                                rectfn: fz_write_story_rectfn;
                                rectfn_ref: pointer;
                                pagefn: fz_write_story_pagefn;
                                pagefn_ref: pointer; dir: ptr fz_archive): void {.
    cdecl, importc: "fz_write_stabilized_story".}
proc fz_deskew_pixmap*(ctx: ptr fz_context; src: ptr fz_pixmap;
                       degrees: cdouble; border: cint): ptr fz_pixmap {.cdecl,
    importc: "fz_deskew_pixmap".}
proc fz_skew_detect*(ctx: ptr fz_context; pixmap: ptr fz_pixmap): cdouble {.
    cdecl, importc: "fz_skew_detect".}
proc pdf_new_int*(ctx: ptr fz_context; i: int64): ptr pdf_obj {.cdecl,
    importc: "pdf_new_int".}
proc pdf_new_real*(ctx: ptr fz_context; f: cfloat): ptr pdf_obj {.cdecl,
    importc: "pdf_new_real".}
proc pdf_new_name*(ctx: ptr fz_context; str: cstring): ptr pdf_obj {.cdecl,
    importc: "pdf_new_name".}
proc pdf_new_string*(ctx: ptr fz_context; str: cstring; len: csize_t): ptr pdf_obj {.
    cdecl, importc: "pdf_new_string".}
proc pdf_new_text_string*(ctx: ptr fz_context; s: cstring): ptr pdf_obj {.cdecl,
    importc: "pdf_new_text_string".}
proc pdf_new_indirect*(ctx: ptr fz_context; doc: ptr pdf_document; num: cint;
                       gen: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_new_indirect".}
proc pdf_new_array*(ctx: ptr fz_context; doc: ptr pdf_document; initialcap: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_new_array".}
proc pdf_new_dict*(ctx: ptr fz_context; doc: ptr pdf_document; initialcap: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_new_dict".}
proc pdf_new_point*(ctx: ptr fz_context; doc: ptr pdf_document; point: fz_point): ptr pdf_obj {.
    cdecl, importc: "pdf_new_point".}
proc pdf_new_rect*(ctx: ptr fz_context; doc: ptr pdf_document; rect: fz_rect): ptr pdf_obj {.
    cdecl, importc: "pdf_new_rect".}
proc pdf_new_matrix*(ctx: ptr fz_context; doc: ptr pdf_document; mtx: fz_matrix): ptr pdf_obj {.
    cdecl, importc: "pdf_new_matrix".}
proc pdf_new_date*(ctx: ptr fz_context; doc: ptr pdf_document; time: int64): ptr pdf_obj {.
    cdecl, importc: "pdf_new_date".}
proc pdf_copy_array*(ctx: ptr fz_context; array: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_copy_array".}
proc pdf_copy_dict*(ctx: ptr fz_context; dict: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_copy_dict".}
proc pdf_deep_copy_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_deep_copy_obj".}
proc pdf_keep_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_keep_obj".}
proc pdf_drop_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_drop_obj".}
proc pdf_drop_singleton_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_drop_singleton_obj".}
proc pdf_is_null*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_null".}
proc pdf_is_bool*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_bool".}
proc pdf_is_int*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_int".}
proc pdf_is_real*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_real".}
proc pdf_is_number*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_number".}
proc pdf_is_name*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_name".}
proc pdf_is_string*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_string".}
proc pdf_is_array*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_array".}
proc pdf_is_dict*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_dict".}
proc pdf_is_indirect*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_indirect".}
proc pdf_obj_num_is_stream*(ctx: ptr fz_context; doc: ptr pdf_document;
                            num: cint): cint {.cdecl,
    importc: "pdf_obj_num_is_stream".}
proc pdf_is_stream*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_stream".}
proc pdf_objcmp*(ctx: ptr fz_context; a: ptr pdf_obj; b: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_objcmp".}
proc pdf_objcmp_resolve*(ctx: ptr fz_context; a: ptr pdf_obj; b: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_objcmp_resolve".}
proc pdf_objcmp_deep*(ctx: ptr fz_context; a: ptr pdf_obj; b: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_objcmp_deep".}
proc pdf_name_eq*(ctx: ptr fz_context; a: ptr pdf_obj; b: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_name_eq".}
proc pdf_obj_marked*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_obj_marked".}
proc pdf_mark_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_mark_obj".}
proc pdf_unmark_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_unmark_obj".}
proc pdf_cycle*(ctx: ptr fz_context; here: ptr pdf_cycle_list;
                prev: ptr pdf_cycle_list; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_cycle".}
proc pdf_new_mark_bits*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_mark_bits {.
    cdecl, importc: "pdf_new_mark_bits".}
proc pdf_drop_mark_bits*(ctx: ptr fz_context; marks: ptr pdf_mark_bits): void {.
    cdecl, importc: "pdf_drop_mark_bits".}
proc pdf_mark_bits_reset*(ctx: ptr fz_context; marks: ptr pdf_mark_bits): void {.
    cdecl, importc: "pdf_mark_bits_reset".}
proc pdf_mark_bits_set*(ctx: ptr fz_context; marks: ptr pdf_mark_bits;
                        obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_mark_bits_set".}
proc pdf_mark_list_push*(ctx: ptr fz_context; list: ptr pdf_mark_list;
                         obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_mark_list_push".}
proc pdf_mark_list_pop*(ctx: ptr fz_context; list: ptr pdf_mark_list): void {.
    cdecl, importc: "pdf_mark_list_pop".}
proc pdf_mark_list_check*(ctx: ptr fz_context; list: ptr pdf_mark_list;
                          obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_mark_list_check".}
proc pdf_mark_list_init*(ctx: ptr fz_context; list: ptr pdf_mark_list): void {.
    cdecl, importc: "pdf_mark_list_init".}
proc pdf_mark_list_free*(ctx: ptr fz_context; list: ptr pdf_mark_list): void {.
    cdecl, importc: "pdf_mark_list_free".}
proc pdf_set_obj_memo*(ctx: ptr fz_context; obj: ptr pdf_obj; bit: cint;
                       memo: cint): void {.cdecl, importc: "pdf_set_obj_memo".}
proc pdf_obj_memo*(ctx: ptr fz_context; obj: ptr pdf_obj; bit: cint;
                   memo: ptr cint): cint {.cdecl, importc: "pdf_obj_memo".}
proc pdf_obj_is_dirty*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_obj_is_dirty".}
proc pdf_dirty_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_dirty_obj".}
proc pdf_clean_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_clean_obj".}
proc pdf_to_bool*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_to_bool".}
proc pdf_to_int*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_to_int".}
proc pdf_to_int64*(ctx: ptr fz_context; obj: ptr pdf_obj): int64 {.cdecl,
    importc: "pdf_to_int64".}
proc pdf_to_real*(ctx: ptr fz_context; obj: ptr pdf_obj): cfloat {.cdecl,
    importc: "pdf_to_real".}
proc pdf_to_name*(ctx: ptr fz_context; obj: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_to_name".}
proc pdf_to_text_string*(ctx: ptr fz_context; obj: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_to_text_string".}
proc pdf_to_string*(ctx: ptr fz_context; obj: ptr pdf_obj; sizep: ptr csize_t): cstring {.
    cdecl, importc: "pdf_to_string".}
proc pdf_to_str_buf*(ctx: ptr fz_context; obj: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_to_str_buf".}
proc pdf_to_str_len*(ctx: ptr fz_context; obj: ptr pdf_obj): csize_t {.cdecl,
    importc: "pdf_to_str_len".}
proc pdf_to_num*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_to_num".}
proc pdf_to_gen*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_to_gen".}
proc pdf_to_bool_default*(ctx: ptr fz_context; obj: ptr pdf_obj; def: cint): cint {.
    cdecl, importc: "pdf_to_bool_default".}
proc pdf_to_int_default*(ctx: ptr fz_context; obj: ptr pdf_obj; def: cint): cint {.
    cdecl, importc: "pdf_to_int_default".}
proc pdf_to_real_default*(ctx: ptr fz_context; obj: ptr pdf_obj; def: cfloat): cfloat {.
    cdecl, importc: "pdf_to_real_default".}
proc pdf_array_len*(ctx: ptr fz_context; array: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_array_len".}
proc pdf_array_get*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_array_get".}
proc pdf_array_put*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                    obj: ptr pdf_obj): void {.cdecl, importc: "pdf_array_put".}
proc pdf_array_put_drop*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                         obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_array_put_drop".}
proc pdf_array_push*(ctx: ptr fz_context; array: ptr pdf_obj; obj: ptr pdf_obj): void {.
    cdecl, importc: "pdf_array_push".}
proc pdf_array_push_drop*(ctx: ptr fz_context; array: ptr pdf_obj;
                          obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_array_push_drop".}
proc pdf_array_insert*(ctx: ptr fz_context; array: ptr pdf_obj;
                       obj: ptr pdf_obj; index: cint): void {.cdecl,
    importc: "pdf_array_insert".}
proc pdf_array_insert_drop*(ctx: ptr fz_context; array: ptr pdf_obj;
                            obj: ptr pdf_obj; index: cint): void {.cdecl,
    importc: "pdf_array_insert_drop".}
proc pdf_array_delete*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): void {.
    cdecl, importc: "pdf_array_delete".}
proc pdf_array_find*(ctx: ptr fz_context; array: ptr pdf_obj; obj: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_array_find".}
proc pdf_array_contains*(ctx: ptr fz_context; array: ptr pdf_obj;
                         obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_array_contains".}
proc pdf_dict_len*(ctx: ptr fz_context; dict: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_dict_len".}
proc pdf_dict_get_key*(ctx: ptr fz_context; dict: ptr pdf_obj; idx: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_dict_get_key".}
proc pdf_dict_get_val*(ctx: ptr fz_context; dict: ptr pdf_obj; idx: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_dict_get_val".}
proc pdf_dict_put_val_null*(ctx: ptr fz_context; obj: ptr pdf_obj; idx: cint): void {.
    cdecl, importc: "pdf_dict_put_val_null".}
proc pdf_dict_get*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_dict_get".}
proc pdf_dict_getp*(ctx: ptr fz_context; dict: ptr pdf_obj; path: cstring): ptr pdf_obj {.
    cdecl, importc: "pdf_dict_getp".}
proc pdf_dict_getl*(ctx: ptr fz_context; dict: ptr pdf_obj): ptr pdf_obj {.
    cdecl, varargs, importc: "pdf_dict_getl".}
proc pdf_dict_geta*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj;
                    abbrev: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_geta".}
proc pdf_dict_gets*(ctx: ptr fz_context; dict: ptr pdf_obj; key: cstring): ptr pdf_obj {.
    cdecl, importc: "pdf_dict_gets".}
proc pdf_dict_getsa*(ctx: ptr fz_context; dict: ptr pdf_obj; key: cstring;
                     abbrev: cstring): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_getsa".}
proc pdf_dict_get_inheritable*(ctx: ptr fz_context; dict: ptr pdf_obj;
                               key: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_get_inheritable".}
proc pdf_dict_getp_inheritable*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                path: cstring): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_getp_inheritable".}
proc pdf_dict_gets_inheritable*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                key: cstring): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_gets_inheritable".}
proc pdf_dict_put*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj;
                   val: ptr pdf_obj): void {.cdecl, importc: "pdf_dict_put".}
proc pdf_dict_put_drop*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; val: ptr pdf_obj): void {.cdecl,
    importc: "pdf_dict_put_drop".}
proc pdf_dict_get_put_drop*(ctx: ptr fz_context; dict: ptr pdf_obj;
                            key: ptr pdf_obj; val: ptr pdf_obj;
                            old_val: ptr ptr pdf_obj): void {.cdecl,
    importc: "pdf_dict_get_put_drop".}
proc pdf_dict_puts*(ctx: ptr fz_context; dict: ptr pdf_obj; key: cstring;
                    val: ptr pdf_obj): void {.cdecl, importc: "pdf_dict_puts".}
proc pdf_dict_puts_drop*(ctx: ptr fz_context; dict: ptr pdf_obj; key: cstring;
                         val: ptr pdf_obj): void {.cdecl,
    importc: "pdf_dict_puts_drop".}
proc pdf_dict_putp*(ctx: ptr fz_context; dict: ptr pdf_obj; path: cstring;
                    val: ptr pdf_obj): void {.cdecl, importc: "pdf_dict_putp".}
proc pdf_dict_putp_drop*(ctx: ptr fz_context; dict: ptr pdf_obj; path: cstring;
                         val: ptr pdf_obj): void {.cdecl,
    importc: "pdf_dict_putp_drop".}
proc pdf_dict_putl*(ctx: ptr fz_context; dict: ptr pdf_obj; val: ptr pdf_obj): void {.
    cdecl, varargs, importc: "pdf_dict_putl".}
proc pdf_dict_putl_drop*(ctx: ptr fz_context; dict: ptr pdf_obj;
                         val: ptr pdf_obj): void {.cdecl, varargs,
    importc: "pdf_dict_putl_drop".}
proc pdf_dict_del*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): void {.
    cdecl, importc: "pdf_dict_del".}
proc pdf_dict_dels*(ctx: ptr fz_context; dict: ptr pdf_obj; key: cstring): void {.
    cdecl, importc: "pdf_dict_dels".}
proc pdf_sort_dict*(ctx: ptr fz_context; dict: ptr pdf_obj): void {.cdecl,
    importc: "pdf_sort_dict".}
proc pdf_dict_put_bool*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; x: cint): void {.cdecl,
    importc: "pdf_dict_put_bool".}
proc pdf_dict_put_int*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj;
                       x: int64): void {.cdecl, importc: "pdf_dict_put_int".}
proc pdf_dict_put_real*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; x: cdouble): void {.cdecl,
    importc: "pdf_dict_put_real".}
proc pdf_dict_put_name*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; x: cstring): void {.cdecl,
    importc: "pdf_dict_put_name".}
proc pdf_dict_put_string*(ctx: ptr fz_context; dict: ptr pdf_obj;
                          key: ptr pdf_obj; x: cstring; n: csize_t): void {.
    cdecl, importc: "pdf_dict_put_string".}
proc pdf_dict_put_text_string*(ctx: ptr fz_context; dict: ptr pdf_obj;
                               key: ptr pdf_obj; x: cstring): void {.cdecl,
    importc: "pdf_dict_put_text_string".}
proc pdf_dict_put_indirect*(ctx: ptr fz_context; dict: ptr pdf_obj;
                            key: ptr pdf_obj; num: cint): void {.cdecl,
    importc: "pdf_dict_put_indirect".}
proc pdf_dict_put_point*(ctx: ptr fz_context; dict: ptr pdf_obj;
                         key: ptr pdf_obj; x: fz_point): void {.cdecl,
    importc: "pdf_dict_put_point".}
proc pdf_dict_put_rect*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; x: fz_rect): void {.cdecl,
    importc: "pdf_dict_put_rect".}
proc pdf_dict_put_matrix*(ctx: ptr fz_context; dict: ptr pdf_obj;
                          key: ptr pdf_obj; x: fz_matrix): void {.cdecl,
    importc: "pdf_dict_put_matrix".}
proc pdf_dict_put_date*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; time: int64): void {.cdecl,
    importc: "pdf_dict_put_date".}
proc pdf_dict_put_array*(ctx: ptr fz_context; dict: ptr pdf_obj;
                         key: ptr pdf_obj; initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_put_array".}
proc pdf_dict_put_dict*(ctx: ptr fz_context; dict: ptr pdf_obj;
                        key: ptr pdf_obj; initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_put_dict".}
proc pdf_dict_puts_dict*(ctx: ptr fz_context; dict: ptr pdf_obj; key: cstring;
                         initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_dict_puts_dict".}
proc pdf_dict_get_bool*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_dict_get_bool".}
proc pdf_dict_get_int*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_dict_get_int".}
proc pdf_dict_get_int64*(ctx: ptr fz_context; dict: ptr pdf_obj;
                         key: ptr pdf_obj): int64 {.cdecl,
    importc: "pdf_dict_get_int64".}
proc pdf_dict_get_real*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): cfloat {.
    cdecl, importc: "pdf_dict_get_real".}
proc pdf_dict_get_name*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_dict_get_name".}
proc pdf_dict_get_string*(ctx: ptr fz_context; dict: ptr pdf_obj;
                          key: ptr pdf_obj; sizep: ptr csize_t): cstring {.
    cdecl, importc: "pdf_dict_get_string".}
proc pdf_dict_get_text_string*(ctx: ptr fz_context; dict: ptr pdf_obj;
                               key: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_dict_get_text_string".}
proc pdf_dict_get_text_string_opt*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                   key: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_dict_get_text_string_opt".}
proc pdf_dict_get_point*(ctx: ptr fz_context; dict: ptr pdf_obj;
                         key: ptr pdf_obj): fz_point {.cdecl,
    importc: "pdf_dict_get_point".}
proc pdf_dict_get_rect*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): fz_rect {.
    cdecl, importc: "pdf_dict_get_rect".}
proc pdf_dict_get_matrix*(ctx: ptr fz_context; dict: ptr pdf_obj;
                          key: ptr pdf_obj): fz_matrix {.cdecl,
    importc: "pdf_dict_get_matrix".}
proc pdf_dict_get_date*(ctx: ptr fz_context; dict: ptr pdf_obj; key: ptr pdf_obj): int64 {.
    cdecl, importc: "pdf_dict_get_date".}
proc pdf_dict_get_bool_default*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                key: ptr pdf_obj; def: cint): cint {.cdecl,
    importc: "pdf_dict_get_bool_default".}
proc pdf_dict_get_int_default*(ctx: ptr fz_context; dict: ptr pdf_obj;
                               key: ptr pdf_obj; def: cint): cint {.cdecl,
    importc: "pdf_dict_get_int_default".}
proc pdf_dict_get_real_default*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                key: ptr pdf_obj; def: cfloat): cfloat {.cdecl,
    importc: "pdf_dict_get_real_default".}
proc pdf_dict_get_inheritable_bool*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                    key: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_dict_get_inheritable_bool".}
proc pdf_dict_get_inheritable_int*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                   key: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_dict_get_inheritable_int".}
proc pdf_dict_get_inheritable_int64*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                     key: ptr pdf_obj): int64 {.cdecl,
    importc: "pdf_dict_get_inheritable_int64".}
proc pdf_dict_get_inheritable_real*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                    key: ptr pdf_obj): cfloat {.cdecl,
    importc: "pdf_dict_get_inheritable_real".}
proc pdf_dict_get_inheritable_name*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                    key: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_dict_get_inheritable_name".}
proc pdf_dict_get_inheritable_string*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                      key: ptr pdf_obj; sizep: ptr csize_t): cstring {.
    cdecl, importc: "pdf_dict_get_inheritable_string".}
proc pdf_dict_get_inheritable_text_string*(ctx: ptr fz_context;
    dict: ptr pdf_obj; key: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_dict_get_inheritable_text_string".}
proc pdf_dict_get_inheritable_rect*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                    key: ptr pdf_obj): fz_rect {.cdecl,
    importc: "pdf_dict_get_inheritable_rect".}
proc pdf_dict_get_inheritable_matrix*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                      key: ptr pdf_obj): fz_matrix {.cdecl,
    importc: "pdf_dict_get_inheritable_matrix".}
proc pdf_dict_get_inheritable_date*(ctx: ptr fz_context; dict: ptr pdf_obj;
                                    key: ptr pdf_obj): int64 {.cdecl,
    importc: "pdf_dict_get_inheritable_date".}
proc pdf_array_push_bool*(ctx: ptr fz_context; array: ptr pdf_obj; x: cint): void {.
    cdecl, importc: "pdf_array_push_bool".}
proc pdf_array_push_int*(ctx: ptr fz_context; array: ptr pdf_obj; x: int64): void {.
    cdecl, importc: "pdf_array_push_int".}
proc pdf_array_push_real*(ctx: ptr fz_context; array: ptr pdf_obj; x: cdouble): void {.
    cdecl, importc: "pdf_array_push_real".}
proc pdf_array_push_name*(ctx: ptr fz_context; array: ptr pdf_obj; x: cstring): void {.
    cdecl, importc: "pdf_array_push_name".}
proc pdf_array_push_string*(ctx: ptr fz_context; array: ptr pdf_obj; x: cstring;
                            n: csize_t): void {.cdecl,
    importc: "pdf_array_push_string".}
proc pdf_array_push_text_string*(ctx: ptr fz_context; array: ptr pdf_obj;
                                 x: cstring): void {.cdecl,
    importc: "pdf_array_push_text_string".}
proc pdf_array_push_array*(ctx: ptr fz_context; array: ptr pdf_obj;
                           initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_array_push_array".}
proc pdf_array_push_dict*(ctx: ptr fz_context; array: ptr pdf_obj; initial: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_array_push_dict".}
proc pdf_array_put_bool*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                         x: cint): void {.cdecl, importc: "pdf_array_put_bool".}
proc pdf_array_put_int*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                        x: int64): void {.cdecl, importc: "pdf_array_put_int".}
proc pdf_array_put_real*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                         x: cdouble): void {.cdecl,
    importc: "pdf_array_put_real".}
proc pdf_array_put_name*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                         x: cstring): void {.cdecl,
    importc: "pdf_array_put_name".}
proc pdf_array_put_string*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                           x: cstring; n: csize_t): void {.cdecl,
    importc: "pdf_array_put_string".}
proc pdf_array_put_text_string*(ctx: ptr fz_context; array: ptr pdf_obj;
                                i: cint; x: cstring): void {.cdecl,
    importc: "pdf_array_put_text_string".}
proc pdf_array_put_array*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                          initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_array_put_array".}
proc pdf_array_put_dict*(ctx: ptr fz_context; array: ptr pdf_obj; i: cint;
                         initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_array_put_dict".}
proc pdf_array_get_bool*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): cint {.
    cdecl, importc: "pdf_array_get_bool".}
proc pdf_array_get_int*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): cint {.
    cdecl, importc: "pdf_array_get_int".}
proc pdf_array_get_real*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): cfloat {.
    cdecl, importc: "pdf_array_get_real".}
proc pdf_array_get_name*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): cstring {.
    cdecl, importc: "pdf_array_get_name".}
proc pdf_array_get_string*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint;
                           sizep: ptr csize_t): cstring {.cdecl,
    importc: "pdf_array_get_string".}
proc pdf_array_get_text_string*(ctx: ptr fz_context; array: ptr pdf_obj;
                                index: cint): cstring {.cdecl,
    importc: "pdf_array_get_text_string".}
proc pdf_array_get_rect*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): fz_rect {.
    cdecl, importc: "pdf_array_get_rect".}
proc pdf_array_get_matrix*(ctx: ptr fz_context; array: ptr pdf_obj; index: cint): fz_matrix {.
    cdecl, importc: "pdf_array_get_matrix".}
proc pdf_set_obj_parent*(ctx: ptr fz_context; obj: ptr pdf_obj; num: cint): void {.
    cdecl, importc: "pdf_set_obj_parent".}
proc pdf_obj_refs*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_obj_refs".}
proc pdf_obj_parent_num*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_obj_parent_num".}
proc pdf_sprint_obj*(ctx: ptr fz_context; buf: cstring; cap: csize_t;
                     len: ptr csize_t; obj: ptr pdf_obj; tight: cint;
                     ascii: cint): cstring {.cdecl, importc: "pdf_sprint_obj".}
proc pdf_print_obj*(ctx: ptr fz_context; out_arg: ptr fz_output;
                    obj: ptr pdf_obj; tight: cint; ascii: cint): void {.cdecl,
    importc: "pdf_print_obj".}
proc pdf_print_encrypted_obj*(ctx: ptr fz_context; out_arg: ptr fz_output;
                              obj: ptr pdf_obj; tight: cint; ascii: cint;
                              crypt: ptr pdf_crypt; num: cint; gen: cint;
                              sep: ptr cint): void {.cdecl,
    importc: "pdf_print_encrypted_obj".}
proc pdf_debug_obj*(ctx: ptr fz_context; obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_debug_obj".}
proc pdf_debug_ref*(ctx: ptr fz_context; obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_debug_ref".}
proc pdf_new_utf8_from_pdf_string*(ctx: ptr fz_context; srcptr: cstring;
                                   srclen: csize_t): cstring {.cdecl,
    importc: "pdf_new_utf8_from_pdf_string".}
proc pdf_new_utf8_from_pdf_string_obj*(ctx: ptr fz_context; src: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_new_utf8_from_pdf_string_obj".}
proc pdf_new_utf8_from_pdf_stream_obj*(ctx: ptr fz_context; src: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_new_utf8_from_pdf_stream_obj".}
proc pdf_load_stream_or_string_as_utf8*(ctx: ptr fz_context; src: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_load_stream_or_string_as_utf8".}
proc pdf_to_quad*(ctx: ptr fz_context; array: ptr pdf_obj; offset: cint): fz_quad {.
    cdecl, importc: "pdf_to_quad".}
proc pdf_to_point*(ctx: ptr fz_context; array: ptr pdf_obj; offset: cint): fz_point {.
    cdecl, importc: "pdf_to_point".}
proc pdf_to_rect*(ctx: ptr fz_context; array: ptr pdf_obj): fz_rect {.cdecl,
    importc: "pdf_to_rect".}
proc pdf_to_matrix*(ctx: ptr fz_context; array: ptr pdf_obj): fz_matrix {.cdecl,
    importc: "pdf_to_matrix".}
proc pdf_to_date*(ctx: ptr fz_context; time: ptr pdf_obj): int64 {.cdecl,
    importc: "pdf_to_date".}
proc pdf_get_indirect_document*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr pdf_document {.
    cdecl, importc: "pdf_get_indirect_document".}
proc pdf_get_bound_document*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr pdf_document {.
    cdecl, importc: "pdf_get_bound_document".}
proc pdf_pin_document*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr pdf_document {.
    cdecl, importc: "pdf_pin_document".}
proc pdf_set_int*(ctx: ptr fz_context; obj: ptr pdf_obj; i: int64): void {.
    cdecl, importc: "pdf_set_int".}
proc pdf_set_str_len*(ctx: ptr fz_context; obj: ptr pdf_obj; newlen: csize_t): void {.
    cdecl, importc: "pdf_set_str_len".}
proc pdf_enable_journal*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_enable_journal".}
proc pdf_begin_operation*(ctx: ptr fz_context; doc: ptr pdf_document;
                          operation: cstring): void {.cdecl,
    importc: "pdf_begin_operation".}
proc pdf_begin_implicit_operation*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_begin_implicit_operation".}
proc pdf_end_operation*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_end_operation".}
proc pdf_abandon_operation*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_abandon_operation".}
proc pdf_undoredo_state*(ctx: ptr fz_context; doc: ptr pdf_document;
                         steps: ptr cint): cint {.cdecl,
    importc: "pdf_undoredo_state".}
proc pdf_undoredo_step*(ctx: ptr fz_context; doc: ptr pdf_document; step: cint): cstring {.
    cdecl, importc: "pdf_undoredo_step".}
proc pdf_can_undo*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.cdecl,
    importc: "pdf_can_undo".}
proc pdf_can_redo*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.cdecl,
    importc: "pdf_can_redo".}
proc pdf_undo*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_undo".}
proc pdf_redo*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_redo".}
proc pdf_discard_journal*(ctx: ptr fz_context; journal: ptr pdf_journal): void {.
    cdecl, importc: "pdf_discard_journal".}
proc pdf_drop_journal*(ctx: ptr fz_context; journal: ptr pdf_journal): void {.
    cdecl, importc: "pdf_drop_journal".}
proc pdf_serialise_journal*(ctx: ptr fz_context; doc: ptr pdf_document;
                            out_arg: ptr fz_output): void {.cdecl,
    importc: "pdf_serialise_journal".}
proc pdf_deserialise_journal*(ctx: ptr fz_context; doc: ptr pdf_document;
                              stm: ptr fz_stream): void {.cdecl,
    importc: "pdf_deserialise_journal".}
proc pdf_add_journal_fragment*(ctx: ptr fz_context; doc: ptr pdf_document;
                               parent: cint; copy: ptr pdf_obj;
                               copy_stream: ptr fz_buffer; newobj: cint): void {.
    cdecl, importc: "pdf_add_journal_fragment".}
proc pdf_format_date*(ctx: ptr fz_context; time: int64; s: cstring; n: csize_t): cstring {.
    cdecl, importc: "pdf_format_date".}
proc pdf_parse_date*(ctx: ptr fz_context; s: cstring): int64 {.cdecl,
    importc: "pdf_parse_date".}
proc pdf_js_get_console*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_js_console {.
    cdecl, importc: "pdf_js_get_console".}
proc pdf_js_set_console*(ctx: ptr fz_context; doc: ptr pdf_document;
                         console: ptr pdf_js_console; user: pointer): void {.
    cdecl, importc: "pdf_js_set_console".}
proc pdf_open_document*(ctx: ptr fz_context; filename: cstring): ptr pdf_document {.
    cdecl, importc: "pdf_open_document".}
proc pdf_open_document_with_stream*(ctx: ptr fz_context; file: ptr fz_stream): ptr pdf_document {.
    cdecl, importc: "pdf_open_document_with_stream".}
proc pdf_drop_document*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_drop_document".}
proc pdf_keep_document*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_document {.
    cdecl, importc: "pdf_keep_document".}
proc pdf_specifics*(ctx: ptr fz_context; doc: ptr fz_document): ptr pdf_document {.
    cdecl, importc: "pdf_specifics".}
proc pdf_document_from_fz_document*(ctx: ptr fz_context;
                                    ptr_arg: ptr fz_document): ptr pdf_document {.
    cdecl, importc: "pdf_document_from_fz_document".}
proc pdf_page_from_fz_page*(ctx: ptr fz_context; ptr_arg: ptr fz_page): ptr pdf_page {.
    cdecl, importc: "pdf_page_from_fz_page".}
proc fz_new_pdf_document_from_fz_document*(ctx: ptr fz_context;
    ptr_arg: ptr fz_document): ptr pdf_document {.cdecl,
    importc: "fz_new_pdf_document_from_fz_document".}
proc pdf_needs_password*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_needs_password".}
proc pdf_authenticate_password*(ctx: ptr fz_context; doc: ptr pdf_document;
                                pw: cstring): cint {.cdecl,
    importc: "pdf_authenticate_password".}
proc pdf_has_permission*(ctx: ptr fz_context; doc: ptr pdf_document;
                         p: fz_permission): cint {.cdecl,
    importc: "pdf_has_permission".}
proc pdf_lookup_metadata*(ctx: ptr fz_context; doc: ptr pdf_document;
                          key: cstring; ptr_arg: cstring; size: csize_t): cint {.
    cdecl, importc: "pdf_lookup_metadata".}
proc pdf_load_outline*(ctx: ptr fz_context; doc: ptr pdf_document): ptr fz_outline {.
    cdecl, importc: "pdf_load_outline".}
proc pdf_new_outline_iterator*(ctx: ptr fz_context; doc: ptr pdf_document): ptr fz_outline_iterator {.
    cdecl, importc: "pdf_new_outline_iterator".}
proc pdf_invalidate_xfa*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_invalidate_xfa".}
proc pdf_count_layer_configs*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_layer_configs".}
proc pdf_count_layers*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_layers".}
proc pdf_layer_name*(ctx: ptr fz_context; doc: ptr pdf_document; layer: cint): cstring {.
    cdecl, importc: "pdf_layer_name".}
proc pdf_layer_is_enabled*(ctx: ptr fz_context; doc: ptr pdf_document;
                           layer: cint): cint {.cdecl,
    importc: "pdf_layer_is_enabled".}
proc pdf_enable_layer*(ctx: ptr fz_context; doc: ptr pdf_document; layer: cint;
                       enabled: cint): void {.cdecl, importc: "pdf_enable_layer".}
proc pdf_layer_config_info*(ctx: ptr fz_context; doc: ptr pdf_document;
                            config_num: cint; info: ptr pdf_layer_config): void {.
    cdecl, importc: "pdf_layer_config_info".}
proc pdf_select_layer_config*(ctx: ptr fz_context; doc: ptr pdf_document;
                              config_num: cint): void {.cdecl,
    importc: "pdf_select_layer_config".}
proc pdf_count_layer_config_ui*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_layer_config_ui".}
proc pdf_select_layer_config_ui*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 ui: cint): void {.cdecl,
    importc: "pdf_select_layer_config_ui".}
proc pdf_deselect_layer_config_ui*(ctx: ptr fz_context; doc: ptr pdf_document;
                                   ui: cint): void {.cdecl,
    importc: "pdf_deselect_layer_config_ui".}
proc pdf_toggle_layer_config_ui*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 ui: cint): void {.cdecl,
    importc: "pdf_toggle_layer_config_ui".}
proc pdf_layer_config_ui_info*(ctx: ptr fz_context; doc: ptr pdf_document;
                               ui: cint; info: ptr pdf_layer_config_ui): void {.
    cdecl, importc: "pdf_layer_config_ui_info".}
proc pdf_set_layer_config_as_default*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_set_layer_config_as_default".}
proc pdf_has_unsaved_changes*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_has_unsaved_changes".}
proc pdf_was_repaired*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_was_repaired".}
proc pdf_create_document*(ctx: ptr fz_context): ptr pdf_document {.cdecl,
    importc: "pdf_create_document".}
proc pdf_graft_object*(ctx: ptr fz_context; dst: ptr pdf_document;
                       obj: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_graft_object".}
proc pdf_new_graft_map*(ctx: ptr fz_context; dst: ptr pdf_document): ptr pdf_graft_map {.
    cdecl, importc: "pdf_new_graft_map".}
proc pdf_keep_graft_map*(ctx: ptr fz_context; map: ptr pdf_graft_map): ptr pdf_graft_map {.
    cdecl, importc: "pdf_keep_graft_map".}
proc pdf_drop_graft_map*(ctx: ptr fz_context; map: ptr pdf_graft_map): void {.
    cdecl, importc: "pdf_drop_graft_map".}
proc pdf_graft_mapped_object*(ctx: ptr fz_context; map: ptr pdf_graft_map;
                              obj: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_graft_mapped_object".}
proc pdf_graft_page*(ctx: ptr fz_context; dst: ptr pdf_document; page_to: cint;
                     src: ptr pdf_document; page_from: cint): void {.cdecl,
    importc: "pdf_graft_page".}
proc pdf_graft_mapped_page*(ctx: ptr fz_context; map: ptr pdf_graft_map;
                            page_to: cint; src: ptr pdf_document;
                            page_from: cint): void {.cdecl,
    importc: "pdf_graft_mapped_page".}
proc pdf_page_write*(ctx: ptr fz_context; doc: ptr pdf_document;
                     mediabox: fz_rect; presources: ptr ptr pdf_obj;
                     pcontents: ptr ptr fz_buffer): ptr fz_device {.cdecl,
    importc: "pdf_page_write".}
proc pdf_new_pdf_device*(ctx: ptr fz_context; doc: ptr pdf_document;
                         topctm: fz_matrix; resources: ptr pdf_obj;
                         contents: ptr fz_buffer): ptr fz_device {.cdecl,
    importc: "pdf_new_pdf_device".}
proc pdf_add_page*(ctx: ptr fz_context; doc: ptr pdf_document;
                   mediabox: fz_rect; rotate: cint; resources: ptr pdf_obj;
                   contents: ptr fz_buffer): ptr pdf_obj {.cdecl,
    importc: "pdf_add_page".}
proc pdf_insert_page*(ctx: ptr fz_context; doc: ptr pdf_document; at: cint;
                      page: ptr pdf_obj): void {.cdecl,
    importc: "pdf_insert_page".}
proc pdf_delete_page*(ctx: ptr fz_context; doc: ptr pdf_document; number: cint): void {.
    cdecl, importc: "pdf_delete_page".}
proc pdf_delete_page_range*(ctx: ptr fz_context; doc: ptr pdf_document;
                            start: cint; end_arg: cint): void {.cdecl,
    importc: "pdf_delete_page_range".}
proc pdf_page_label*(ctx: ptr fz_context; doc: ptr pdf_document; page: cint;
                     buf: cstring; size: csize_t): void {.cdecl,
    importc: "pdf_page_label".}
proc pdf_page_label_imp*(ctx: ptr fz_context; doc: ptr fz_document;
                         chapter: cint; page: cint; buf: cstring; size: csize_t): void {.
    cdecl, importc: "pdf_page_label_imp".}
proc pdf_set_page_labels*(ctx: ptr fz_context; doc: ptr pdf_document;
                          index: cint; style: pdf_page_label_style;
                          prefix: cstring; start: cint): void {.cdecl,
    importc: "pdf_set_page_labels".}
proc pdf_delete_page_labels*(ctx: ptr fz_context; doc: ptr pdf_document;
                             index: cint): void {.cdecl,
    importc: "pdf_delete_page_labels".}
proc pdf_document_language*(ctx: ptr fz_context; doc: ptr pdf_document): fz_text_language {.
    cdecl, importc: "pdf_document_language".}
proc pdf_set_document_language*(ctx: ptr fz_context; doc: ptr pdf_document;
                                lang: fz_text_language): void {.cdecl,
    importc: "pdf_set_document_language".}
var pdf_default_write_options* {.importc: "pdf_default_write_options".}: pdf_write_options
proc pdf_parse_write_options*(ctx: ptr fz_context; opts: ptr pdf_write_options;
                              args: cstring): ptr pdf_write_options {.cdecl,
    importc: "pdf_parse_write_options".}
proc pdf_has_unsaved_sigs*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_has_unsaved_sigs".}
proc pdf_write_document*(ctx: ptr fz_context; doc: ptr pdf_document;
                         out_arg: ptr fz_output; opts: ptr pdf_write_options): void {.
    cdecl, importc: "pdf_write_document".}
proc pdf_save_document*(ctx: ptr fz_context; doc: ptr pdf_document;
                        filename: cstring; opts: ptr pdf_write_options): void {.
    cdecl, importc: "pdf_save_document".}
proc pdf_save_snapshot*(ctx: ptr fz_context; doc: ptr pdf_document;
                        filename: cstring): void {.cdecl,
    importc: "pdf_save_snapshot".}
proc pdf_write_snapshot*(ctx: ptr fz_context; doc: ptr pdf_document;
                         out_arg: ptr fz_output): void {.cdecl,
    importc: "pdf_write_snapshot".}
proc pdf_format_write_options*(ctx: ptr fz_context; buffer: cstring;
                               buffer_len: csize_t; opts: ptr pdf_write_options): cstring {.
    cdecl, importc: "pdf_format_write_options".}
proc pdf_can_be_saved_incrementally*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_can_be_saved_incrementally".}
proc pdf_write_journal*(ctx: ptr fz_context; doc: ptr pdf_document;
                        out_arg: ptr fz_output): void {.cdecl,
    importc: "pdf_write_journal".}
proc pdf_save_journal*(ctx: ptr fz_context; doc: ptr pdf_document;
                       filename: cstring): void {.cdecl,
    importc: "pdf_save_journal".}
proc pdf_load_journal*(ctx: ptr fz_context; doc: ptr pdf_document;
                       filename: cstring): void {.cdecl,
    importc: "pdf_load_journal".}
proc pdf_read_journal*(ctx: ptr fz_context; doc: ptr pdf_document;
                       stm: ptr fz_stream): void {.cdecl,
    importc: "pdf_read_journal".}
proc pdf_minimize_document*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_minimize_document".}
proc pdf_structure_type*(ctx: ptr fz_context; role_map: ptr pdf_obj;
                         tag: ptr pdf_obj): fz_structure {.cdecl,
    importc: "pdf_structure_type".}
proc pdf_run_document_structure*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 dev: ptr fz_device; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_run_document_structure".}
proc pdf_count_document_associated_files*(ctx: ptr fz_context;
    doc: ptr pdf_document): cint {.cdecl, importc: "pdf_count_document_associated_files".}
proc pdf_document_associated_file*(ctx: ptr fz_context; doc: ptr pdf_document;
                                   idx: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_document_associated_file".}
proc pdf_count_page_associated_files*(ctx: ptr fz_context; page: ptr pdf_page): cint {.
    cdecl, importc: "pdf_count_page_associated_files".}
proc pdf_page_associated_file*(ctx: ptr fz_context; page: ptr pdf_page;
                               idx: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_page_associated_file".}
proc pdf_lexbuf_init*(ctx: ptr fz_context; lexbuf: ptr pdf_lexbuf; size: cint): void {.
    cdecl, importc: "pdf_lexbuf_init".}
proc pdf_lexbuf_fin*(ctx: ptr fz_context; lexbuf: ptr pdf_lexbuf): void {.cdecl,
    importc: "pdf_lexbuf_fin".}
proc pdf_lexbuf_grow*(ctx: ptr fz_context; lexbuf: ptr pdf_lexbuf): ptrdiff_t {.
    cdecl, importc: "pdf_lexbuf_grow".}
proc pdf_lex*(ctx: ptr fz_context; f: ptr fz_stream; lexbuf: ptr pdf_lexbuf): pdf_token {.
    cdecl, importc: "pdf_lex".}
proc pdf_lex_no_string*(ctx: ptr fz_context; f: ptr fz_stream;
                        lexbuf: ptr pdf_lexbuf): pdf_token {.cdecl,
    importc: "pdf_lex_no_string".}
proc pdf_parse_array*(ctx: ptr fz_context; doc: ptr pdf_document;
                      f: ptr fz_stream; buf: ptr pdf_lexbuf): ptr pdf_obj {.
    cdecl, importc: "pdf_parse_array".}
proc pdf_parse_dict*(ctx: ptr fz_context; doc: ptr pdf_document;
                     f: ptr fz_stream; buf: ptr pdf_lexbuf): ptr pdf_obj {.
    cdecl, importc: "pdf_parse_dict".}
proc pdf_parse_stm_obj*(ctx: ptr fz_context; doc: ptr pdf_document;
                        f: ptr fz_stream; buf: ptr pdf_lexbuf): ptr pdf_obj {.
    cdecl, importc: "pdf_parse_stm_obj".}
proc pdf_parse_ind_obj*(ctx: ptr fz_context; doc: ptr pdf_document;
                        f: ptr fz_stream; num: ptr cint; gen: ptr cint;
                        stm_ofs: ptr int64; try_repair: ptr cint): ptr pdf_obj {.
    cdecl, importc: "pdf_parse_ind_obj".}
proc pdf_parse_journal_obj*(ctx: ptr fz_context; doc: ptr pdf_document;
                            stm: ptr fz_stream; onum: ptr cint;
                            ostm: ptr ptr fz_buffer; newobj: ptr cint): ptr pdf_obj {.
    cdecl, importc: "pdf_parse_journal_obj".}
proc pdf_append_token*(ctx: ptr fz_context; buf: ptr fz_buffer; tok: cint;
                       lex: ptr pdf_lexbuf): void {.cdecl,
    importc: "pdf_append_token".}
proc pdf_create_object*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_create_object".}
proc pdf_delete_object*(ctx: ptr fz_context; doc: ptr pdf_document; num: cint): void {.
    cdecl, importc: "pdf_delete_object".}
proc pdf_update_object*(ctx: ptr fz_context; doc: ptr pdf_document; num: cint;
                        obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_update_object".}
proc pdf_update_stream*(ctx: ptr fz_context; doc: ptr pdf_document;
                        ref_arg: ptr pdf_obj; buf: ptr fz_buffer;
                        compressed: cint): void {.cdecl,
    importc: "pdf_update_stream".}
proc pdf_is_local_object*(ctx: ptr fz_context; doc: ptr pdf_document;
                          obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_local_object".}
proc pdf_add_object*(ctx: ptr fz_context; doc: ptr pdf_document;
                     obj: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_add_object".}
proc pdf_add_object_drop*(ctx: ptr fz_context; doc: ptr pdf_document;
                          obj: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_add_object_drop".}
proc pdf_add_stream*(ctx: ptr fz_context; doc: ptr pdf_document;
                     buf: ptr fz_buffer; obj: ptr pdf_obj; compressed: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_add_stream".}
proc pdf_add_new_dict*(ctx: ptr fz_context; doc: ptr pdf_document; initial: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_add_new_dict".}
proc pdf_add_new_array*(ctx: ptr fz_context; doc: ptr pdf_document;
                        initial: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_add_new_array".}
proc pdf_cache_object*(ctx: ptr fz_context; doc: ptr pdf_document; num: cint): ptr pdf_xref_entry {.
    cdecl, importc: "pdf_cache_object".}
proc pdf_count_objects*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_objects".}
proc pdf_resolve_indirect*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_resolve_indirect".}
proc pdf_resolve_indirect_chain*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_resolve_indirect_chain".}
proc pdf_load_object*(ctx: ptr fz_context; doc: ptr pdf_document; num: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_load_object".}
proc pdf_load_unencrypted_object*(ctx: ptr fz_context; doc: ptr pdf_document;
                                  num: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_load_unencrypted_object".}
proc pdf_load_raw_stream_number*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 num: cint): ptr fz_buffer {.cdecl,
    importc: "pdf_load_raw_stream_number".}
proc pdf_load_raw_stream*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): ptr fz_buffer {.
    cdecl, importc: "pdf_load_raw_stream".}
proc pdf_load_stream_number*(ctx: ptr fz_context; doc: ptr pdf_document;
                             num: cint): ptr fz_buffer {.cdecl,
    importc: "pdf_load_stream_number".}
proc pdf_load_stream*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): ptr fz_buffer {.
    cdecl, importc: "pdf_load_stream".}
proc pdf_open_raw_stream_number*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 num: cint): ptr fz_stream {.cdecl,
    importc: "pdf_open_raw_stream_number".}
proc pdf_open_raw_stream*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): ptr fz_stream {.
    cdecl, importc: "pdf_open_raw_stream".}
proc pdf_open_stream_number*(ctx: ptr fz_context; doc: ptr pdf_document;
                             num: cint): ptr fz_stream {.cdecl,
    importc: "pdf_open_stream_number".}
proc pdf_open_stream*(ctx: ptr fz_context; ref_arg: ptr pdf_obj): ptr fz_stream {.
    cdecl, importc: "pdf_open_stream".}
proc pdf_open_inline_stream*(ctx: ptr fz_context; doc: ptr pdf_document;
                             stmobj: ptr pdf_obj; length: cint;
                             chain: ptr fz_stream;
                             params: ptr fz_compression_params): ptr fz_stream {.
    cdecl, importc: "pdf_open_inline_stream".}
proc pdf_load_compressed_stream*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 num: cint; worst_case: csize_t): ptr fz_compressed_buffer {.
    cdecl, importc: "pdf_load_compressed_stream".}
proc pdf_load_compressed_inline_image*(ctx: ptr fz_context;
                                       doc: ptr pdf_document; dict: ptr pdf_obj;
                                       length: cint; cstm: ptr fz_stream;
                                       indexed: cint;
                                       image: ptr fz_compressed_image): void {.
    cdecl, importc: "pdf_load_compressed_inline_image".}
proc pdf_open_stream_with_offset*(ctx: ptr fz_context; doc: ptr pdf_document;
                                  num: cint; dict: ptr pdf_obj; stm_ofs: int64): ptr fz_stream {.
    cdecl, importc: "pdf_open_stream_with_offset".}
proc pdf_open_contents_stream*(ctx: ptr fz_context; doc: ptr pdf_document;
                               obj: ptr pdf_obj): ptr fz_stream {.cdecl,
    importc: "pdf_open_contents_stream".}
proc pdf_version*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.cdecl,
    importc: "pdf_version".}
proc pdf_trailer*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_obj {.
    cdecl, importc: "pdf_trailer".}
proc pdf_set_populating_xref_trailer*(ctx: ptr fz_context;
                                      doc: ptr pdf_document;
                                      trailer: ptr pdf_obj): void {.cdecl,
    importc: "pdf_set_populating_xref_trailer".}
proc pdf_xref_len*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.cdecl,
    importc: "pdf_xref_len".}
proc pdf_metadata*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_obj {.
    cdecl, importc: "pdf_metadata".}
proc pdf_get_populating_xref_entry*(ctx: ptr fz_context; doc: ptr pdf_document;
                                    i: cint): ptr pdf_xref_entry {.cdecl,
    importc: "pdf_get_populating_xref_entry".}
proc pdf_get_xref_entry*(ctx: ptr fz_context; doc: ptr pdf_document; i: cint): ptr pdf_xref_entry {.
    cdecl, importc: "pdf_get_xref_entry".}
proc pdf_xref_entry_map*(ctx: ptr fz_context; doc: ptr pdf_document; fn: proc (
    a0: ptr fz_context; a1: ptr pdf_xref_entry; a2: cint; a3: ptr pdf_document;
    a4: pointer): void {.cdecl.}; arg: pointer): void {.cdecl,
    importc: "pdf_xref_entry_map".}
proc pdf_get_xref_entry_no_change*(ctx: ptr fz_context; doc: ptr pdf_document;
                                   i: cint): ptr pdf_xref_entry {.cdecl,
    importc: "pdf_get_xref_entry_no_change".}
proc pdf_get_xref_entry_no_null*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 i: cint): ptr pdf_xref_entry {.cdecl,
    importc: "pdf_get_xref_entry_no_null".}
proc pdf_replace_xref*(ctx: ptr fz_context; doc: ptr pdf_document;
                       entries: ptr pdf_xref_entry; n: cint): void {.cdecl,
    importc: "pdf_replace_xref".}
proc pdf_forget_xref*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_forget_xref".}
proc pdf_get_incremental_xref_entry*(ctx: ptr fz_context; doc: ptr pdf_document;
                                     i: cint): ptr pdf_xref_entry {.cdecl,
    importc: "pdf_get_incremental_xref_entry".}
proc pdf_xref_ensure_incremental_object*(ctx: ptr fz_context;
    doc: ptr pdf_document; num: cint): cint {.cdecl,
    importc: "pdf_xref_ensure_incremental_object".}
proc pdf_xref_is_incremental*(ctx: ptr fz_context; doc: ptr pdf_document;
                              num: cint): cint {.cdecl,
    importc: "pdf_xref_is_incremental".}
proc pdf_xref_store_unsaved_signature*(ctx: ptr fz_context;
                                       doc: ptr pdf_document;
                                       field: ptr pdf_obj;
                                       signer: ptr pdf_pkcs7_signer): void {.
    cdecl, importc: "pdf_xref_store_unsaved_signature".}
proc pdf_xref_remove_unsaved_signature*(ctx: ptr fz_context;
                                        doc: ptr pdf_document;
                                        field: ptr pdf_obj): void {.cdecl,
    importc: "pdf_xref_remove_unsaved_signature".}
proc pdf_xref_obj_is_unsaved_signature*(doc: ptr pdf_document; obj: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_xref_obj_is_unsaved_signature".}
proc pdf_xref_ensure_local_object*(ctx: ptr fz_context; doc: ptr pdf_document;
                                   num: cint): void {.cdecl,
    importc: "pdf_xref_ensure_local_object".}
proc pdf_obj_is_incremental*(ctx: ptr fz_context; obj: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_obj_is_incremental".}
proc pdf_repair_xref*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_repair_xref".}
proc pdf_repair_obj_stms*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_repair_obj_stms".}
proc pdf_repair_trailer*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_repair_trailer".}
proc pdf_ensure_solid_xref*(ctx: ptr fz_context; doc: ptr pdf_document;
                            num: cint): void {.cdecl,
    importc: "pdf_ensure_solid_xref".}
proc pdf_mark_xref*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_mark_xref".}
proc pdf_clear_xref*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_clear_xref".}
proc pdf_clear_xref_to_mark*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_clear_xref_to_mark".}
proc pdf_repair_obj*(ctx: ptr fz_context; doc: ptr pdf_document;
                     buf: ptr pdf_lexbuf; stmofsp: ptr int64;
                     stmlenp: ptr int64; encrypt: ptr ptr pdf_obj;
                     id: ptr ptr pdf_obj; page: ptr ptr pdf_obj;
                     tmpofs: ptr int64; root: ptr ptr pdf_obj): cint {.cdecl,
    importc: "pdf_repair_obj".}
proc pdf_progressive_advance*(ctx: ptr fz_context; doc: ptr pdf_document;
                              pagenum: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_progressive_advance".}
proc pdf_count_versions*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_versions".}
proc pdf_count_unsaved_versions*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_unsaved_versions".}
proc pdf_validate_changes*(ctx: ptr fz_context; doc: ptr pdf_document;
                           version: cint): cint {.cdecl,
    importc: "pdf_validate_changes".}
proc pdf_doc_was_linearized*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_doc_was_linearized".}
proc pdf_is_field_locked*(ctx: ptr fz_context; locked: ptr pdf_locked_fields;
                          name: cstring): cint {.cdecl,
    importc: "pdf_is_field_locked".}
proc pdf_drop_locked_fields*(ctx: ptr fz_context; locked: ptr pdf_locked_fields): void {.
    cdecl, importc: "pdf_drop_locked_fields".}
proc pdf_find_locked_fields*(ctx: ptr fz_context; doc: ptr pdf_document;
                             version: cint): ptr pdf_locked_fields {.cdecl,
    importc: "pdf_find_locked_fields".}
proc pdf_find_locked_fields_for_sig*(ctx: ptr fz_context; doc: ptr pdf_document;
                                     sig: ptr pdf_obj): ptr pdf_locked_fields {.
    cdecl, importc: "pdf_find_locked_fields_for_sig".}
proc pdf_validate_change_history*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_validate_change_history".}
proc pdf_find_version_for_obj*(ctx: ptr fz_context; doc: ptr pdf_document;
                               obj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_find_version_for_obj".}
proc pdf_validate_signature*(ctx: ptr fz_context; widget: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_validate_signature".}
proc pdf_was_pure_xfa*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_was_pure_xfa".}
proc pdf_new_local_xref*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_xref {.
    cdecl, importc: "pdf_new_local_xref".}
proc pdf_drop_local_xref*(ctx: ptr fz_context; xref: ptr pdf_xref): void {.
    cdecl, importc: "pdf_drop_local_xref".}
proc pdf_drop_local_xref_and_resources*(ctx: ptr fz_context;
                                        doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_drop_local_xref_and_resources".}
proc pdf_debug_doc_changes*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_debug_doc_changes".}
proc pdf_new_crypt*(ctx: ptr fz_context; enc: ptr pdf_obj; id: ptr pdf_obj): ptr pdf_crypt {.
    cdecl, importc: "pdf_new_crypt".}
proc pdf_new_encrypt*(ctx: ptr fz_context; opwd_utf8: cstring;
                      upwd_utf8: cstring; id: ptr pdf_obj; permissions: cint;
                      algorithm: cint): ptr pdf_crypt {.cdecl,
    importc: "pdf_new_encrypt".}
proc pdf_drop_crypt*(ctx: ptr fz_context; crypt: ptr pdf_crypt): void {.cdecl,
    importc: "pdf_drop_crypt".}
proc pdf_crypt_obj*(ctx: ptr fz_context; crypt: ptr pdf_crypt; obj: ptr pdf_obj;
                    num: cint; gen: cint): void {.cdecl,
    importc: "pdf_crypt_obj".}
proc pdf_open_crypt*(ctx: ptr fz_context; chain: ptr fz_stream;
                     crypt: ptr pdf_crypt; num: cint; gen: cint): ptr fz_stream {.
    cdecl, importc: "pdf_open_crypt".}
proc pdf_open_crypt_with_filter*(ctx: ptr fz_context; chain: ptr fz_stream;
                                 crypt: ptr pdf_crypt; name: ptr pdf_obj;
                                 num: cint; gen: cint): ptr fz_stream {.cdecl,
    importc: "pdf_open_crypt_with_filter".}
proc pdf_crypt_version*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cint {.
    cdecl, importc: "pdf_crypt_version".}
proc pdf_crypt_revision*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cint {.
    cdecl, importc: "pdf_crypt_revision".}
proc pdf_crypt_method*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cstring {.
    cdecl, importc: "pdf_crypt_method".}
proc pdf_crypt_string_method*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cstring {.
    cdecl, importc: "pdf_crypt_string_method".}
proc pdf_crypt_stream_method*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cstring {.
    cdecl, importc: "pdf_crypt_stream_method".}
proc pdf_crypt_length*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cint {.cdecl,
    importc: "pdf_crypt_length".}
proc pdf_crypt_permissions*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cint {.
    cdecl, importc: "pdf_crypt_permissions".}
proc pdf_crypt_encrypt_metadata*(ctx: ptr fz_context; crypt: ptr pdf_crypt): cint {.
    cdecl, importc: "pdf_crypt_encrypt_metadata".}
proc pdf_crypt_owner_password*(ctx: ptr fz_context; crypt: ptr pdf_crypt): ptr uint8 {.
    cdecl, importc: "pdf_crypt_owner_password".}
proc pdf_crypt_user_password*(ctx: ptr fz_context; crypt: ptr pdf_crypt): ptr uint8 {.
    cdecl, importc: "pdf_crypt_user_password".}
proc pdf_crypt_owner_encryption*(ctx: ptr fz_context; crypt: ptr pdf_crypt): ptr uint8 {.
    cdecl, importc: "pdf_crypt_owner_encryption".}
proc pdf_crypt_user_encryption*(ctx: ptr fz_context; crypt: ptr pdf_crypt): ptr uint8 {.
    cdecl, importc: "pdf_crypt_user_encryption".}
proc pdf_crypt_permissions_encryption*(ctx: ptr fz_context; crypt: ptr pdf_crypt): ptr uint8 {.
    cdecl, importc: "pdf_crypt_permissions_encryption".}
proc pdf_crypt_key*(ctx: ptr fz_context; crypt: ptr pdf_crypt): ptr uint8 {.
    cdecl, importc: "pdf_crypt_key".}
proc pdf_print_crypt*(ctx: ptr fz_context; out_arg: ptr fz_output;
                      crypt: ptr pdf_crypt): void {.cdecl,
    importc: "pdf_print_crypt".}
proc pdf_write_digest*(ctx: ptr fz_context; out_arg: ptr fz_output;
                       byte_range: ptr pdf_obj; field: ptr pdf_obj;
                       digest_offset: csize_t; digest_length: csize_t;
                       signer: ptr pdf_pkcs7_signer): void {.cdecl,
    importc: "pdf_write_digest".}
proc pdf_document_permissions*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_document_permissions".}
proc pdf_signature_byte_range*(ctx: ptr fz_context; doc: ptr pdf_document;
                               signature: ptr pdf_obj; byte_range: ptr fz_range): cint {.
    cdecl, importc: "pdf_signature_byte_range".}
proc pdf_signature_hash_bytes*(ctx: ptr fz_context; doc: ptr pdf_document;
                               signature: ptr pdf_obj): ptr fz_stream {.cdecl,
    importc: "pdf_signature_hash_bytes".}
proc pdf_signature_incremental_change_since_signing*(ctx: ptr fz_context;
    doc: ptr pdf_document; signature: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_signature_incremental_change_since_signing".}
proc pdf_incremental_change_since_signing_widget*(ctx: ptr fz_context;
    widget: ptr pdf_annot): cint {.cdecl, importc: "pdf_incremental_change_since_signing_widget".}
proc pdf_signature_contents*(ctx: ptr fz_context; doc: ptr pdf_document;
                             signature: ptr pdf_obj; contents: ptr cstring): csize_t {.
    cdecl, importc: "pdf_signature_contents".}
proc pdf_encrypt_data*(ctx: ptr fz_context; crypt: ptr pdf_crypt; num: cint;
                       gen: cint; fmt_str_out: proc (a0: ptr fz_context;
    a1: pointer; a2: ptr uint8; a3: csize_t): void {.cdecl.}; arg: pointer;
                       s: ptr uint8; n: csize_t): void {.cdecl,
    importc: "pdf_encrypt_data".}
proc pdf_encrypted_len*(ctx: ptr fz_context; crypt: ptr pdf_crypt; num: cint;
                        gen: cint; len: csize_t): csize_t {.cdecl,
    importc: "pdf_encrypted_len".}
proc pdf_new_cmap*(ctx: ptr fz_context): ptr pdf_cmap {.cdecl,
    importc: "pdf_new_cmap".}
proc pdf_keep_cmap*(ctx: ptr fz_context; cmap: ptr pdf_cmap): ptr pdf_cmap {.
    cdecl, importc: "pdf_keep_cmap".}
proc pdf_drop_cmap*(ctx: ptr fz_context; cmap: ptr pdf_cmap): void {.cdecl,
    importc: "pdf_drop_cmap".}
proc pdf_drop_cmap_imp*(ctx: ptr fz_context; cmap: ptr fz_storable): void {.
    cdecl, importc: "pdf_drop_cmap_imp".}
proc pdf_cmap_size*(ctx: ptr fz_context; cmap: ptr pdf_cmap): csize_t {.cdecl,
    importc: "pdf_cmap_size".}
proc pdf_cmap_wmode*(ctx: ptr fz_context; cmap: ptr pdf_cmap): cint {.cdecl,
    importc: "pdf_cmap_wmode".}
proc pdf_set_cmap_wmode*(ctx: ptr fz_context; cmap: ptr pdf_cmap; wmode: cint): void {.
    cdecl, importc: "pdf_set_cmap_wmode".}
proc pdf_set_usecmap*(ctx: ptr fz_context; cmap: ptr pdf_cmap;
                      usecmap: ptr pdf_cmap): void {.cdecl,
    importc: "pdf_set_usecmap".}
proc pdf_add_codespace*(ctx: ptr fz_context; cmap: ptr pdf_cmap; low: cuint;
                        high: cuint; n: csize_t): void {.cdecl,
    importc: "pdf_add_codespace".}
proc pdf_map_range_to_range*(ctx: ptr fz_context; cmap: ptr pdf_cmap;
                             srclo: cuint; srchi: cuint; dstlo: cint): void {.
    cdecl, importc: "pdf_map_range_to_range".}
proc pdf_map_one_to_many*(ctx: ptr fz_context; cmap: ptr pdf_cmap; one: cuint;
                          many: ptr cint; len: csize_t): void {.cdecl,
    importc: "pdf_map_one_to_many".}
proc pdf_sort_cmap*(ctx: ptr fz_context; cmap: ptr pdf_cmap): void {.cdecl,
    importc: "pdf_sort_cmap".}
proc pdf_lookup_cmap*(cmap: ptr pdf_cmap; cpt: cuint): cint {.cdecl,
    importc: "pdf_lookup_cmap".}
proc pdf_lookup_cmap_full*(cmap: ptr pdf_cmap; cpt: cuint; out_arg: ptr cint): cint {.
    cdecl, importc: "pdf_lookup_cmap_full".}
proc pdf_decode_cmap*(cmap: ptr pdf_cmap; s: ptr uint8; e: ptr uint8;
                      cpt: ptr cuint): cint {.cdecl, importc: "pdf_decode_cmap".}
proc pdf_new_identity_cmap*(ctx: ptr fz_context; wmode: cint; bytes: cint): ptr pdf_cmap {.
    cdecl, importc: "pdf_new_identity_cmap".}
proc pdf_load_cmap*(ctx: ptr fz_context; file: ptr fz_stream): ptr pdf_cmap {.
    cdecl, importc: "pdf_load_cmap".}
proc pdf_load_system_cmap*(ctx: ptr fz_context; name: cstring): ptr pdf_cmap {.
    cdecl, importc: "pdf_load_system_cmap".}
proc pdf_load_builtin_cmap*(ctx: ptr fz_context; name: cstring): ptr pdf_cmap {.
    cdecl, importc: "pdf_load_builtin_cmap".}
proc pdf_load_embedded_cmap*(ctx: ptr fz_context; doc: ptr pdf_document;
                             ref_arg: ptr pdf_obj): ptr pdf_cmap {.cdecl,
    importc: "pdf_load_embedded_cmap".}
proc pdf_load_encoding*(estrings: ptr cstring; encoding: cstring): void {.cdecl,
    importc: "pdf_load_encoding".}
proc pdf_set_font_wmode*(ctx: ptr fz_context; font: ptr pdf_font_desc;
                         wmode: cint): void {.cdecl,
    importc: "pdf_set_font_wmode".}
proc pdf_set_default_hmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc; w: cint): void {.
    cdecl, importc: "pdf_set_default_hmtx".}
proc pdf_set_default_vmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc;
                           y: cint; w: cint): void {.cdecl,
    importc: "pdf_set_default_vmtx".}
proc pdf_add_hmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc; lo: cint;
                   hi: cint; w: cint): void {.cdecl, importc: "pdf_add_hmtx".}
proc pdf_add_vmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc; lo: cint;
                   hi: cint; x: cint; y: cint; w: cint): void {.cdecl,
    importc: "pdf_add_vmtx".}
proc pdf_end_hmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc): void {.cdecl,
    importc: "pdf_end_hmtx".}
proc pdf_end_vmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc): void {.cdecl,
    importc: "pdf_end_vmtx".}
proc pdf_lookup_hmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc; cid: cint): pdf_hmtx {.
    cdecl, importc: "pdf_lookup_hmtx".}
proc pdf_lookup_vmtx*(ctx: ptr fz_context; font: ptr pdf_font_desc; cid: cint): pdf_vmtx {.
    cdecl, importc: "pdf_lookup_vmtx".}
proc pdf_load_to_unicode*(ctx: ptr fz_context; doc: ptr pdf_document;
                          font: ptr pdf_font_desc; strings: ptr cstring;
                          collection: cstring; cmapstm: ptr pdf_obj): void {.
    cdecl, importc: "pdf_load_to_unicode".}
proc pdf_font_cid_to_gid*(ctx: ptr fz_context; fontdesc: ptr pdf_font_desc;
                          cid: cint): cint {.cdecl,
    importc: "pdf_font_cid_to_gid".}
proc pdf_clean_font_name*(fontname: cstring): cstring {.cdecl,
    importc: "pdf_clean_font_name".}
proc pdf_lookup_substitute_font*(ctx: ptr fz_context; mono: cint; serif: cint;
                                 bold: cint; italic: cint; len: ptr cint): ptr uint8 {.
    cdecl, importc: "pdf_lookup_substitute_font".}
proc pdf_load_type3_font*(ctx: ptr fz_context; doc: ptr pdf_document;
                          rdb: ptr pdf_obj; obj: ptr pdf_obj): ptr pdf_font_desc {.
    cdecl, importc: "pdf_load_type3_font".}
proc pdf_load_type3_glyphs*(ctx: ptr fz_context; doc: ptr pdf_document;
                            fontdesc: ptr pdf_font_desc): void {.cdecl,
    importc: "pdf_load_type3_glyphs".}
proc pdf_load_font*(ctx: ptr fz_context; doc: ptr pdf_document;
                    rdb: ptr pdf_obj; obj: ptr pdf_obj): ptr pdf_font_desc {.
    cdecl, importc: "pdf_load_font".}
proc pdf_load_hail_mary_font*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_font_desc {.
    cdecl, importc: "pdf_load_hail_mary_font".}
proc pdf_new_font_desc*(ctx: ptr fz_context): ptr pdf_font_desc {.cdecl,
    importc: "pdf_new_font_desc".}
proc pdf_keep_font*(ctx: ptr fz_context; fontdesc: ptr pdf_font_desc): ptr pdf_font_desc {.
    cdecl, importc: "pdf_keep_font".}
proc pdf_drop_font*(ctx: ptr fz_context; font: ptr pdf_font_desc): void {.cdecl,
    importc: "pdf_drop_font".}
proc pdf_print_font*(ctx: ptr fz_context; out_arg: ptr fz_output;
                     fontdesc: ptr pdf_font_desc): void {.cdecl,
    importc: "pdf_print_font".}
proc pdf_run_glyph*(ctx: ptr fz_context; doc: ptr pdf_document;
                    resources: ptr pdf_obj; contents: ptr fz_buffer;
                    dev: ptr fz_device; ctm: fz_matrix; gstate: pointer;
                    default_cs: ptr fz_default_colorspaces): void {.cdecl,
    importc: "pdf_run_glyph".}
proc pdf_add_simple_font*(ctx: ptr fz_context; doc: ptr pdf_document;
                          font: ptr fz_font; encoding: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_add_simple_font".}
proc pdf_add_cid_font*(ctx: ptr fz_context; doc: ptr pdf_document;
                       font: ptr fz_font): ptr pdf_obj {.cdecl,
    importc: "pdf_add_cid_font".}
proc pdf_add_cjk_font*(ctx: ptr fz_context; doc: ptr pdf_document;
                       font: ptr fz_font; script: cint; wmode: cint; serif: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_add_cjk_font".}
proc pdf_add_substitute_font*(ctx: ptr fz_context; doc: ptr pdf_document;
                              font: ptr fz_font): ptr pdf_obj {.cdecl,
    importc: "pdf_add_substitute_font".}
proc pdf_font_writing_supported*(ctx: ptr fz_context; font: ptr fz_font): cint {.
    cdecl, importc: "pdf_font_writing_supported".}
proc pdf_subset_fonts*(ctx: ptr fz_context; doc: ptr pdf_document;
                       pages_len: cint; pages: ptr cint): void {.cdecl,
    importc: "pdf_subset_fonts".}
proc pdf_store_item*(ctx: ptr fz_context; key: ptr pdf_obj; val: pointer;
                     itemsize: csize_t): void {.cdecl, importc: "pdf_store_item".}
proc pdf_find_item*(ctx: ptr fz_context; drop: fz_store_drop_fn;
                    key: ptr pdf_obj): pointer {.cdecl, importc: "pdf_find_item".}
proc pdf_remove_item*(ctx: ptr fz_context; drop: fz_store_drop_fn;
                      key: ptr pdf_obj): void {.cdecl,
    importc: "pdf_remove_item".}
proc pdf_empty_store*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_empty_store".}
proc pdf_purge_locals_from_store*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_purge_locals_from_store".}
proc pdf_purge_object_from_store*(ctx: ptr fz_context; doc: ptr pdf_document;
                                  num: cint): void {.cdecl,
    importc: "pdf_purge_object_from_store".}
proc pdf_find_font_resource*(ctx: ptr fz_context; doc: ptr pdf_document;
                             type_arg: cint; encoding: cint; item: ptr fz_font;
                             key: ptr pdf_font_resource_key): ptr pdf_obj {.
    cdecl, importc: "pdf_find_font_resource".}
proc pdf_insert_font_resource*(ctx: ptr fz_context; doc: ptr pdf_document;
                               key: ptr pdf_font_resource_key; obj: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_insert_font_resource".}
proc pdf_drop_resource_tables*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_drop_resource_tables".}
proc pdf_purge_local_font_resources*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_purge_local_font_resources".}
proc pdf_eval_function*(ctx: ptr fz_context; func_arg: ptr pdf_function;
                        in_arg: ptr cfloat; inlen: cint; out_arg: ptr cfloat;
                        outlen: cint): void {.cdecl,
    importc: "pdf_eval_function".}
proc pdf_keep_function*(ctx: ptr fz_context; func_arg: ptr pdf_function): ptr pdf_function {.
    cdecl, importc: "pdf_keep_function".}
proc pdf_drop_function*(ctx: ptr fz_context; func_arg: ptr pdf_function): void {.
    cdecl, importc: "pdf_drop_function".}
proc pdf_function_size*(ctx: ptr fz_context; func_arg: ptr pdf_function): csize_t {.
    cdecl, importc: "pdf_function_size".}
proc pdf_load_function*(ctx: ptr fz_context; ref_arg: ptr pdf_obj; in_arg: cint;
                        out_arg: cint): ptr pdf_function {.cdecl,
    importc: "pdf_load_function".}
proc pdf_document_output_intent*(ctx: ptr fz_context; doc: ptr pdf_document): ptr fz_colorspace {.
    cdecl, importc: "pdf_document_output_intent".}
proc pdf_load_colorspace*(ctx: ptr fz_context; obj: ptr pdf_obj): ptr fz_colorspace {.
    cdecl, importc: "pdf_load_colorspace".}
proc pdf_is_tint_colorspace*(ctx: ptr fz_context; cs: ptr fz_colorspace): cint {.
    cdecl, importc: "pdf_is_tint_colorspace".}
proc pdf_load_shading*(ctx: ptr fz_context; doc: ptr pdf_document;
                       obj: ptr pdf_obj): ptr fz_shade {.cdecl,
    importc: "pdf_load_shading".}
proc pdf_sample_shade_function*(ctx: ptr fz_context; samples: ptr cfloat;
                                n: cint; funcs: cint;
                                func_arg: ptr ptr pdf_function; t0: cfloat;
                                t1: cfloat): void {.cdecl,
    importc: "pdf_sample_shade_function".}
proc pdf_recolor_shade*(ctx: ptr fz_context; shade: ptr pdf_obj;
                        reshade: pdf_shade_recolorer; opaque: pointer): ptr pdf_obj {.
    cdecl, importc: "pdf_recolor_shade".}
proc pdf_load_inline_image*(ctx: ptr fz_context; doc: ptr pdf_document;
                            rdb: ptr pdf_obj; dict: ptr pdf_obj;
                            file: ptr fz_stream): ptr fz_image {.cdecl,
    importc: "pdf_load_inline_image".}
proc pdf_is_jpx_image*(ctx: ptr fz_context; dict: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_jpx_image".}
proc pdf_load_image*(ctx: ptr fz_context; doc: ptr pdf_document;
                     obj: ptr pdf_obj): ptr fz_image {.cdecl,
    importc: "pdf_load_image".}
proc pdf_add_image*(ctx: ptr fz_context; doc: ptr pdf_document;
                    image: ptr fz_image): ptr pdf_obj {.cdecl,
    importc: "pdf_add_image".}
proc pdf_load_pattern*(ctx: ptr fz_context; doc: ptr pdf_document;
                       obj: ptr pdf_obj): ptr pdf_pattern {.cdecl,
    importc: "pdf_load_pattern".}
proc pdf_keep_pattern*(ctx: ptr fz_context; pat: ptr pdf_pattern): ptr pdf_pattern {.
    cdecl, importc: "pdf_keep_pattern".}
proc pdf_drop_pattern*(ctx: ptr fz_context; pat: ptr pdf_pattern): void {.cdecl,
    importc: "pdf_drop_pattern".}
proc pdf_new_xobject*(ctx: ptr fz_context; doc: ptr pdf_document; bbox: fz_rect;
                      matrix: fz_matrix; res: ptr pdf_obj; buffer: ptr fz_buffer): ptr pdf_obj {.
    cdecl, importc: "pdf_new_xobject".}
proc pdf_update_xobject*(ctx: ptr fz_context; doc: ptr pdf_document;
                         xobj: ptr pdf_obj; bbox: fz_rect; mat: fz_matrix;
                         res: ptr pdf_obj; buffer: ptr fz_buffer): void {.cdecl,
    importc: "pdf_update_xobject".}
proc pdf_xobject_resources*(ctx: ptr fz_context; xobj: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_xobject_resources".}
proc pdf_xobject_bbox*(ctx: ptr fz_context; xobj: ptr pdf_obj): fz_rect {.cdecl,
    importc: "pdf_xobject_bbox".}
proc pdf_xobject_matrix*(ctx: ptr fz_context; xobj: ptr pdf_obj): fz_matrix {.
    cdecl, importc: "pdf_xobject_matrix".}
proc pdf_xobject_isolated*(ctx: ptr fz_context; xobj: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_xobject_isolated".}
proc pdf_xobject_knockout*(ctx: ptr fz_context; xobj: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_xobject_knockout".}
proc pdf_xobject_transparency*(ctx: ptr fz_context; xobj: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_xobject_transparency".}
proc pdf_xobject_colorspace*(ctx: ptr fz_context; xobj: ptr pdf_obj): ptr fz_colorspace {.
    cdecl, importc: "pdf_xobject_colorspace".}
proc pdf_new_processor*(ctx: ptr fz_context; size: cint): pointer {.cdecl,
    importc: "pdf_new_processor".}
proc pdf_keep_processor*(ctx: ptr fz_context; proc_arg: ptr pdf_processor): ptr pdf_processor {.
    cdecl, importc: "pdf_keep_processor".}
proc pdf_close_processor*(ctx: ptr fz_context; proc_arg: ptr pdf_processor): void {.
    cdecl, importc: "pdf_close_processor".}
proc pdf_drop_processor*(ctx: ptr fz_context; proc_arg: ptr pdf_processor): void {.
    cdecl, importc: "pdf_drop_processor".}
proc pdf_count_q_balance*(ctx: ptr fz_context; doc: ptr pdf_document;
                          res: ptr pdf_obj; stm: ptr pdf_obj; prepend: ptr cint;
                          append: ptr cint): void {.cdecl,
    importc: "pdf_count_q_balance".}
proc pdf_new_run_processor*(ctx: ptr fz_context; doc: ptr pdf_document;
                            dev: ptr fz_device; ctm: fz_matrix;
                            struct_parent: cint; usage: cstring;
                            gstate: ptr pdf_gstate;
                            default_cs: ptr fz_default_colorspaces;
                            cookie: ptr fz_cookie): ptr pdf_processor {.cdecl,
    importc: "pdf_new_run_processor".}
proc pdf_new_buffer_processor*(ctx: ptr fz_context; buffer: ptr fz_buffer;
                               ahxencode: cint; newlines: cint): ptr pdf_processor {.
    cdecl, importc: "pdf_new_buffer_processor".}
proc pdf_reset_processor*(ctx: ptr fz_context; proc_arg: ptr pdf_processor): void {.
    cdecl, importc: "pdf_reset_processor".}
proc pdf_new_output_processor*(ctx: ptr fz_context; out_arg: ptr fz_output;
                               ahxencode: cint; newlines: cint): ptr pdf_processor {.
    cdecl, importc: "pdf_new_output_processor".}
proc pdf_new_sanitize_filter*(ctx: ptr fz_context; doc: ptr pdf_document;
                              chain: ptr pdf_processor; struct_parents: cint;
                              transform: fz_matrix;
                              options: ptr pdf_filter_options; sopts: pointer): ptr pdf_processor {.
    cdecl, importc: "pdf_new_sanitize_filter".}
proc pdf_filter_xobject_instance*(ctx: ptr fz_context; old_xobj: ptr pdf_obj;
                                  page_res: ptr pdf_obj; ctm: fz_matrix;
                                  options: ptr pdf_filter_options;
                                  cycle_up: ptr pdf_cycle_list): ptr pdf_obj {.
    cdecl, importc: "pdf_filter_xobject_instance".}
proc pdf_processor_push_resources*(ctx: ptr fz_context;
                                   proc_arg: ptr pdf_processor; res: ptr pdf_obj): void {.
    cdecl, importc: "pdf_processor_push_resources".}
proc pdf_processor_pop_resources*(ctx: ptr fz_context;
                                  proc_arg: ptr pdf_processor): ptr pdf_obj {.
    cdecl, importc: "pdf_processor_pop_resources".}
proc pdf_new_color_filter*(ctx: ptr fz_context; doc: ptr pdf_document;
                           chain: ptr pdf_processor; struct_parents: cint;
                           transform: fz_matrix;
                           options: ptr pdf_filter_options; copts: pointer): ptr pdf_processor {.
    cdecl, importc: "pdf_new_color_filter".}
proc pdf_process_contents*(ctx: ptr fz_context; proc_arg: ptr pdf_processor;
                           doc: ptr pdf_document; res: ptr pdf_obj;
                           stm: ptr pdf_obj; cookie: ptr fz_cookie;
                           out_res: ptr ptr pdf_obj): void {.cdecl,
    importc: "pdf_process_contents".}
proc pdf_process_annot*(ctx: ptr fz_context; proc_arg: ptr pdf_processor;
                        annot: ptr pdf_annot; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_process_annot".}
proc pdf_process_glyph*(ctx: ptr fz_context; proc_arg: ptr pdf_processor;
                        doc: ptr pdf_document; resources: ptr pdf_obj;
                        contents: ptr fz_buffer): void {.cdecl,
    importc: "pdf_process_glyph".}
proc pdf_process_raw_contents*(ctx: ptr fz_context; proc_arg: ptr pdf_processor;
                               doc: ptr pdf_document; rdb: ptr pdf_obj;
                               stmobj: ptr pdf_obj; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_process_raw_contents".}
proc pdf_tos_save*(ctx: ptr fz_context; tos: ptr pdf_text_object_state;
                   save: array[2'i64, fz_matrix]): void {.cdecl,
    importc: "pdf_tos_save".}
proc pdf_tos_restore*(ctx: ptr fz_context; tos: ptr pdf_text_object_state;
                      save: array[2'i64, fz_matrix]): void {.cdecl,
    importc: "pdf_tos_restore".}
proc pdf_tos_get_text*(ctx: ptr fz_context; tos: ptr pdf_text_object_state): ptr fz_text {.
    cdecl, importc: "pdf_tos_get_text".}
proc pdf_tos_reset*(ctx: ptr fz_context; tos: ptr pdf_text_object_state;
                    render: cint): void {.cdecl, importc: "pdf_tos_reset".}
proc pdf_tos_make_trm*(ctx: ptr fz_context; tos: ptr pdf_text_object_state;
                       text: ptr pdf_text_state; fontdesc: ptr pdf_font_desc;
                       cid: cint; trm: ptr fz_matrix; adv: ptr cfloat): cint {.
    cdecl, importc: "pdf_tos_make_trm".}
proc pdf_tos_move_after_char*(ctx: ptr fz_context;
                              tos: ptr pdf_text_object_state): void {.cdecl,
    importc: "pdf_tos_move_after_char".}
proc pdf_tos_translate*(tos: ptr pdf_text_object_state; tx: cfloat; ty: cfloat): void {.
    cdecl, importc: "pdf_tos_translate".}
proc pdf_tos_set_matrix*(tos: ptr pdf_text_object_state; a: cfloat; b: cfloat;
                         c: cfloat; d: cfloat; e: cfloat; f: cfloat): void {.
    cdecl, importc: "pdf_tos_set_matrix".}
proc pdf_tos_newline*(tos: ptr pdf_text_object_state; leading: cfloat): void {.
    cdecl, importc: "pdf_tos_newline".}
proc pdf_keep_page*(ctx: ptr fz_context; page: ptr pdf_page): ptr pdf_page {.
    cdecl, importc: "pdf_keep_page".}
proc pdf_drop_page*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_drop_page".}
proc pdf_lookup_page_number*(ctx: ptr fz_context; doc: ptr pdf_document;
                             pageobj: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_lookup_page_number".}
proc pdf_count_pages*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.cdecl,
    importc: "pdf_count_pages".}
proc pdf_count_pages_imp*(ctx: ptr fz_context; doc: ptr fz_document;
                          chapter: cint): cint {.cdecl,
    importc: "pdf_count_pages_imp".}
proc pdf_lookup_page_obj*(ctx: ptr fz_context; doc: ptr pdf_document;
                          needle: cint): ptr pdf_obj {.cdecl,
    importc: "pdf_lookup_page_obj".}
proc pdf_lookup_page_loc*(ctx: ptr fz_context; doc: ptr pdf_document;
                          needle: cint; parentp: ptr ptr pdf_obj;
                          indexp: ptr cint): ptr pdf_obj {.cdecl,
    importc: "pdf_lookup_page_loc".}
proc pdf_load_page_tree*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_load_page_tree".}
proc pdf_drop_page_tree*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_drop_page_tree".}
proc pdf_drop_page_tree_internal*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_drop_page_tree_internal".}
proc pdf_flatten_inheritable_page_items*(ctx: ptr fz_context; page: ptr pdf_obj): void {.
    cdecl, importc: "pdf_flatten_inheritable_page_items".}
proc pdf_load_page*(ctx: ptr fz_context; doc: ptr pdf_document; number: cint): ptr pdf_page {.
    cdecl, importc: "pdf_load_page".}
proc pdf_load_page_imp*(ctx: ptr fz_context; doc: ptr fz_document;
                        chapter: cint; number: cint): ptr fz_page {.cdecl,
    importc: "pdf_load_page_imp".}
proc pdf_page_has_transparency*(ctx: ptr fz_context; page: ptr pdf_page): cint {.
    cdecl, importc: "pdf_page_has_transparency".}
proc pdf_page_obj_transform_box*(ctx: ptr fz_context; pageobj: ptr pdf_obj;
                                 outbox: ptr fz_rect; out_arg: ptr fz_matrix;
                                 box: fz_box_type): void {.cdecl,
    importc: "pdf_page_obj_transform_box".}
proc pdf_page_obj_transform*(ctx: ptr fz_context; pageobj: ptr pdf_obj;
                             outbox: ptr fz_rect; outctm: ptr fz_matrix): void {.
    cdecl, importc: "pdf_page_obj_transform".}
proc pdf_page_transform_box*(ctx: ptr fz_context; page: ptr pdf_page;
                             mediabox: ptr fz_rect; ctm: ptr fz_matrix;
                             box: fz_box_type): void {.cdecl,
    importc: "pdf_page_transform_box".}
proc pdf_page_transform*(ctx: ptr fz_context; page: ptr pdf_page;
                         mediabox: ptr fz_rect; ctm: ptr fz_matrix): void {.
    cdecl, importc: "pdf_page_transform".}
proc pdf_page_resources*(ctx: ptr fz_context; page: ptr pdf_page): ptr pdf_obj {.
    cdecl, importc: "pdf_page_resources".}
proc pdf_page_contents*(ctx: ptr fz_context; page: ptr pdf_page): ptr pdf_obj {.
    cdecl, importc: "pdf_page_contents".}
proc pdf_page_group*(ctx: ptr fz_context; page: ptr pdf_page): ptr pdf_obj {.
    cdecl, importc: "pdf_page_group".}
proc pdf_set_page_box*(ctx: ptr fz_context; page: ptr pdf_page;
                       box: fz_box_type; rect: fz_rect): void {.cdecl,
    importc: "pdf_set_page_box".}
proc pdf_page_separations*(ctx: ptr fz_context; page: ptr pdf_page): ptr fz_separations {.
    cdecl, importc: "pdf_page_separations".}
proc pdf_read_ocg*(ctx: ptr fz_context; doc: ptr pdf_document): ptr pdf_ocg_descriptor {.
    cdecl, importc: "pdf_read_ocg".}
proc pdf_drop_ocg*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_drop_ocg".}
proc pdf_is_ocg_hidden*(ctx: ptr fz_context; doc: ptr pdf_document;
                        rdb: ptr pdf_obj; usage: cstring; ocg: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_is_ocg_hidden".}
proc pdf_load_links*(ctx: ptr fz_context; page: ptr pdf_page): ptr fz_link {.
    cdecl, importc: "pdf_load_links".}
proc pdf_bound_page*(ctx: ptr fz_context; page: ptr pdf_page; box: fz_box_type): fz_rect {.
    cdecl, importc: "pdf_bound_page".}
proc pdf_run_page*(ctx: ptr fz_context; page: ptr pdf_page; dev: ptr fz_device;
                   ctm: fz_matrix; cookie: ptr fz_cookie): void {.cdecl,
    importc: "pdf_run_page".}
proc pdf_run_page_with_usage*(ctx: ptr fz_context; page: ptr pdf_page;
                              dev: ptr fz_device; ctm: fz_matrix;
                              usage: cstring; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_run_page_with_usage".}
proc pdf_run_page_contents*(ctx: ptr fz_context; page: ptr pdf_page;
                            dev: ptr fz_device; ctm: fz_matrix;
                            cookie: ptr fz_cookie): void {.cdecl,
    importc: "pdf_run_page_contents".}
proc pdf_run_page_annots*(ctx: ptr fz_context; page: ptr pdf_page;
                          dev: ptr fz_device; ctm: fz_matrix;
                          cookie: ptr fz_cookie): void {.cdecl,
    importc: "pdf_run_page_annots".}
proc pdf_run_page_widgets*(ctx: ptr fz_context; page: ptr pdf_page;
                           dev: ptr fz_device; ctm: fz_matrix;
                           cookie: ptr fz_cookie): void {.cdecl,
    importc: "pdf_run_page_widgets".}
proc pdf_run_page_contents_with_usage*(ctx: ptr fz_context; page: ptr pdf_page;
                                       dev: ptr fz_device; ctm: fz_matrix;
                                       usage: cstring; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_run_page_contents_with_usage".}
proc pdf_run_page_annots_with_usage*(ctx: ptr fz_context; page: ptr pdf_page;
                                     dev: ptr fz_device; ctm: fz_matrix;
                                     usage: cstring; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_run_page_annots_with_usage".}
proc pdf_run_page_widgets_with_usage*(ctx: ptr fz_context; page: ptr pdf_page;
                                      dev: ptr fz_device; ctm: fz_matrix;
                                      usage: cstring; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_run_page_widgets_with_usage".}
proc pdf_filter_page_contents*(ctx: ptr fz_context; doc: ptr pdf_document;
                               page: ptr pdf_page;
                               options: ptr pdf_filter_options): void {.cdecl,
    importc: "pdf_filter_page_contents".}
proc pdf_filter_annot_contents*(ctx: ptr fz_context; doc: ptr pdf_document;
                                annot: ptr pdf_annot;
                                options: ptr pdf_filter_options): void {.cdecl,
    importc: "pdf_filter_annot_contents".}
proc pdf_new_pixmap_from_page_contents_with_usage*(ctx: ptr fz_context;
    page: ptr pdf_page; ctm: fz_matrix; cs: ptr fz_colorspace; alpha: cint;
    usage: cstring; box: fz_box_type): ptr fz_pixmap {.cdecl,
    importc: "pdf_new_pixmap_from_page_contents_with_usage".}
proc pdf_new_pixmap_from_page_with_usage*(ctx: ptr fz_context;
    page: ptr pdf_page; ctm: fz_matrix; cs: ptr fz_colorspace; alpha: cint;
    usage: cstring; box: fz_box_type): ptr fz_pixmap {.cdecl,
    importc: "pdf_new_pixmap_from_page_with_usage".}
proc pdf_new_pixmap_from_page_contents_with_separations_and_usage*(
    ctx: ptr fz_context; page: ptr pdf_page; ctm: fz_matrix;
    cs: ptr fz_colorspace; seps: ptr fz_separations; alpha: cint;
    usage: cstring; box: fz_box_type): ptr fz_pixmap {.cdecl,
    importc: "pdf_new_pixmap_from_page_contents_with_separations_and_usage".}
proc pdf_new_pixmap_from_page_with_separations_and_usage*(ctx: ptr fz_context;
    page: ptr pdf_page; ctm: fz_matrix; cs: ptr fz_colorspace;
    seps: ptr fz_separations; alpha: cint; usage: cstring; box: fz_box_type): ptr fz_pixmap {.
    cdecl, importc: "pdf_new_pixmap_from_page_with_separations_and_usage".}
proc pdf_redact_page*(ctx: ptr fz_context; doc: ptr pdf_document;
                      page: ptr pdf_page; opts: ptr pdf_redact_options): cint {.
    cdecl, importc: "pdf_redact_page".}
proc pdf_page_presentation*(ctx: ptr fz_context; page: ptr pdf_page;
                            transition: ptr fz_transition; duration: ptr cfloat): ptr fz_transition {.
    cdecl, importc: "pdf_page_presentation".}
proc pdf_load_default_colorspaces*(ctx: ptr fz_context; doc: ptr pdf_document;
                                   page: ptr pdf_page): ptr fz_default_colorspaces {.
    cdecl, importc: "pdf_load_default_colorspaces".}
proc pdf_update_default_colorspaces*(ctx: ptr fz_context;
                                     old_cs: ptr fz_default_colorspaces;
                                     res: ptr pdf_obj): ptr fz_default_colorspaces {.
    cdecl, importc: "pdf_update_default_colorspaces".}
proc pdf_sync_open_pages*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_sync_open_pages".}
proc pdf_sync_page*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_sync_page".}
proc pdf_sync_links*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_sync_links".}
proc pdf_sync_annots*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_sync_annots".}
proc pdf_nuke_page*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_nuke_page".}
proc pdf_nuke_links*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_nuke_links".}
proc pdf_nuke_annots*(ctx: ptr fz_context; page: ptr pdf_page): void {.cdecl,
    importc: "pdf_nuke_annots".}
proc pdf_string_from_annot_type*(ctx: ptr fz_context;
                                 type_arg: enum_pdf_annot_type): cstring {.
    cdecl, importc: "pdf_string_from_annot_type".}
proc pdf_annot_type_from_string*(ctx: ptr fz_context; subtype: cstring): enum_pdf_annot_type {.
    cdecl, importc: "pdf_annot_type_from_string".}
proc pdf_string_from_intent*(ctx: ptr fz_context; intent: enum_pdf_intent): cstring {.
    cdecl, importc: "pdf_string_from_intent".}
proc pdf_name_from_intent*(ctx: ptr fz_context; intent: enum_pdf_intent): ptr pdf_obj {.
    cdecl, importc: "pdf_name_from_intent".}
proc pdf_intent_from_string*(ctx: ptr fz_context; str: cstring): enum_pdf_intent {.
    cdecl, importc: "pdf_intent_from_string".}
proc pdf_intent_from_name*(ctx: ptr fz_context; obj: ptr pdf_obj): enum_pdf_intent {.
    cdecl, importc: "pdf_intent_from_name".}
proc pdf_line_ending_from_name*(ctx: ptr fz_context; end_arg: ptr pdf_obj): enum_pdf_line_ending {.
    cdecl, importc: "pdf_line_ending_from_name".}
proc pdf_line_ending_from_string*(ctx: ptr fz_context; end_arg: cstring): enum_pdf_line_ending {.
    cdecl, importc: "pdf_line_ending_from_string".}
proc pdf_name_from_line_ending*(ctx: ptr fz_context;
                                end_arg: enum_pdf_line_ending): ptr pdf_obj {.
    cdecl, importc: "pdf_name_from_line_ending".}
proc pdf_string_from_line_ending*(ctx: ptr fz_context;
                                  end_arg: enum_pdf_line_ending): cstring {.
    cdecl, importc: "pdf_string_from_line_ending".}
proc pdf_keep_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr pdf_annot {.
    cdecl, importc: "pdf_keep_annot".}
proc pdf_drop_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.cdecl,
    importc: "pdf_drop_annot".}
proc pdf_first_annot*(ctx: ptr fz_context; page: ptr pdf_page): ptr pdf_annot {.
    cdecl, importc: "pdf_first_annot".}
proc pdf_next_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr pdf_annot {.
    cdecl, importc: "pdf_next_annot".}
proc pdf_annot_obj*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr pdf_obj {.
    cdecl, importc: "pdf_annot_obj".}
proc pdf_annot_page*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr pdf_page {.
    cdecl, importc: "pdf_annot_page".}
proc pdf_bound_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_rect {.
    cdecl, importc: "pdf_bound_annot".}
proc pdf_annot_type*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_annot_type {.
    cdecl, importc: "pdf_annot_type".}
proc pdf_run_annot*(ctx: ptr fz_context; annot: ptr pdf_annot;
                    dev: ptr fz_device; ctm: fz_matrix; cookie: ptr fz_cookie): void {.
    cdecl, importc: "pdf_run_annot".}
proc pdf_lookup_name*(ctx: ptr fz_context; doc: ptr pdf_document;
                      which: ptr pdf_obj; needle: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_lookup_name".}
proc pdf_load_name_tree*(ctx: ptr fz_context; doc: ptr pdf_document;
                         which: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_load_name_tree".}
proc pdf_lookup_number*(ctx: ptr fz_context; root: ptr pdf_obj; needle: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_lookup_number".}
proc pdf_walk_tree*(ctx: ptr fz_context; tree: ptr pdf_obj;
                    kid_name: ptr pdf_obj; arrive: proc (a0: ptr fz_context;
    a1: ptr pdf_obj; a2: pointer; a3: ptr ptr pdf_obj): void {.cdecl.}; leave: proc (
    a0: ptr fz_context; a1: ptr pdf_obj; a2: pointer): void {.cdecl.};
                    arg: pointer; names: ptr ptr pdf_obj;
                    values: ptr ptr pdf_obj): void {.cdecl,
    importc: "pdf_walk_tree".}
proc pdf_resolve_link*(ctx: ptr fz_context; doc: ptr pdf_document; uri: cstring;
                       xp: ptr cfloat; yp: ptr cfloat): cint {.cdecl,
    importc: "pdf_resolve_link".}
proc pdf_resolve_link_dest*(ctx: ptr fz_context; doc: ptr pdf_document;
                            uri: cstring): fz_link_dest {.cdecl,
    importc: "pdf_resolve_link_dest".}
proc pdf_new_action_from_link*(ctx: ptr fz_context; doc: ptr pdf_document;
                               uri: cstring): ptr pdf_obj {.cdecl,
    importc: "pdf_new_action_from_link".}
proc pdf_new_dest_from_link*(ctx: ptr fz_context; doc: ptr pdf_document;
                             uri: cstring; is_remote: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_new_dest_from_link".}
proc pdf_new_uri_from_explicit_dest*(ctx: ptr fz_context; dest: fz_link_dest): cstring {.
    cdecl, importc: "pdf_new_uri_from_explicit_dest".}
proc pdf_append_named_dest_to_uri*(ctx: ptr fz_context; url: cstring;
                                   name: cstring): cstring {.cdecl,
    importc: "pdf_append_named_dest_to_uri".}
proc pdf_append_explicit_dest_to_uri*(ctx: ptr fz_context; url: cstring;
                                      dest: fz_link_dest): cstring {.cdecl,
    importc: "pdf_append_explicit_dest_to_uri".}
proc pdf_new_uri_from_path_and_named_dest*(ctx: ptr fz_context; path: cstring;
    name: cstring): cstring {.cdecl,
                              importc: "pdf_new_uri_from_path_and_named_dest".}
proc pdf_new_uri_from_path_and_explicit_dest*(ctx: ptr fz_context;
    path: cstring; dest: fz_link_dest): cstring {.cdecl,
    importc: "pdf_new_uri_from_path_and_explicit_dest".}
proc pdf_annot_transform*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_matrix {.
    cdecl, importc: "pdf_annot_transform".}
proc pdf_new_link*(ctx: ptr fz_context; page: ptr pdf_page; rect: fz_rect;
                   uri: cstring; obj: ptr pdf_obj): ptr fz_link {.cdecl,
    importc: "pdf_new_link".}
proc pdf_create_annot_raw*(ctx: ptr fz_context; page: ptr pdf_page;
                           type_arg: enum_pdf_annot_type): ptr pdf_annot {.
    cdecl, importc: "pdf_create_annot_raw".}
proc pdf_create_link*(ctx: ptr fz_context; page: ptr pdf_page; bbox: fz_rect;
                      uri: cstring): ptr fz_link {.cdecl,
    importc: "pdf_create_link".}
proc pdf_delete_link*(ctx: ptr fz_context; page: ptr pdf_page; link: ptr fz_link): void {.
    cdecl, importc: "pdf_delete_link".}
proc pdf_create_annot*(ctx: ptr fz_context; page: ptr pdf_page;
                       type_arg: enum_pdf_annot_type): ptr pdf_annot {.cdecl,
    importc: "pdf_create_annot".}
proc pdf_delete_annot*(ctx: ptr fz_context; page: ptr pdf_page;
                       annot: ptr pdf_annot): void {.cdecl,
    importc: "pdf_delete_annot".}
proc pdf_set_annot_popup*(ctx: ptr fz_context; annot: ptr pdf_annot;
                          rect: fz_rect): void {.cdecl,
    importc: "pdf_set_annot_popup".}
proc pdf_annot_popup*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_rect {.
    cdecl, importc: "pdf_annot_popup".}
proc pdf_annot_has_rect*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_rect".}
proc pdf_annot_has_ink_list*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_ink_list".}
proc pdf_annot_has_quad_points*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_quad_points".}
proc pdf_annot_has_vertices*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_vertices".}
proc pdf_annot_has_line*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_line".}
proc pdf_annot_has_interior_color*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_interior_color".}
proc pdf_annot_has_line_ending_styles*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_line_ending_styles".}
proc pdf_annot_has_quadding*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_quadding".}
proc pdf_annot_has_border*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_border".}
proc pdf_annot_has_border_effect*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_border_effect".}
proc pdf_annot_has_icon_name*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_icon_name".}
proc pdf_annot_has_open*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_open".}
proc pdf_annot_has_popup*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_popup".}
proc pdf_annot_has_author*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_author".}
proc pdf_annot_flags*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.cdecl,
    importc: "pdf_annot_flags".}
proc pdf_annot_rect*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_rect {.
    cdecl, importc: "pdf_annot_rect".}
proc pdf_annot_border*(ctx: ptr fz_context; annot: ptr pdf_annot): cfloat {.
    cdecl, importc: "pdf_annot_border".}
proc pdf_annot_border_style*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_border_style {.
    cdecl, importc: "pdf_annot_border_style".}
proc pdf_annot_border_width*(ctx: ptr fz_context; annot: ptr pdf_annot): cfloat {.
    cdecl, importc: "pdf_annot_border_width".}
proc pdf_annot_border_dash_count*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_border_dash_count".}
proc pdf_annot_border_dash_item*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                 i: cint): cfloat {.cdecl,
    importc: "pdf_annot_border_dash_item".}
proc pdf_annot_border_effect*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_border_effect {.
    cdecl, importc: "pdf_annot_border_effect".}
proc pdf_annot_border_effect_intensity*(ctx: ptr fz_context;
                                        annot: ptr pdf_annot): cfloat {.cdecl,
    importc: "pdf_annot_border_effect_intensity".}
proc pdf_annot_opacity*(ctx: ptr fz_context; annot: ptr pdf_annot): cfloat {.
    cdecl, importc: "pdf_annot_opacity".}
proc pdf_annot_color*(ctx: ptr fz_context; annot: ptr pdf_annot; n: ptr cint;
                      color: array[4'i64, cfloat]): void {.cdecl,
    importc: "pdf_annot_color".}
proc pdf_annot_interior_color*(ctx: ptr fz_context; annot: ptr pdf_annot;
                               n: ptr cint; color: array[4'i64, cfloat]): void {.
    cdecl, importc: "pdf_annot_interior_color".}
proc pdf_annot_quadding*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_quadding".}
proc pdf_annot_language*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_text_language {.
    cdecl, importc: "pdf_annot_language".}
proc pdf_annot_quad_point_count*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_quad_point_count".}
proc pdf_annot_quad_point*(ctx: ptr fz_context; annot: ptr pdf_annot; i: cint): fz_quad {.
    cdecl, importc: "pdf_annot_quad_point".}
proc pdf_annot_ink_list_count*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_ink_list_count".}
proc pdf_annot_ink_list_stroke_count*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                      i: cint): cint {.cdecl,
    importc: "pdf_annot_ink_list_stroke_count".}
proc pdf_annot_ink_list_stroke_vertex*(ctx: ptr fz_context;
                                       annot: ptr pdf_annot; i: cint; k: cint): fz_point {.
    cdecl, importc: "pdf_annot_ink_list_stroke_vertex".}
proc pdf_set_annot_flags*(ctx: ptr fz_context; annot: ptr pdf_annot; flags: cint): void {.
    cdecl, importc: "pdf_set_annot_flags".}
proc pdf_set_annot_stamp_image*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                image: ptr fz_image): void {.cdecl,
    importc: "pdf_set_annot_stamp_image".}
proc pdf_set_annot_rect*(ctx: ptr fz_context; annot: ptr pdf_annot;
                         rect: fz_rect): void {.cdecl,
    importc: "pdf_set_annot_rect".}
proc pdf_set_annot_border*(ctx: ptr fz_context; annot: ptr pdf_annot;
                           width: cfloat): void {.cdecl,
    importc: "pdf_set_annot_border".}
proc pdf_set_annot_border_style*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                 style: enum_pdf_border_style): void {.cdecl,
    importc: "pdf_set_annot_border_style".}
proc pdf_set_annot_border_width*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                 width: cfloat): void {.cdecl,
    importc: "pdf_set_annot_border_width".}
proc pdf_clear_annot_border_dash*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_clear_annot_border_dash".}
proc pdf_add_annot_border_dash_item*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                     length: cfloat): void {.cdecl,
    importc: "pdf_add_annot_border_dash_item".}
proc pdf_set_annot_border_effect*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                  effect: enum_pdf_border_effect): void {.cdecl,
    importc: "pdf_set_annot_border_effect".}
proc pdf_set_annot_border_effect_intensity*(ctx: ptr fz_context;
    annot: ptr pdf_annot; intensity: cfloat): void {.cdecl,
    importc: "pdf_set_annot_border_effect_intensity".}
proc pdf_set_annot_opacity*(ctx: ptr fz_context; annot: ptr pdf_annot;
                            opacity: cfloat): void {.cdecl,
    importc: "pdf_set_annot_opacity".}
proc pdf_set_annot_color*(ctx: ptr fz_context; annot: ptr pdf_annot; n: cint;
                          color: ptr cfloat): void {.cdecl,
    importc: "pdf_set_annot_color".}
proc pdf_set_annot_interior_color*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                   n: cint; color: ptr cfloat): void {.cdecl,
    importc: "pdf_set_annot_interior_color".}
proc pdf_set_annot_quadding*(ctx: ptr fz_context; annot: ptr pdf_annot; q: cint): void {.
    cdecl, importc: "pdf_set_annot_quadding".}
proc pdf_set_annot_language*(ctx: ptr fz_context; annot: ptr pdf_annot;
                             lang: fz_text_language): void {.cdecl,
    importc: "pdf_set_annot_language".}
proc pdf_set_annot_quad_points*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                n: cint; qv: ptr fz_quad): void {.cdecl,
    importc: "pdf_set_annot_quad_points".}
proc pdf_clear_annot_quad_points*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_clear_annot_quad_points".}
proc pdf_add_annot_quad_point*(ctx: ptr fz_context; annot: ptr pdf_annot;
                               quad: fz_quad): void {.cdecl,
    importc: "pdf_add_annot_quad_point".}
proc pdf_set_annot_ink_list*(ctx: ptr fz_context; annot: ptr pdf_annot; n: cint;
                             count: ptr cint; v: ptr fz_point): void {.cdecl,
    importc: "pdf_set_annot_ink_list".}
proc pdf_clear_annot_ink_list*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_clear_annot_ink_list".}
proc pdf_add_annot_ink_list_stroke*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_add_annot_ink_list_stroke".}
proc pdf_add_annot_ink_list_stroke_vertex*(ctx: ptr fz_context;
    annot: ptr pdf_annot; p: fz_point): void {.cdecl,
    importc: "pdf_add_annot_ink_list_stroke_vertex".}
proc pdf_add_annot_ink_list*(ctx: ptr fz_context; annot: ptr pdf_annot; n: cint;
                             stroke: ptr UncheckedArray[fz_point]): void {.
    cdecl, importc: "pdf_add_annot_ink_list".}
proc pdf_set_annot_icon_name*(ctx: ptr fz_context; annot: ptr pdf_annot;
                              name: cstring): void {.cdecl,
    importc: "pdf_set_annot_icon_name".}
proc pdf_set_annot_is_open*(ctx: ptr fz_context; annot: ptr pdf_annot;
                            is_open: cint): void {.cdecl,
    importc: "pdf_set_annot_is_open".}
proc pdf_annot_line_start_style*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_line_ending {.
    cdecl, importc: "pdf_annot_line_start_style".}
proc pdf_annot_line_end_style*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_line_ending {.
    cdecl, importc: "pdf_annot_line_end_style".}
proc pdf_annot_line_ending_styles*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                   start_style: ptr enum_pdf_line_ending;
                                   end_style: ptr enum_pdf_line_ending): void {.
    cdecl, importc: "pdf_annot_line_ending_styles".}
proc pdf_set_annot_line_start_style*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                     s: enum_pdf_line_ending): void {.cdecl,
    importc: "pdf_set_annot_line_start_style".}
proc pdf_set_annot_line_end_style*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                   e: enum_pdf_line_ending): void {.cdecl,
    importc: "pdf_set_annot_line_end_style".}
proc pdf_set_annot_line_ending_styles*(ctx: ptr fz_context;
                                       annot: ptr pdf_annot;
                                       start_style: enum_pdf_line_ending;
                                       end_style: enum_pdf_line_ending): void {.
    cdecl, importc: "pdf_set_annot_line_ending_styles".}
proc pdf_annot_icon_name*(ctx: ptr fz_context; annot: ptr pdf_annot): cstring {.
    cdecl, importc: "pdf_annot_icon_name".}
proc pdf_annot_is_open*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_is_open".}
proc pdf_annot_is_standard_stamp*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_is_standard_stamp".}
proc pdf_annot_line*(ctx: ptr fz_context; annot: ptr pdf_annot; a: ptr fz_point;
                     b: ptr fz_point): void {.cdecl, importc: "pdf_annot_line".}
proc pdf_set_annot_line*(ctx: ptr fz_context; annot: ptr pdf_annot; a: fz_point;
                         b: fz_point): void {.cdecl,
    importc: "pdf_set_annot_line".}
proc pdf_annot_line_leader*(ctx: ptr fz_context; annot: ptr pdf_annot): cfloat {.
    cdecl, importc: "pdf_annot_line_leader".}
proc pdf_annot_line_leader_extension*(ctx: ptr fz_context; annot: ptr pdf_annot): cfloat {.
    cdecl, importc: "pdf_annot_line_leader_extension".}
proc pdf_annot_line_leader_offset*(ctx: ptr fz_context; annot: ptr pdf_annot): cfloat {.
    cdecl, importc: "pdf_annot_line_leader_offset".}
proc pdf_set_annot_line_leader*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                ll: cfloat): void {.cdecl,
    importc: "pdf_set_annot_line_leader".}
proc pdf_set_annot_line_leader_extension*(ctx: ptr fz_context;
    annot: ptr pdf_annot; lle: cfloat): void {.cdecl,
    importc: "pdf_set_annot_line_leader_extension".}
proc pdf_set_annot_line_leader_offset*(ctx: ptr fz_context;
                                       annot: ptr pdf_annot; llo: cfloat): void {.
    cdecl, importc: "pdf_set_annot_line_leader_offset".}
proc pdf_annot_line_caption*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_line_caption".}
proc pdf_set_annot_line_caption*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                 cap: cint): void {.cdecl,
    importc: "pdf_set_annot_line_caption".}
proc pdf_annot_line_caption_offset*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_point {.
    cdecl, importc: "pdf_annot_line_caption_offset".}
proc pdf_set_annot_line_caption_offset*(ctx: ptr fz_context;
                                        annot: ptr pdf_annot; offset: fz_point): void {.
    cdecl, importc: "pdf_set_annot_line_caption_offset".}
proc pdf_annot_vertex_count*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_vertex_count".}
proc pdf_annot_vertex*(ctx: ptr fz_context; annot: ptr pdf_annot; i: cint): fz_point {.
    cdecl, importc: "pdf_annot_vertex".}
proc pdf_set_annot_vertices*(ctx: ptr fz_context; annot: ptr pdf_annot; n: cint;
                             v: ptr fz_point): void {.cdecl,
    importc: "pdf_set_annot_vertices".}
proc pdf_clear_annot_vertices*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_clear_annot_vertices".}
proc pdf_add_annot_vertex*(ctx: ptr fz_context; annot: ptr pdf_annot;
                           p: fz_point): void {.cdecl,
    importc: "pdf_add_annot_vertex".}
proc pdf_set_annot_vertex*(ctx: ptr fz_context; annot: ptr pdf_annot; i: cint;
                           p: fz_point): void {.cdecl,
    importc: "pdf_set_annot_vertex".}
proc pdf_annot_contents*(ctx: ptr fz_context; annot: ptr pdf_annot): cstring {.
    cdecl, importc: "pdf_annot_contents".}
proc pdf_set_annot_contents*(ctx: ptr fz_context; annot: ptr pdf_annot;
                             text: cstring): void {.cdecl,
    importc: "pdf_set_annot_contents".}
proc pdf_annot_author*(ctx: ptr fz_context; annot: ptr pdf_annot): cstring {.
    cdecl, importc: "pdf_annot_author".}
proc pdf_set_annot_author*(ctx: ptr fz_context; annot: ptr pdf_annot;
                           author: cstring): void {.cdecl,
    importc: "pdf_set_annot_author".}
proc pdf_annot_modification_date*(ctx: ptr fz_context; annot: ptr pdf_annot): int64 {.
    cdecl, importc: "pdf_annot_modification_date".}
proc pdf_set_annot_modification_date*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                      time: int64): void {.cdecl,
    importc: "pdf_set_annot_modification_date".}
proc pdf_annot_creation_date*(ctx: ptr fz_context; annot: ptr pdf_annot): int64 {.
    cdecl, importc: "pdf_annot_creation_date".}
proc pdf_set_annot_creation_date*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                  time: int64): void {.cdecl,
    importc: "pdf_set_annot_creation_date".}
proc pdf_annot_has_intent*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_intent".}
proc pdf_annot_intent*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_intent {.
    cdecl, importc: "pdf_annot_intent".}
proc pdf_set_annot_intent*(ctx: ptr fz_context; annot: ptr pdf_annot;
                           it: enum_pdf_intent): void {.cdecl,
    importc: "pdf_set_annot_intent".}
proc pdf_annot_has_callout*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_callout".}
proc pdf_annot_callout_style*(ctx: ptr fz_context; annot: ptr pdf_annot): enum_pdf_line_ending {.
    cdecl, importc: "pdf_annot_callout_style".}
proc pdf_set_annot_callout_style*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                  style: enum_pdf_line_ending): void {.cdecl,
    importc: "pdf_set_annot_callout_style".}
proc pdf_annot_callout_line*(ctx: ptr fz_context; annot: ptr pdf_annot;
                             callout: array[3'i64, fz_point]; n: ptr cint): void {.
    cdecl, importc: "pdf_annot_callout_line".}
proc pdf_set_annot_callout_line*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                 callout: array[3'i64, fz_point]; n: cint): void {.
    cdecl, importc: "pdf_set_annot_callout_line".}
proc pdf_annot_callout_point*(ctx: ptr fz_context; annot: ptr pdf_annot): fz_point {.
    cdecl, importc: "pdf_annot_callout_point".}
proc pdf_set_annot_callout_point*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                  p: fz_point): void {.cdecl,
    importc: "pdf_set_annot_callout_point".}
proc pdf_parse_default_appearance_unmapped*(ctx: ptr fz_context; da: cstring;
    font_name: cstring; font_name_len: cint; size: ptr cfloat; n: ptr cint;
    color: array[4'i64, cfloat]): void {.cdecl,
    importc: "pdf_parse_default_appearance_unmapped".}
proc pdf_parse_default_appearance*(ctx: ptr fz_context; da: cstring;
                                   font: ptr cstring; size: ptr cfloat;
                                   n: ptr cint; color: array[4'i64, cfloat]): void {.
    cdecl, importc: "pdf_parse_default_appearance".}
proc pdf_print_default_appearance*(ctx: ptr fz_context; buf: cstring;
                                   nbuf: cint; font: cstring; size: cfloat;
                                   n: cint; color: ptr cfloat): void {.cdecl,
    importc: "pdf_print_default_appearance".}
proc pdf_annot_default_appearance_unmapped*(ctx: ptr fz_context;
    annot: ptr pdf_annot; font_name: cstring; font_name_len: cint;
    size: ptr cfloat; n: ptr cint; color: array[4'i64, cfloat]): void {.cdecl,
    importc: "pdf_annot_default_appearance_unmapped".}
proc pdf_annot_default_appearance*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                   font: ptr cstring; size: ptr cfloat;
                                   n: ptr cint; color: array[4'i64, cfloat]): void {.
    cdecl, importc: "pdf_annot_default_appearance".}
proc pdf_set_annot_default_appearance*(ctx: ptr fz_context;
                                       annot: ptr pdf_annot; font: cstring;
                                       size: cfloat; n: cint; color: ptr cfloat): void {.
    cdecl, importc: "pdf_set_annot_default_appearance".}
proc pdf_annot_request_synthesis*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_request_synthesis".}
proc pdf_annot_request_resynthesis*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_request_resynthesis".}
proc pdf_annot_needs_resynthesis*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_needs_resynthesis".}
proc pdf_set_annot_resynthesised*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_set_annot_resynthesised".}
proc pdf_dirty_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.cdecl,
    importc: "pdf_dirty_annot".}
proc pdf_annot_field_flags*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_field_flags".}
proc pdf_annot_field_value*(ctx: ptr fz_context; annot: ptr pdf_annot): cstring {.
    cdecl, importc: "pdf_annot_field_value".}
proc pdf_annot_field_label*(ctx: ptr fz_context; widget: ptr pdf_annot): cstring {.
    cdecl, importc: "pdf_annot_field_label".}
proc pdf_set_annot_field_value*(ctx: ptr fz_context; doc: ptr pdf_document;
                                widget: ptr pdf_annot; text: cstring;
                                ignore_trigger_events: cint): cint {.cdecl,
    importc: "pdf_set_annot_field_value".}
proc pdf_layout_fit_text*(ctx: ptr fz_context; font: ptr fz_font;
                          lang: fz_text_language; str: cstring; bounds: fz_rect): ptr fz_text {.
    cdecl, importc: "pdf_layout_fit_text".}
proc pdf_annot_push_local_xref*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_push_local_xref".}
proc pdf_annot_pop_local_xref*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_pop_local_xref".}
proc pdf_annot_ensure_local_xref*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_ensure_local_xref".}
proc pdf_annot_pop_and_discard_local_xref*(ctx: ptr fz_context;
    annot: ptr pdf_annot): void {.cdecl, importc: "pdf_annot_pop_and_discard_local_xref".}
proc pdf_update_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.cdecl,
    importc: "pdf_update_annot".}
proc pdf_update_page*(ctx: ptr fz_context; page: ptr pdf_page): cint {.cdecl,
    importc: "pdf_update_page".}
proc pdf_set_widget_editing_state*(ctx: ptr fz_context; widget: ptr pdf_annot;
                                   editing: cint): void {.cdecl,
    importc: "pdf_set_widget_editing_state".}
proc pdf_get_widget_editing_state*(ctx: ptr fz_context; widget: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_get_widget_editing_state".}
proc pdf_toggle_widget*(ctx: ptr fz_context; widget: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_toggle_widget".}
proc pdf_new_display_list_from_annot*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr fz_display_list {.
    cdecl, importc: "pdf_new_display_list_from_annot".}
proc pdf_new_pixmap_from_annot*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                ctm: fz_matrix; cs: ptr fz_colorspace;
                                seps: ptr fz_separations; alpha: cint): ptr fz_pixmap {.
    cdecl, importc: "pdf_new_pixmap_from_annot".}
proc pdf_new_stext_page_from_annot*(ctx: ptr fz_context; annot: ptr pdf_annot;
                                    options: ptr fz_stext_options): ptr fz_stext_page {.
    cdecl, importc: "pdf_new_stext_page_from_annot".}
proc pdf_layout_text_widget*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr fz_layout_block {.
    cdecl, importc: "pdf_layout_text_widget".}
proc pdf_is_filespec*(ctx: ptr fz_context; fs: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_filespec".}
proc pdf_is_embedded_file*(ctx: ptr fz_context; fs: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_is_embedded_file".}
proc pdf_add_embedded_file*(ctx: ptr fz_context; doc: ptr pdf_document;
                            filename: cstring; mimetype: cstring;
                            contents: ptr fz_buffer; created: int64;
                            modifed: int64; add_checksum: cint): ptr pdf_obj {.
    cdecl, importc: "pdf_add_embedded_file".}
proc pdf_get_filespec_params*(ctx: ptr fz_context; fs: ptr pdf_obj;
                              out_arg: ptr pdf_filespec_params): void {.cdecl,
    importc: "pdf_get_filespec_params".}
proc pdf_get_embedded_file_params*(ctx: ptr fz_context; fs: ptr pdf_obj;
                                   out_arg: ptr pdf_embedded_file_params): void {.
    cdecl, importc: "pdf_get_embedded_file_params".}
proc pdf_load_embedded_file_contents*(ctx: ptr fz_context; fs: ptr pdf_obj): ptr fz_buffer {.
    cdecl, importc: "pdf_load_embedded_file_contents".}
proc pdf_verify_embedded_file_checksum*(ctx: ptr fz_context; fs: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_verify_embedded_file_checksum".}
proc pdf_lookup_dest*(ctx: ptr fz_context; doc: ptr pdf_document;
                      needle: ptr pdf_obj): ptr pdf_obj {.cdecl,
    importc: "pdf_lookup_dest".}
proc pdf_load_link_annots*(ctx: ptr fz_context; a1: ptr pdf_document;
                           a2: ptr pdf_page; annots: ptr pdf_obj; pagenum: cint;
                           page_ctm: fz_matrix): ptr fz_link {.cdecl,
    importc: "pdf_load_link_annots".}
proc pdf_annot_MK_BG*(ctx: ptr fz_context; annot: ptr pdf_annot; n: ptr cint;
                      color: array[4'i64, cfloat]): void {.cdecl,
    importc: "pdf_annot_MK_BG".}
proc pdf_annot_MK_BC*(ctx: ptr fz_context; annot: ptr pdf_annot; n: ptr cint;
                      color: array[4'i64, cfloat]): void {.cdecl,
    importc: "pdf_annot_MK_BC".}
proc pdf_annot_MK_BG_rgb*(ctx: ptr fz_context; annot: ptr pdf_annot;
                          rgb: array[3'i64, cfloat]): cint {.cdecl,
    importc: "pdf_annot_MK_BG_rgb".}
proc pdf_annot_MK_BC_rgb*(ctx: ptr fz_context; annot: ptr pdf_annot;
                          rgb: array[3'i64, cfloat]): cint {.cdecl,
    importc: "pdf_annot_MK_BC_rgb".}
proc pdf_annot_ap*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr pdf_obj {.
    cdecl, importc: "pdf_annot_ap".}
proc pdf_annot_active*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.cdecl,
    importc: "pdf_annot_active".}
proc pdf_set_annot_active*(ctx: ptr fz_context; annot: ptr pdf_annot;
                           active: cint): void {.cdecl,
    importc: "pdf_set_annot_active".}
proc pdf_annot_hot*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.cdecl,
    importc: "pdf_annot_hot".}
proc pdf_set_annot_hot*(ctx: ptr fz_context; annot: ptr pdf_annot; hot: cint): void {.
    cdecl, importc: "pdf_set_annot_hot".}
proc pdf_set_annot_appearance*(ctx: ptr fz_context; annot: ptr pdf_annot;
                               appearance: cstring; state: cstring;
                               ctm: fz_matrix; bbox: fz_rect; res: ptr pdf_obj;
                               contents: ptr fz_buffer): void {.cdecl,
    importc: "pdf_set_annot_appearance".}
proc pdf_set_annot_appearance_from_display_list*(ctx: ptr fz_context;
    annot: ptr pdf_annot; appearance: cstring; state: cstring; ctm: fz_matrix;
    list: ptr fz_display_list): void {.cdecl, importc: "pdf_set_annot_appearance_from_display_list".}
proc pdf_annot_has_filespec*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_has_filespec".}
proc pdf_annot_filespec*(ctx: ptr fz_context; annot: ptr pdf_annot): ptr pdf_obj {.
    cdecl, importc: "pdf_annot_filespec".}
proc pdf_set_annot_filespec*(ctx: ptr fz_context; annot: ptr pdf_annot;
                             obj: ptr pdf_obj): void {.cdecl,
    importc: "pdf_set_annot_filespec".}
proc pdf_annot_hidden_for_editing*(ctx: ptr fz_context; annot: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_annot_hidden_for_editing".}
proc pdf_set_annot_hidden_for_editing*(ctx: ptr fz_context;
                                       annot: ptr pdf_annot; hidden: cint): void {.
    cdecl, importc: "pdf_set_annot_hidden_for_editing".}
proc pdf_apply_redaction*(ctx: ptr fz_context; annot: ptr pdf_annot;
                          opts: ptr pdf_redact_options): cint {.cdecl,
    importc: "pdf_apply_redaction".}
proc pdf_keep_widget*(ctx: ptr fz_context; widget: ptr pdf_annot): ptr pdf_annot {.
    cdecl, importc: "pdf_keep_widget".}
proc pdf_drop_widget*(ctx: ptr fz_context; widget: ptr pdf_annot): void {.cdecl,
    importc: "pdf_drop_widget".}
proc pdf_first_widget*(ctx: ptr fz_context; page: ptr pdf_page): ptr pdf_annot {.
    cdecl, importc: "pdf_first_widget".}
proc pdf_next_widget*(ctx: ptr fz_context; previous: ptr pdf_annot): ptr pdf_annot {.
    cdecl, importc: "pdf_next_widget".}
proc pdf_update_widget*(ctx: ptr fz_context; widget: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_update_widget".}
proc pdf_create_signature_widget*(ctx: ptr fz_context; page: ptr pdf_page;
                                  name: cstring): ptr pdf_annot {.cdecl,
    importc: "pdf_create_signature_widget".}
proc pdf_widget_type*(ctx: ptr fz_context; widget: ptr pdf_annot): enum_pdf_widget_type {.
    cdecl, importc: "pdf_widget_type".}
proc pdf_bound_widget*(ctx: ptr fz_context; widget: ptr pdf_annot): fz_rect {.
    cdecl, importc: "pdf_bound_widget".}
proc pdf_text_widget_max_len*(ctx: ptr fz_context; tw: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_text_widget_max_len".}
proc pdf_text_widget_format*(ctx: ptr fz_context; tw: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_text_widget_format".}
proc pdf_choice_widget_options*(ctx: ptr fz_context; tw: ptr pdf_annot;
                                exportval: cint;
                                opts: ptr UncheckedArray[cstring]): cint {.
    cdecl, importc: "pdf_choice_widget_options".}
proc pdf_choice_widget_is_multiselect*(ctx: ptr fz_context; tw: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_choice_widget_is_multiselect".}
proc pdf_choice_widget_value*(ctx: ptr fz_context; tw: ptr pdf_annot;
                              opts: ptr UncheckedArray[cstring]): cint {.cdecl,
    importc: "pdf_choice_widget_value".}
proc pdf_choice_widget_set_value*(ctx: ptr fz_context; tw: ptr pdf_annot;
                                  n: cint; opts: ptr UncheckedArray[cstring]): void {.
    cdecl, importc: "pdf_choice_widget_set_value".}
proc pdf_choice_field_option_count*(ctx: ptr fz_context; field: ptr pdf_obj): cint {.
    cdecl, importc: "pdf_choice_field_option_count".}
proc pdf_choice_field_option*(ctx: ptr fz_context; field: ptr pdf_obj;
                              exportval: cint; i: cint): cstring {.cdecl,
    importc: "pdf_choice_field_option".}
proc pdf_widget_is_signed*(ctx: ptr fz_context; widget: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_widget_is_signed".}
proc pdf_widget_is_readonly*(ctx: ptr fz_context; widget: ptr pdf_annot): cint {.
    cdecl, importc: "pdf_widget_is_readonly".}
proc pdf_calculate_form*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_calculate_form".}
proc pdf_reset_form*(ctx: ptr fz_context; doc: ptr pdf_document;
                     fields: ptr pdf_obj; exclude: cint): void {.cdecl,
    importc: "pdf_reset_form".}
proc pdf_field_type*(ctx: ptr fz_context; field: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_field_type".}
proc pdf_field_type_string*(ctx: ptr fz_context; field: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_field_type_string".}
proc pdf_field_flags*(ctx: ptr fz_context; field: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_field_flags".}
proc pdf_load_field_name*(ctx: ptr fz_context; field: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_load_field_name".}
proc pdf_field_value*(ctx: ptr fz_context; field: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_field_value".}
proc pdf_create_field_name*(ctx: ptr fz_context; doc: ptr pdf_document;
                            prefix: cstring; buf: cstring; len: csize_t): void {.
    cdecl, importc: "pdf_create_field_name".}
proc pdf_field_border_style*(ctx: ptr fz_context; field: ptr pdf_obj): cstring {.
    cdecl, importc: "pdf_field_border_style".}
proc pdf_field_set_border_style*(ctx: ptr fz_context; field: ptr pdf_obj;
                                 text: cstring): void {.cdecl,
    importc: "pdf_field_set_border_style".}
proc pdf_field_set_button_caption*(ctx: ptr fz_context; field: ptr pdf_obj;
                                   text: cstring): void {.cdecl,
    importc: "pdf_field_set_button_caption".}
proc pdf_field_set_fill_color*(ctx: ptr fz_context; field: ptr pdf_obj;
                               col: ptr pdf_obj): void {.cdecl,
    importc: "pdf_field_set_fill_color".}
proc pdf_field_set_text_color*(ctx: ptr fz_context; field: ptr pdf_obj;
                               col: ptr pdf_obj): void {.cdecl,
    importc: "pdf_field_set_text_color".}
proc pdf_field_display*(ctx: ptr fz_context; field: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_field_display".}
proc pdf_field_set_display*(ctx: ptr fz_context; field: ptr pdf_obj; d: cint): void {.
    cdecl, importc: "pdf_field_set_display".}
proc pdf_field_label*(ctx: ptr fz_context; field: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_field_label".}
proc pdf_button_field_on_state*(ctx: ptr fz_context; field: ptr pdf_obj): ptr pdf_obj {.
    cdecl, importc: "pdf_button_field_on_state".}
proc pdf_set_field_value*(ctx: ptr fz_context; doc: ptr pdf_document;
                          field: ptr pdf_obj; text: cstring;
                          ignore_trigger_events: cint): cint {.cdecl,
    importc: "pdf_set_field_value".}
proc pdf_set_text_field_value*(ctx: ptr fz_context; widget: ptr pdf_annot;
                               value: cstring): cint {.cdecl,
    importc: "pdf_set_text_field_value".}
proc pdf_set_choice_field_value*(ctx: ptr fz_context; widget: ptr pdf_annot;
                                 value: cstring): cint {.cdecl,
    importc: "pdf_set_choice_field_value".}
proc pdf_edit_text_field_value*(ctx: ptr fz_context; widget: ptr pdf_annot;
                                value: cstring; change: cstring;
                                selStart: ptr cint; selEnd: ptr cint;
                                newvalue: ptr cstring): cint {.cdecl,
    importc: "pdf_edit_text_field_value".}
proc pdf_signature_is_signed*(ctx: ptr fz_context; doc: ptr pdf_document;
                              field: ptr pdf_obj): cint {.cdecl,
    importc: "pdf_signature_is_signed".}
proc pdf_signature_set_value*(ctx: ptr fz_context; doc: ptr pdf_document;
                              field: ptr pdf_obj; signer: ptr pdf_pkcs7_signer;
                              stime: int64): void {.cdecl,
    importc: "pdf_signature_set_value".}
proc pdf_count_signatures*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_count_signatures".}
proc pdf_signature_error_description*(err: pdf_signature_error): cstring {.
    cdecl, importc: "pdf_signature_error_description".}
proc pdf_signature_get_signatory*(ctx: ptr fz_context;
                                  verifier: ptr pdf_pkcs7_verifier;
                                  doc: ptr pdf_document; signature: ptr pdf_obj): ptr pdf_pkcs7_distinguished_name {.
    cdecl, importc: "pdf_signature_get_signatory".}
proc pdf_signature_get_widget_signatory*(ctx: ptr fz_context;
    verifier: ptr pdf_pkcs7_verifier; widget: ptr pdf_annot): ptr pdf_pkcs7_distinguished_name {.
    cdecl, importc: "pdf_signature_get_widget_signatory".}
proc pdf_signature_drop_distinguished_name*(ctx: ptr fz_context;
    name: ptr pdf_pkcs7_distinguished_name): void {.cdecl,
    importc: "pdf_signature_drop_distinguished_name".}
proc pdf_signature_format_distinguished_name*(ctx: ptr fz_context;
    name: ptr pdf_pkcs7_distinguished_name): cstring {.cdecl,
    importc: "pdf_signature_format_distinguished_name".}
proc pdf_signature_info*(ctx: ptr fz_context; name: cstring;
                         dn: ptr pdf_pkcs7_distinguished_name; reason: cstring;
                         location: cstring; date: int64; include_labels: cint): cstring {.
    cdecl, importc: "pdf_signature_info".}
proc pdf_signature_appearance_signed*(ctx: ptr fz_context; rect: fz_rect;
                                      lang: fz_text_language; img: ptr fz_image;
                                      left_text: cstring; right_text: cstring;
                                      include_logo: cint): ptr fz_display_list {.
    cdecl, importc: "pdf_signature_appearance_signed".}
proc pdf_signature_appearance_unsigned*(ctx: ptr fz_context; rect: fz_rect;
                                        lang: fz_text_language): ptr fz_display_list {.
    cdecl, importc: "pdf_signature_appearance_unsigned".}
proc pdf_check_digest*(ctx: ptr fz_context; verifier: ptr pdf_pkcs7_verifier;
                       doc: ptr pdf_document; signature: ptr pdf_obj): pdf_signature_error {.
    cdecl, importc: "pdf_check_digest".}
proc pdf_check_certificate*(ctx: ptr fz_context;
                            verifier: ptr pdf_pkcs7_verifier;
                            doc: ptr pdf_document; signature: ptr pdf_obj): pdf_signature_error {.
    cdecl, importc: "pdf_check_certificate".}
proc pdf_check_widget_digest*(ctx: ptr fz_context;
                              verifier: ptr pdf_pkcs7_verifier;
                              widget: ptr pdf_annot): pdf_signature_error {.
    cdecl, importc: "pdf_check_widget_digest".}
proc pdf_check_widget_certificate*(ctx: ptr fz_context;
                                   verifier: ptr pdf_pkcs7_verifier;
                                   widget: ptr pdf_annot): pdf_signature_error {.
    cdecl, importc: "pdf_check_widget_certificate".}
proc pdf_clear_signature*(ctx: ptr fz_context; widget: ptr pdf_annot): void {.
    cdecl, importc: "pdf_clear_signature".}
proc pdf_sign_signature_with_appearance*(ctx: ptr fz_context;
    widget: ptr pdf_annot; signer: ptr pdf_pkcs7_signer; date: int64;
    disp_list: ptr fz_display_list): void {.cdecl,
    importc: "pdf_sign_signature_with_appearance".}
proc pdf_sign_signature*(ctx: ptr fz_context; widget: ptr pdf_annot;
                         signer: ptr pdf_pkcs7_signer; appearance_flags: cint;
                         graphic: ptr fz_image; reason: cstring;
                         location: cstring): void {.cdecl,
    importc: "pdf_sign_signature".}
proc pdf_preview_signature_as_display_list*(ctx: ptr fz_context; w: cfloat;
    h: cfloat; lang: fz_text_language; signer: ptr pdf_pkcs7_signer;
    appearance_flags: cint; graphic: ptr fz_image; reason: cstring;
    location: cstring): ptr fz_display_list {.cdecl,
    importc: "pdf_preview_signature_as_display_list".}
proc pdf_preview_signature_as_pixmap*(ctx: ptr fz_context; w: cint; h: cint;
                                      lang: fz_text_language;
                                      signer: ptr pdf_pkcs7_signer;
                                      appearance_flags: cint;
                                      graphic: ptr fz_image; reason: cstring;
                                      location: cstring): ptr fz_pixmap {.cdecl,
    importc: "pdf_preview_signature_as_pixmap".}
proc pdf_drop_signer*(ctx: ptr fz_context; signer: ptr pdf_pkcs7_signer): void {.
    cdecl, importc: "pdf_drop_signer".}
proc pdf_drop_verifier*(ctx: ptr fz_context; verifier: ptr pdf_pkcs7_verifier): void {.
    cdecl, importc: "pdf_drop_verifier".}
proc pdf_field_reset*(ctx: ptr fz_context; doc: ptr pdf_document;
                      field: ptr pdf_obj): void {.cdecl,
    importc: "pdf_field_reset".}
proc pdf_lookup_field*(ctx: ptr fz_context; form: ptr pdf_obj; name: cstring): ptr pdf_obj {.
    cdecl, importc: "pdf_lookup_field".}
proc pdf_field_event_keystroke*(ctx: ptr fz_context; doc: ptr pdf_document;
                                field: ptr pdf_obj; evt: ptr pdf_keystroke_event): cint {.
    cdecl, importc: "pdf_field_event_keystroke".}
proc pdf_field_event_validate*(ctx: ptr fz_context; doc: ptr pdf_document;
                               field: ptr pdf_obj; value: cstring;
                               newvalue: ptr cstring): cint {.cdecl,
    importc: "pdf_field_event_validate".}
proc pdf_field_event_calculate*(ctx: ptr fz_context; doc: ptr pdf_document;
                                field: ptr pdf_obj): void {.cdecl,
    importc: "pdf_field_event_calculate".}
proc pdf_field_event_format*(ctx: ptr fz_context; doc: ptr pdf_document;
                             field: ptr pdf_obj): cstring {.cdecl,
    importc: "pdf_field_event_format".}
proc pdf_annot_field_event_keystroke*(ctx: ptr fz_context;
                                      doc: ptr pdf_document;
                                      annot: ptr pdf_annot;
                                      evt: ptr pdf_keystroke_event): cint {.
    cdecl, importc: "pdf_annot_field_event_keystroke".}
proc pdf_document_event_will_close*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_document_event_will_close".}
proc pdf_document_event_will_save*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_document_event_will_save".}
proc pdf_document_event_did_save*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_document_event_did_save".}
proc pdf_document_event_will_print*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_document_event_will_print".}
proc pdf_document_event_did_print*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_document_event_did_print".}
proc pdf_page_event_open*(ctx: ptr fz_context; page: ptr pdf_page): void {.
    cdecl, importc: "pdf_page_event_open".}
proc pdf_page_event_close*(ctx: ptr fz_context; page: ptr pdf_page): void {.
    cdecl, importc: "pdf_page_event_close".}
proc pdf_annot_event_enter*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_enter".}
proc pdf_annot_event_exit*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_exit".}
proc pdf_annot_event_down*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_down".}
proc pdf_annot_event_up*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_up".}
proc pdf_annot_event_focus*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_focus".}
proc pdf_annot_event_blur*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_blur".}
proc pdf_annot_event_page_open*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_page_open".}
proc pdf_annot_event_page_close*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_page_close".}
proc pdf_annot_event_page_visible*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_page_visible".}
proc pdf_annot_event_page_invisible*(ctx: ptr fz_context; annot: ptr pdf_annot): void {.
    cdecl, importc: "pdf_annot_event_page_invisible".}
proc pdf_bake_document*(ctx: ptr fz_context; doc: ptr pdf_document;
                        bake_annots: cint; bake_widgets: cint): void {.cdecl,
    importc: "pdf_bake_document".}
proc pdf_set_doc_event_callback*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 event_cb: pdf_doc_event_cb; free_event_data_cb: pdf_free_doc_event_data_cb;
                                 data: pointer): void {.cdecl,
    importc: "pdf_set_doc_event_callback".}
proc pdf_get_doc_event_callback_data*(ctx: ptr fz_context; doc: ptr pdf_document): pointer {.
    cdecl, importc: "pdf_get_doc_event_callback_data".}
proc pdf_access_alert_event*(ctx: ptr fz_context; evt: ptr pdf_doc_event): ptr pdf_alert_event {.
    cdecl, importc: "pdf_access_alert_event".}
proc pdf_access_exec_menu_item_event*(ctx: ptr fz_context;
                                      evt: ptr pdf_doc_event): cstring {.cdecl,
    importc: "pdf_access_exec_menu_item_event".}
proc pdf_access_launch_url_event*(ctx: ptr fz_context; evt: ptr pdf_doc_event): ptr pdf_launch_url_event {.
    cdecl, importc: "pdf_access_launch_url_event".}
proc pdf_access_mail_doc_event*(ctx: ptr fz_context; evt: ptr pdf_doc_event): ptr pdf_mail_doc_event {.
    cdecl, importc: "pdf_access_mail_doc_event".}
proc pdf_event_issue_alert*(ctx: ptr fz_context; doc: ptr pdf_document;
                            evt: ptr pdf_alert_event): void {.cdecl,
    importc: "pdf_event_issue_alert".}
proc pdf_event_issue_print*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_event_issue_print".}
proc pdf_event_issue_exec_menu_item*(ctx: ptr fz_context; doc: ptr pdf_document;
                                     item: cstring): void {.cdecl,
    importc: "pdf_event_issue_exec_menu_item".}
proc pdf_event_issue_launch_url*(ctx: ptr fz_context; doc: ptr pdf_document;
                                 url: cstring; new_frame: cint): void {.cdecl,
    importc: "pdf_event_issue_launch_url".}
proc pdf_event_issue_mail_doc*(ctx: ptr fz_context; doc: ptr pdf_document;
                               evt: ptr pdf_mail_doc_event): void {.cdecl,
    importc: "pdf_event_issue_mail_doc".}
proc pdf_enable_js*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_enable_js".}
proc pdf_disable_js*(ctx: ptr fz_context; doc: ptr pdf_document): void {.cdecl,
    importc: "pdf_disable_js".}
proc pdf_js_supported*(ctx: ptr fz_context; doc: ptr pdf_document): cint {.
    cdecl, importc: "pdf_js_supported".}
proc pdf_drop_js*(ctx: ptr fz_context; js: ptr pdf_js): void {.cdecl,
    importc: "pdf_drop_js".}
proc pdf_js_event_init*(js: ptr pdf_js; target: ptr pdf_obj; value: cstring;
                        willCommit: cint): void {.cdecl,
    importc: "pdf_js_event_init".}
proc pdf_js_event_result*(js: ptr pdf_js): cint {.cdecl,
    importc: "pdf_js_event_result".}
proc pdf_js_event_result_validate*(js: ptr pdf_js; newvalue: ptr cstring): cint {.
    cdecl, importc: "pdf_js_event_result_validate".}
proc pdf_js_event_value*(js: ptr pdf_js): cstring {.cdecl,
    importc: "pdf_js_event_value".}
proc pdf_js_event_init_keystroke*(js: ptr pdf_js; target: ptr pdf_obj;
                                  evt: ptr pdf_keystroke_event): void {.cdecl,
    importc: "pdf_js_event_init_keystroke".}
proc pdf_js_event_result_keystroke*(js: ptr pdf_js; evt: ptr pdf_keystroke_event): cint {.
    cdecl, importc: "pdf_js_event_result_keystroke".}
proc pdf_js_execute*(js: ptr pdf_js; name: cstring; code: cstring;
                     result: ptr cstring): void {.cdecl,
    importc: "pdf_js_execute".}
proc pdf_rewrite_images*(ctx: ptr fz_context; doc: ptr pdf_document;
                         opts: ptr pdf_image_rewriter_options): void {.cdecl,
    importc: "pdf_rewrite_images".}
proc pdf_clean_file*(ctx: ptr fz_context; infile: cstring; outfile: cstring;
                     password: cstring; opts: ptr pdf_clean_options;
                     retainlen: cint; retainlist: ptr UncheckedArray[cstring]): void {.
    cdecl, importc: "pdf_clean_file".}
proc pdf_rearrange_pages*(ctx: ptr fz_context; doc: ptr pdf_document;
                          count: cint; pages: ptr cint;
                          structure: pdf_clean_options_structure): void {.cdecl,
    importc: "pdf_rearrange_pages".}
proc pdf_recolor_page*(ctx: ptr fz_context; doc: ptr pdf_document;
                       pagenum: cint; opts: ptr pdf_recolor_options): void {.
    cdecl, importc: "pdf_recolor_page".}
proc pdf_remove_output_intents*(ctx: ptr fz_context; doc: ptr pdf_document): void {.
    cdecl, importc: "pdf_remove_output_intents".}
proc pdf_zugferd_profile*(ctx: ptr fz_context; doc: ptr pdf_document;
                          version: ptr cfloat): enum_pdf_zugferd_profile {.
    cdecl, importc: "pdf_zugferd_profile".}
proc pdf_zugferd_xml*(ctx: ptr fz_context; doc: ptr pdf_document): ptr fz_buffer {.
    cdecl, importc: "pdf_zugferd_xml".}
proc pdf_zugferd_profile_to_string*(ctx: ptr fz_context;
                                    profile: enum_pdf_zugferd_profile): cstring {.
    cdecl, importc: "pdf_zugferd_profile_to_string".}