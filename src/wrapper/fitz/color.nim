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

## !!!Ignored construct:  # MUPDF_FITZ_COLOR_H [NewLine] # MUPDF_FITZ_COLOR_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/store.h [NewLine] # FZ_ENABLE_ICC [NewLine] *
## 	Opaque type for an ICC Profile.
##  typedef struct fz_icc_profile fz_icc_profile ;
## Error: token expected: ; but got: [identifier]!!!

## *
## 	Describes a given colorspace.
##











proc fzLookupRenderingIntent*(name: cstring): cint {.cdecl,
    importc: "fz_lookup_rendering_intent", header: "color.h".}
## *
## 	Map from enumerated rendering intent to string.
##
## 	The returned string is static and therefore must not be freed.
##

proc fzRenderingIntentName*(ri: cint): cstring {.cdecl,
    importc: "fz_rendering_intent_name", header: "color.h".}
## *
## 	The maximum number of colorants available in any given
## 	color/colorspace (not including alpha).
##
## 	Changing this value will alter the amount of memory being used
## 	(both stack and heap space), but not hugely. Speed should
## 	(largely) be determined by the number of colors actually used.
##



## *
## 	Creates a new colorspace instance and returns a reference.
##
## 	No internal checking is done that the colorspace type (e.g.
## 	CMYK) matches with the flags (e.g. FZ_COLORSPACE_HAS_CMYK) or
## 	colorant count (n) or name.
##
## 	The reference should be dropped when it is finished with.
##
## 	Colorspaces are immutable once created (with the exception of
## 	setting up colorant names for separation spaces).
##

proc fzNewColorspace*(ctx: ptr FzContext; `type`: FzColorspaceType; flags: cint;
                     n: cint; name: cstring): ptr FzColorspace {.cdecl,
    importc: "fz_new_colorspace", header: "color.h".}
## *
## 	Increment the reference count for the colorspace.
##
## 	Returns the same pointer. Never throws an exception.
##

proc fzKeepColorspace*(ctx: ptr FzContext; colorspace: ptr FzColorspace): ptr FzColorspace {.
    cdecl, importc: "fz_keep_colorspace", header: "color.h".}
## *
## 	Drops a reference to the colorspace.
##
## 	When the reference count reaches zero, the colorspace is
## 	destroyed.
##

proc fzDropColorspace*(ctx: ptr FzContext; colorspace: ptr FzColorspace) {.cdecl,
    importc: "fz_drop_colorspace", header: "color.h".}
## *
## 	Create an indexed colorspace.
##
## 	The supplied lookup table is high palette entries long. Each
## 	entry is n bytes long, where n is given by the number of
## 	colorants in the base colorspace, one byte per colorant.
##
## 	Ownership of lookup is passed it; it will be freed on
## 	destruction, so must be heap allocated.
##
## 	The colorspace will keep an additional reference to the base
## 	colorspace that will be dropped on destruction.
##
## 	The returned reference should be dropped when it is finished
## 	with.
##
## 	Colorspaces are immutable once created.
##

proc fzNewIndexedColorspace*(ctx: ptr FzContext; base: ptr FzColorspace; high: cint;
                            lookup: ptr cuchar): ptr FzColorspace {.cdecl,
    importc: "fz_new_indexed_colorspace", header: "color.h".}
## *
## 	Create a colorspace from an ICC profile supplied in buf.
##
## 	Limited checking is done to ensure that the colorspace type is
## 	appropriate for the supplied ICC profile.
##
## 	An additional reference is taken to buf, which will be dropped
## 	on destruction. Ownership is NOT passed in.
##
## 	The returned reference should be dropped when it is finished
## 	with.
##
## 	Colorspaces are immutable once created.
##

proc fzNewIccColorspace*(ctx: ptr FzContext; `type`: FzColorspaceType; flags: cint;
                        name: cstring; buf: ptr FzBuffer): ptr FzColorspace {.cdecl,
    importc: "fz_new_icc_colorspace", header: "color.h".}
## *
## 	Create a calibrated gray colorspace.
##
## 	The returned reference should be dropped when it is finished
## 	with.
##
## 	Colorspaces are immutable once created.
##

proc fzNewCalGrayColorspace*(ctx: ptr FzContext; wp: array[3, cfloat];
                            bp: array[3, cfloat]; gamma: cfloat): ptr FzColorspace {.
    cdecl, importc: "fz_new_cal_gray_colorspace", header: "color.h".}
## *
## 	Create a calibrated rgb colorspace.
##
## 	The returned reference should be dropped when it is finished
## 	with.
##
## 	Colorspaces are immutable once created.
##

proc fzNewCalRgbColorspace*(ctx: ptr FzContext; wp: array[3, cfloat];
                           bp: array[3, cfloat]; gamma: array[3, cfloat];
                           matrix: array[9, cfloat]): ptr FzColorspace {.cdecl,
    importc: "fz_new_cal_rgb_colorspace", header: "color.h".}
## *
## 	Query the type of colorspace.
##

proc fzColorspaceType*(ctx: ptr FzContext; cs: ptr FzColorspace): FzColorspaceType {.
    cdecl, importc: "fz_colorspace_type", header: "color.h".}
## *
## 	Query the name of a colorspace.
##
## 	The returned string has the same lifespan as the colorspace
## 	does. Caller should not free it.
##

proc fzColorspaceName*(ctx: ptr FzContext; cs: ptr FzColorspace): cstring {.cdecl,
    importc: "fz_colorspace_name", header: "color.h".}
## *
## 	Query the number of colorants in a colorspace.
##

proc fzColorspaceN*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_n", header: "color.h".}
## *
## 	True for CMYK, Separation and DeviceN colorspaces.
##

proc fzColorspaceIsSubtractive*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_subtractive", header: "color.h".}
## *
## 	True if DeviceN color space has only colorants from the CMYK set.
##

proc fzColorspaceDeviceNHasOnlyCmyk*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.
    cdecl, importc: "fz_colorspace_device_n_has_only_cmyk", header: "color.h".}
## *
## 	True if DeviceN color space has cyan magenta yellow or black as
## 	one of its colorants.
##

proc fzColorspaceDeviceNHasCmyk*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.
    cdecl, importc: "fz_colorspace_device_n_has_cmyk", header: "color.h".}
## *
## 	Tests for particular types of colorspaces
##

proc fzColorspaceIsGray*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_gray", header: "color.h".}
proc fzColorspaceIsRgb*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_rgb", header: "color.h".}
proc fzColorspaceIsCmyk*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_cmyk", header: "color.h".}
proc fzColorspaceIsLab*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_lab", header: "color.h".}
proc fzColorspaceIsIndexed*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_indexed", header: "color.h".}
proc fzColorspaceIsDeviceN*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_device_n", header: "color.h".}
proc fzColorspaceIsDevice*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_device", header: "color.h".}
proc fzColorspaceIsDeviceGray*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_device_gray", header: "color.h".}
proc fzColorspaceIsDeviceCmyk*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_device_cmyk", header: "color.h".}
proc fzColorspaceIsLabIcc*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_colorspace_is_lab_icc", header: "color.h".}
## *
## 	Check to see that a colorspace is appropriate to be used as
## 	a blending space (i.e. only grey, rgb or cmyk).
##

proc fzIsValidBlendColorspace*(ctx: ptr FzContext; cs: ptr FzColorspace): cint {.cdecl,
    importc: "fz_is_valid_blend_colorspace", header: "color.h".}
## *
## 	Retrieve global default colorspaces.
##
## 	These return borrowed references that should not be dropped,
## 	unless they are kept first.
##

proc fzDeviceGray*(ctx: ptr FzContext): ptr FzColorspace {.cdecl,
    importc: "fz_device_gray", header: "color.h".}
proc fzDeviceRgb*(ctx: ptr FzContext): ptr FzColorspace {.cdecl,
    importc: "fz_device_rgb", header: "color.h".}
proc fzDeviceBgr*(ctx: ptr FzContext): ptr FzColorspace {.cdecl,
    importc: "fz_device_bgr", header: "color.h".}
proc fzDeviceCmyk*(ctx: ptr FzContext): ptr FzColorspace {.cdecl,
    importc: "fz_device_cmyk", header: "color.h".}
proc fzDeviceLab*(ctx: ptr FzContext): ptr FzColorspace {.cdecl,
    importc: "fz_device_lab", header: "color.h".}
## *
## 	Assign a name for a given colorant in a colorspace.
##
## 	Used while initially setting up a colorspace. The string is
## 	copied into local storage, so need not be retained by the
## 	caller.
##

proc fzColorspaceNameColorant*(ctx: ptr FzContext; cs: ptr FzColorspace; n: cint;
                              name: cstring) {.cdecl,
    importc: "fz_colorspace_name_colorant", header: "color.h".}
## *
## 	Retrieve a the name for a colorant.
##
## 	Returns a pointer with the same lifespan as the colorspace.
##

proc fzColorspaceColorant*(ctx: ptr FzContext; cs: ptr FzColorspace; n: cint): cstring {.
    cdecl, importc: "fz_colorspace_colorant", header: "color.h".}
##  Color conversion
## *
## 	Clamp the samples in a color to the correct ranges for a
## 	given colorspace.
##

proc fzClampColor*(ctx: ptr FzContext; cs: ptr FzColorspace; `in`: ptr cfloat;
                  `out`: ptr cfloat) {.cdecl, importc: "fz_clamp_color",
                                    header: "color.h".}
## *
## 	Convert color values sv from colorspace ss into colorvalues dv
## 	for colorspace ds, via an optional intervening space is,
## 	respecting the given color_params.
##

proc fzConvertColor*(ctx: ptr FzContext; ss: ptr FzColorspace; sv: ptr cfloat;
                    ds: ptr FzColorspace; dv: ptr cfloat; `is`: ptr FzColorspace;
                    params: FzColorParams) {.cdecl, importc: "fz_convert_color",
    header: "color.h".}
##  Default (fallback) colorspace handling
## *
## 	Structure to hold default colorspaces.
##




proc fzNewDefaultColorspaces*(ctx: ptr FzContext): ptr FzDefaultColorspaces {.cdecl,
    importc: "fz_new_default_colorspaces", header: "color.h".}
## *
## 	Keep an additional reference to the default colorspaces
## 	structure.
##
## 	Never throws exceptions.
##

proc fzKeepDefaultColorspaces*(ctx: ptr FzContext;
                              defaultCs: ptr FzDefaultColorspaces): ptr FzDefaultColorspaces {.
    cdecl, importc: "fz_keep_default_colorspaces", header: "color.h".}
## *
## 	Drop a reference to the default colorspaces structure. When the
## 	reference count reaches 0, the references it holds internally
## 	to the underlying colorspaces will be dropped, and the structure
## 	will be destroyed.
##
## 	Never throws exceptions.
##

proc fzDropDefaultColorspaces*(ctx: ptr FzContext;
                              defaultCs: ptr FzDefaultColorspaces) {.cdecl,
    importc: "fz_drop_default_colorspaces", header: "color.h".}
## *
## 	Returns a reference to a newly cloned default colorspaces
## 	structure.
##
## 	The new clone may safely be altered without fear of race
## 	conditions as the caller is the only reference holder.
##

proc fzCloneDefaultColorspaces*(ctx: ptr FzContext; base: ptr FzDefaultColorspaces): ptr FzDefaultColorspaces {.
    cdecl, importc: "fz_clone_default_colorspaces", header: "color.h".}
## *
## 	Retrieve default colorspaces (typically page local).
##
## 	If default_cs is non NULL, the default is retrieved from there,
## 	otherwise the global default is retrieved.
##
## 	These return borrowed references that should not be dropped,
## 	unless they are kept first.
##

proc fzDefaultGray*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces): ptr FzColorspace {.
    cdecl, importc: "fz_default_gray", header: "color.h".}
proc fzDefaultRgb*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces): ptr FzColorspace {.
    cdecl, importc: "fz_default_rgb", header: "color.h".}
proc fzDefaultCmyk*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces): ptr FzColorspace {.
    cdecl, importc: "fz_default_cmyk", header: "color.h".}
proc fzDefaultOutputIntent*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces): ptr FzColorspace {.
    cdecl, importc: "fz_default_output_intent", header: "color.h".}
## *
## 	Set new defaults within the default colorspace structure.
##
## 	New references are taken to the new default, and references to
## 	the old defaults dropped.
##
## 	Never throws exceptions.
##

proc fzSetDefaultGray*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces;
                      cs: ptr FzColorspace) {.cdecl, importc: "fz_set_default_gray",
    header: "color.h".}
proc fzSetDefaultRgb*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces;
                     cs: ptr FzColorspace) {.cdecl, importc: "fz_set_default_rgb",
    header: "color.h".}
proc fzSetDefaultCmyk*(ctx: ptr FzContext; defaultCs: ptr FzDefaultColorspaces;
                      cs: ptr FzColorspace) {.cdecl, importc: "fz_set_default_cmyk",
    header: "color.h".}
proc fzSetDefaultOutputIntent*(ctx: ptr FzContext;
                              defaultCs: ptr FzDefaultColorspaces;
                              cs: ptr FzColorspace) {.cdecl,
    importc: "fz_set_default_output_intent", header: "color.h".}
##  Implementation details: subject to change.

## !!!Ignored construct:  struct fz_colorspace { fz_key_storable key_storable ; enum fz_colorspace_type type ; int flags ; int n ; char * name ; union { # FZ_ENABLE_ICC [NewLine] struct { fz_buffer * buffer ; unsigned char md5 [ 16 ] ; fz_icc_profile * profile ; } icc ; # [NewLine] struct { fz_colorspace * base ; int high ; unsigned char * lookup ; } indexed ; struct { fz_colorspace * base ; void ( * eval ) ( fz_context * ctx , void * tint , const float * s , int sn , float * d , int dn ) ; void ( * drop ) ( fz_context * ctx , void * tint ) ; void * tint ; char * colorant [ FZ_MAX_COLORS ] ; } separation ; } u ; } ;
## Error: identifier expected, but got: {!!!

proc fzDropColorspaceImp*(ctx: ptr FzContext; cs: ptr FzStorable) {.cdecl,
    importc: "fz_drop_colorspace_imp", header: "color.h".}
