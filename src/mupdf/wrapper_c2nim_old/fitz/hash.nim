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

import
  mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/output

const
  FZ_HASH_TABLE_KEY_LENGTH* = 48

## *
## 	Generic hash-table with fixed-length keys.
##
## 	The keys and values are NOT reference counted by the hash table.
## 	Callers are responsible for taking care the reference counts are
## 	correct. Inserting a duplicate entry will NOT overwrite the old
## 	value, and will return the old value.
##
## 	The drop_val callback function is only used to release values
## 	when the hash table is destroyed.
##





proc fzNewHashTable*(ctx: ptr FzContext; initialsize: cint; keylen: cint; lock: cint;
                    dropVal: ptr FzHashTableDropFn): ptr FzHashTable {.cdecl,
    importc: "fz_new_hash_table", header: "hash.h".}
## *
## 	Destroy the hash table.
##
## 	Values are dropped using the drop function.
##

proc fzDropHashTable*(ctx: ptr FzContext; table: ptr FzHashTable) {.cdecl,
    importc: "fz_drop_hash_table", header: "hash.h".}
## *
## 	Search for a matching hash within the table, and return the
## 	associated value.
##

proc fzHashFind*(ctx: ptr FzContext; table: ptr FzHashTable; key: pointer): pointer {.
    cdecl, importc: "fz_hash_find", header: "hash.h".}
## *
## 	Insert a new key/value pair into the hash table.
##
## 	If an existing entry with the same key is found, no change is
## 	made to the hash table, and a pointer to the existing value is
## 	returned.
##
## 	If no existing entry with the same key is found, ownership of
## 	val passes in, key is copied, and NULL is returned.
##

proc fzHashInsert*(ctx: ptr FzContext; table: ptr FzHashTable; key: pointer; val: pointer): pointer {.
    cdecl, importc: "fz_hash_insert", header: "hash.h".}
## *
## 	Remove the entry for a given key.
##
## 	The value is NOT freed, so the caller is expected to take care
## 	of this.
##

proc fzHashRemove*(ctx: ptr FzContext; table: ptr FzHashTable; key: pointer) {.cdecl,
    importc: "fz_hash_remove", header: "hash.h".}
## *
## 	Callback function called on each key/value pair in the hash
## 	table, when fz_hash_for_each is run.
##



proc fzHashForEach*(ctx: ptr FzContext; table: ptr FzHashTable; state: pointer;
                   callback: ptr FzHashTableForEachFn) {.cdecl,
    importc: "fz_hash_for_each", header: "hash.h".}
## *
## 	Callback function called on each key/value pair in the hash
## 	table, when fz_hash_filter is run to remove entries where the
## 	callback returns true.
##



proc fzHashFilter*(ctx: ptr FzContext; table: ptr FzHashTable; state: pointer;
                  callback: ptr FzHashTableFilterFn) {.cdecl,
    importc: "fz_hash_filter", header: "hash.h".}
