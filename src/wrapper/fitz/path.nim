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

## !!!Ignored construct:  # MUPDF_FITZ_PATH_H [NewLine] # MUPDF_FITZ_PATH_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/geometry.h [NewLine] *
##  Vector path buffer.
##  It can be stroked and dashed, or be filled.
##  It has a fill rule (nonzero or even_odd).
##
##  When rendering, they are flattened, stroked and dashed straight
##  into the Global Edge List.
##  typedef struct fz_path fz_path ;
## Error: token expected: ; but got: [identifier]!!!







proc fzWalkPath*(ctx: ptr FzContext; path: ptr FzPath; walker: ptr FzPathWalker;
                arg: pointer) {.cdecl, importc: "fz_walk_path", header: "path.h".}
## *
## 	Create a new (empty) path structure.
##

proc fzNewPath*(ctx: ptr FzContext): ptr FzPath {.cdecl, importc: "fz_new_path",
    header: "path.h".}
## *
## 	Increment the reference count. Returns the same pointer.
##
## 	All paths can be kept, regardless of their packing type.
##
## 	Never throws exceptions.
##

proc fzKeepPath*(ctx: ptr FzContext; path: ptr FzPath): ptr FzPath {.cdecl,
    importc: "fz_keep_path", header: "path.h".}
## *
## 	Decrement the reference count. When the reference count hits
## 	zero, free the path.
##
## 	All paths can be dropped, regardless of their packing type.
## 	Packed paths do not own the blocks into which they are packed
## 	so dropping them does not free those blocks.
##
## 	Never throws exceptions.
##

proc fzDropPath*(ctx: ptr FzContext; path: ptr FzPath) {.cdecl, importc: "fz_drop_path",
    header: "path.h".}
## *
## 	Minimise the internal storage used by a path.
##
## 	As paths are constructed, the internal buffers
## 	grow. To avoid repeated reallocations they
## 	grow with some spare space. Once a path has
## 	been fully constructed, this call allows the
## 	excess space to be trimmed.
##

proc fzTrimPath*(ctx: ptr FzContext; path: ptr FzPath) {.cdecl, importc: "fz_trim_path",
    header: "path.h".}
## *
## 	Return the number of bytes required to pack a path.
##

proc fzPackedPathSize*(path: ptr FzPath): cint {.cdecl,
    importc: "fz_packed_path_size", header: "path.h".}
## *
## 	Pack a path into the given block.
## 	To minimise the size of paths, this function allows them to be
## 	packed into a buffer with other information. Paths can be used
## 	interchangeably regardless of how they are packed.
##
## 	pack: Pointer to a block of data to pack the path into. Should
## 	be aligned by the caller to the same alignment as required for
## 	a fz_path pointer.
##
## 	max: The number of bytes available in the block.
## 	If max < sizeof(fz_path) then an exception will
## 	be thrown. If max >= the value returned by
## 	fz_packed_path_size, then this call will never
## 	fail, except in low memory situations with large
## 	paths.
##
## 	path: The path to pack.
##
## 	Returns the number of bytes within the block used. Callers can
## 	access the packed path data by casting the value of pack on
## 	entry to be a fz_path *.
##
## 	Throws exceptions on failure to allocate, or if
## 	max < sizeof(fz_path).
##
## 	Implementation details: Paths can be 'unpacked', 'flat', or
## 	'open'. Standard paths, as created are 'unpacked'. Paths that
## 	will pack into less than max bytes will be packed as 'flat',
## 	unless they are too large (where large indicates that they
## 	exceed some private implementation defined limits, currently
## 	including having more than 256 coordinates or commands).
##
## 	Large paths are 'open' packed as a header into the given block,
## 	plus pointers to other data blocks.
##
## 	Users should not have to care about whether paths are 'open'
## 	or 'flat' packed. Simply pack a path (if required), and then
## 	forget about the details.
##

proc fzPackPath*(ctx: ptr FzContext; pack: ptr uint8T; max: csize_t; path: ptr FzPath): csize_t {.
    cdecl, importc: "fz_pack_path", header: "path.h".}
## *
## 	Clone the data for a path.
##
## 	This is used in preference to fz_keep_path when a whole
## 	new copy of a path is required, rather than just a shared
## 	pointer. This probably indicates that the path is about to
## 	be modified.
##
## 	path: path to clone.
##
## 	Throws exceptions on failure to allocate.
##

proc fzClonePath*(ctx: ptr FzContext; path: ptr FzPath): ptr FzPath {.cdecl,
    importc: "fz_clone_path", header: "path.h".}
## *
## 	Return the current point that a path has
## 	reached or (0,0) if empty.
##
## 	path: path to return the current point of.
##

proc fzCurrentpoint*(ctx: ptr FzContext; path: ptr FzPath): FzPoint {.cdecl,
    importc: "fz_currentpoint", header: "path.h".}
## *
## 	Append a 'moveto' command to a path.
## 	This 'opens' a path.
##
## 	path: The path to modify.
##
## 	x, y: The coordinate to move to.
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzMoveto*(ctx: ptr FzContext; path: ptr FzPath; x: cfloat; y: cfloat) {.cdecl,
    importc: "fz_moveto", header: "path.h".}
## *
## 	Append a 'lineto' command to an open path.
##
## 	path: The path to modify.
##
## 	x, y: The coordinate to line to.
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzLineto*(ctx: ptr FzContext; path: ptr FzPath; x: cfloat; y: cfloat) {.cdecl,
    importc: "fz_lineto", header: "path.h".}
## *
## 	Append a 'rectto' command to an open path.
##
## 	The rectangle is equivalent to:
## 		moveto x0 y0
## 		lineto x1 y0
## 		lineto x1 y1
## 		lineto x0 y1
## 		closepath
##
## 	path: The path to modify.
##
## 	x0, y0: First corner of the rectangle.
##
## 	x1, y1: Second corner of the rectangle.
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzRectto*(ctx: ptr FzContext; path: ptr FzPath; x0: cfloat; y0: cfloat; x1: cfloat;
              y1: cfloat) {.cdecl, importc: "fz_rectto", header: "path.h".}
## *
## 	Append a 'quadto' command to an open path. (For a
## 	quadratic bezier).
##
## 	path: The path to modify.
##
## 	x0, y0: The control coordinates for the quadratic curve.
##
## 	x1, y1: The end coordinates for the quadratic curve.
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzQuadto*(ctx: ptr FzContext; path: ptr FzPath; x0: cfloat; y0: cfloat; x1: cfloat;
              y1: cfloat) {.cdecl, importc: "fz_quadto", header: "path.h".}
## *
## 	Append a 'curveto' command to an open path. (For a
## 	cubic bezier).
##
## 	path: The path to modify.
##
## 	x0, y0: The coordinates of the first control point for the
## 	curve.
##
## 	x1, y1: The coordinates of the second control point for the
## 	curve.
##
## 	x2, y2: The end coordinates for the curve.
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzCurveto*(ctx: ptr FzContext; path: ptr FzPath; x0: cfloat; y0: cfloat; x1: cfloat;
               y1: cfloat; x2: cfloat; y2: cfloat) {.cdecl, importc: "fz_curveto",
    header: "path.h".}
## *
## 	Append a 'curvetov' command to an open path. (For a
## 	cubic bezier with the first control coordinate equal to
## 	the start point).
##
## 	path: The path to modify.
##
## 	x1, y1: The coordinates of the second control point for the
## 	curve.
##
## 	x2, y2: The end coordinates for the curve.
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzCurvetov*(ctx: ptr FzContext; path: ptr FzPath; x1: cfloat; y1: cfloat; x2: cfloat;
                y2: cfloat) {.cdecl, importc: "fz_curvetov", header: "path.h".}
## *
## 	Append a 'curvetoy' command to an open path. (For a
## 	cubic bezier with the second control coordinate equal to
## 	the end point).
##
## 	path: The path to modify.
##
## 	x0, y0: The coordinates of the first control point for the
## 	curve.
##
## 	x2, y2: The end coordinates for the curve (and the second
## 	control coordinate).
##
## 	Throws exceptions on failure to allocate, or attempting to
## 	modify a packed path.
##

proc fzCurvetoy*(ctx: ptr FzContext; path: ptr FzPath; x0: cfloat; y0: cfloat; x2: cfloat;
                y2: cfloat) {.cdecl, importc: "fz_curvetoy", header: "path.h".}
## *
## 	Close the current subpath.
##
## 	path: The path to modify.
##
## 	Throws exceptions on failure to allocate, attempting to modify
## 	a packed path, and illegal path closes (i.e. closing a non open
## 	path).
##

proc fzClosepath*(ctx: ptr FzContext; path: ptr FzPath) {.cdecl,
    importc: "fz_closepath", header: "path.h".}
## *
## 	Transform a path by a given
## 	matrix.
##
## 	path: The path to modify (must not be a packed path).
##
## 	transform: The transform to apply.
##
## 	Throws exceptions if the path is packed, or on failure
## 	to allocate.
##

proc fzTransformPath*(ctx: ptr FzContext; path: ptr FzPath; transform: FzMatrix) {.cdecl,
    importc: "fz_transform_path", header: "path.h".}
## *
## 	Return a bounding rectangle for a path.
##
## 	path: The path to bound.
##
## 	stroke: If NULL, the bounding rectangle given is for
## 	the filled path. If non-NULL the bounding rectangle
## 	given is for the path stroked with the given attributes.
##
## 	ctm: The matrix to apply to the path during stroking.
##
## 	r: Pointer to a fz_rect which will be used to hold
## 	the result.
##
## 	Returns r, updated to contain the bounding rectangle.
##

proc fzBoundPath*(ctx: ptr FzContext; path: ptr FzPath; stroke: ptr FzStrokeState;
                 ctm: FzMatrix): FzRect {.cdecl, importc: "fz_bound_path",
                                       header: "path.h".}
## *
## 	Given a rectangle (assumed to be the bounding box for a path),
## 	expand it to allow for the expansion of the bbox that would be
## 	seen by stroking the path with the given stroke state and
## 	transform.
##

proc fzAdjustRectForStroke*(ctx: ptr FzContext; rect: FzRect;
                           stroke: ptr FzStrokeState; ctm: FzMatrix): FzRect {.cdecl,
    importc: "fz_adjust_rect_for_stroke", header: "path.h".}
## *
## 	A sane 'default' stroke state.
##

## !!!Ignored construct:  FZ_DATA extern const fz_stroke_state fz_default_stroke_state ;
## Error: token expected: ; but got: [identifier]!!!

## *
## 	Create a new (empty) stroke state structure (with no dash
## 	data) and return a reference to it.
##
## 	Throws exception on failure to allocate.
##

proc fzNewStrokeState*(ctx: ptr FzContext): ptr FzStrokeState {.cdecl,
    importc: "fz_new_stroke_state", header: "path.h".}
## *
## 	Create a new (empty) stroke state structure, with room for
## 	dash data of the given length, and return a reference to it.
##
## 	len: The number of dash elements to allow room for.
##
## 	Throws exception on failure to allocate.
##

proc fzNewStrokeStateWithDashLen*(ctx: ptr FzContext; len: cint): ptr FzStrokeState {.
    cdecl, importc: "fz_new_stroke_state_with_dash_len", header: "path.h".}
## *
## 	Take an additional reference to a stroke state structure.
##
## 	No modifications should be carried out on a stroke
## 	state to which more than one reference is held, as
## 	this can cause race conditions.
##

proc fzKeepStrokeState*(ctx: ptr FzContext; stroke: ptr FzStrokeState): ptr FzStrokeState {.
    cdecl, importc: "fz_keep_stroke_state", header: "path.h".}
## *
## 	Drop a reference to a stroke state structure, destroying the
## 	structure if it is the last reference.
##

proc fzDropStrokeState*(ctx: ptr FzContext; stroke: ptr FzStrokeState) {.cdecl,
    importc: "fz_drop_stroke_state", header: "path.h".}
## *
## 	Given a reference to a (possibly) shared stroke_state structure,
## 	return a reference to an equivalent stroke_state structure
## 	that is guaranteed to be unshared (i.e. one that can
## 	safely be modified).
##
## 	shared: The reference to a (possibly) shared structure
## 	to unshare. Ownership of this reference is passed in
## 	to this function, even in the case of exceptions being
## 	thrown.
##
## 	Exceptions may be thrown in the event of failure to
## 	allocate if required.
##

proc fzUnshareStrokeState*(ctx: ptr FzContext; shared: ptr FzStrokeState): ptr FzStrokeState {.
    cdecl, importc: "fz_unshare_stroke_state", header: "path.h".}
## *
## 	Given a reference to a (possibly) shared stroke_state structure,
## 	return a reference to a stroke_state structure (with room for a
## 	given amount of dash data) that is guaranteed to be unshared
## 	(i.e. one that can safely be modified).
##
## 	shared: The reference to a (possibly) shared structure
## 	to unshare. Ownership of this reference is passed in
## 	to this function, even in the case of exceptions being
## 	thrown.
##
## 	Exceptions may be thrown in the event of failure to
## 	allocate if required.
##

proc fzUnshareStrokeStateWithDashLen*(ctx: ptr FzContext; shared: ptr FzStrokeState;
                                     len: cint): ptr FzStrokeState {.cdecl,
    importc: "fz_unshare_stroke_state_with_dash_len", header: "path.h".}
## *
## 	Create an identical stroke_state structure and return a
## 	reference to it.
##
## 	stroke: The stroke state reference to clone.
##
## 	Exceptions may be thrown in the event of a failure to
## 	allocate.
##

proc fzCloneStrokeState*(ctx: ptr FzContext; stroke: ptr FzStrokeState): ptr FzStrokeState {.
    cdecl, importc: "fz_clone_stroke_state", header: "path.h".}
