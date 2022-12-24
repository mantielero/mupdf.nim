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
## 	Simple pool allocators.
##
## 	Allocate from the pool, which can then be freed at once.
##



proc fzNewPool*(ctx: ptr FzContext): ptr FzPool {.cdecl, importc: "fz_new_pool",
    header: "pool.h".}
## *
## 	Allocate a block of size bytes from the pool.
##

proc fzPoolAlloc*(ctx: ptr FzContext; pool: ptr FzPool; size: csize_t): pointer {.cdecl,
    importc: "fz_pool_alloc", header: "pool.h".}
## *
## 	strdup equivalent allocating from the pool.
##

proc fzPoolStrdup*(ctx: ptr FzContext; pool: ptr FzPool; s: cstring): cstring {.cdecl,
    importc: "fz_pool_strdup", header: "pool.h".}
## *
## 	The current size of the pool.
##
## 	The number of bytes of storage currently allocated to the pool.
## 	This is the total of the storage used for the blocks making
## 	up the pool, rather then total of the allocated blocks so far,
## 	so it will increase in 'lumps'.
## 	from the pool, then the pool size may still be X
##

proc fzPoolSize*(ctx: ptr FzContext; pool: ptr FzPool): csize_t {.cdecl,
    importc: "fz_pool_size", header: "pool.h".}
## *
## 	Drop a pool, freeing and invalidating all storage returned from
## 	the pool.
##

proc fzDropPool*(ctx: ptr FzContext; pool: ptr FzPool) {.cdecl, importc: "fz_drop_pool",
    header: "pool.h".}
