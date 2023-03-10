import fitz_types

##  Copyright (C) 2004-2022 Artifex Software, Inc.
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

## !!!Ignored construct:  # MUPDF_FITZ_MATH_H [NewLine] # MUPDF_FITZ_MATH_H [NewLine] # mupdf/fitz/system.h [NewLine] # < assert . h > [NewLine] *
## 	Multiply scaled two integers in the 0..255 range
##  static inline int fz_mul255 ( int a , int b ) {  see Jim Blinn's book "Dirty Pixels" for how this works int x = a * b + 128 ; x += x >> 8 ; return x >> 8 ; } *
## 	Undo alpha premultiplication.
##  static inline int fz_div255 ( int c , int a ) { return a ? c * ( 255 * 256 / a ) >> 8 : 0 ; } *
## 	Expand a value A from the 0...255 range to the 0..256 range
##  # FZ_EXPAND ( A ) ( ( A ) + ( ( A ) >> 7 ) ) [NewLine] *
## 	Combine values A (in any range) and B (in the 0..256 range),
## 	to give a single value in the same range as A was.
##  # FZ_COMBINE ( A , B ) ( ( ( A ) * ( B ) ) >> 8 ) [NewLine] *
## 	Combine values A and C (in the same (any) range) and B and D (in
## 	the 0..256 range), to give a single value in the same range as A
## 	and C were.
##  # FZ_COMBINE2 ( A , B , C , D ) ( ( ( A ) * ( B ) + ( C ) * ( D ) ) >> 8 ) [NewLine] *
## 	Blend SRC and DST (in the same range) together according to
## 	AMOUNT (in the 0...256 range).
##  # FZ_BLEND ( SRC , DST , AMOUNT ) ( ( ( ( SRC ) - ( DST ) ) * ( AMOUNT ) + ( ( DST ) << 8 ) ) >> 8 ) [NewLine] *
## 	Range checking atof
##  float fz_atof ( const char * s ) ;
## Error: token expected: ; but got: [identifier]!!!

## *
## 	atoi that copes with NULL
##

proc fzAtoi*(s: cstring): cint {.cdecl, importc: "fz_atoi", header: "geometry.h".}
## *
## 	64bit atoi that copes with NULL
##

proc fzAtoi64*(s: cstring): int64 {.cdecl, importc: "fz_atoi64", header: "geometry.h".}
## *
## 	Some standard math functions, done as static inlines for speed.
## 	People with compilers that do not adequately implement inline
## 	may like to reimplement these using macros.
##

proc fzAbs*(f: cfloat): cfloat {.inline, cdecl.} =
  return if f < 0: -f else: f

proc fzAbsi*(i: cint): cint {.inline, cdecl.} =
  return if i < 0: -i else: i

proc fzMin*(a: cfloat; b: cfloat): cfloat {.inline, cdecl.} =
  return if a < b: a else: b

proc fzMini*(a: cint; b: cint): cint {.inline, cdecl.} =
  return if a < b: a else: b

proc fzMinz*(a: csize_t; b: csize_t): csize_t {.inline, cdecl.} =
  return if a < b: a else: b

proc fzMini64*(a: int64; b: int64): int64 {.inline, cdecl.} =
  return if a < b: a else: b

proc fzMax*(a: cfloat; b: cfloat): cfloat {.inline, cdecl.} =
  return if a > b: a else: b

proc fzMaxi*(a: cint; b: cint): cint {.inline, cdecl.} =
  return if a > b: a else: b

proc fzMaxz*(a: csize_t; b: csize_t): csize_t {.inline, cdecl.} =
  return if a > b: a else: b

proc fzMaxi64*(a: int64; b: int64): int64 {.inline, cdecl.} =
  return if a > b: a else: b

proc fzClamp*(x: cfloat; min: cfloat; max: cfloat): cfloat {.inline, cdecl.} =
  return  if x < min: 
            min 
          else: 
            if x > max: 
              max 
            else: 
              x

proc fzClampi*(x: cint; min: cint; max: cint): cint {.inline, cdecl.} =
  return  if x < min: 
            min 
          else: 
            if x > max: 
              max 
            else: 
              x

proc fzClampd*(x: cdouble; min: cdouble; max: cdouble): cdouble {.inline, cdecl.} =
  return  if x < min: 
            min 
          else: 
            if x > max: 
              max 
            else: 
              x

proc fzClampp*(x: pointer; min: pointer; max: pointer): pointer {.inline, cdecl.} =
  return  if x < min: 
            min 
          else: 
            if x > max: 
              max 
            else: 
              x

template div_By_Zero*(a, b, min, max: untyped): untyped =
  if ((a) < 0) xor ((b) < 0): 
    (min) 
  else: 
    (max)

## *
## 	fz_point is a point in a two-dimensional space.
##



proc fzMakePoint*(x: cfloat; y: cfloat): FzPoint {.inline, cdecl.} =
  var p: FzPoint
  return p

## *
## 	fz_rect is a rectangle represented by two diagonally opposite
## 	corners at arbitrary coordinates.
##
## 	Rectangles are always axis-aligned with the X- and Y- axes. We
## 	wish to distinguish rectangles in 3 categories; infinite, finite,
## 	and invalid. Zero area rectangles are a sub-category of finite
## 	ones.
##
## 	For all valid rectangles, x0 <= x1 and y0 <= y1 in all cases.
## 	Infinite rectangles have x0 = y0 = FZ_MIN_INF_RECT,
## 	x1 = y1 = FZ_MAX_INF_RECT. For any non infinite valid rectangle,
## 	the area is defined as (x1 - x0) * (y1 - y0).
##
## 	To check for empty or infinite rectangles use fz_is_empty_rect
## 	and fz_is_infinite_rect. To check for valid rectangles use
## 	fz_is_valid_rect.
##
## 	We choose this representation, so that we can easily distinguish
## 	the difference between intersecting 2 valid rectangles and
## 	getting an invalid one, as opposed to getting a zero area one
## 	(which nonetheless has valid bounds within the plane).
##
## 	x0, y0: The top left corner.
##
## 	x1, y1: The bottom right corner.
##
## 	We choose FZ_{MIN,MAX}_INF_RECT to be the largest 32bit signed
## 	integer values that survive roundtripping to floats.
##

const
  FZ_MIN_INF_RECT* = (cast[cint](0x80000000))
  FZ_MAX_INF_RECT* = (cast[cint](0x7fffff80))



proc fzMakeRect*(x0: cfloat; y0: cfloat; x1: cfloat; y1: cfloat): FzRect {.inline, cdecl.} =
  var r: FzRect
  return r

## *
## 	fz_irect is a rectangle using integers instead of floats.
##
## 	It's used in the draw device and for pixmap dimensions.
##



proc fzMakeIrect*(x0: cint; y0: cint; x1: cint; y1: cint): FzIrect {.inline, cdecl.} =
  var r: FzIrect
  return r

## *
## 	A rectangle with sides of length one.
##
## 	The bottom left corner is at (0, 0) and the top right corner
## 	is at (1, 1).
##

## !!!Ignored construct:  FZ_DATA extern const fz_rect fz_unit_rect ;
## Error: token expected: ; but got: [identifier]!!!

## *
## 	An empty rectangle with an area equal to zero.
##

## !!!Ignored construct:  FZ_DATA extern const fz_rect fz_empty_rect ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const fz_irect fz_empty_irect ;
## Error: token expected: ; but got: [identifier]!!!

## *
## 	An infinite rectangle.
##

## !!!Ignored construct:  FZ_DATA extern const fz_rect fz_infinite_rect ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_DATA extern const fz_irect fz_infinite_irect ;
## Error: token expected: ; but got: [identifier]!!!

## *
## 	Check if rectangle is empty.
##
## 	An empty rectangle is defined as one whose area is zero.
## 	All invalid rectangles are empty.
##

proc fzIsEmptyRect*(r: FzRect): bool {.inline, cdecl.} =
  return r.x0 >= r.x1 or r.y0 >= r.y1

proc fzIsEmptyIrect*(r: FzIrect): bool {.inline, cdecl.} =
  return r.x0 >= r.x1 or r.y0 >= r.y1

## *
## 	Check if rectangle is infinite.
##

# proc fzIsInfiniteRect*(r: FzRect): bool {.inline, cdecl.} =
#   return r.x0 == FZ_MIN_INF_RECT and r.x1 == fz_Max_Inf_Rect and
#       r.y0 == fz_Min_Inf_Rect and r.y1 == fz_Max_Inf_Rect

## *
## 	Check if an integer rectangle
## 	is infinite.
##

# proc fzIsInfiniteIrect*(r: FzIrect): cint {.inline, cdecl.} =
#   return r.x0 == fz_Min_Inf_Rect and r.x1 == fz_Max_Inf_Rect and
#       r.y0 == fz_Min_Inf_Rect and r.y1 == fz_Max_Inf_Rect

## *
## 	Check if rectangle is valid.
##

# proc fzIsValidRect*(r: FzRect): cint {.inline, cdecl.} =
#   return r.x0 <= r.x1 and r.y0 <= r.y1

## *
## 	Check if an integer rectangle is valid.
##

# proc fzIsValidIrect*(r: FzIrect): cint {.inline, cdecl.} =
#   return r.x0 <= r.x1 and r.y0 <= r.y1

## *
## 	Return the width of an irect. Invalid irects return 0.
##

# proc fzIrectWidth*(r: FzIrect): cuint {.inline, cdecl.} =
#   var w: cuint
#   if r.x0 >= r.x1:
#     return 0
#   w = cast[cuint](r.x1) - r.x0
#   assert(cast[cint](w) >= 0)
#   if cast[cint](w) < 0:
#     return 0
#   return cast[cint](w)

## *
## 	Return the height of an irect. Invalid irects return 0.
##

# proc fzIrectHeight*(r: FzIrect): cint {.inline, cdecl.} =
#   var h: cuint
#   if r.y0 >= r.y1:
#     return 0
#   h = cast[cuint]((r.y1 - r.y0))
#   assert(cast[cint](h) >= 0)
#   if cast[cint](h) < 0:
#     return 0
#   return cast[cint](h)

## *
## 	fz_matrix is a row-major 3x3 matrix used for representing
## 	transformations of coordinates throughout MuPDF.
##
## 	Since all points reside in a two-dimensional space, one vector
## 	is always a constant unit vector; hence only some elements may
## 	vary in a matrix. Below is how the elements map between
## 	different representations.
##
## 	/ a b 0 \
## 	| c d 0 | normally represented as [ a b c d e f ].
## 	\ e f 1 /
##





proc fzMakeMatrix*(a: cfloat; b: cfloat; c: cfloat; d: cfloat; e: cfloat; f: cfloat): FzMatrix {.
    inline, cdecl.} =
  var m: FzMatrix
  return m

# proc fzIsIdentity*(m: FzMatrix): cint {.inline, cdecl.} =
#   return m.a == 1 and m.b == 0 and m.c == 0 and m.d == 1 and m.e == 0 and m.f == 0

## *
## 	Multiply two matrices.
##
## 	The order of the two matrices are important since matrix
## 	multiplication is not commutative.
##
## 	Returns result.
##

proc fzConcat*(left: FzMatrix; right: FzMatrix): FzMatrix {.cdecl,
    importc: "fz_concat", header: "geometry.h".}
## *
## 	Create a scaling matrix.
##
## 	The returned matrix is of the form [ sx 0 0 sy 0 0 ].
##
## 	m: Pointer to the matrix to populate
##
## 	sx, sy: Scaling factors along the X- and Y-axes. A scaling
## 	factor of 1.0 will not cause any scaling along the relevant
## 	axis.
##
## 	Returns m.
##

proc fzScale*(sx: cfloat; sy: cfloat): FzMatrix {.cdecl, importc: "fz_scale",
    header: "geometry.h".}
## *
## 	Scale a matrix by premultiplication.
##
## 	m: Pointer to the matrix to scale
##
## 	sx, sy: Scaling factors along the X- and Y-axes. A scaling
## 	factor of 1.0 will not cause any scaling along the relevant
## 	axis.
##
## 	Returns m (updated).
##

proc fzPreScale*(m: FzMatrix; sx: cfloat; sy: cfloat): FzMatrix {.cdecl,
    importc: "fz_pre_scale", header: "geometry.h".}
## *
## 	Scale a matrix by postmultiplication.
##
## 	m: Pointer to the matrix to scale
##
## 	sx, sy: Scaling factors along the X- and Y-axes. A scaling
## 	factor of 1.0 will not cause any scaling along the relevant
## 	axis.
##
## 	Returns m (updated).
##

proc fzPostScale*(m: FzMatrix; sx: cfloat; sy: cfloat): FzMatrix {.cdecl,
    importc: "fz_post_scale", header: "geometry.h".}
## *
## 	Create a shearing matrix.
##
## 	The returned matrix is of the form [ 1 sy sx 1 0 0 ].
##
## 	m: pointer to place to store returned matrix
##
## 	sx, sy: Shearing factors. A shearing factor of 0.0 will not
## 	cause any shearing along the relevant axis.
##
## 	Returns m.
##

proc fzShear*(sx: cfloat; sy: cfloat): FzMatrix {.cdecl, importc: "fz_shear",
    header: "geometry.h".}
## *
## 	Premultiply a matrix with a shearing matrix.
##
## 	The shearing matrix is of the form [ 1 sy sx 1 0 0 ].
##
## 	m: pointer to matrix to premultiply
##
## 	sx, sy: Shearing factors. A shearing factor of 0.0 will not
## 	cause any shearing along the relevant axis.
##
## 	Returns m (updated).
##

proc fzPreShear*(m: FzMatrix; sx: cfloat; sy: cfloat): FzMatrix {.cdecl,
    importc: "fz_pre_shear", header: "geometry.h".}
## *
## 	Create a rotation matrix.
##
## 	The returned matrix is of the form
## 	[ cos(deg) sin(deg) -sin(deg) cos(deg) 0 0 ].
##
## 	m: Pointer to place to store matrix
##
## 	degrees: Degrees of counter clockwise rotation. Values less
## 	than zero and greater than 360 are handled as expected.
##
## 	Returns m.
##

proc fzRotate*(degrees: cfloat): FzMatrix {.cdecl, importc: "fz_rotate",
                                        header: "geometry.h".}
## *
## 	Rotate a transformation by premultiplying.
##
## 	The premultiplied matrix is of the form
## 	[ cos(deg) sin(deg) -sin(deg) cos(deg) 0 0 ].
##
## 	m: Pointer to matrix to premultiply.
##
## 	degrees: Degrees of counter clockwise rotation. Values less
## 	than zero and greater than 360 are handled as expected.
##
## 	Returns m (updated).
##

proc fzPreRotate*(m: FzMatrix; degrees: cfloat): FzMatrix {.cdecl,
    importc: "fz_pre_rotate", header: "geometry.h".}
## *
## 	Create a translation matrix.
##
## 	The returned matrix is of the form [ 1 0 0 1 tx ty ].
##
## 	m: A place to store the created matrix.
##
## 	tx, ty: Translation distances along the X- and Y-axes. A
## 	translation of 0 will not cause any translation along the
## 	relevant axis.
##
## 	Returns m.
##

proc fzTranslate*(tx: cfloat; ty: cfloat): FzMatrix {.cdecl, importc: "fz_translate",
    header: "geometry.h".}
## *
## 	Translate a matrix by premultiplication.
##
## 	m: The matrix to translate
##
## 	tx, ty: Translation distances along the X- and Y-axes. A
## 	translation of 0 will not cause any translation along the
## 	relevant axis.
##
## 	Returns m.
##

proc fzPreTranslate*(m: FzMatrix; tx: cfloat; ty: cfloat): FzMatrix {.cdecl,
    importc: "fz_pre_translate", header: "geometry.h".}
## *
## 	Create transform matrix to draw page
## 	at a given resolution and rotation. Adjusts the scaling
## 	factors so that the page covers whole number of
## 	pixels and adjust the page origin to be at 0,0.
##

proc fzTransformPage*(mediabox: FzRect; resolution: cfloat; rotate: cfloat): FzMatrix {.
    cdecl, importc: "fz_transform_page", header: "geometry.h".}
## *
## 	Create an inverse matrix.
##
## 	inverse: Place to store inverse matrix.
##
## 	matrix: Matrix to invert. A degenerate matrix, where the
## 	determinant is equal to zero, can not be inverted and the
## 	original matrix is returned instead.
##
## 	Returns inverse.
##

proc fzInvertMatrix*(matrix: FzMatrix): FzMatrix {.cdecl,
    importc: "fz_invert_matrix", header: "geometry.h".}
## *
## 	Attempt to create an inverse matrix.
##
## 	inverse: Place to store inverse matrix.
##
## 	matrix: Matrix to invert. A degenerate matrix, where the
## 	determinant is equal to zero, can not be inverted.
##
## 	Returns 1 if matrix is degenerate (singular), or 0 otherwise.
##

proc fzTryInvertMatrix*(inv: ptr FzMatrix; src: FzMatrix): cint {.cdecl,
    importc: "fz_try_invert_matrix", header: "geometry.h".}
## *
## 	Check if a transformation is rectilinear.
##
## 	Rectilinear means that no shearing is present and that any
## 	rotations present are a multiple of 90 degrees. Usually this
## 	is used to make sure that axis-aligned rectangles before the
## 	transformation are still axis-aligned rectangles afterwards.
##

proc fzIsRectilinear*(m: FzMatrix): cint {.cdecl, importc: "fz_is_rectilinear",
                                       header: "geometry.h".}
## *
## 	Calculate average scaling factor of matrix.
##

proc fzMatrixExpansion*(m: FzMatrix): cfloat {.cdecl, importc: "fz_matrix_expansion",
    header: "geometry.h".}
## *
## 	Compute intersection of two rectangles.
##
## 	Given two rectangles, update the first to be the smallest
## 	axis-aligned rectangle that covers the area covered by both
## 	given rectangles. If either rectangle is empty then the
## 	intersection is also empty. If either rectangle is infinite
## 	then the intersection is simply the non-infinite rectangle.
## 	Should both rectangles be infinite, then the intersection is
## 	also infinite.
##

proc fzIntersectRect*(a: FzRect; b: FzRect): FzRect {.cdecl,
    importc: "fz_intersect_rect", header: "geometry.h".}
## *
## 	Compute intersection of two bounding boxes.
##
## 	Similar to fz_intersect_rect but operates on two bounding
## 	boxes instead of two rectangles.
##

proc fzIntersectIrect*(a: FzIrect; b: FzIrect): FzIrect {.cdecl,
    importc: "fz_intersect_irect", header: "geometry.h".}
## *
## 	Compute union of two rectangles.
##
## 	Given two rectangles, update the first to be the smallest
## 	axis-aligned rectangle that encompasses both given rectangles.
## 	If either rectangle is infinite then the union is also infinite.
## 	If either rectangle is empty then the union is simply the
## 	non-empty rectangle. Should both rectangles be empty, then the
## 	union is also empty.
##

proc fzUnionRect*(a: FzRect; b: FzRect): FzRect {.cdecl, importc: "fz_union_rect",
    header: "geometry.h".}
## *
## 	Convert a rect into the minimal bounding box
## 	that covers the rectangle.
##
## 	Coordinates in a bounding box are integers, so rounding of the
## 	rects coordinates takes place. The top left corner is rounded
## 	upwards and left while the bottom right corner is rounded
## 	downwards and to the right.
##

proc fzIrectFromRect*(rect: FzRect): FzIrect {.cdecl, importc: "fz_irect_from_rect",
    header: "geometry.h".}
## *
## 	Round rectangle coordinates.
##
## 	Coordinates in a bounding box are integers, so rounding of the
## 	rects coordinates takes place. The top left corner is rounded
## 	upwards and left while the bottom right corner is rounded
## 	downwards and to the right.
##
## 	This differs from fz_irect_from_rect, in that fz_irect_from_rect
## 	slavishly follows the numbers (i.e any slight over/under
## 	calculations can cause whole extra pixels to be added).
## 	fz_round_rect allows for a small amount of rounding error when
## 	calculating the bbox.
##

proc fzRoundRect*(rect: FzRect): FzIrect {.cdecl, importc: "fz_round_rect",
                                       header: "geometry.h".}
## *
## 	Convert a bbox into a rect.
##
## 	For our purposes, a rect can represent all the values we meet in
## 	a bbox, so nothing can go wrong.
##
## 	rect: A place to store the generated rectangle.
##
## 	bbox: The bbox to convert.
##
## 	Returns rect (updated).
##

proc fzRectFromIrect*(bbox: FzIrect): FzRect {.cdecl, importc: "fz_rect_from_irect",
    header: "geometry.h".}
## *
## 	Expand a bbox by a given amount in all directions.
##

proc fzExpandRect*(b: FzRect; expand: cfloat): FzRect {.cdecl,
    importc: "fz_expand_rect", header: "geometry.h".}
proc fzExpandIrect*(a: FzIrect; expand: cint): FzIrect {.cdecl,
    importc: "fz_expand_irect", header: "geometry.h".}
## *
## 	Expand a bbox to include a given point.
## 	To create a rectangle that encompasses a sequence of points, the
## 	rectangle must first be set to be the empty rectangle at one of
## 	the points before including the others.
##

proc fzIncludePointInRect*(r: FzRect; p: FzPoint): FzRect {.cdecl,
    importc: "fz_include_point_in_rect", header: "geometry.h".}
## *
## 	Translate bounding box.
##
## 	Translate a bbox by a given x and y offset. Allows for overflow.
##

proc fzTranslateRect*(a: FzRect; xoff: cfloat; yoff: cfloat): FzRect {.cdecl,
    importc: "fz_translate_rect", header: "geometry.h".}
proc fzTranslateIrect*(a: FzIrect; xoff: cint; yoff: cint): FzIrect {.cdecl,
    importc: "fz_translate_irect", header: "geometry.h".}
## *
## 	Test rectangle inclusion.
##
## 	Return true if a entirely contains b.
##

proc fzContainsRect*(a: FzRect; b: FzRect): cint {.cdecl, importc: "fz_contains_rect",
    header: "geometry.h".}
## *
## 	Apply a transformation to a point.
##
## 	transform: Transformation matrix to apply. See fz_concat,
## 	fz_scale, fz_rotate and fz_translate for how to create a
## 	matrix.
##
## 	point: Pointer to point to update.
##
## 	Returns transform (unchanged).
##

proc fzTransformPoint*(point: FzPoint; m: FzMatrix): FzPoint {.cdecl,
    importc: "fz_transform_point", header: "geometry.h".}
proc fzTransformPointXy*(x: cfloat; y: cfloat; m: FzMatrix): FzPoint {.cdecl,
    importc: "fz_transform_point_xy", header: "geometry.h".}
## *
## 	Apply a transformation to a vector.
##
## 	transform: Transformation matrix to apply. See fz_concat,
## 	fz_scale and fz_rotate for how to create a matrix. Any
## 	translation will be ignored.
##
## 	vector: Pointer to vector to update.
##

proc fzTransformVector*(vector: FzPoint; m: FzMatrix): FzPoint {.cdecl,
    importc: "fz_transform_vector", header: "geometry.h".}
## *
## 	Apply a transform to a rectangle.
##
## 	After the four corner points of the axis-aligned rectangle
## 	have been transformed it may not longer be axis-aligned. So a
## 	new axis-aligned rectangle is created covering at least the
## 	area of the transformed rectangle.
##
## 	transform: Transformation matrix to apply. See fz_concat,
## 	fz_scale and fz_rotate for how to create a matrix.
##
## 	rect: Rectangle to be transformed. The two special cases
## 	fz_empty_rect and fz_infinite_rect, may be used but are
## 	returned unchanged as expected.
##

proc fzTransformRect*(rect: FzRect; m: FzMatrix): FzRect {.cdecl,
    importc: "fz_transform_rect", header: "geometry.h".}
## *
## 	Normalize a vector to length one.
##

proc fzNormalizeVector*(p: FzPoint): FzPoint {.cdecl, importc: "fz_normalize_vector",
    header: "geometry.h".}
## *
## 	Grid fit a matrix.
##
## 	as_tiled = 0 => adjust the matrix so that the image of the unit
## 	square completely covers any pixel that was touched by the
## 	image of the unit square under the original matrix.
##
## 	as_tiled = 1 => adjust the matrix so that the corners of the
## 	image of the unit square align with the closest integer corner
## 	of the image of the unit square under the original matrix.
##

proc fzGridfitMatrix*(asTiled: cint; m: FzMatrix): FzMatrix {.cdecl,
    importc: "fz_gridfit_matrix", header: "geometry.h".}
## *
## 	Find the largest expansion performed by this matrix.
## 	(i.e. max(abs(m.a),abs(m.b),abs(m.c),abs(m.d))
##

proc fzMatrixMaxExpansion*(m: FzMatrix): cfloat {.cdecl,
    importc: "fz_matrix_max_expansion", header: "geometry.h".}
## *
## 	A representation for a region defined by 4 points.
##
## 	The significant difference between quads and rects is that
## 	the edges of quads are not axis aligned.
##




proc fzMakeQuad*(ulX: cfloat; ulY: cfloat; urX: cfloat; urY: cfloat; llX: cfloat;
                llY: cfloat; lrX: cfloat; lrY: cfloat): FzQuad {.inline, cdecl.} =
  var q: FzQuad
  return q

## *
## 	Convert a rect to a quad (losslessly).
##

proc fzQuadFromRect*(r: FzRect): FzQuad {.cdecl, importc: "fz_quad_from_rect",
                                      header: "geometry.h".}
## *
## 	Convert a quad to the smallest rect that covers it.
##

proc fzRectFromQuad*(q: FzQuad): FzRect {.cdecl, importc: "fz_rect_from_quad",
                                      header: "geometry.h".}
## *
## 	Transform a quad by a matrix.
##

proc fzTransformQuad*(q: FzQuad; m: FzMatrix): FzQuad {.cdecl,
    importc: "fz_transform_quad", header: "geometry.h".}
## *
## 	Inclusion test for quads.
##

proc fzIsPointInsideQuad*(p: FzPoint; q: FzQuad): cint {.cdecl,
    importc: "fz_is_point_inside_quad", header: "geometry.h".}
## *
## 	Inclusion test for rects. (Rect is assumed to be open, i.e.
## 	top right corner is not included).
##

proc fzIsPointInsideRect*(p: FzPoint; r: FzRect): cint {.cdecl,
    importc: "fz_is_point_inside_rect", header: "geometry.h".}
## *
## 	Inclusion test for irects. (Rect is assumed to be open, i.e.
## 	top right corner is not included).
##

proc fzIsPointInsideIrect*(x: cint; y: cint; r: FzIrect): cint {.cdecl,
    importc: "fz_is_point_inside_irect", header: "geometry.h".}
## *
## 	Inclusion test for quad in quad.
##
## 	This may break down if quads are not 'well formed'.
##

proc fzIsQuadInsideQuad*(needle: FzQuad; haystack: FzQuad): cint {.cdecl,
    importc: "fz_is_quad_inside_quad", header: "geometry.h".}
## *
## 	Intersection test for quads.
##
## 	This may break down if quads are not 'well formed'.
##

proc fzIsQuadIntersectingQuad*(a: FzQuad; b: FzQuad): cint {.cdecl,
    importc: "fz_is_quad_intersecting_quad", header: "geometry.h".}
