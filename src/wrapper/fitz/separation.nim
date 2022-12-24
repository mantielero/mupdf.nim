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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/color

## *
## 	A fz_separation structure holds details of a set of separations
## 	(such as might be used on within a page of the document).
##
## 	The app might control the separations by enabling/disabling them,
## 	and subsequent renders would take this into account.
##

const
  FZ_MAX_SEPARATIONS* = 64

type ##  "Composite" separations are rendered using process
    ##  colors using the equivalent colors
  FzSeparations* = fzSeparations
  FzSeparationBehavior* {.size: sizeof(cint).} = enum
    FZ_SEPARATION_COMPOSITE = 0, ##  Spot colors are rendered into their own spot plane.
    FZ_SEPARATION_SPOT = 1, ##  Disabled colors are not rendered at all in the final
                         ##  output.
    FZ_SEPARATION_DISABLED = 2


## *
## 	Create a new separations structure (initially empty)
##

proc fzNewSeparations*(ctx: ptr FzContext; controllable: cint): ptr FzSeparations {.
    cdecl, importc: "fz_new_separations", header: "separation.h".}
## *
## 	Increment the reference count for a separations structure.
## 	Returns the same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepSeparations*(ctx: ptr FzContext; sep: ptr FzSeparations): ptr FzSeparations {.
    cdecl, importc: "fz_keep_separations", header: "separation.h".}
## *
## 	Decrement the reference count for a separations structure.
## 	When the reference count hits zero, the separations structure
## 	is freed.
##
## 	Never throws exceptions.
##

proc fzDropSeparations*(ctx: ptr FzContext; sep: ptr FzSeparations) {.cdecl,
    importc: "fz_drop_separations", header: "separation.h".}
## *
## 	Add a separation (null terminated name, colorspace)
##

proc fzAddSeparation*(ctx: ptr FzContext; sep: ptr FzSeparations; name: cstring;
                     cs: ptr FzColorspace; csChannel: cint) {.cdecl,
    importc: "fz_add_separation", header: "separation.h".}
## *
## 	Add a separation with equivalents (null terminated name,
## 	colorspace)
##
## 	(old, deprecated)
##

proc fzAddSeparationEquivalents*(ctx: ptr FzContext; sep: ptr FzSeparations;
                                rgba: uint32T; cmyk: uint32T; name: cstring) {.cdecl,
    importc: "fz_add_separation_equivalents", header: "separation.h".}
## *
## 	Control the rendering of a given separation.
##

proc fzSetSeparationBehavior*(ctx: ptr FzContext; sep: ptr FzSeparations;
                             separation: cint; behavior: FzSeparationBehavior) {.
    cdecl, importc: "fz_set_separation_behavior", header: "separation.h".}
## *
## 	Test for the current behavior of a separation.
##

proc fzSeparationCurrentBehavior*(ctx: ptr FzContext; sep: ptr FzSeparations;
                                 separation: cint): FzSeparationBehavior {.cdecl,
    importc: "fz_separation_current_behavior", header: "separation.h".}
proc fzSeparationName*(ctx: ptr FzContext; sep: ptr FzSeparations; separation: cint): cstring {.
    cdecl, importc: "fz_separation_name", header: "separation.h".}
proc fzCountSeparations*(ctx: ptr FzContext; sep: ptr FzSeparations): cint {.cdecl,
    importc: "fz_count_separations", header: "separation.h".}
## *
## 	Return the number of active separations.
##

proc fzCountActiveSeparations*(ctx: ptr FzContext; seps: ptr FzSeparations): cint {.
    cdecl, importc: "fz_count_active_separations", header: "separation.h".}
## *
## 	Return a separations object with all the spots in the input
## 	separations object that are set to composite, reset to be
## 	enabled. If there ARE no spots in the object, this returns
## 	NULL. If the object already has all its spots enabled, then
## 	just returns another handle on the same object.
##

proc fzCloneSeparationsForOverprint*(ctx: ptr FzContext; seps: ptr FzSeparations): ptr FzSeparations {.
    cdecl, importc: "fz_clone_separations_for_overprint", header: "separation.h".}
## *
## 	Convert a color given in terms of one colorspace,
## 	to a color in terms of another colorspace/separations.
##

proc fzConvertSeparationColors*(ctx: ptr FzContext; srcCs: ptr FzColorspace;
                               srcColor: ptr cfloat; dstSeps: ptr FzSeparations;
                               dstCs: ptr FzColorspace; dstColor: ptr cfloat;
                               colorParams: FzColorParams) {.cdecl,
    importc: "fz_convert_separation_colors", header: "separation.h".}
## *
## 	Get the equivalent separation color in a given colorspace.
##

proc fzSeparationEquivalent*(ctx: ptr FzContext; seps: ptr FzSeparations; idx: cint;
                            dstCs: ptr FzColorspace; dstColor: ptr cfloat;
                            prf: ptr FzColorspace; colorParams: FzColorParams) {.
    cdecl, importc: "fz_separation_equivalent", header: "separation.h".}