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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/output, mupdf/fitz/band-writer,
#   mupdf/fitz/pixmap, mupdf/fitz/bitmap, mupdf/fitz/buffer, mupdf/fitz/image,
#   mupdf/fitz/writer

## *
## 	PCL output
##




proc fzPclPreset*(ctx: ptr FzContext; opts: ptr FzPclOptions; preset: cstring) {.cdecl,
    importc: "fz_pcl_preset", header: "write-pixmap.h".}
## *
## 	Parse PCL options.
##
## 	Currently defined options and values are as follows:
##
## 		preset=X	Either "generic" or one of the presets as for fz_pcl_preset.
## 		spacing=0	No vertical spacing capability
## 		spacing=1	PCL 3 spacing (<ESC>*p+<n>Y)
## 		spacing=2	PCL 4 spacing (<ESC>*b<n>Y)
## 		spacing=3	PCL 5 spacing (<ESC>*b<n>Y and clear seed row)
## 		mode2		Disable/Enable mode 2 graphics compression
## 		mode3		Disable/Enable mode 3 graphics compression
## 		eog_reset	End of graphics (<ESC>*rB) resets all parameters
## 		has_duplex	Duplex supported (<ESC>&l<duplex>S)
## 		has_papersize	Papersize setting supported (<ESC>&l<sizecode>A)
## 		has_copies	Number of copies supported (<ESC>&l<copies>X)
## 		is_ljet4pjl	Disable/Enable HP 4PJL model-specific output
## 		is_oce9050	Disable/Enable Oce 9050 model-specific output
##

proc fzParsePclOptions*(ctx: ptr FzContext; opts: ptr FzPclOptions; args: cstring): ptr FzPclOptions {.
    cdecl, importc: "fz_parse_pcl_options", header: "write-pixmap.h".}
## *
## 	Create a new band writer, outputing monochrome pcl.
##

proc fzNewMonoPclBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            options: ptr FzPclOptions): ptr FzBandWriter {.cdecl,
    importc: "fz_new_mono_pcl_band_writer", header: "write-pixmap.h".}
## *
## 	Write a bitmap as mono PCL.
##

proc fzWriteBitmapAsPcl*(ctx: ptr FzContext; `out`: ptr FzOutput; bitmap: ptr FzBitmap;
                        pcl: ptr FzPclOptions) {.cdecl,
    importc: "fz_write_bitmap_as_pcl", header: "write-pixmap.h".}
## *
## 	Save a bitmap as mono PCL.
##

proc fzSaveBitmapAsPcl*(ctx: ptr FzContext; bitmap: ptr FzBitmap; filename: cstring;
                       append: cint; pcl: ptr FzPclOptions) {.cdecl,
    importc: "fz_save_bitmap_as_pcl", header: "write-pixmap.h".}
## *
## 	Create a new band writer, outputing color pcl.
##

proc fzNewColorPclBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput;
                             options: ptr FzPclOptions): ptr FzBandWriter {.cdecl,
    importc: "fz_new_color_pcl_band_writer", header: "write-pixmap.h".}
## *
## 	Write an (RGB) pixmap as color PCL.
##

proc fzWritePixmapAsPcl*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap;
                        pcl: ptr FzPclOptions) {.cdecl,
    importc: "fz_write_pixmap_as_pcl", header: "write-pixmap.h".}
## *
## 	Save an (RGB) pixmap as color PCL.
##

proc fzSavePixmapAsPcl*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring;
                       append: cint; pcl: ptr FzPclOptions) {.cdecl,
    importc: "fz_save_pixmap_as_pcl", header: "write-pixmap.h".}
## *
## 	PCLm output
##




proc fzParsePclmOptions*(ctx: ptr FzContext; opts: ptr FzPclmOptions; args: cstring): ptr FzPclmOptions {.
    cdecl, importc: "fz_parse_pclm_options", header: "write-pixmap.h".}
## *
## 	Create a new band writer, outputing pclm
##

proc fzNewPclmBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput;
                         options: ptr FzPclmOptions): ptr FzBandWriter {.cdecl,
    importc: "fz_new_pclm_band_writer", header: "write-pixmap.h".}
## *
## 	Write a (Greyscale or RGB) pixmap as pclm.
##

proc fzWritePixmapAsPclm*(ctx: ptr FzContext; `out`: ptr FzOutput;
                         pixmap: ptr FzPixmap; options: ptr FzPclmOptions) {.cdecl,
    importc: "fz_write_pixmap_as_pclm", header: "write-pixmap.h".}
## *
## 	Save a (Greyscale or RGB) pixmap as pclm.
##

proc fzSavePixmapAsPclm*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring;
                        append: cint; options: ptr FzPclmOptions) {.cdecl,
    importc: "fz_save_pixmap_as_pclm", header: "write-pixmap.h".}
## *
## 	PDFOCR output
##




proc fzParsePdfocrOptions*(ctx: ptr FzContext; opts: ptr FzPdfocrOptions; args: cstring): ptr FzPdfocrOptions {.
    cdecl, importc: "fz_parse_pdfocr_options", header: "write-pixmap.h".}
## *
## 	Create a new band writer, outputing pdfocr.
##
## 	Ownership of output stays with the caller, the band writer
## 	borrows the reference. The caller must keep the output around
## 	for the duration of the band writer, and then close/drop as
## 	appropriate.
##

proc fzNewPdfocrBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput;
                           options: ptr FzPdfocrOptions): ptr FzBandWriter {.cdecl,
    importc: "fz_new_pdfocr_band_writer", header: "write-pixmap.h".}
## *
## 	Set the progress callback for a pdfocr bandwriter.
##

proc fzPdfocrBandWriterSetProgress*(ctx: ptr FzContext; writer: ptr FzBandWriter;
                                   progressFn: ptr FzPdfocrProgressFn;
                                   progressArg: pointer) {.cdecl,
    importc: "fz_pdfocr_band_writer_set_progress", header: "write-pixmap.h".}
## *
## 	Write a (Greyscale or RGB) pixmap as pdfocr.
##

proc fzWritePixmapAsPdfocr*(ctx: ptr FzContext; `out`: ptr FzOutput;
                           pixmap: ptr FzPixmap; options: ptr FzPdfocrOptions) {.
    cdecl, importc: "fz_write_pixmap_as_pdfocr", header: "write-pixmap.h".}
## *
## 	Save a (Greyscale or RGB) pixmap as pdfocr.
##

proc fzSavePixmapAsPdfocr*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring;
                          append: cint; options: ptr FzPdfocrOptions) {.cdecl,
    importc: "fz_save_pixmap_as_pdfocr", header: "write-pixmap.h".}
## *
## 	Save a (Greyscale or RGB) pixmap as a png.
##

proc fzSavePixmapAsPng*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring) {.
    cdecl, importc: "fz_save_pixmap_as_png", header: "write-pixmap.h".}
## *
## 	Write a (Greyscale or RGB) pixmap as a png.
##

proc fzWritePixmapAsPng*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap) {.
    cdecl, importc: "fz_write_pixmap_as_png", header: "write-pixmap.h".}
## *
## 	Create a new png band writer (greyscale or RGB, with or without
## 	alpha).
##

proc fzNewPngBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_png_band_writer", header: "write-pixmap.h".}
## *
## 	Reencode a given image as a PNG into a buffer.
##
## 	Ownership of the buffer is returned.
##

proc fzNewBufferFromImageAsPng*(ctx: ptr FzContext; image: ptr FzImage;
                               colorParams: FzColorParams): ptr FzBuffer {.cdecl,
    importc: "fz_new_buffer_from_image_as_png", header: "write-pixmap.h".}
## *
## 	Reencode a given pixmap as a PNG into a buffer.
##
## 	Ownership of the buffer is returned.
##

proc fzNewBufferFromPixmapAsPng*(ctx: ptr FzContext; pixmap: ptr FzPixmap;
                                colorParams: FzColorParams): ptr FzBuffer {.cdecl,
    importc: "fz_new_buffer_from_pixmap_as_png", header: "write-pixmap.h".}
## *
## 	Save a pixmap as a pnm (greyscale or rgb, no alpha).
##

proc fzSavePixmapAsPnm*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring) {.
    cdecl, importc: "fz_save_pixmap_as_pnm", header: "write-pixmap.h".}
## *
## 	Write a pixmap as a pnm (greyscale or rgb, no alpha).
##

proc fzWritePixmapAsPnm*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap) {.
    cdecl, importc: "fz_write_pixmap_as_pnm", header: "write-pixmap.h".}
## *
## 	Create a band writer targetting pnm (greyscale or rgb, no
## 	alpha).
##

proc fzNewPnmBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_pnm_band_writer", header: "write-pixmap.h".}
## *
## 	Save a pixmap as a pnm (greyscale, rgb or cmyk, with or without
## 	alpha).
##

proc fzSavePixmapAsPam*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring) {.
    cdecl, importc: "fz_save_pixmap_as_pam", header: "write-pixmap.h".}
## *
## 	Write a pixmap as a pnm (greyscale, rgb or cmyk, with or without
## 	alpha).
##

proc fzWritePixmapAsPam*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap) {.
    cdecl, importc: "fz_write_pixmap_as_pam", header: "write-pixmap.h".}
## *
## 	Create a band writer targetting pnm (greyscale, rgb or cmyk,
## 	with or without alpha).
##

proc fzNewPamBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_pam_band_writer", header: "write-pixmap.h".}
## *
## 	Save a bitmap as a pbm.
##

proc fzSaveBitmapAsPbm*(ctx: ptr FzContext; bitmap: ptr FzBitmap; filename: cstring) {.
    cdecl, importc: "fz_save_bitmap_as_pbm", header: "write-pixmap.h".}
## *
## 	Write a bitmap as a pbm.
##

proc fzWriteBitmapAsPbm*(ctx: ptr FzContext; `out`: ptr FzOutput; bitmap: ptr FzBitmap) {.
    cdecl, importc: "fz_write_bitmap_as_pbm", header: "write-pixmap.h".}
## *
## 	Create a new band writer, targetting pbm.
##

proc fzNewPbmBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_pbm_band_writer", header: "write-pixmap.h".}
## *
## 	Save a pixmap as a pbm. (Performing halftoning).
##

proc fzSavePixmapAsPbm*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring) {.
    cdecl, importc: "fz_save_pixmap_as_pbm", header: "write-pixmap.h".}
## *
## 	Save a CMYK bitmap as a pkm.
##

proc fzSaveBitmapAsPkm*(ctx: ptr FzContext; bitmap: ptr FzBitmap; filename: cstring) {.
    cdecl, importc: "fz_save_bitmap_as_pkm", header: "write-pixmap.h".}
## *
## 	Write a CMYK bitmap as a pkm.
##

proc fzWriteBitmapAsPkm*(ctx: ptr FzContext; `out`: ptr FzOutput; bitmap: ptr FzBitmap) {.
    cdecl, importc: "fz_write_bitmap_as_pkm", header: "write-pixmap.h".}
## *
## 	Create a new pkm band writer for CMYK pixmaps.
##

proc fzNewPkmBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_pkm_band_writer", header: "write-pixmap.h".}
## *
## 	Save a CMYK pixmap as a pkm. (Performing halftoning).
##

proc fzSavePixmapAsPkm*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring) {.
    cdecl, importc: "fz_save_pixmap_as_pkm", header: "write-pixmap.h".}
## *
## 	Write a (gray, rgb, or cmyk, no alpha) pixmap out as postscript.
##

proc fzWritePixmapAsPs*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap) {.
    cdecl, importc: "fz_write_pixmap_as_ps", header: "write-pixmap.h".}
## *
## 	Save a (gray, rgb, or cmyk, no alpha) pixmap out as postscript.
##

proc fzSavePixmapAsPs*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring;
                      append: cint) {.cdecl, importc: "fz_save_pixmap_as_ps",
                                    header: "write-pixmap.h".}
## *
## 	Create a postscript band writer for gray, rgb, or cmyk, no
## 	alpha.
##

proc fzNewPsBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_ps_band_writer", header: "write-pixmap.h".}
## *
## 	Write the file level header for ps band writer output.
##

proc fzWritePsFileHeader*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_write_ps_file_header", header: "write-pixmap.h".}
## *
## 	Write the file level trailer for ps band writer output.
##

proc fzWritePsFileTrailer*(ctx: ptr FzContext; `out`: ptr FzOutput; pages: cint) {.cdecl,
    importc: "fz_write_ps_file_trailer", header: "write-pixmap.h".}
## *
## 	Save a pixmap as a PSD file.
##

proc fzSavePixmapAsPsd*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring) {.
    cdecl, importc: "fz_save_pixmap_as_psd", header: "write-pixmap.h".}
## *
## 	Write a pixmap as a PSD file.
##

proc fzWritePixmapAsPsd*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap) {.
    cdecl, importc: "fz_write_pixmap_as_psd", header: "write-pixmap.h".}
## *
## 	Open a PSD band writer.
##

proc fzNewPsdBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzBandWriter {.
    cdecl, importc: "fz_new_psd_band_writer", header: "write-pixmap.h".}



proc fzSavePixmapAsPwg*(ctx: ptr FzContext; pixmap: ptr FzPixmap; filename: cstring;
                       append: cint; pwg: ptr FzPwgOptions) {.cdecl,
    importc: "fz_save_pixmap_as_pwg", header: "write-pixmap.h".}
## *
## 	Save a bitmap as a PWG.
##

proc fzSaveBitmapAsPwg*(ctx: ptr FzContext; bitmap: ptr FzBitmap; filename: cstring;
                       append: cint; pwg: ptr FzPwgOptions) {.cdecl,
    importc: "fz_save_bitmap_as_pwg", header: "write-pixmap.h".}
## *
## 	Write a pixmap as a PWG.
##

proc fzWritePixmapAsPwg*(ctx: ptr FzContext; `out`: ptr FzOutput; pixmap: ptr FzPixmap;
                        pwg: ptr FzPwgOptions) {.cdecl,
    importc: "fz_write_pixmap_as_pwg", header: "write-pixmap.h".}
## *
## 	Write a bitmap as a PWG.
##

proc fzWriteBitmapAsPwg*(ctx: ptr FzContext; `out`: ptr FzOutput; bitmap: ptr FzBitmap;
                        pwg: ptr FzPwgOptions) {.cdecl,
    importc: "fz_write_bitmap_as_pwg", header: "write-pixmap.h".}
## *
## 	Write a pixmap as a PWG page.
##
## 	Caller should provide a file header by calling
## 	fz_write_pwg_file_header, but can then write several pages to
## 	the same file.
##

proc fzWritePixmapAsPwgPage*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            pixmap: ptr FzPixmap; pwg: ptr FzPwgOptions) {.cdecl,
    importc: "fz_write_pixmap_as_pwg_page", header: "write-pixmap.h".}
## *
## 	Write a bitmap as a PWG page.
##
## 	Caller should provide a file header by calling
## 	fz_write_pwg_file_header, but can then write several pages to
## 	the same file.
##

proc fzWriteBitmapAsPwgPage*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            bitmap: ptr FzBitmap; pwg: ptr FzPwgOptions) {.cdecl,
    importc: "fz_write_bitmap_as_pwg_page", header: "write-pixmap.h".}
## *
## 	Create a new monochrome pwg band writer.
##

proc fzNewMonoPwgBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput;
                            pwg: ptr FzPwgOptions): ptr FzBandWriter {.cdecl,
    importc: "fz_new_mono_pwg_band_writer", header: "write-pixmap.h".}
## *
## 	Create a new color pwg band writer.
##

proc fzNewPwgBandWriter*(ctx: ptr FzContext; `out`: ptr FzOutput; pwg: ptr FzPwgOptions): ptr FzBandWriter {.
    cdecl, importc: "fz_new_pwg_band_writer", header: "write-pixmap.h".}
## *
## 	Output the file header to a pwg stream, ready for pages to follow it.
##

proc fzWritePwgFileHeader*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_write_pwg_file_header", header: "write-pixmap.h".}
##  for use by mudraw.c

