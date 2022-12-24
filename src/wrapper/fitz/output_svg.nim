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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/device, mupdf/fitz/output

const
  FZ_SVG_TEXT_AS_PATH* = 0
  FZ_SVG_TEXT_AS_TEXT* = 1

## *
## 	Create a device that outputs (single page) SVG files to
## 	the given output stream.
##
## 	Equivalent to fz_new_svg_device_with_id passing id = NULL.
##

proc fzNewSvgDevice*(ctx: ptr FzContext; `out`: ptr FzOutput; pageWidth: cfloat;
                    pageHeight: cfloat; textFormat: cint; reuseImages: cint): ptr FzDevice {.
    cdecl, importc: "fz_new_svg_device", header: "output-svg.h".}
## *
## 	Create a device that outputs (single page) SVG files to
## 	the given output stream.
##
## 	output: The output stream to send the constructed SVG page to.
##
## 	page_width, page_height: The page dimensions to use (in points).
##
## 	text_format: How to emit text. One of the following values:
## 		FZ_SVG_TEXT_AS_TEXT: As <text> elements with possible
## 		layout errors and mismatching fonts.
## 		FZ_SVG_TEXT_AS_PATH: As <path> elements with exact
## 		visual appearance.
##
## 	reuse_images: Share image resources using <symbol> definitions.
##
## 	id: ID parameter to keep generated IDs unique across SVG files.
##

proc fzNewSvgDeviceWithId*(ctx: ptr FzContext; `out`: ptr FzOutput; pageWidth: cfloat;
                          pageHeight: cfloat; textFormat: cint; reuseImages: cint;
                          id: ptr cint): ptr FzDevice {.cdecl,
    importc: "fz_new_svg_device_with_id", header: "output-svg.h".}