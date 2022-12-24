import fitz_types

##  Copyright (C) 2022 Artifex Software, Inc.
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
#   mupdf/fitz/story, mupdf/fitz/writer

##
##  A fz_story_element_position plus page number information; used with
##  fz_write_story() and fz_write_stabilized_story().
##















proc fzWriteStory*(ctx: ptr FzContext; writer: ptr FzDocumentWriter;
                  story: ptr FzStory; rectfn: FzWriteStoryRectfn; rectfnRef: pointer;
                  positionfn: FzWriteStoryPositionfn; positionfnRef: pointer;
                  pagefn: FzWriteStoryPagefn; pagefnRef: pointer) {.cdecl,
    importc: "fz_write_story", header: "story-writer.h".}
##
##  Does iterative layout of html content to a fz_document_writer. For example
##  this allows one to add a table of contents section while ensuring that page
##  numbers are patched up until stable.
##
##  Repeatedly creates new story from (contentfn(), contentfn_ref, user_css, em)
##  and lays it out with internal call to fz_write_story(); uses a NULL writer
##  and populates a fz_write_story_positions which is passed to the next call of
##  contentfn().
##
##  When the html from contentfn() becomes unchanged, we do a final iteration
##  using <writer>.
##
##   writer:
##       Where to write in the final iteration.
##   user_css:
##       Used in internal calls to fz_new_story().
##   em:
##       Used in internal calls to fz_new_story().
##   contentfn:
##       Should return html content for use with fz_new_story(), possibly
##       including extra content such as a table-of-contents.
##   contentfn_ref:
##       Passed to contentfn().
##   rectfn:
##       Should return information about the rect to be used in the next
##       internal call to fz_place_story().
##   rectfn_ref:
##       Passed to rectfn().
##   fz_write_story_pagefn:
##       If not NULL, called at start and end of each page (before and after all
##       story content has been written to the device).
##   pagefn_ref:
##       Passed to pagefn().
##   archive:
##       NULL, or an archive to load images etc from.
##

proc fzWriteStabilizedStory*(ctx: ptr FzContext; writer: ptr FzDocumentWriter;
                            userCss: cstring; em: cfloat;
                            contentfn: FzWriteStoryContentfn;
                            contentfnRef: pointer; rectfn: FzWriteStoryRectfn;
                            rectfnRef: pointer; pagefn: FzWriteStoryPagefn;
                            pagefnRef: pointer; archive: ptr FzArchive) {.cdecl,
    importc: "fz_write_stabilized_story", header: "story-writer.h".}
