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
#   mupdf/fitz/system, mupdf/fitz/context

## *
## 	AA-tree to look up things by strings.
##



proc fzTreeLookup*(ctx: ptr FzContext; node: ptr FzTree; key: cstring): pointer {.cdecl,
    importc: "fz_tree_lookup", header: "tree.h".}
## *
## 	Insert a new key/value pair and rebalance the tree.
## 	Return the new root of the tree after inserting and rebalancing.
## 	May be called with a NULL root to create a new tree.
##
## 	No data is copied into the tree structure; key and value are
## 	merely kept as pointers.
##

proc fzTreeInsert*(ctx: ptr FzContext; root: ptr FzTree; key: cstring; value: pointer): ptr FzTree {.
    cdecl, importc: "fz_tree_insert", header: "tree.h".}
## *
## 	Drop the tree.
##
## 	The storage used by the tree is freed, and each value has
## 	dropfunc called on it.
##

proc fzDropTree*(ctx: ptr FzContext; node: ptr FzTree;
                dropfunc: proc (ctx: ptr FzContext; value: pointer) {.cdecl.}) {.cdecl,
    importc: "fz_drop_tree", header: "tree.h".}
