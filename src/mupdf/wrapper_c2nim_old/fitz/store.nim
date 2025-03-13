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

## !!!Ignored construct:  # MUPDF_FITZ_STORE_H [NewLine] # MUPDF_FITZ_STORE_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/output.h [NewLine] # mupdf/fitz/log.h [NewLine] *
## 	Resource store
##
## 	MuPDF stores decoded "objects" into a store for potential reuse.
## 	If the size of the store gets too big, objects stored within it
## 	can be evicted and freed to recover space. When MuPDF comes to
## 	decode such an object, it will check to see if a version of this
## 	object is already in the store - if it is, it will simply reuse
## 	it. If not, it will decode it and place it into the store.
##
## 	All objects that can be placed into the store are derived from
## 	the fz_storable type (i.e. this should be the first component of
## 	the objects structure). This allows for consistent (thread safe)
## 	reference counting, and includes a function that will be called
## 	to free the object as soon as the reference count reaches zero.
##
## 	Most objects offer fz_keep_XXXX/fz_drop_XXXX functions derived
## 	from fz_keep_storable/fz_drop_storable. Creation of such objects
## 	includes a call to FZ_INIT_STORABLE to set up the fz_storable
## 	header.
##  typedef struct fz_storable fz_storable ;
## Error: identifier expected, but got: (!!!

## *
## 	Function type for a function to drop a storable object.
##
## 	Objects within the store are identified by type by comparing
## 	their drop_fn pointers.
##









template fz_Init_Storable*(s, rc, drop: untyped): void =
  while true:
    var S: ptr FzStorable
    s.refs = (rc)
    s.drop = (drop)
    if not 0:
      break

## *
## 	Macro to initialise a key storable object.
##

template fz_Init_Key_Storable*(ks, rc, drop: untyped): void =
  while true:
    var KS: ptr FzKeyStorable
    ks.storeKeyRefs = 0
    fz_Init_Storable(ks, rc, drop)
    if not 0:
      break

## *
## 	Increment the reference count for a storable object.
## 	Returns the same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepStorable*(a1: ptr FzContext; a2: ptr FzStorable): pointer {.cdecl,
    importc: "fz_keep_storable", header: "store.h".}
## *
## 	Decrement the reference count for a storable object. When the
## 	reference count hits zero, the drop function for that object
## 	is called to free the object.
##
## 	Never throws exceptions.
##

proc fzDropStorable*(a1: ptr FzContext; a2: ptr FzStorable) {.cdecl,
    importc: "fz_drop_storable", header: "store.h".}
## *
## 	Increment the (normal) reference count for a key storable
## 	object. Returns the same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepKeyStorable*(a1: ptr FzContext; a2: ptr FzKeyStorable): pointer {.cdecl,
    importc: "fz_keep_key_storable", header: "store.h".}
## *
## 	Decrement the (normal) reference count for a storable object.
## 	When the total reference count hits zero, the drop function for
## 	that object is called to free the object.
##
## 	Never throws exceptions.
##

proc fzDropKeyStorable*(a1: ptr FzContext; a2: ptr FzKeyStorable) {.cdecl,
    importc: "fz_drop_key_storable", header: "store.h".}
## *
## 	Increment the (key) reference count for a key storable
## 	object. Returns the same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepKeyStorableKey*(a1: ptr FzContext; a2: ptr FzKeyStorable): pointer {.cdecl,
    importc: "fz_keep_key_storable_key", header: "store.h".}
## *
## 	Decrement the (key) reference count for a storable object.
## 	When the total reference count hits zero, the drop function for
## 	that object is called to free the object.
##
## 	Never throws exceptions.
##

proc fzDropKeyStorableKey*(a1: ptr FzContext; a2: ptr FzKeyStorable) {.cdecl,
    importc: "fz_drop_key_storable_key", header: "store.h".}
## *
## 	The store can be seen as a dictionary that maps keys to
## 	fz_storable values. In order to allow keys of different types to
## 	be stored, we have a structure full of functions for each key
## 	'type'; this fz_store_type pointer is stored with each key, and
## 	tells the store how to perform certain operations (like taking/
## 	dropping a reference, comparing two keys, outputting details for
## 	debugging etc).
##
## 	The store uses a hash table internally for speed where possible.
## 	In order for this to work, we need a mechanism for turning a
## 	generic 'key' into 'a hashable string'. For this purpose the
## 	type structure contains a make_hash_key function pointer that
## 	maps from a void * to a fz_store_hash structure. If
## 	make_hash_key function returns 0, then the key is determined not
## 	to be hashable, and the value is not stored in the hash table.
##
## 	Some objects can be used both as values within the store, and as
## 	a component of keys within the store. We refer to these objects
## 	as "key storable" objects. In this case, we need to take
## 	additional care to ensure that we do not end up keeping an item
## 	within the store, purely because its value is referred to by
## 	another key in the store.
##
## 	An example of this are fz_images in PDF files. Each fz_image is
## 	placed into the	store to enable it to be easily reused. When the
## 	image is rendered, a pixmap is generated from the image, and the
## 	pixmap is placed into the store so it can be reused on
## 	subsequent renders. The image forms part of the key for the
## 	pixmap.
##
## 	When we close the pdf document (and any associated pages/display
## 	lists etc), we drop the images from the store. This may leave us
## 	in the position of the images having non-zero reference counts
## 	purely because they are used as part of the keys for the
## 	pixmaps.
##
## 	We therefore use special reference counting functions to keep
## 	track of these "key storable" items, and hence store the number
## 	of references to these items that are used in keys.
##
## 	When the number of references to an object == the number of
## 	references to an object from keys in the store, we know that we
## 	can remove all the items which have that object as part of the
## 	key. This is done by running a pass over the store, 'reaping'
## 	those items.
##
## 	Reap passes are slower than we would like as they touch every
## 	item in the store. We therefore provide a way to 'batch' such
## 	reap passes together, using fz_defer_reap_start/
## 	fz_defer_reap_end to bracket a region in which many may be
## 	triggered.
##












proc fzNewStoreContext*(ctx: ptr FzContext; max: csize_t) {.cdecl,
    importc: "fz_new_store_context", header: "store.h".}
## *
## 	Increment the reference count for the store context. Returns
## 	the same pointer.
##
## 	Never throws exceptions.
##

proc fzKeepStoreContext*(ctx: ptr FzContext): ptr FzStore {.cdecl,
    importc: "fz_keep_store_context", header: "store.h".}
## *
## 	Decrement the reference count for the store context. When the
## 	reference count hits zero, the store context is freed.
##
## 	Never throws exceptions.
##

proc fzDropStoreContext*(ctx: ptr FzContext) {.cdecl,
    importc: "fz_drop_store_context", header: "store.h".}
## *
## 	Add an item to the store.
##
## 	Add an item into the store, returning NULL for success. If an
## 	item with the same key is found in the store, then our item will
## 	not be inserted, and the function will return a pointer to that
## 	value instead. This function takes its own reference to val, as
## 	required (i.e. the caller maintains ownership of its own
## 	reference).
##
## 	key: The key used to index the item.
##
## 	val: The value to store.
##
## 	itemsize: The size in bytes of the value (as counted towards the
## 	store size).
##
## 	type: Functions used to manipulate the key.
##

proc fzStoreItem*(ctx: ptr FzContext; key: pointer; val: pointer; itemsize: csize_t;
                 `type`: ptr FzStoreType): pointer {.cdecl, importc: "fz_store_item",
    header: "store.h".}
## *
## 	Find an item within the store.
##
## 	drop: The function used to free the value (to ensure we get a
## 	value of the correct type).
##
## 	key: The key used to index the item.
##
## 	type: Functions used to manipulate the key.
##
## 	Returns NULL for not found, otherwise returns a pointer to the
## 	value indexed by key to which a reference has been taken.
##

proc fzFindItem*(ctx: ptr FzContext; drop: ptr FzStoreDropFn; key: pointer;
                `type`: ptr FzStoreType): pointer {.cdecl, importc: "fz_find_item",
    header: "store.h".}
## *
## 	Remove an item from the store.
##
## 	If an item indexed by the given key exists in the store, remove
## 	it.
##
## 	drop: The function used to free the value (to ensure we get a
## 	value of the correct type).
##
## 	key: The key used to find the item to remove.
##
## 	type: Functions used to manipulate the key.
##

proc fzRemoveItem*(ctx: ptr FzContext; drop: ptr FzStoreDropFn; key: pointer;
                  `type`: ptr FzStoreType) {.cdecl, importc: "fz_remove_item",
    header: "store.h".}
## *
## 	Evict every item from the store.
##

proc fzEmptyStore*(ctx: ptr FzContext) {.cdecl, importc: "fz_empty_store",
                                     header: "store.h".}
## *
## 	Internal function used as part of the scavenging
## 	allocator; when we fail to allocate memory, before returning a
## 	failure to the caller, we try to scavenge space within the store
## 	by evicting at least 'size' bytes. The allocator then retries.
##
## 	size: The number of bytes we are trying to have free.
##
## 	phase: What phase of the scavenge we are in. Updated on exit.
##
## 	Returns non zero if we managed to free any memory.
##

proc fzStoreScavenge*(ctx: ptr FzContext; size: csize_t; phase: ptr cint): cint {.cdecl,
    importc: "fz_store_scavenge", header: "store.h".}
## *
## 	External function for callers to use
## 	to scavenge while trying allocations.
##
## 	size: The number of bytes we are trying to have free.
##
## 	phase: What phase of the scavenge we are in. Updated on exit.
##
## 	Returns non zero if we managed to free any memory.
##

proc fzStoreScavengeExternal*(ctx: ptr FzContext; size: csize_t; phase: ptr cint): cint {.
    cdecl, importc: "fz_store_scavenge_external", header: "store.h".}
## *
## 	Evict items from the store until the total size of
## 	the objects in the store is reduced to a given percentage of its
## 	current size.
##
## 	percent: %age of current size to reduce the store to.
##
## 	Returns non zero if we managed to free enough memory, zero
## 	otherwise.
##

proc fzShrinkStore*(ctx: ptr FzContext; percent: cuint): cint {.cdecl,
    importc: "fz_shrink_store", header: "store.h".}
## *
## 	Callback function called by fz_filter_store on every item within
## 	the store.
##
## 	Return 1 to drop the item from the store, 0 to retain.
##



proc fzFilterStore*(ctx: ptr FzContext; fn: ptr FzStoreFilterFn; arg: pointer;
                   `type`: ptr FzStoreType) {.cdecl, importc: "fz_filter_store",
    header: "store.h".}
## *
## 	Output debugging information for the current state of the store
## 	to the given output channel.
##

proc fzDebugStore*(ctx: ptr FzContext; `out`: ptr FzOutput) {.cdecl,
    importc: "fz_debug_store", header: "store.h".}
## *
## 	Increment the defer reap count.
##
## 	No reap operations will take place (except for those
## 	triggered by an immediate failed malloc) until the
## 	defer reap count returns to 0.
##
## 	Call this at the start of a process during which you
## 	potentially might drop many reapable objects.
##
## 	It is vital that every fz_defer_reap_start is matched
## 	by a fz_defer_reap_end call.
##

proc fzDeferReapStart*(ctx: ptr FzContext) {.cdecl, importc: "fz_defer_reap_start",
    header: "store.h".}
## *
## 	Decrement the defer reap count.
##
## 	If the defer reap count returns to 0, and the store
## 	has reapable objects in, a reap pass will begin.
##
## 	Call this at the end of a process during which you
## 	potentially might drop many reapable objects.
##
## 	It is vital that every fz_defer_reap_start is matched
## 	by a fz_defer_reap_end call.
##

proc fzDeferReapEnd*(ctx: ptr FzContext) {.cdecl, importc: "fz_defer_reap_end",
                                       header: "store.h".}
## !!!Ignored construct:  # ENABLE_STORE_LOGGING [NewLine] void fz_log_dump_store ( fz_context * ctx , const char * fmt , ... ) ;
## Error: identifier expected, but got: (!!!

## !!!Ignored construct:  # ( CTX , ... ) fz_log_module ( CTX , STORE , __VA_ARGS__ ) [NewLine] # FZ_LOG_DUMP_STORE ( ... ) fz_log_dump_store ( __VA_ARGS__ ) [NewLine] # [NewLine] # ( ... ) do { } while ( 0 ) [NewLine] # FZ_LOG_DUMP_STORE ( ... ) do { } while ( 0 ) [NewLine] # [NewLine] # [NewLine]
## Error: identifier expected, but got: (!!!

