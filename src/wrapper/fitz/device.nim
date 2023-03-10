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

## !!!Ignored construct:  # MUPDF_FITZ_DEVICE_H [NewLine] # MUPDF_FITZ_DEVICE_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/geometry.h [NewLine] # mupdf/fitz/image.h [NewLine] # mupdf/fitz/shade.h [NewLine] # mupdf/fitz/path.h [NewLine] # mupdf/fitz/text.h [NewLine] *
## 	The different format handlers (pdf, xps etc) interpret pages to
## 	a device. These devices can then process the stream of calls
## 	they receive in various ways:
## 		The trace device outputs debugging information for the calls.
## 		The draw device will render them.
## 		The list device stores them in a list to play back later.
## 		The text device performs text extraction and searching.
## 		The bbox device calculates the bounding box for the page.
## 	Other devices can (and will) be written in the future.
##  typedef struct fz_device fz_device ;
## Error: identifier expected, but got: (!!!

const                         ##  Flags
  FZ_DEVFLAG_MASK* = 1
  FZ_DEVFLAG_COLOR* = 2
  FZ_DEVFLAG_UNCACHEABLE* = 4
  FZ_DEVFLAG_FILLCOLOR_UNDEFINED* = 8
  FZ_DEVFLAG_STROKECOLOR_UNDEFINED* = 16
  FZ_DEVFLAG_STARTCAP_UNDEFINED* = 32
  FZ_DEVFLAG_DASHCAP_UNDEFINED* = 64
  FZ_DEVFLAG_ENDCAP_UNDEFINED* = 128
  FZ_DEVFLAG_LINEJOIN_UNDEFINED* = 256
  FZ_DEVFLAG_MITERLIMIT_UNDEFINED* = 512
  FZ_DEVFLAG_LINEWIDTH_UNDEFINED* = 1024 ##  Arguably we should have a bit for the dash pattern itself
                                      ##  being undefined, but that causes problems; do we assume that
                                      ##  it should always be set to non-dashing at the start of every
                                      ##  glyph?
  FZ_DEVFLAG_BBOX_DEFINED* = 2048
  FZ_DEVFLAG_GRIDFIT_AS_TILED* = 4096

const                         ##  PDF 1.4 -- standard separable
  FZ_BLEND_NORMAL* = 0
  FZ_BLEND_MULTIPLY* = 1
  FZ_BLEND_SCREEN* = 2
  FZ_BLEND_OVERLAY* = 3
  FZ_BLEND_DARKEN* = 4
  FZ_BLEND_LIGHTEN* = 5
  FZ_BLEND_COLOR_DODGE* = 6
  FZ_BLEND_COLOR_BURN* = 7
  FZ_BLEND_HARD_LIGHT* = 8
  FZ_BLEND_SOFT_LIGHT* = 9
  FZ_BLEND_DIFFERENCE* = 10
  FZ_BLEND_EXCLUSION* = 11      ##  PDF 1.4 -- standard non-separable
  FZ_BLEND_HUE* = 12
  FZ_BLEND_SATURATION* = 13
  FZ_BLEND_COLOR* = 14
  FZ_BLEND_LUMINOSITY* = 15     ##  For packing purposes
  FZ_BLEND_MODEMASK* = 15
  FZ_BLEND_ISOLATED* = 16
  FZ_BLEND_KNOCKOUT* = 32

## *
## 	Map from (case sensitive) blend mode string to enumeration.
##

proc fzLookupBlendmode*(name: cstring): cint {.cdecl, importc: "fz_lookup_blendmode",
    header: "device.h".}
## *
## 	Map from enumeration to blend mode string.
##
## 	The string is static, with arbitrary lifespan.
##

proc fzBlendmodeName*(blendmode: cint): cstring {.cdecl,
    importc: "fz_blendmode_name", header: "device.h".}
## *
## 	The device structure is public to allow devices to be
## 	implemented outside of fitz.
##
## 	Device methods should always be called using e.g.
## 	fz_fill_path(ctx, dev, ...) rather than
## 	dev->fill_path(ctx, dev, ...)
##
## *
## 	Devices can keep track of containers (clips/masks/groups/tiles)
## 	as they go to save callers having to do it.
##



const
  fzDeviceContainerStackIsClip* = 0
  fzDeviceContainerStackIsMask* = 1
  fzDeviceContainerStackIsGroup* = 2
  fzDeviceContainerStackIsTile* = 3




proc fzFillPath*(ctx: ptr FzContext; dev: ptr FzDevice; path: ptr FzPath; evenOdd: cint;
                ctm: FzMatrix; colorspace: ptr FzColorspace; color: ptr cfloat;
                alpha: cfloat; colorParams: FzColorParams) {.cdecl,
    importc: "fz_fill_path", header: "device.h".}
proc fzStrokePath*(ctx: ptr FzContext; dev: ptr FzDevice; path: ptr FzPath;
                  stroke: ptr FzStrokeState; ctm: FzMatrix;
                  colorspace: ptr FzColorspace; color: ptr cfloat; alpha: cfloat;
                  colorParams: FzColorParams) {.cdecl, importc: "fz_stroke_path",
    header: "device.h".}
proc fzClipPath*(ctx: ptr FzContext; dev: ptr FzDevice; path: ptr FzPath; evenOdd: cint;
                ctm: FzMatrix; scissor: FzRect) {.cdecl, importc: "fz_clip_path",
    header: "device.h".}
proc fzClipStrokePath*(ctx: ptr FzContext; dev: ptr FzDevice; path: ptr FzPath;
                      stroke: ptr FzStrokeState; ctm: FzMatrix; scissor: FzRect) {.
    cdecl, importc: "fz_clip_stroke_path", header: "device.h".}
proc fzFillText*(ctx: ptr FzContext; dev: ptr FzDevice; text: ptr FzText; ctm: FzMatrix;
                colorspace: ptr FzColorspace; color: ptr cfloat; alpha: cfloat;
                colorParams: FzColorParams) {.cdecl, importc: "fz_fill_text",
    header: "device.h".}
proc fzStrokeText*(ctx: ptr FzContext; dev: ptr FzDevice; text: ptr FzText;
                  stroke: ptr FzStrokeState; ctm: FzMatrix;
                  colorspace: ptr FzColorspace; color: ptr cfloat; alpha: cfloat;
                  colorParams: FzColorParams) {.cdecl, importc: "fz_stroke_text",
    header: "device.h".}
proc fzClipText*(ctx: ptr FzContext; dev: ptr FzDevice; text: ptr FzText; ctm: FzMatrix;
                scissor: FzRect) {.cdecl, importc: "fz_clip_text", header: "device.h".}
proc fzClipStrokeText*(ctx: ptr FzContext; dev: ptr FzDevice; text: ptr FzText;
                      stroke: ptr FzStrokeState; ctm: FzMatrix; scissor: FzRect) {.
    cdecl, importc: "fz_clip_stroke_text", header: "device.h".}
proc fzIgnoreText*(ctx: ptr FzContext; dev: ptr FzDevice; text: ptr FzText; ctm: FzMatrix) {.
    cdecl, importc: "fz_ignore_text", header: "device.h".}
proc fzPopClip*(ctx: ptr FzContext; dev: ptr FzDevice) {.cdecl, importc: "fz_pop_clip",
    header: "device.h".}
proc fzFillShade*(ctx: ptr FzContext; dev: ptr FzDevice; shade: ptr FzShade;
                 ctm: FzMatrix; alpha: cfloat; colorParams: FzColorParams) {.cdecl,
    importc: "fz_fill_shade", header: "device.h".}
proc fzFillImage*(ctx: ptr FzContext; dev: ptr FzDevice; image: ptr FzImage;
                 ctm: FzMatrix; alpha: cfloat; colorParams: FzColorParams) {.cdecl,
    importc: "fz_fill_image", header: "device.h".}
proc fzFillImageMask*(ctx: ptr FzContext; dev: ptr FzDevice; image: ptr FzImage;
                     ctm: FzMatrix; colorspace: ptr FzColorspace; color: ptr cfloat;
                     alpha: cfloat; colorParams: FzColorParams) {.cdecl,
    importc: "fz_fill_image_mask", header: "device.h".}
proc fzClipImageMask*(ctx: ptr FzContext; dev: ptr FzDevice; image: ptr FzImage;
                     ctm: FzMatrix; scissor: FzRect) {.cdecl,
    importc: "fz_clip_image_mask", header: "device.h".}
proc fzBeginMask*(ctx: ptr FzContext; dev: ptr FzDevice; area: FzRect; luminosity: cint;
                 colorspace: ptr FzColorspace; bc: ptr cfloat;
                 colorParams: FzColorParams) {.cdecl, importc: "fz_begin_mask",
    header: "device.h".}
proc fzEndMask*(ctx: ptr FzContext; dev: ptr FzDevice) {.cdecl, importc: "fz_end_mask",
    header: "device.h".}
proc fzBeginGroup*(ctx: ptr FzContext; dev: ptr FzDevice; area: FzRect;
                  cs: ptr FzColorspace; isolated: cint; knockout: cint;
                  blendmode: cint; alpha: cfloat) {.cdecl, importc: "fz_begin_group",
    header: "device.h".}
proc fzEndGroup*(ctx: ptr FzContext; dev: ptr FzDevice) {.cdecl,
    importc: "fz_end_group", header: "device.h".}
proc fzBeginTile*(ctx: ptr FzContext; dev: ptr FzDevice; area: FzRect; view: FzRect;
                 xstep: cfloat; ystep: cfloat; ctm: FzMatrix) {.cdecl,
    importc: "fz_begin_tile", header: "device.h".}
proc fzBeginTileId*(ctx: ptr FzContext; dev: ptr FzDevice; area: FzRect; view: FzRect;
                   xstep: cfloat; ystep: cfloat; ctm: FzMatrix; id: cint): cint {.cdecl,
    importc: "fz_begin_tile_id", header: "device.h".}
proc fzEndTile*(ctx: ptr FzContext; dev: ptr FzDevice) {.cdecl, importc: "fz_end_tile",
    header: "device.h".}
proc fzRenderFlags*(ctx: ptr FzContext; dev: ptr FzDevice; set: cint; clear: cint) {.cdecl,
    importc: "fz_render_flags", header: "device.h".}
proc fzSetDefaultColorspaces*(ctx: ptr FzContext; dev: ptr FzDevice;
                             defaultCs: ptr FzDefaultColorspaces) {.cdecl,
    importc: "fz_set_default_colorspaces", header: "device.h".}
proc fzBeginLayer*(ctx: ptr FzContext; dev: ptr FzDevice; layerName: cstring) {.cdecl,
    importc: "fz_begin_layer", header: "device.h".}
proc fzEndLayer*(ctx: ptr FzContext; dev: ptr FzDevice) {.cdecl,
    importc: "fz_end_layer", header: "device.h".}
## *
## 	Devices are created by calls to device implementations, for
## 	instance: foo_new_device(). These will be implemented by calling
## 	fz_new_derived_device(ctx, foo_device) where foo_device is a
## 	structure "derived from" fz_device, for instance
## 	typedef struct { fz_device base;  ...extras...} foo_device;
##

proc fzNewDeviceOfSize*(ctx: ptr FzContext; size: cint): ptr FzDevice {.cdecl,
    importc: "fz_new_device_of_size", header: "device.h".}
## !!!Ignored construct:  # fz_new_derived_device ( CTX , TYPE ) ( ( TYPE * ) Memento_label ( fz_new_device_of_size ( ctx , sizeof ( TYPE ) ) , # ) ) [NewLine] *
## 	Signal the end of input, and flush any buffered output.
## 	This is NOT called implicitly on fz_drop_device. This
## 	may throw exceptions.
##  void fz_close_device ( fz_context * ctx , fz_device * dev ) ;
## Error: identifier expected, but got: (!!!

## *
## 	Reduce the reference count on a device. When the reference count
## 	reaches zero, the device and its resources will be freed.
## 	Don't forget to call fz_close_device before dropping the device,
## 	or you may get incomplete output!
##
## 	Never throws exceptions.
##

proc fzDropDevice*(ctx: ptr FzContext; dev: ptr FzDevice) {.cdecl,
    importc: "fz_drop_device", header: "device.h".}
## *
## 	Increment the reference count for a device. Returns the same
## 	pointer.
##
## 	Never throws exceptions.
##

proc fzKeepDevice*(ctx: ptr FzContext; dev: ptr FzDevice): ptr FzDevice {.cdecl,
    importc: "fz_keep_device", header: "device.h".}
## *
## 	Enable (set) hint bits within the hint bitfield for a device.
##

proc fzEnableDeviceHints*(ctx: ptr FzContext; dev: ptr FzDevice; hints: cint) {.cdecl,
    importc: "fz_enable_device_hints", header: "device.h".}
## *
## 	Disable (clear) hint bits within the hint bitfield for a device.
##

proc fzDisableDeviceHints*(ctx: ptr FzContext; dev: ptr FzDevice; hints: cint) {.cdecl,
    importc: "fz_disable_device_hints", header: "device.h".}
## *
## 	Find current scissor region as tracked by the device.
##

proc fzDeviceCurrentScissor*(ctx: ptr FzContext; dev: ptr FzDevice): FzRect {.cdecl,
    importc: "fz_device_current_scissor", header: "device.h".}
const                         ##  Hints
  FZ_DONT_INTERPOLATE_IMAGES* = 1
  FZ_NO_CACHE* = 2

## *
## 	Cookie support - simple communication channel between app/library.
##
## *
## 	Provide two-way communication between application and library.
## 	Intended for multi-threaded applications where one thread is
## 	rendering pages and another thread wants to read progress
## 	feedback or abort a job that takes a long time to finish. The
## 	communication is unsynchronized without locking.
##
## 	abort: The application should set this field to 0 before
## 	calling fz_run_page to render a page. At any point when the
## 	page is being rendered the application my set this field to 1
## 	which will cause the rendering to finish soon. This field is
## 	checked periodically when the page is rendered, but exactly
## 	when is not known, therefore there is no upper bound on
## 	exactly when the rendering will abort. If the application
## 	did not provide a set of locks to fz_new_context, it must also
## 	await the completion of fz_run_page before issuing another
## 	call to fz_run_page. Note that once the application has set
## 	this field to 1 after it called fz_run_page it may not change
## 	the value again.
##
## 	progress: Communicates rendering progress back to the
## 	application and is read only. Increments as a page is being
## 	rendered. The value starts out at 0 and is limited to less
## 	than or equal to progress_max, unless progress_max is -1.
##
## 	progress_max: Communicates the known upper bound of rendering
## 	back to the application and is read only. The maximum value
## 	that the progress field may take. If there is no known upper
## 	bound on how long the rendering may take this value is -1 and
## 	progress is not limited. Note that the value of progress_max
## 	may change from -1 to a positive value once an upper bound is
## 	known, so take this into consideration when comparing the
## 	value of progress to that of progress_max.
##
## 	errors: count of errors during current rendering.
##
## 	incomplete: Initially should be set to 0. Will be set to
## 	non-zero if a TRYLATER error is thrown during rendering.
##




proc fzNewTraceDevice*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzDevice {.cdecl,
    importc: "fz_new_trace_device", header: "device.h".}
## *
## 	Create a device to output raw information.
##

proc fzNewXmltextDevice*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzDevice {.cdecl,
    importc: "fz_new_xmltext_device", header: "device.h".}
## *
## 	Create a device to compute the bounding
## 	box of all marks on a page.
##
## 	The returned bounding box will be the union of all bounding
## 	boxes of all objects on a page.
##

proc fzNewBboxDevice*(ctx: ptr FzContext; rectp: ptr FzRect): ptr FzDevice {.cdecl,
    importc: "fz_new_bbox_device", header: "device.h".}
## *
## 	Create a device to test for features.
##
## 	Currently only tests for the presence of non-grayscale colors.
##
## 	is_color: Possible values returned:
## 		0: Definitely greyscale
## 		1: Probably color (all colors were grey, but there
## 		were images or shadings in a non grey colorspace).
## 		2: Definitely color
##
## 	threshold: The difference from grayscale that will be tolerated.
## 	Typical values to use are either 0 (be exact) and 0.02 (allow an
## 	imperceptible amount of slop).
##
## 	options: A set of bitfield options, from the FZ_TEST_OPT set.
##
## 	passthrough: A device to pass all calls through to, or NULL.
## 	If set, then the test device can both test and pass through to
## 	an underlying device (like, say, the display list device). This
## 	means that a display list can be created and at the end we'll
## 	know if it's colored or not.
##
## 	In the absence of a passthrough device, the device will throw
## 	an exception to stop page interpretation when color is found.
##

proc fzNewTestDevice*(ctx: ptr FzContext; isColor: ptr cint; threshold: cfloat;
                     options: cint; passthrough: ptr FzDevice): ptr FzDevice {.cdecl,
    importc: "fz_new_test_device", header: "device.h".}
const                         ##  If set, test every pixel of images exhaustively.
     ##  If clear, just look at colorspaces for images.
  FZ_TEST_OPT_IMAGES* = 1       ##  If set, test every pixel of shadings.
                       ##  If clear, just look at colorspaces for shadings.
  FZ_TEST_OPT_SHADINGS* = 2

## *
## 	Create a device to draw on a pixmap.
##
## 	dest: Target pixmap for the draw device. See fz_new_pixmap*
## 	for how to obtain a pixmap. The pixmap is not cleared by the
## 	draw device, see fz_clear_pixmap* for how to clear it prior to
## 	calling fz_new_draw_device. Free the device by calling
## 	fz_drop_device.
##
## 	transform: Transform from user space in points to device space
## 	in pixels.
##

proc fzNewDrawDevice*(ctx: ptr FzContext; transform: FzMatrix; dest: ptr FzPixmap): ptr FzDevice {.
    cdecl, importc: "fz_new_draw_device", header: "device.h".}
## *
## 	Create a device to draw on a pixmap.
##
## 	dest: Target pixmap for the draw device. See fz_new_pixmap*
## 	for how to obtain a pixmap. The pixmap is not cleared by the
## 	draw device, see fz_clear_pixmap* for how to clear it prior to
## 	calling fz_new_draw_device. Free the device by calling
## 	fz_drop_device.
##
## 	transform: Transform from user space in points to device space
## 	in pixels.
##
## 	clip: Bounding box to restrict any marking operations of the
## 	draw device.
##

proc fzNewDrawDeviceWithBbox*(ctx: ptr FzContext; transform: FzMatrix;
                             dest: ptr FzPixmap; clip: ptr FzIrect): ptr FzDevice {.
    cdecl, importc: "fz_new_draw_device_with_bbox", header: "device.h".}
## *
## 	Create a device to draw on a pixmap.
##
## 	dest: Target pixmap for the draw device. See fz_new_pixmap*
## 	for how to obtain a pixmap. The pixmap is not cleared by the
## 	draw device, see fz_clear_pixmap* for how to clear it prior to
## 	calling fz_new_draw_device. Free the device by calling
## 	fz_drop_device.
##
## 	transform: Transform from user space in points to device space
## 	in pixels.
##
## 	proof_cs: Intermediate color space to map though when mapping to
## 	color space defined by pixmap.
##

proc fzNewDrawDeviceWithProof*(ctx: ptr FzContext; transform: FzMatrix;
                              dest: ptr FzPixmap; proofCs: ptr FzColorspace): ptr FzDevice {.
    cdecl, importc: "fz_new_draw_device_with_proof", header: "device.h".}
## *
## 	Create a device to draw on a pixmap.
##
## 	dest: Target pixmap for the draw device. See fz_new_pixmap*
## 	for how to obtain a pixmap. The pixmap is not cleared by the
## 	draw device, see fz_clear_pixmap* for how to clear it prior to
## 	calling fz_new_draw_device. Free the device by calling
## 	fz_drop_device.
##
## 	transform: Transform from user space in points to device space
## 	in pixels.
##
## 	clip: Bounding box to restrict any marking operations of the
## 	draw device.
##
## 	proof_cs: Color space to render to prior to mapping to color
## 	space defined by pixmap.
##

proc fzNewDrawDeviceWithBboxProof*(ctx: ptr FzContext; transform: FzMatrix;
                                  dest: ptr FzPixmap; clip: ptr FzIrect;
                                  cs: ptr FzColorspace): ptr FzDevice {.cdecl,
    importc: "fz_new_draw_device_with_bbox_proof", header: "device.h".}
proc fzNewDrawDeviceType3*(ctx: ptr FzContext; transform: FzMatrix; dest: ptr FzPixmap): ptr FzDevice {.
    cdecl, importc: "fz_new_draw_device_type3", header: "device.h".}
## *
## 	struct fz_draw_options: Options for creating a pixmap and draw
## 	device.
##





proc fzParseDrawOptions*(ctx: ptr FzContext; options: ptr FzDrawOptions;
                        string: cstring): ptr FzDrawOptions {.cdecl,
    importc: "fz_parse_draw_options", header: "device.h".}
## *
## 	Create a new pixmap and draw device, using the specified options.
##
## 	options: Options to configure the draw device, and choose the
## 	resolution and colorspace.
##
## 	mediabox: The bounds of the page in points.
##
## 	pixmap: An out parameter containing the newly created pixmap.
##

proc fzNewDrawDeviceWithOptions*(ctx: ptr FzContext; options: ptr FzDrawOptions;
                                mediabox: FzRect; pixmap: ptr ptr FzPixmap): ptr FzDevice {.
    cdecl, importc: "fz_new_draw_device_with_options", header: "device.h".}
