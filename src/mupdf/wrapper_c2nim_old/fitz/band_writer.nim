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

## !!!Ignored construct:  # MUPDF_FITZ_BAND_WRITER_H [NewLine] # MUPDF_FITZ_BAND_WRITER_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/output.h [NewLine] # mupdf/fitz/color.h [NewLine] # mupdf/fitz/separation.h [NewLine] *
## 	fz_band_writer
##  typedef struct fz_band_writer fz_band_writer ;
## Error: identifier expected, but got: (!!!

## *
## 	Cause a band writer to write the header for
## 	a banded image with the given properties/dimensions etc. This
## 	also configures the bandwriter for the format of the data to be
## 	passed in future calls.
##
## 	w, h: Width and Height of the entire page.
##
## 	n: Number of components (including spots and alphas).
##
## 	alpha: Number of alpha components.
##
## 	xres, yres: X and Y resolutions in dpi.
##
## 	cs: Colorspace (NULL for bitmaps)
##
## 	seps: Separation details (or NULL).
##

proc fzWriteHeader*(ctx: ptr FzContext; writer: ptr FzBandWriter; w: cint; h: cint;
                   n: cint; alpha: cint; xres: cint; yres: cint; pagenum: cint;
                   cs: ptr FzColorspace; seps: ptr FzSeparations) {.cdecl,
    importc: "fz_write_header", header: "band-writer.h".}
## *
## 	Cause a band writer to write the next band
## 	of data for an image.
##
## 	stride: The byte offset from the first byte of the data
## 	for a pixel to the first byte of the data for the same pixel
## 	on the row below.
##
## 	band_height: The number of lines in this band.
##
## 	samples: Pointer to first byte of the data.
##

proc fzWriteBand*(ctx: ptr FzContext; writer: ptr FzBandWriter; stride: cint;
                 bandHeight: cint; samples: ptr cuchar) {.cdecl,
    importc: "fz_write_band", header: "band-writer.h".}
## *
## 	Finishes up the output and closes the band writer. After this
## 	call no more headers or bands may be written.
##

proc fzCloseBandWriter*(ctx: ptr FzContext; writer: ptr FzBandWriter) {.cdecl,
    importc: "fz_close_band_writer", header: "band-writer.h".}
## *
## 	Drop the reference to the band writer, causing it to be
## 	destroyed.
##
## 	Never throws an exception.
##

proc fzDropBandWriter*(ctx: ptr FzContext; writer: ptr FzBandWriter) {.cdecl,
    importc: "fz_drop_band_writer", header: "band-writer.h".}
##  Implementation details: subject to change.



proc fzNewBandWriterOfSize*(ctx: ptr FzContext; size: csize_t; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_band_writer_of_size", header: "band-writer.h".}
## !!!Ignored construct:  # fz_new_band_writer ( C , M , O ) ( ( M * ) Memento_label ( fz_new_band_writer_of_size ( ctx , sizeof ( M ) , O ) , # ) ) [NewLine] # [NewLine]
## Error: identifier expected, but got: (!!!

