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
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/buffer, mupdf/fitz/device,
#   mupdf/fitz/xml, mupdf/fitz/archive

##
## 	This header file provides an API for laying out and placing styled
## 	text on a page, or pages.
##
## 	First a text story is created from some styled HTML.
##
## 	Next, this story can be laid out into a given rectangle (possibly
## 	retrying several times with updated rectangles as required).
##
## 	Next, the laid out story can be drawn to a given device.
##
## 	In the case where the text story cannot be fitted into the given
## 	areas all at once, these two steps can be repeated multiple
## 	times until the text story is completely consumed.
##
## 	Finally, the text story can be dropped in the usual fashion.
##



proc fzNewStory*(ctx: ptr FzContext; buf: ptr FzBuffer; userCss: cstring; em: cfloat;
                archive: ptr FzArchive): ptr FzStory {.cdecl, importc: "fz_new_story",
    header: "story.h".}
##
## 	Retrieve the warnings given from parsing this story.
##
## 	If there are warnings, this will be returned as a NULL terminated
## 	C string. If there are no warnings, this will return NULL.
##
## 	These warnings will not be complete until AFTER any DOM manipulations
## 	have been completed.
##
## 	This function does not need to be called, but once it has been
## 	the DOM is no longer accessible, and any fz_xml pointer
## 	retrieved from fz_story_docment is no longer valid.
##

proc fzStoryWarnings*(ctx: ptr FzContext; story: ptr FzStory): cstring {.cdecl,
    importc: "fz_story_warnings", header: "story.h".}
##
## 	Place (or continue placing) a story into the supplied rectangle
## 	'where', updating 'filled' with the actual area that was used.
## 	Returns zero if all the content fitted, non-zero if there is
## 	more to fit.
##
## 	Note, that filled may not be returned as a strict subset of
## 	where, due to padding/margins at the bottom of pages, and
## 	non-wrapping content extending to the right.
##
## 	Subsequent calls will attempt to place the same section of story
## 	again and again, until the placed story is drawn using fz_draw_story,
## 	whereupon subsequent calls to fz_place_story will attempt to place
## 	the unused remainder of the story.
##
## 	After this function is called, the DOM is no longer accessible,
## 	and any fz_xml pointer retrieved from fz_story_document is no
## 	longer valid.
##

proc fzPlaceStory*(ctx: ptr FzContext; story: ptr FzStory; where: FzRect;
                  filled: ptr FzRect): cint {.cdecl, importc: "fz_place_story",
    header: "story.h".}
##
## 	Draw the placed story to the given device.
##
## 	This moves the point at which subsequent calls to fz_place_story
## 	will restart placing to the end of what has just been output.
##

proc fzDrawStory*(ctx: ptr FzContext; story: ptr FzStory; dev: ptr FzDevice; ctm: FzMatrix) {.
    cdecl, importc: "fz_draw_story", header: "story.h".}
##
## 	Reset the position within the story at which the next layout call
## 	will continue to the start of the story.
##

proc fzResetStory*(ctx: ptr FzContext; story: ptr FzStory) {.cdecl,
    importc: "fz_reset_story", header: "story.h".}
##
## 	Drop the html story.
##

proc fzDropStory*(ctx: ptr FzContext; story: ptr FzStory) {.cdecl,
    importc: "fz_drop_story", header: "story.h".}
##
## 	Get a borrowed reference to the DOM document pointer for this
## 	story. Do not destroy this reference, it will be destroyed
## 	when the story is laid out.
##
## 	This only makes sense before the first placement of the story
## 	or retrieval of the warnings. Once either of those things happen
## 	the DOM representation is destroyed.
##

proc fzStoryDocument*(ctx: ptr FzContext; story: ptr FzStory): ptr FzXml {.cdecl,
    importc: "fz_story_document", header: "story.h".}



proc fzStoryPositions*(ctx: ptr FzContext; story: ptr FzStory;
                      cb: ptr FzStoryPositionCallback; arg: pointer) {.cdecl,
    importc: "fz_story_positions", header: "story.h".}
