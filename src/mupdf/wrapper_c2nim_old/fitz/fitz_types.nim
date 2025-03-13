const                         ##  Same order as needed by lcms
  FZ_RI_PERCEPTUAL* = 0
  FZ_RI_RELATIVE_COLORIMETRIC* = 1
  FZ_RI_SATURATION* = 2
  FZ_RI_ABSOLUTE_COLORIMETRIC* = 3

const
  FZ_REPLACEMENT_CHARACTER* = 0xFFFD

const
  FZ_TRANSITION_NONE* = 0       ##  aka 'R' or 'REPLACE'
  FZ_TRANSITION_SPLIT* = 1
  FZ_TRANSITION_BLINDS* = 2
  FZ_TRANSITION_BOX* = 3
  FZ_TRANSITION_WIPE* = 4
  FZ_TRANSITION_DISSOLVE* = 5
  FZ_TRANSITION_GLITTER* = 6
  FZ_TRANSITION_FLY* = 7
  FZ_TRANSITION_PUSH* = 8
  FZ_TRANSITION_COVER* = 9
  FZ_TRANSITION_UNCOVER* = 10
  FZ_TRANSITION_FADE* = 11

const
  FZ_MAX_COLORS* = 32



const
  FZ_COLORSPACE_IS_DEVICE* = 1
  FZ_COLORSPACE_IS_ICC* = 2
  FZ_COLORSPACE_HAS_CMYK* = 4
  FZ_COLORSPACE_HAS_SPOTS* = 8
  FZ_COLORSPACE_HAS_CMYK_AND_SPOTS* = 4 or 8

when not defined(FZ_VERSION):
  const
    FZ_VERSION* = "1.21.1"
    FZ_VERSION_MAJOR* = 1
    FZ_VERSION_MINOR* = 21
    FZ_VERSION_PATCH* = 1

type
  FzZipWriter*   {.importc, header: "archive.h", incompleteStruct.} = object
  FzSeparations* {.importc, header: "archive.h", incompleteStruct.} = object

  FzContext*   {.importc:"fz_context", header: "context.h", bycopy.} = object
    # user*: pointer
    # alloc*: fz_alloc_context
    # locks*: fz_locks_context
    # error*: fz_error_context
    # warn*: fz_warn_context
    # aa*: fz_aa_context         ## ::
    #                  ##    unshared contexts
    # seed48*: array[7, uint16]
    # icc_enabled*: cint
    # handler*: ptr fz_document_handler_context ## ::
    #                                        ##    TODO: should these be unshared?
    # style*: ptr fz_style_context
    # tuning*: ptr fz_tuning_context
    # font*: ptr fz_font_context  ## ::
    #                         ##    shared contexts
    # colorspace*: ptr fz_colorspace_context
    # store*: ptr fz_store
    # glyph_cache*: ptr fz_glyph_cache

  FzArchive* {.importc: "fz_archive", header: "archive.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    file* {.importc: "file".}: ptr FzStream
    format* {.importc: "format".}: cstring
    dropArchive* {.importc: "drop_archive".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive) {.cdecl.}
    countEntries* {.importc: "count_entries".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive): cint {.cdecl.}
    listEntry* {.importc: "list_entry".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive; idx: cint): cstring {.cdecl.}
    hasEntry* {.importc: "has_entry".}: proc (ctx: ptr FzContext; arch: ptr FzArchive;
        name: cstring): cint {.cdecl.}
    readEntry* {.importc: "read_entry".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive; name: cstring): ptr FzBuffer {.cdecl.}
    openEntry* {.importc: "open_entry".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive; name: cstring): ptr FzStream {.cdecl.}

  FzWriteHeaderFn* = proc (ctx: ptr FzContext; writer: ptr FzBandWriter;
                        cs: ptr FzColorspace) {.cdecl.}

  FzWriteBandFn* = proc (ctx: ptr FzContext; writer: ptr FzBandWriter; stride: cint;
                      bandStart: cint; bandHeight: cint; samples: ptr uint8) {.cdecl.}

  FzWriteTrailerFn* = proc (ctx: ptr FzContext; writer: ptr FzBandWriter) {.cdecl.}

  FzCloseBandWriterFn* = proc (ctx: ptr FzContext; writer: ptr FzBandWriter) {.cdecl.}

  FzDropBandWriterFn* = proc (ctx: ptr FzContext; writer: ptr FzBandWriter) {.cdecl.}

  FzBandWriter* {.importc: "fz_band_writer", header: "band-writer.h", bycopy.} = object
    drop* {.importc: "drop".}: ptr FzDropBandWriterFn
    close* {.importc: "close".}: ptr FzCloseBandWriterFn
    header* {.importc: "header".}: ptr FzWriteHeaderFn
    band* {.importc: "band".}: ptr FzWriteBandFn
    trailer* {.importc: "trailer".}: ptr FzWriteTrailerFn
    `out`* {.importc: "out".}: ptr FzOutput
    w* {.importc: "w".}: cint
    h* {.importc: "h".}: cint
    n* {.importc: "n".}: cint
    s* {.importc: "s".}: cint
    alpha* {.importc: "alpha".}: cint
    xres* {.importc: "xres".}: cint
    yres* {.importc: "yres".}: cint
    pagenum* {.importc: "pagenum".}: cint
    line* {.importc: "line".}: cint
    seps* {.importc: "seps".}: ptr FzSeparations

  FzBidiDirection* {.size: sizeof(cint).} = enum
    FZ_BIDI_LTR = 0, FZ_BIDI_RTL = 1, FZ_BIDI_NEUTRAL = 2

  FzBidiFlags* {.size: sizeof(cint).} = enum
    FZ_BIDI_CLASSIFY_WHITE_SPACE = 1, FZ_BIDI_REPLACE_TAB = 2

  FzBidiFragmentFn* = proc (fragment: ptr uint32; fragmentLen: csize_t;
                         bidiLevel: cint; script: cint; arg: pointer) {.cdecl.}

  FzBitmap* {.importc: "fz_bitmap", header: "bitmap.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    w* {.importc: "w".}: cint
    h* {.importc: "h".}: cint
    stride* {.importc: "stride".}: cint
    n* {.importc: "n".}: cint
    xres* {.importc: "xres".}: cint
    yres* {.importc: "yres".}: cint
    samples* {.importc: "samples".}: ptr uint8

  FzHalftone* {.importc, header: "bitmap.h", incompleteStruct.} = object

  FzBuffer* {.importc: "fz_buffer", header: "buffer.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    data* {.importc: "data".}: ptr uint8
    cap* {.importc: "cap".}: csize_t
    len* {.importc: "len".}: csize_t
    unusedBits* {.importc: "unused_bits".}: cint
    shared* {.importc: "shared".}: cint

  FzColorspace* {.importc:"fz_colorspace", header: "color.h", incompleteStruct.} = object

  FzPixmap* {.importc:"fz_pixmap", header: "pixmap.h", incompleteStruct.} = object
    storable* {.importc.}: FzStorable
    x*, y*, w*, h* {.importc.}:cint
    n* {.importc.}:cuint #unsigned char n; Number of components in total (colors + spots + alpha)
    s {.importc.}:cuint # unsigned char s;
    alpha* {.importc.}:cuint #unsigned char alpha;
    flags*  {.importc.}:cuint #unsigned char flags;
    stride* {.importc.}:cint #ptrdiff_t stride; Number of bytes per row
    seps*   {.importc.}:FzSeparations 
    xres*, yres* {.importc.}: cint #int xres, yres;
    colorspace*  {.importc.}: FzColorspace #*colorspace;
    samples*     {.importc.}: cuint #unsigned char *samples;
    # fz_pixmap *underlying;

  FzColorParams* {.importc: "fz_color_params", header: "color.h", bycopy.} = object
    ri* {.importc: "ri".}: uint8 
    bp* {.importc: "bp".}: uint8 
    op* {.importc: "op".}: uint8 
    opm* {.importc: "opm".}: uint8 

  FzColorspaceType* {.size: sizeof(cint).} = enum
    FZ_COLORSPACE_NONE, FZ_COLORSPACE_GRAY, FZ_COLORSPACE_RGB, FZ_COLORSPACE_BGR,
    FZ_COLORSPACE_CMYK, FZ_COLORSPACE_LAB, FZ_COLORSPACE_INDEXED,
    FZ_COLORSPACE_SEPARATION

  FzDefaultColorspaces* {.importc: "fz_default_colorspaces", header: "color.h",
                         bycopy.} = object
    refs* {.importc: "refs".}: cint
    gray* {.importc: "gray".}: ptr FzColorspace
    rgb* {.importc: "rgb".}: ptr FzColorspace
    cmyk* {.importc: "cmyk".}: ptr FzColorspace
    oi* {.importc: "oi".}: ptr FzColorspace

  FzDeflateLevel* {.size: sizeof(cint).} = enum
    FZ_DEFLATE_DEFAULT = -1, FZ_DEFLATE_NONE = 0, FZ_DEFLATE_BEST_SPEED = 1,
    FZ_DEFLATE_BEST = 9

  # INNER_C_STRUCT_compressed-buffer_77* {.importc: "fz_compression_params::no_name",
  #                                       header: "compressed-buffer.h", bycopy.} = object
  #   colorTransform* {.importc: "color_transform".}: cint 

  # INNER_C_UNION_compressed-buffer_77* {.importc: "fz_compression_params::no_name",
  #                                      header: "compressed-buffer.h", bycopy, union.} = object
  #   jpeg* {.importc: "jpeg".}: INNER_C_STRUCT_compressed-buffer_77
  #   jpx* {.importc: "jpx".}: INNER_C_STRUCT_compressed-buffer_77
  #   jbig2* {.importc: "jbig2".}: INNER_C_STRUCT_compressed-buffer_77
  #   fax* {.importc: "fax".}: INNER_C_STRUCT_compressed-buffer_77
  #   flate* {.importc: "flate".}: INNER_C_STRUCT_compressed-buffer_77
  #   lzw* {.importc: "lzw".}: INNER_C_STRUCT_compressed-buffer_77

  # FzCompressionParams* {.importc: "fz_compression_params",
  #                       header: "compressed-buffer.h", bycopy.} = object
  #   `type`* {.importc: "type".}: cint
  #   u* {.importc: "u".}: INNER_C_UNION_compressed-buffer_77

  # FzCompressedBuffer* {.importc: "fz_compressed_buffer",
  #                      header: "compressed-buffer.h", bycopy.} = object
  #   params* {.importc: "params".}: FzCompressionParams
  #   buffer* {.importc: "buffer".}: ptr FzBuffer

  FzColorspaceContext* {.importc, header: "context-imp.h", incompleteStruct.} = object

  FzStyleContext*  {.importc, header: "context.h", incompleteStruct.} = object

  FzTuningContext* {.importc, header: "context.h", incompleteStruct.} = object

  FzStore*         {.importc, header: "context.h", incompleteStruct.} = object

  FzGlyphCache*    {.importc, header: "context.h", incompleteStruct.} = object

  FzDocumentHandlerContext* {.importc, header: "context.h", incompleteStruct.} = object

  FzOutput*    {.importc:"fz_output", header: "output.h", incompleteStruct.} = object



  FzAllocContext* {.importc: "fz_alloc_context", header: "context.h", bycopy.} = object
    user* {.importc: "user".}: pointer
    malloc* {.importc: "malloc".}: proc (a1: pointer; a2: csize_t): pointer {.cdecl.}
    realloc* {.importc: "realloc".}: proc (a1: pointer; a2: pointer; a3: csize_t): pointer {.
        cdecl.}
    free* {.importc: "free".}: proc (a1: pointer; a2: pointer) {.cdecl.}

  FzLocksContext* {.importc: "fz_locks_context", header: "context.h", bycopy.} = object
    user* {.importc: "user".}: pointer
    lock* {.importc: "lock".}: proc (user: pointer; lock: cint) {.cdecl.}
    unlock* {.importc: "unlock".}: proc (user: pointer; lock: cint) {.cdecl.}

  FzErrorCb* = proc (user: pointer; message: cstring) {.cdecl.}

  FzWarningCb* = proc (user: pointer; message: cstring) {.cdecl.}

  FzTuneImageDecodeFn* = proc (arg: pointer; w: cint; h: cint; l2factor: cint;
                            subarea: ptr FzIrect) {.cdecl.}

  FzTuneImageScaleFn* = proc (arg: pointer; dstW: cint; dstH: cint; srcW: cint; srcH: cint): cint {.
      cdecl.}

  FzJmpBuf*    {.importc, header: "system.h", incompleteStruct.} = object

  FzErrorStackSlot* {.importc: "fz_error_stack_slot", header: "context.h", bycopy.} = object
    buffer* {.importc: "buffer".}: FzJmpBuf
    state* {.importc: "state".}: cint
    code* {.importc: "code".}: cint
    #padding* {.importc: "padding".}: array[fz_Jmpbuf_Align - sizeof((int) * 2), char]

  FzErrorContext* {.importc: "fz_error_context", header: "context.h", bycopy.} = object
    top* {.importc: "top".}: ptr FzErrorStackSlot
    stack* {.importc: "stack".}: array[256, FzErrorStackSlot]
    padding* {.importc: "padding".}: FzErrorStackSlot
    stackBase* {.importc: "stack_base".}: ptr FzErrorStackSlot
    errcode* {.importc: "errcode".}: cint
    printUser* {.importc: "print_user".}: pointer
    print* {.importc: "print".}: proc (user: pointer; message: cstring) {.cdecl.}
    message* {.importc: "message".}: array[256, char]

  FzWarnContext* {.importc: "fz_warn_context", header: "context.h", bycopy.} = object
    printUser* {.importc: "print_user".}: pointer
    print* {.importc: "print".}: proc (user: pointer; message: cstring) {.cdecl.}
    count* {.importc: "count".}: cint
    message* {.importc: "message".}: array[256, char]

  FzAaContext* {.importc: "fz_aa_context", header: "context.h", bycopy.} = object
    hscale* {.importc: "hscale".}: cint
    vscale* {.importc: "vscale".}: cint
    scale* {.importc: "scale".}: cint
    bits* {.importc: "bits".}: cint
    textBits* {.importc: "text_bits".}: cint
    minLineWidth* {.importc: "min_line_width".}: cfloat

  FzMd5* {.importc: "fz_md5", header: "crypt.h", bycopy.} = object
    lo* {.importc: "lo".}: uint32
    hi* {.importc: "hi".}: uint32
    a* {.importc: "a".}: uint32
    b* {.importc: "b".}: uint32
    c* {.importc: "c".}: uint32
    d* {.importc: "d".}: uint32
    buffer* {.importc: "buffer".}: array[64, uint8]

  # INNER_C_UNION_crypt_88* {.importc: "fz_sha256::no_name", header: "crypt.h", bycopy,
  #                          union.} = object
  #   u8* {.importc: "u8".}: array[64, uint8]
  #   u32* {.importc: "u32".}: array[16, cuint]

  # FzSha256* {.importc: "fz_sha256", header: "crypt.h", bycopy.} = object
  #   state* {.importc: "state".}: array[8, cuint]
  #   count* {.importc: "count".}: array[2, cuint]
  #   buffer* {.importc: "buffer".}: INNER_C_UNION_crypt_88

  # INNER_C_UNION_crypt_129* {.importc: "fz_sha512::no_name", header: "crypt.h",
  #                           bycopy, union.} = object
  #   u8* {.importc: "u8".}: array[128, uint8]
  #   u64* {.importc: "u64".}: array[16, uint64]

  # FzSha512* {.importc: "fz_sha512", header: "crypt.h", bycopy.} = object
  #   state* {.importc: "state".}: array[8, uint64]
  #   count* {.importc: "count".}: array[2, cuint]
  #   buffer* {.importc: "buffer".}: INNER_C_UNION_crypt_129

  # FzSha384* = FzSha512

  FzArc4* {.importc: "fz_arc4", header: "crypt.h", bycopy.} = object
    x* {.importc: "x".}: cuint
    y* {.importc: "y".}: cuint
    state* {.importc: "state".}: array[256, uint8]

  FzAes* {.importc: "fz_aes", header: "crypt.h", bycopy.} = object
    nr* {.importc: "nr".}: cint  
    rk* {.importc: "rk".}: ptr uint32 
    buf* {.importc: "buf".}: array[68, uint32] 

  FzDeviceContainerStack* {.importc: "fz_device_container_stack",
                           header: "device.h", bycopy.} = object
    scissor* {.importc: "scissor".}: FzRect
    `type`* {.importc: "type".}: cint
    user* {.importc: "user".}: cint

  FzPath*   {.importc, header: "path.h", incompleteStruct.} = object

  FzDevice* {.importc: "fz_device", header: "device.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    hints* {.importc: "hints".}: cint
    flags* {.importc: "flags".}: cint
    closeDevice* {.importc: "close_device".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.
        cdecl.}
    dropDevice* {.importc: "drop_device".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.
        cdecl.}
    fillPath* {.importc: "fill_path".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzPath; evenOdd: cint; a5: FzMatrix; a6: ptr FzColorspace;
        color: ptr cfloat; alpha: cfloat; a9: FzColorParams) {.cdecl.}
    strokePath* {.importc: "stroke_path".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzPath; a4: ptr FzStrokeState; a5: FzMatrix; a6: ptr FzColorspace;
        color: ptr cfloat; alpha: cfloat; a9: FzColorParams) {.cdecl.}
    clipPath* {.importc: "clip_path".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzPath; evenOdd: cint; a5: FzMatrix; scissor: FzRect) {.cdecl.}
    clipStrokePath* {.importc: "clip_stroke_path".}: proc (a1: ptr FzContext;
        a2: ptr FzDevice; a3: ptr FzPath; a4: ptr FzStrokeState; a5: FzMatrix;
        scissor: FzRect) {.cdecl.}
    fillText* {.importc: "fill_text".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzText; a4: FzMatrix; a5: ptr FzColorspace; color: ptr cfloat;
        alpha: cfloat; a8: FzColorParams) {.cdecl.}
    strokeText* {.importc: "stroke_text".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzText; a4: ptr FzStrokeState; a5: FzMatrix; a6: ptr FzColorspace;
        color: ptr cfloat; alpha: cfloat; a9: FzColorParams) {.cdecl.}
    clipText* {.importc: "clip_text".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzText; a4: FzMatrix; scissor: FzRect) {.cdecl.}
    clipStrokeText* {.importc: "clip_stroke_text".}: proc (a1: ptr FzContext;
        a2: ptr FzDevice; a3: ptr FzText; a4: ptr FzStrokeState; a5: FzMatrix;
        scissor: FzRect) {.cdecl.}
    ignoreText* {.importc: "ignore_text".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        a3: ptr FzText; a4: FzMatrix) {.cdecl.}
    fillShade* {.importc: "fill_shade".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        shd: ptr FzShade; ctm: FzMatrix; alpha: cfloat; colorParams: FzColorParams) {.
        cdecl.}
    fillImage* {.importc: "fill_image".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        img: ptr FzImage; ctm: FzMatrix; alpha: cfloat; colorParams: FzColorParams) {.
        cdecl.}
    fillImageMask* {.importc: "fill_image_mask".}: proc (a1: ptr FzContext;
        a2: ptr FzDevice; img: ptr FzImage; ctm: FzMatrix; a5: ptr FzColorspace;
        color: ptr cfloat; alpha: cfloat; colorParams: FzColorParams) {.cdecl.}
    clipImageMask* {.importc: "clip_image_mask".}: proc (a1: ptr FzContext;
        a2: ptr FzDevice; img: ptr FzImage; ctm: FzMatrix; scissor: FzRect) {.cdecl.}
    popClip* {.importc: "pop_clip".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.cdecl.}
    beginMask* {.importc: "begin_mask".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        area: FzRect; luminosity: cint; a5: ptr FzColorspace; bc: ptr cfloat;
        a7: FzColorParams) {.cdecl.}
    endMask* {.importc: "end_mask".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.cdecl.}
    beginGroup* {.importc: "begin_group".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        area: FzRect; cs: ptr FzColorspace; isolated: cint; knockout: cint;
        blendmode: cint; alpha: cfloat) {.cdecl.}
    endGroup* {.importc: "end_group".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.cdecl.}
    beginTile* {.importc: "begin_tile".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        area: FzRect; view: FzRect; xstep: cfloat; ystep: cfloat; ctm: FzMatrix; id: cint): cint {.
        cdecl.}
    endTile* {.importc: "end_tile".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.cdecl.}
    renderFlags* {.importc: "render_flags".}: proc (a1: ptr FzContext;
        a2: ptr FzDevice; set: cint; clear: cint) {.cdecl.}
    setDefaultColorspaces* {.importc: "set_default_colorspaces".}: proc (
        a1: ptr FzContext; a2: ptr FzDevice; a3: ptr FzDefaultColorspaces) {.cdecl.}
    beginLayer* {.importc: "begin_layer".}: proc (a1: ptr FzContext; a2: ptr FzDevice;
        layerName: cstring) {.cdecl.}
    endLayer* {.importc: "end_layer".}: proc (a1: ptr FzContext; a2: ptr FzDevice) {.cdecl.}
    d1Rect* {.importc: "d1_rect".}: FzRect
    containerLen* {.importc: "container_len".}: cint
    containerCap* {.importc: "container_cap".}: cint
    container* {.importc: "container".}: ptr FzDeviceContainerStack

  FzCookie* {.importc: "fz_cookie", header: "device.h", bycopy.} = object
    abort* {.importc: "abort".}: cint
    progress* {.importc: "progress".}: cint
    progressMax* {.importc: "progress_max".}: csize_t 
    errors* {.importc: "errors".}: cint
    incomplete* {.importc: "incomplete".}: cint

  FzDrawOptions* {.importc: "fz_draw_options", header: "device.h", bycopy.} = object
    rotate* {.importc: "rotate".}: cint
    xResolution* {.importc: "x_resolution".}: cint
    yResolution* {.importc: "y_resolution".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint
    colorspace* {.importc: "colorspace".}: ptr FzColorspace
    alpha* {.importc: "alpha".}: cint
    graphics* {.importc: "graphics".}: cint
    text* {.importc: "text".}: cint

  FzDisplayList* {.importc:"fz_display_list", header: "display-list.h", incompleteStruct.} = object

  FzPage* {.importc:"fz_page", header: "document.h", incompleteStruct.} = object

  FzBookmark* = int

  FzPermission* {.size: sizeof(cint).} = enum
    FZ_PERMISSION_COPY = 'c', FZ_PERMISSION_EDIT = 'e', FZ_PERMISSION_ANNOTATE = 'n',
    FZ_PERMISSION_PRINT = 'p'

  FzDocumentDropFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument) {.cdecl.}

  FzDocumentNeedsPasswordFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument): cint {.
      cdecl.}

  FzDocumentAuthenticatePasswordFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
      password: cstring): cint {.cdecl.}

  FzDocumentHasPermissionFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                  permission: FzPermission): cint {.cdecl.}

  FzDocumentLoadOutlineFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument): ptr FzOutline {.
      cdecl.}

  FzDocumentOutlineIteratorFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument): ptr FzOutlineIterator {.
      cdecl.}

  FzDocumentLayoutFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument; w: cfloat;
                           h: cfloat; em: cfloat) {.cdecl.}

  FzDocumentResolveLinkDestFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                    uri: cstring): FzLinkDest {.cdecl.}

  FzDocumentFormatLinkUriFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                  dest: FzLinkDest): cstring {.cdecl.}

  FzDocumentCountChaptersFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument): cint {.
      cdecl.}

  FzDocumentCountPagesFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument; chapter: cint): cint {.
      cdecl.}

  FzDocumentLoadPageFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument; chapter: cint;
                             page: cint): ptr FzPage {.cdecl.}

  FzDocumentLookupMetadataFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                   key: cstring; buf: cstring; size: cint): cint {.
      cdecl.}

  FzDocumentSetMetadataFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument; key: cstring;
                                value: cstring): cint {.cdecl.}

  FzDocumentOutputIntentFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument): ptr FzColorspace {.
      cdecl.}

  FzDocumentOutputAcceleratorFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                      `out`: ptr FzOutput) {.cdecl.}

  FzDocumentMakeBookmarkFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                 loc: FzLocation): FzBookmark {.cdecl.}

  FzDocumentLookupBookmarkFn* = proc (ctx: ptr FzContext; doc: ptr FzDocument;
                                   mark: FzBookmark): FzLocation {.cdecl.}

  FzPageDropPageFn* = proc (ctx: ptr FzContext; page: ptr FzPage) {.cdecl.}

  FzPageBoundPageFn* = proc (ctx: ptr FzContext; page: ptr FzPage): FzRect {.cdecl.}

  FzPageRunPageFn* = proc (ctx: ptr FzContext; page: ptr FzPage; dev: ptr FzDevice;
                        transform: FzMatrix; cookie: ptr FzCookie) {.cdecl.}

  FzPageLoadLinksFn* = proc (ctx: ptr FzContext; page: ptr FzPage): ptr FzLink {.cdecl.}

  FzPagePagePresentationFn* = proc (ctx: ptr FzContext; page: ptr FzPage;
                                 transition: ptr FzTransition; duration: ptr cfloat): ptr FzTransition {.
      cdecl.}

  FzPageControlSeparationFn* = proc (ctx: ptr FzContext; page: ptr FzPage;
                                  separation: cint; disable: cint) {.cdecl.}

  FzPageSeparationDisabledFn* = proc (ctx: ptr FzContext; page: ptr FzPage;
                                   separation: cint): cint {.cdecl.}

  FzPageSeparationsFn* = proc (ctx: ptr FzContext; page: ptr FzPage): ptr FzSeparations {.
      cdecl.}

  FzPageUsesOverprintFn* = proc (ctx: ptr FzContext; page: ptr FzPage): cint {.cdecl.}

  FzPageCreateLinkFn* = proc (ctx: ptr FzContext; page: ptr FzPage; bbox: FzRect;
                           uri: cstring): ptr FzLink {.cdecl.}

  FzPageDeleteLinkFn* = proc (ctx: ptr FzContext; page: ptr FzPage; link: ptr FzLink) {.
      cdecl.}

  FzDocumentOpenFn* = proc (ctx: ptr FzContext; filename: cstring): ptr FzDocument {.cdecl.}

  FzDocumentOpenWithStreamFn* = proc (ctx: ptr FzContext; stream: ptr FzStream): ptr FzDocument {.
      cdecl.}

  FzDocumentOpenAccelFn* = proc (ctx: ptr FzContext; filename: cstring; accel: cstring): ptr FzDocument {.
      cdecl.}

  FzDocumentOpenAccelWithStreamFn* = proc (ctx: ptr FzContext; stream: ptr FzStream;
                                        accel: ptr FzStream): ptr FzDocument {.cdecl.}

  FzDocumentRecognizeFn* = proc (ctx: ptr FzContext; magic: cstring): cint {.cdecl.}

  FzProcessOpenedPageFn* = proc (ctx: ptr FzContext; page: ptr FzPage; state: pointer): pointer {.
      cdecl.}

  FzDocument* {.importc: "fz_document", header: "document.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    dropDocument* {.importc: "drop_document".}: ptr FzDocumentDropFn
    needsPassword* {.importc: "needs_password".}: ptr FzDocumentNeedsPasswordFn
    authenticatePassword* {.importc: "authenticate_password".}: ptr FzDocumentAuthenticatePasswordFn
    hasPermission* {.importc: "has_permission".}: ptr FzDocumentHasPermissionFn
    loadOutline* {.importc: "load_outline".}: ptr FzDocumentLoadOutlineFn
    outlineIterator* {.importc: "outline_iterator".}: ptr FzDocumentOutlineIteratorFn
    layout* {.importc: "layout".}: ptr FzDocumentLayoutFn
    makeBookmark* {.importc: "make_bookmark".}: ptr FzDocumentMakeBookmarkFn
    lookupBookmark* {.importc: "lookup_bookmark".}: ptr FzDocumentLookupBookmarkFn
    resolveLinkDest* {.importc: "resolve_link_dest".}: ptr FzDocumentResolveLinkDestFn
    formatLinkUri* {.importc: "format_link_uri".}: ptr FzDocumentFormatLinkUriFn
    countChapters* {.importc: "count_chapters".}: ptr FzDocumentCountChaptersFn
    countPages* {.importc: "count_pages".}: ptr FzDocumentCountPagesFn
    loadPage* {.importc: "load_page".}: ptr FzDocumentLoadPageFn
    lookupMetadata* {.importc: "lookup_metadata".}: ptr FzDocumentLookupMetadataFn
    setMetadata* {.importc: "set_metadata".}: ptr FzDocumentSetMetadataFn
    getOutputIntent* {.importc: "get_output_intent".}: ptr FzDocumentOutputIntentFn
    outputAccelerator* {.importc: "output_accelerator".}: ptr FzDocumentOutputAcceleratorFn
    didLayout* {.importc: "did_layout".}: cint
    isReflowable* {.importc: "is_reflowable".}: cint
    open* {.importc: "open".}: ptr FzPage 

  FzDocumentHandler* {.importc: "fz_document_handler", header: "document.h", bycopy.} = object
    recognize* {.importc: "recognize".}: ptr FzDocumentRecognizeFn
    open* {.importc: "open".}: ptr FzDocumentOpenFn
    openWithStream* {.importc: "open_with_stream".}: ptr FzDocumentOpenWithStreamFn
    extensions* {.importc: "extensions".}: cstringArray
    mimetypes* {.importc: "mimetypes".}: cstringArray
    openAccel* {.importc: "open_accel".}: ptr FzDocumentOpenAccelFn
    openAccelWithStream* {.importc: "open_accel_with_stream".}: ptr FzDocumentOpenAccelWithStreamFn

  Header* = object
    fname*: string
    txt*: string
    c2nimFile*:string

  Binding* = object
    fname*: string
    txt*: string
    ignore*: bool

  FzJbig2Globals*  {.importc, header: "filter.h", incompleteStruct.} = object

  FzRange* {.importc: "fz_range", header: "filter.h", bycopy.} = object
    offset* {.importc: "offset".}: int64
    length* {.importc: "length".}: uint64

  FzFont* {.importc, header: "font.h", incompleteStruct.} = object

  FzFontFlagsT* {.importc: "fz_font_flags_t", header: "font.h", bycopy.} = object
    isMono* {.importc: "is_mono", bitsize: 1.}: cuint
    isSerif* {.importc: "is_serif", bitsize: 1.}: cuint
    isBold* {.importc: "is_bold", bitsize: 1.}: cuint
    isItalic* {.importc: "is_italic", bitsize: 1.}: cuint
    ftSubstitute* {.importc: "ft_substitute", bitsize: 1.}: cuint 
    ftStretch* {.importc: "ft_stretch", bitsize: 1.}: cuint 
    fakeBold* {.importc: "fake_bold", bitsize: 1.}: cuint 
    fakeItalic* {.importc: "fake_italic", bitsize: 1.}: cuint 
    hasOpentype* {.importc: "has_opentype", bitsize: 1.}: cuint 
    invalidBbox* {.importc: "invalid_bbox", bitsize: 1.}: cuint
    cjk* {.importc: "cjk", bitsize: 1.}: cuint
    cjkLang* {.importc: "cjk_lang", bitsize: 2.}: cuint 

  FzShaperDataT* {.importc: "fz_shaper_data_t", header: "font.h", bycopy.} = object
    shaperHandle* {.importc: "shaper_handle".}: pointer
    destroy* {.importc: "destroy".}: proc (ctx: ptr FzContext; a2: pointer) {.cdecl.} 

  FzLoadSystemFontFn* = proc (ctx: ptr FzContext; name: cstring; bold: cint; italic: cint;
                           needsExactMetrics: cint): ptr FzFont {.cdecl.}

  FzLoadSystemCjkFontFn* = proc (ctx: ptr FzContext; name: cstring; ordering: cint;
                              serif: cint): ptr FzFont {.cdecl.}

  FzLoadSystemFallbackFontFn* = proc (ctx: ptr FzContext; script: cint; language: cint;
                                   serif: cint; bold: cint; italic: cint): ptr FzFont {.
      cdecl.}

  FzPoint* {.importc: "fz_point", header: "geometry.h", bycopy.} = object
    x* {.importc: "x".}: cfloat
    y* {.importc: "y".}: cfloat

  FzRect* {.importc: "fz_rect", header: "geometry.h", bycopy.} = object
    x0* {.importc: "x0".}: cfloat
    y0* {.importc: "y0".}: cfloat
    x1* {.importc: "x1".}: cfloat
    y1* {.importc: "y1".}: cfloat

  FzIrect* {.importc: "fz_irect", header: "geometry.h", bycopy.} = object
    x0* {.importc: "x0".}: cint
    y0* {.importc: "y0".}: cint
    x1* {.importc: "x1".}: cint
    y1* {.importc: "y1".}: cint

  FzMatrix* {.importc: "fz_matrix", header: "geometry.h", bycopy.} = object
    a* {.importc: "a".}: cfloat
    b* {.importc: "b".}: cfloat
    c* {.importc: "c".}: cfloat
    d* {.importc: "d".}: cfloat
    e* {.importc: "e".}: cfloat
    f* {.importc: "f".}: cfloat

  FzQuad* {.importc: "fz_quad", header: "geometry.h", bycopy.} = object
    ul* {.importc: "ul".}: FzPoint
    ur* {.importc: "ur".}: FzPoint
    ll* {.importc: "ll".}: FzPoint
    lr* {.importc: "lr".}: FzPoint

  FzGlyph* {.importc, header: "glyph.h", incompleteStruct.} = object

  FzHashTable* {.importc, header: "hash.h", incompleteStruct.} = object

  FzHashTableDropFn* = proc (ctx: ptr FzContext; val: pointer) {.cdecl.}

  FzHashTableForEachFn* = proc (ctx: ptr FzContext; state: pointer; key: pointer;
                             keylen: cint; val: pointer) {.cdecl.}

  FzHashTableFilterFn* = proc (ctx: ptr FzContext; state: pointer; key: pointer;
                            keylen: cint; val: pointer): cint {.cdecl.}

  FzCompressedImage* {.importc, header: "image.h", incompleteStruct.} = object

  FzPixmapImage* {.importc, header: "image.h", incompleteStruct.} = object

  FzDropImageFn* = proc (ctx: ptr FzContext; image: ptr FzImage) {.cdecl.}

  FzImageGetPixmapFn* = proc (ctx: ptr FzContext; im: ptr FzImage; subarea: ptr FzIrect;
                           w: cint; h: cint; l2factor: ptr cint): ptr FzPixmap {.cdecl.}

  FzImageGetSizeFn* = proc (a1: ptr FzContext; a2: ptr FzImage): csize_t {.cdecl.}

  FzImage* {.importc: "fz_image", header: "image.h", bycopy.} = object
    keyStorable* {.importc: "key_storable".}: FzKeyStorable
    w* {.importc: "w".}: cint
    h* {.importc: "h".}: cint
    n* {.importc: "n".}: uint8
    bpc* {.importc: "bpc".}: uint8
    imagemask* {.importc: "imagemask", bitsize: 1.}: cuint
    interpolate* {.importc: "interpolate", bitsize: 1.}: cuint
    useColorkey* {.importc: "use_colorkey", bitsize: 1.}: cuint
    useDecode* {.importc: "use_decode", bitsize: 1.}: cuint
    invertCmykJpeg* {.importc: "invert_cmyk_jpeg", bitsize: 1.}: cuint
    decoded* {.importc: "decoded", bitsize: 1.}: cuint
    scalable* {.importc: "scalable", bitsize: 1.}: cuint
    orientation* {.importc: "orientation".}: uint8
    mask* {.importc: "mask".}: ptr FzImage
    xres* {.importc: "xres".}: cint 
    yres* {.importc: "yres".}: cint 
    colorspace* {.importc: "colorspace".}: ptr FzColorspace
    dropImage* {.importc: "drop_image".}: ptr FzDropImageFn
    getPixmap* {.importc: "get_pixmap".}: ptr FzImageGetPixmapFn
    getSize* {.importc: "get_size".}: ptr FzImageGetSizeFn
    colorkey* {.importc: "colorkey".}: array[FZ_MAX_COLORS * 2, cint]
    decode* {.importc: "decode".}: array[FZ_MAX_COLORS * 2, cfloat]

  FzLinkSetRectFn* = proc (ctx: ptr FzContext; link: ptr FzLink; rect: FzRect) {.cdecl.}

  FzLinkSetUriFn* = proc (ctx: ptr FzContext; link: ptr FzLink; uri: cstring) {.cdecl.}

  FzLinkDropLinkFn* = proc (ctx: ptr FzContext; link: ptr FzLink) {.cdecl.}

  FzLink* {.importc: "fz_link", header: "link.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    next* {.importc: "next".}: ptr FzLink
    rect* {.importc: "rect".}: FzRect
    uri* {.importc: "uri".}: cstring
    setRectFn* {.importc: "set_rect_fn".}: ptr FzLinkSetRectFn
    setUriFn* {.importc: "set_uri_fn".}: ptr FzLinkSetUriFn
    drop* {.importc: "drop".}: ptr FzLinkDropLinkFn

  FzLinkDestType* {.size: sizeof(cint).} = enum
    FZ_LINK_DEST_FIT, FZ_LINK_DEST_FIT_B, FZ_LINK_DEST_FIT_H, FZ_LINK_DEST_FIT_BH,
    FZ_LINK_DEST_FIT_V, FZ_LINK_DEST_FIT_BV, FZ_LINK_DEST_FIT_R, FZ_LINK_DEST_XYZ

  FzLinkDest* {.importc: "fz_link_dest", header: "link.h", bycopy.} = object
    loc* {.importc: "loc".}: FzLocation
    `type`* {.importc: "type".}: FzLinkDestType
    x* {.importc: "x".}: cfloat
    y* {.importc: "y".}: cfloat
    w* {.importc: "w".}: cfloat
    h* {.importc: "h".}: cfloat
    zoom* {.importc: "zoom".}: cfloat

  FzOutlineIterator*  {.importc:"fz_outline_iterator", header: "outline.h", incompleteStruct.} = object

  FzOutline* {.importc: "fz_outline", header: "outline.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    title* {.importc: "title".}: cstring
    uri* {.importc: "uri".}: cstring
    page* {.importc: "page".}: FzLocation
    x* {.importc: "x".}: cfloat
    y* {.importc: "y".}: cfloat
    next* {.importc: "next".}: ptr FzOutline
    down* {.importc: "down".}: ptr FzOutline
    isOpen* {.importc: "is_open".}: cint

  FzOutlineItem*  {.importc, header: "outline.h", incompleteStruct.} = object

  FzOutlineIteratorItemFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator): ptr FzOutlineItem {.
      cdecl.}

  FzOutlineIteratorNextFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
      cdecl.}

  FzOutlineIteratorPrevFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
      cdecl.}

  FzOutlineIteratorUpFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
      cdecl.}

  FzOutlineIteratorDownFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
      cdecl.}

  FzOutlineIteratorInsertFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator;
                                  item: ptr FzOutlineItem): cint {.cdecl.}

  FzOutlineIteratorDeleteFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator): cint {.
      cdecl.}

  FzOutlineIteratorUpdateFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator;
                                  item: ptr FzOutlineItem) {.cdecl.}

  FzOutlineIteratorDropFn* = proc (ctx: ptr FzContext; iter: ptr FzOutlineIterator) {.
      cdecl.}

  FzOutputWriteFn* = proc (ctx: ptr FzContext; state: pointer; data: pointer; n: csize_t) {.
      cdecl.}

  FzOutputSeekFn* = proc (ctx: ptr FzContext; state: pointer; offset: int64; whence: cint) {.
      cdecl.}

  FzOutputTellFn* = proc (ctx: ptr FzContext; state: pointer): int64 {.cdecl.}

  FzOutputCloseFn* = proc (ctx: ptr FzContext; state: pointer) {.cdecl.}

  FzOutputDropFn* = proc (ctx: ptr FzContext; state: pointer) {.cdecl.}

  FzStreamFromOutputFn* = proc (ctx: ptr FzContext; state: pointer): ptr FzStream {.cdecl.}

  FzTruncateFn* = proc (ctx: ptr FzContext; state: pointer) {.cdecl.}

  FzLinecap* {.size: sizeof(cint).} = enum
    FZ_LINECAP_BUTT = 0, FZ_LINECAP_ROUND = 1, FZ_LINECAP_SQUARE = 2,
    FZ_LINECAP_TRIANGLE = 3

  FzLinejoin* {.size: sizeof(cint).} = enum
    FZ_LINEJOIN_MITER = 0, FZ_LINEJOIN_ROUND = 1, FZ_LINEJOIN_BEVEL = 2,
    FZ_LINEJOIN_MITER_XPS = 3

  FzStrokeState* {.importc: "fz_stroke_state", header: "path.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    startCap* {.importc: "start_cap".}: FzLinecap
    dashCap* {.importc: "dash_cap".}: FzLinecap
    endCap* {.importc: "end_cap".}: FzLinecap
    linejoin* {.importc: "linejoin".}: FzLinejoin
    linewidth* {.importc: "linewidth".}: cfloat
    miterlimit* {.importc: "miterlimit".}: cfloat
    dashPhase* {.importc: "dash_phase".}: cfloat
    dashLen* {.importc: "dash_len".}: cint
    dashList* {.importc: "dash_list".}: array[32, cfloat]

  FzPathWalker* {.importc: "fz_path_walker", header: "path.h", bycopy.} = object
    moveto* {.importc: "moveto".}: proc (ctx: ptr FzContext; arg: pointer; x: cfloat;
                                     y: cfloat) {.cdecl.} 
    lineto* {.importc: "lineto".}: proc (ctx: ptr FzContext; arg: pointer; x: cfloat;
                                     y: cfloat) {.cdecl.}
    curveto* {.importc: "curveto".}: proc (ctx: ptr FzContext; arg: pointer; x1: cfloat;
                                       y1: cfloat; x2: cfloat; y2: cfloat; x3: cfloat;
                                       y3: cfloat) {.cdecl.}
    closepath* {.importc: "closepath".}: proc (ctx: ptr FzContext; arg: pointer) {.cdecl.} 
    quadto* {.importc: "quadto".}: proc (ctx: ptr FzContext; arg: pointer; x1: cfloat;
                                     y1: cfloat; x2: cfloat; y2: cfloat) {.cdecl.}
    curvetov* {.importc: "curvetov".}: proc (ctx: ptr FzContext; arg: pointer;
        x2: cfloat; y2: cfloat; x3: cfloat; y3: cfloat) {.cdecl.}
    curvetoy* {.importc: "curvetoy".}: proc (ctx: ptr FzContext; arg: pointer;
        x1: cfloat; y1: cfloat; x3: cfloat; y3: cfloat) {.cdecl.}
    rectto* {.importc: "rectto".}: proc (ctx: ptr FzContext; arg: pointer; x1: cfloat;
                                     y1: cfloat; x2: cfloat; y2: cfloat) {.cdecl.}

  FzOverprint*  {.importc, header: "pixmap.h", incompleteStruct.} = object

  FzPool* {.importc, header: "pool.h", incompleteStruct.} = object

  # INNER_C_STRUCT_shade_101* {.importc: "fz_shade::no_name", header: "shade.h", bycopy.} = object
  #   extend* {.importc: "extend".}: array[2, cint]
  #   coords* {.importc: "coords".}: array[2, array[3, cfloat]] 

  # INNER_C_UNION_shade_101* {.importc: "fz_shade::no_name", header: "shade.h", bycopy,
  #                           union.} = object
  #   lOrR* {.importc: "l_or_r".}: INNER_C_STRUCT_shade_101
  #   m* {.importc: "m".}: INNER_C_STRUCT_shade_101
  #   f* {.importc: "f".}: INNER_C_STRUCT_shade_101

  FzShade* {.importc: "fz_shade", header: "shade.h", bycopy.} = object
    storable* {.importc: "storable".}: FzStorable
    bbox* {.importc: "bbox".}: FzRect 
    colorspace* {.importc: "colorspace".}: ptr FzColorspace
    matrix* {.importc: "matrix".}: FzMatrix 
    useBackground* {.importc: "use_background".}: cint 
    background* {.importc: "background".}: array[FZ_MAX_COLORS, cfloat] 
    useFunction* {.importc: "use_function".}: cint
    function* {.importc: "function".}: array[256, array[FZ_MAX_COLORS + 1, cfloat]]
    `type`* {.importc: "type".}: cint 
    #u* {.importc: "u".}: INNER_C_UNION_shade_101
    #buffer* {.importc: "buffer".}: ptr FzCompressedBuffer

  FzShadeColorCache* {.importc, header: "shade.h", incompleteStruct.} = object

  FzVertex* {.importc: "fz_vertex", header: "shade.h", bycopy.} = object
    p* {.importc: "p".}: FzPoint
    c* {.importc: "c".}: array[FZ_MAX_COLORS, cfloat]

  FzShadePrepareFn* = proc (ctx: ptr FzContext; arg: pointer; v: ptr FzVertex;
                         c: ptr cfloat) {.cdecl.}

  FzShadeProcessFn* = proc (ctx: ptr FzContext; arg: pointer; av: ptr FzVertex;
                         bv: ptr FzVertex; cv: ptr FzVertex) {.cdecl.}

  FzStoreDropFn* = proc (a1: ptr FzContext; a2: ptr FzStorable) {.cdecl.}

  FzStorable* {.importc: "fz_storable", header: "store.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    drop* {.importc: "drop".}: ptr FzStoreDropFn

  FzKeyStorable* {.importc: "fz_key_storable", header: "store.h", bycopy.} = object
    storable* {.importc: "storable".}: FzStorable
    storeKeyRefs* {.importc: "store_key_refs".}: cshort

  INNER_C_STRUCT_store_432* {.importc: "fz_store_hash::no_name", header: "store.h",
                             bycopy.} = object
    `ptr`* {.importc: "ptr".}: pointer
    i* {.importc: "i".}: cint

  INNER_C_UNION_store_432* {.importc: "fz_store_hash::no_name", header: "store.h",
                            bycopy, union.} = object
    pi* {.importc: "pi".}: INNER_C_STRUCT_store_432 
    pir* {.importc: "pir".}: INNER_C_STRUCT_store_432 
    im* {.importc: "im".}: INNER_C_STRUCT_store_432 
    link* {.importc: "link".}: INNER_C_STRUCT_store_432 

  FzStoreHash* {.importc: "fz_store_hash", header: "store.h", bycopy.} = object
    drop* {.importc: "drop".}: ptr FzStoreDropFn
    u* {.importc: "u".}: INNER_C_UNION_store_432

  FzStoreType* {.importc: "fz_store_type", header: "store.h", bycopy.} = object
    name* {.importc: "name".}: cstring
    makeHashKey* {.importc: "make_hash_key".}: proc (ctx: ptr FzContext;
        hash: ptr FzStoreHash; key: pointer): cint {.cdecl.}
    keepKey* {.importc: "keep_key".}: proc (ctx: ptr FzContext; key: pointer): pointer {.
        cdecl.}
    dropKey* {.importc: "drop_key".}: proc (ctx: ptr FzContext; key: pointer) {.cdecl.}
    cmpKey* {.importc: "cmp_key".}: proc (ctx: ptr FzContext; a: pointer; b: pointer): cint {.
        cdecl.}
    formatKey* {.importc: "format_key".}: proc (ctx: ptr FzContext; buf: cstring;
        size: csize_t; key: pointer) {.cdecl.}
    needsReap* {.importc: "needs_reap".}: proc (ctx: ptr FzContext; key: pointer): cint {.
        cdecl.}

  FzStoreFilterFn* = proc (ctx: ptr FzContext; arg: pointer; key: pointer): cint {.cdecl.}

  FzWriteStoryPosition* {.importc: "fz_write_story_position",
                         header: "story-writer.h", bycopy.} = object
    element* {.importc: "element".}: FzStoryElementPosition
    pageNum* {.importc: "page_num".}: cint

  FzWriteStoryPositions* {.importc: "fz_write_story_positions",
                          header: "story-writer.h", bycopy.} = object
    positions* {.importc: "positions".}: ptr FzWriteStoryPosition
    num* {.importc: "num".}: cint

  FzWriteStoryRectfn* = proc (ctx: ptr FzContext; `ref`: pointer; num: cint;
                           filled: FzRect; rect: ptr FzRect; ctm: ptr FzMatrix;
                           mediabox: ptr FzRect): cint {.cdecl.}

  FzWriteStoryPositionfn* = proc (ctx: ptr FzContext; `ref`: pointer;
                               position: ptr FzWriteStoryPosition) {.cdecl.}

  FzWriteStoryPagefn* = proc (ctx: ptr FzContext; `ref`: pointer; pageNum: cint;
                           mediabox: FzRect; dev: ptr FzDevice; after: cint) {.cdecl.}

  FzWriteStoryContentfn* = proc (ctx: ptr FzContext; `ref`: pointer;
                              positions: ptr FzWriteStoryPositions;
                              buffer: ptr FzBuffer) {.cdecl.}

  FzStory* {.importc, header: "story.h", incompleteStruct.} = object

  FzStoryElementPosition* {.importc: "fz_story_element_position",
                           header: "story.h", bycopy.} = object
    depth* {.importc: "depth".}: cint 
    heading* {.importc: "heading".}: cint 
    id* {.importc: "id".}: cstring 
    href* {.importc: "href".}: cstring 
    rect* {.importc: "rect".}: FzRect 
    text* {.importc: "text".}: cstring 
    openClose* {.importc: "open_close".}: cint 
    rectangleNum* {.importc: "rectangle_num".}: cint

  FzStoryPositionCallback* = proc (ctx: ptr FzContext; arg: pointer;
                                a3: ptr FzStoryElementPosition) {.cdecl.}

  FzStream* {.importc, header: "stream.h", incompleteStruct.} = object

  FzStreamNextFn* = proc (ctx: ptr FzContext; stm: ptr FzStream; max: csize_t): cint {.cdecl.}

  FzStreamDropFn* = proc (ctx: ptr FzContext; state: pointer) {.cdecl.}

  FzStreamSeekFn* = proc (ctx: ptr FzContext; stm: ptr FzStream; offset: int64;
                       whence: cint) {.cdecl.}

  FzLayoutChar* {.importc, header: "structured-text.h", incompleteStruct.} = object


  FzLayoutLine* {.importc: "fz_layout_line", header: "structured-text.h", bycopy.} = object
    x* {.importc: "x".}: cfloat
    y* {.importc: "y".}: cfloat
    fontSize* {.importc: "font_size".}: cfloat
    p* {.importc: "p".}: cstring 
    text* {.importc: "text".}: ptr FzLayoutChar
    next* {.importc: "next".}: ptr FzLayoutLine

  FzLayoutBlock* {.importc: "fz_layout_block", header: "structured-text.h", bycopy.} = object
    pool* {.importc: "pool".}: ptr FzPool
    matrix* {.importc: "matrix".}: FzMatrix
    invMatrix* {.importc: "inv_matrix".}: FzMatrix
    head* {.importc: "head".}: ptr FzLayoutLine
    tailp* {.importc: "tailp".}: ptr ptr FzLayoutLine
    textTailp* {.importc: "text_tailp".}: ptr ptr FzLayoutChar

  FzStextChar* {.importc, header: "structured-text.h", incompleteStruct.} = object

  FzStextLine* {.importc, header: "structured-text.h", incompleteStruct.} = object

  FzStextBlock* {.importc, header: "structured-text.h", incompleteStruct.} = object

  FzStextPage* {.importc: "fz_stext_page", header: "structured-text.h", bycopy.} = object
    pool* {.importc: "pool".}: ptr FzPool
    mediabox* {.importc: "mediabox".}: FzRect
    firstBlock* {.importc: "first_block".}: ptr FzStextBlock
    lastBlock* {.importc: "last_block".}: ptr FzStextBlock

  # INNER_C_STRUCT_structured-text_197* {.importc: "no_name",
  #                                      header: "structured-text.h", bycopy.} = object
  #   firstLine* {.importc: "first_line".}: ptr FzStextLine
  #   lastLine* {.importc: "last_line".}: ptr FzStextLine

  # INNER_C_UNION_structured-text_197* {.importc: "no_name",
  #                                     header: "structured-text.h", bycopy, union.} = object
  #   t* {.importc: "t".}: INNER_C_STRUCT_structured-text_197
  #   i* {.importc: "i".}: INNER_C_STRUCT_structured-text_197

  FzStextOptions* {.importc: "fz_stext_options", header: "structured-text.h", bycopy.} = object
    flags* {.importc: "flags".}: cint
    scale* {.importc: "scale".}: cfloat

  FzTextItem* {.importc: "fz_text_item", header: "text.h", bycopy.} = object
    x* {.importc: "x".}: cfloat
    y* {.importc: "y".}: cfloat
    gid* {.importc: "gid".}: cint 
    ucs* {.importc: "ucs".}: cint 

# #define FZ_LANG_TAG2(c1,c2) ((c1-'a'+1) + ((c2-'a'+1)*27))
  # FzTextLanguage* {.size: sizeof(cint).} = enum
  #   FZ_LANG_UNSET = 0, FZ_LANG_ur = fz_Lang_Tag2('u', 'r'),
  #   FZ_LANG_urd = fz_Lang_Tag3('u', 'r', 'd'), FZ_LANG_ko = fz_Lang_Tag2('k', 'o'),
  #   FZ_LANG_ja = fz_Lang_Tag2('j', 'a'), FZ_LANG_zh = fz_Lang_Tag2('z', 'h'),
  #   FZ_LANG_zhHans = fz_Lang_Tag3('z', 'h', 's'),
  #   FZ_LANG_zhHant = fz_Lang_Tag3('z', 'h', 't')

  FzTextSpan* {.importc: "fz_text_span", header: "text.h", bycopy.} = object
    font* {.importc: "font".}: ptr FzFont
    trm* {.importc: "trm".}: FzMatrix
    wmode* {.importc: "wmode", bitsize: 1.}: cuint 
    bidiLevel* {.importc: "bidi_level", bitsize: 7.}: cuint 
    markupDir* {.importc: "markup_dir", bitsize: 2.}: cuint 
    language* {.importc: "language", bitsize: 15.}: cuint 
    len* {.importc: "len".}: cint
    cap* {.importc: "cap".}: cint
    items* {.importc: "items".}: ptr FzTextItem
    next* {.importc: "next".}: ptr FzTextSpan

  FzText* {.importc: "fz_text", header: "text.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    head* {.importc: "head".}: ptr FzTextSpan
    tail* {.importc: "tail".}: ptr FzTextSpan

  FzTransition* {.importc: "fz_transition", header: "transition.h", bycopy.} = object
    `type`* {.importc: "type".}: cint
    duration* {.importc: "duration".}: cfloat 
    vertical* {.importc: "vertical".}: cint 
    outwards* {.importc: "outwards".}: cint 
    direction* {.importc: "direction".}: cint 
    state0* {.importc: "state0".}: cint
    state1* {.importc: "state1".}: cint

  FzTree* {.importc, header: "types.h", incompleteStruct.} = object

  FzLocation* {.importc: "fz_location", header: "types.h", bycopy.} = object
    chapter* {.importc: "chapter".}: cint
    page* {.importc: "page".}: cint

  FzPclOptions* {.importc: "fz_pcl_options", header: "write-pixmap.h", bycopy.} = object
    features* {.importc: "features".}: cint 
    oddPageInit* {.importc: "odd_page_init".}: cstring
    evenPageInit* {.importc: "even_page_init".}: cstring 
    tumble* {.importc: "tumble".}: cint
    duplexSet* {.importc: "duplex_set".}: cint
    duplex* {.importc: "duplex".}: cint
    paperSize* {.importc: "paper_size".}: cint
    manualFeedSet* {.importc: "manual_feed_set".}: cint
    manualFeed* {.importc: "manual_feed".}: cint
    mediaPositionSet* {.importc: "media_position_set".}: cint
    mediaPosition* {.importc: "media_position".}: cint
    orientation* {.importc: "orientation".}: cint 
    pageCount* {.importc: "page_count".}: cint

  FzPclmOptions* {.importc: "fz_pclm_options", header: "write-pixmap.h", bycopy.} = object
    compress* {.importc: "compress".}: cint
    stripHeight* {.importc: "strip_height".}: cint 
    pageCount* {.importc: "page_count".}: cint

  FzPdfocrOptions* {.importc: "fz_pdfocr_options", header: "write-pixmap.h", bycopy.} = object
    compress* {.importc: "compress".}: cint
    stripHeight* {.importc: "strip_height".}: cint
    language* {.importc: "language".}: array[256, char]
    datadir* {.importc: "datadir".}: array[1024, char] 
    pageCount* {.importc: "page_count".}: cint

  FzPwgOptions* {.importc: "fz_pwg_options", header: "write-pixmap.h", bycopy.} = object
    mediaClass* {.importc: "media_class".}: array[64, char] 
    mediaColor* {.importc: "media_color".}: array[64, char]
    mediaType* {.importc: "media_type".}: array[64, char]
    outputType* {.importc: "output_type".}: array[64, char]
    advanceDistance* {.importc: "advance_distance".}: cuint
    advanceMedia* {.importc: "advance_media".}: cint
    collate* {.importc: "collate".}: cint
    cutMedia* {.importc: "cut_media".}: cint
    duplex* {.importc: "duplex".}: cint
    insertSheet* {.importc: "insert_sheet".}: cint
    jog* {.importc: "jog".}: cint
    leadingEdge* {.importc: "leading_edge".}: cint
    manualFeed* {.importc: "manual_feed".}: cint
    mediaPosition* {.importc: "media_position".}: cuint
    mediaWeight* {.importc: "media_weight".}: cuint
    mirrorPrint* {.importc: "mirror_print".}: cint
    negativePrint* {.importc: "negative_print".}: cint
    numCopies* {.importc: "num_copies".}: cuint
    orientation* {.importc: "orientation".}: cint
    outputFaceUp* {.importc: "output_face_up".}: cint
    pageSize* {.importc: "PageSize".}: array[2, cuint]
    separations* {.importc: "separations".}: cint
    traySwitch* {.importc: "tray_switch".}: cint
    tumble* {.importc: "tumble".}: cint
    mediaTypeNum* {.importc: "media_type_num".}: cint
    compression* {.importc: "compression".}: cint
    rowCount* {.importc: "row_count".}: cuint
    rowFeed* {.importc: "row_feed".}: cuint
    rowStep* {.importc: "row_step".}: cuint 
    renderingIntent* {.importc: "rendering_intent".}: array[64, char]
    pageSizeName* {.importc: "page_size_name".}: array[64, char]

  FzDocumentWriterBeginPageFn* = proc (ctx: ptr FzContext; wri: ptr FzDocumentWriter;
                                    mediabox: FzRect): ptr FzDevice {.cdecl.}

  FzDocumentWriterEndPageFn* = proc (ctx: ptr FzContext; wri: ptr FzDocumentWriter;
                                  dev: ptr FzDevice) {.cdecl.}

  FzDocumentWriterCloseWriterFn* = proc (ctx: ptr FzContext; wri: ptr FzDocumentWriter) {.
      cdecl.}

  FzDocumentWriterDropWriterFn* = proc (ctx: ptr FzContext; wri: ptr FzDocumentWriter) {.
      cdecl.}

  FzPdfocrProgressFn* = proc (ctx: ptr FzContext; progressArg: pointer; page: cint;
                           percent: cint): cint {.cdecl.}

  FzDocumentWriter* {.importc: "fz_document_writer", header: "writer.h", bycopy.} = object
    beginPage* {.importc: "begin_page".}: ptr FzDocumentWriterBeginPageFn
    endPage* {.importc: "end_page".}: ptr FzDocumentWriterEndPageFn
    closeWriter* {.importc: "close_writer".}: ptr FzDocumentWriterCloseWriterFn
    dropWriter* {.importc: "drop_writer".}: ptr FzDocumentWriterDropWriterFn
    dev* {.importc: "dev".}: ptr FzDevice

  FzXml* {.importc, header: "xml.h", incompleteStruct.} = object

  FzXmlDoc* {.importc, header: "xml.h", incompleteStruct.} = object

# From nimterop
# type
#   Type_fitzh5* {.bycopy, impfitzHdr, importc: "struct Type_fitzh5".} = object
#     color_transform*: cint     ## ::
#                          ##    Use -1 for unset
  
#   Type_fitzh6* {.bycopy, impfitzHdr, importc: "struct Type_fitzh6".} = object
#     smask_in_data*: cint

#   Type_fitzh7* {.bycopy, impfitzHdr, importc: "struct Type_fitzh7".} = object
#     globals*: ptr fz_jbig2_globals

#   Type_fitzh8* {.bycopy, impfitzHdr, importc: "struct Type_fitzh8".} = object
#     columns*: cint
#     rows*: cint
#     k*: cint
#     end_of_line*: cint
#     encoded_byte_align*: cint
#     end_of_block*: cint
#     black_is_1*: cint
#     damaged_rows_before_error*: cint

#   Type_fitzh9* {.bycopy, impfitzHdr, importc: "struct Type_fitzh9".} = object
#     columns*: cint
#     colors*: cint
#     predictor*: cint
#     bpc*: cint

#   Type_fitzh10* {.bycopy, impfitzHdr, importc: "struct Type_fitzh10".} = object
#     columns*: cint
#     colors*: cint
#     predictor*: cint
#     bpc*: cint
#     early_change*: cint

#   Union_fitzh4* {.union, bycopy, impfitzHdr, importc: "union Union_fitzh4".} = object
#     jpeg*: Type_fitzh5
#     jpx*: Type_fitzh6
#     jbig2*: Type_fitzh7
#     fax*: Type_fitzh8
#     flate*: Type_fitzh9
#     lzw*: Type_fitzh10


#[
proc fzDropPixmap*(ctx: ptr FzContext; pix: ptr FzPixmap) {.cdecl,
    importc: "fz_drop_pixmap", header: "pixmap.h".}
]#
# DESTRUCTORS
#[
	/* Clean up. */
	fz_drop_pixmap(ctx, pix);
	fz_drop_document(ctx, doc);
	fz_drop_context(ctx);
	return EXIT_SUCCESS;
]#

proc `=destroy`(obj:var FzPixmap) = 
  echo "destroy FzPixmap"
  #fzDropPixmap(ctx, pix)