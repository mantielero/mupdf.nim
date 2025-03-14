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

## !!!Ignored construct:  # MUPDF_FITZ_CONTEXT_H [NewLine] # MUPDF_FITZ_CONTEXT_H [NewLine] # mupdf/fitz/version.h [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/geometry.h [NewLine] typedef struct fz_font_context fz_font_context ;
## Error: did not expect [NewLine]!!!






template fzVar*(`var`: untyped): untyped =
  fzVarImp(cast[pointer](addr((`var`))))


# proc fzDoTry*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_do_try",
#                                      header: "context.h".}

## !!!Ignored construct:  # fz_try ( ctx ) if ( ! fz_setjmp ( * fz_push_try ( ctx ) ) ) if ( fz_do_try ( ctx ) ) do [NewLine] # fz_always ( ctx ) while ( 0 ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  if ( fz_do_always ( ctx ) ) do [NewLine] # fz_catch ( ctx ) while ( 0 ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  if ( fz_do_catch ( ctx ) ) [NewLine] FZ_NORETURN void fz_vthrow ( fz_context * ctx , int errcode , const char * , va_list ap ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  FZ_NORETURN void fz_throw ( fz_context * ctx , int errcode , const char * , ... ) FZ_PRINTFLIKE ( 3 , 4 ) ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  FZ_NORETURN void fz_rethrow ( fz_context * ctx ) ;
## Error: token expected: ; but got: [identifier]!!!

#proc fzVwarn*(ctx: ptr FzContext; fmt: cstring; ap: VaList) {.cdecl, importc: "fz_vwarn",
#    header: "context.h".}
## !!!Ignored construct:  void fz_warn ( fz_context * ctx , const char * fmt , ... ) FZ_PRINTFLIKE ( 2 , 3 ) ;
## Error: expected ';'!!!

proc fzCaughtMessage*(ctx: ptr FzContext): cstring {.cdecl,
    importc: "fz_caught_message", header: "context.h".}
proc fzCaught*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_caught",
                                      header: "context.h".}
proc fzRethrowIf*(ctx: ptr FzContext; errcode: cint) {.cdecl, importc: "fz_rethrow_if",
    header: "context.h".}
proc fzStartThrowOnRepair*(ctx: ptr FzContext) {.cdecl,
    importc: "fz_start_throw_on_repair", header: "context.h".}
proc fzEndThrowOnRepair*(ctx: ptr FzContext) {.cdecl,
    importc: "fz_end_throw_on_repair", header: "context.h".}
const
  FZ_ERROR_NONE* = 0
  FZ_ERROR_MEMORY* = 1
  FZ_ERROR_GENERIC* = 2
  FZ_ERROR_SYNTAX* = 3
  FZ_ERROR_MINOR* = 4
  FZ_ERROR_TRYLATER* = 5
  FZ_ERROR_ABORT* = 6
  FZ_ERROR_REPAIRED* = 7
  FZ_ERROR_COUNT* = 8

## *
## 	Flush any repeated warnings.
##
## 	Repeated warnings are buffered, counted and eventually printed
## 	along with the number of repetitions. Call fz_flush_warnings
## 	to force printing of the latest buffered warning and the
## 	number of repetitions, for example to make sure that all
## 	warnings are printed before exiting an application.
##

proc fzFlushWarnings*(ctx: ptr FzContext) {.cdecl, importc: "fz_flush_warnings",
                                        header: "context.h".}
## *
## 	Locking functions
##
## 	MuPDF is kept deliberately free of any knowledge of particular
## 	threading systems. As such, in order for safe multi-threaded
## 	operation, we rely on callbacks to client provided functions.
##
## 	A client is expected to provide FZ_LOCK_MAX number of mutexes,
## 	and a function to lock/unlock each of them. These may be
## 	recursive mutexes, but do not have to be.
##
## 	If a client does not intend to use multiple threads, then it
## 	may pass NULL instead of a lock structure.
##
## 	In order to avoid deadlocks, we have one simple rule
## 	internally as to how we use locks: We can never take lock n
## 	when we already hold any lock i, where 0 <= i <= n. In order
## 	to verify this, we have some debugging code, that can be
## 	enabled by defining FITZ_DEBUG_LOCKING.
##



const
  FZ_LOCK_ALLOC* = 0
  FZ_LOCK_FREETYPE* = 1
  FZ_LOCK_GLYPHCACHE* = 2
  FZ_LOCK_MAX* = 3

when defined(memento) or not defined(ndebug):
  discard
proc fzAssertLockHeld*(ctx: ptr FzContext; lock: cint) {.cdecl,
    importc: "fz_assert_lock_held", header: "context.h".}
proc fzAssertLockNotHeld*(ctx: ptr FzContext; lock: cint) {.cdecl,
    importc: "fz_assert_lock_not_held", header: "context.h".}
proc fzLockDebugLock*(ctx: ptr FzContext; lock: cint) {.cdecl,
    importc: "fz_lock_debug_lock", header: "context.h".}
proc fzLockDebugUnlock*(ctx: ptr FzContext; lock: cint) {.cdecl,
    importc: "fz_lock_debug_unlock", header: "context.h".}
## *
## 	Specifies the maximum size in bytes of the resource store in
## 	fz_context. Given as argument to fz_new_context.
##
## 	FZ_STORE_UNLIMITED: Let resource store grow unbounded.
##
## 	FZ_STORE_DEFAULT: A reasonable upper bound on the size, for
## 	devices that are not memory constrained.
##

const
  FZ_STORE_UNLIMITED* = 0
  FZ_STORE_DEFAULT* = 256 shl 20

## *
## 	Allocate context containing global state.
##
## 	The global state contains an exception stack, resource store,
## 	etc. Most functions in MuPDF take a context argument to be
## 	able to reference the global state. See fz_drop_context for
## 	freeing an allocated context.
##
## 	alloc: Supply a custom memory allocator through a set of
## 	function pointers. Set to NULL for the standard library
## 	allocator. The context will keep the allocator pointer, so the
## 	data it points to must not be modified or freed during the
## 	lifetime of the context.
##
## 	locks: Supply a set of locks and functions to lock/unlock
## 	them, intended for multi-threaded applications. Set to NULL
## 	when using MuPDF in a single-threaded applications. The
## 	context will keep the locks pointer, so the data it points to
## 	must not be modified or freed during the lifetime of the
## 	context.
##
## 	max_store: Maximum size in bytes of the resource store, before
## 	it will start evicting cached resources such as fonts and
## 	images. FZ_STORE_UNLIMITED can be used if a hard limit is not
## 	desired. Use FZ_STORE_DEFAULT to get a reasonable size.
##
## 	May return NULL.
##

template fzNewContext*(alloc, locks, maxStore: untyped): untyped =
  fzNewContextImp(alloc, locks, maxStore, FZ_VERSION)

## *
## 	Make a clone of an existing context.
##
## 	This function is meant to be used in multi-threaded
## 	applications where each thread requires its own context, yet
## 	parts of the global state, for example caching, are shared.
##
## 	ctx: Context obtained from fz_new_context to make a copy of.
## 	ctx must have had locks and lock/functions setup when created.
## 	The two contexts will share the memory allocator, resource
## 	store, locks and lock/unlock functions. They will each have
## 	their own exception stacks though.
##
## 	May return NULL.
##

proc fzCloneContext*(ctx: ptr FzContext): ptr FzContext {.cdecl,
    importc: "fz_clone_context", header: "context.h".}
## *
## 	Free a context and its global state.
##
## 	The context and all of its global state is freed, and any
## 	buffered warnings are flushed (see fz_flush_warnings). If NULL
## 	is passed in nothing will happen.
##
## 	Must not be called for a context that is being used in an active
## 	fz_try(), fz_always() or fz_catch() block.
##

proc fzDropContext*(ctx: ptr FzContext) {.cdecl, importc: "fz_drop_context",
                                      header: "context.h".}
## *
## 	Set the user field in the context.
##
## 	NULL initially, this field can be set to any opaque value
## 	required by the user. It is copied on clones.
##

proc fzSetUserContext*(ctx: ptr FzContext; user: pointer) {.cdecl,
    importc: "fz_set_user_context", header: "context.h".}
## *
## 	Read the user field from the context.
##

proc fzUserContext*(ctx: ptr FzContext): pointer {.cdecl, importc: "fz_user_context",
    header: "context.h".}
## *
## 	FIXME: Better not to expose fz_default_error_callback, and
## 	fz_default_warning callback and to allow 'NULL' to be used
## 	int fz_set_xxxx_callback to mean "defaults".
##
## 	FIXME: Do we need/want functions like
## 	fz_error_callback(ctx, message) to allow callers to inject
## 	stuff into the error/warning streams?
##
## *
## 	The default error callback. Declared publicly just so that the
## 	error callback can be set back to this after it has been
## 	overridden.
##

proc fzDefaultErrorCallback*(user: pointer; message: cstring) {.cdecl,
    importc: "fz_default_error_callback", header: "context.h".}
## *
## 	The default warning callback. Declared publicly just so that
## 	the warning callback can be set back to this after it has been
## 	overridden.
##

proc fzDefaultWarningCallback*(user: pointer; message: cstring) {.cdecl,
    importc: "fz_default_warning_callback", header: "context.h".}
## *
## 	A callback called whenever an error message is generated.
## 	The user pointer passed to fz_set_error_callback() is passed
## 	along with the error message.
##





proc fzSetErrorCallback*(ctx: ptr FzContext; errorCb: ptr FzErrorCb; user: pointer) {.
    cdecl, importc: "fz_set_error_callback", header: "context.h".}
## *
## 	Retrieve the currently set error callback, or NULL if none
## 	has been set. Optionally, if user is non-NULL, the user pointer
## 	given when the warning callback was set is also passed back to
## 	the caller.
##

proc fzErrorCallback*(ctx: ptr FzContext; user: ptr pointer): ptr FzErrorCb {.cdecl,
    importc: "fz_error_callback", header: "context.h".}
## *
## 	Set the warning callback. This will be called as part of the
## 	exception handling.
##
## 	The callback must not throw exceptions!
##

proc fzSetWarningCallback*(ctx: ptr FzContext; warningCb: ptr FzWarningCb;
                          user: pointer) {.cdecl,
    importc: "fz_set_warning_callback", header: "context.h".}
## *
## 	Retrieve the currently set warning callback, or NULL if none
## 	has been set. Optionally, if user is non-NULL, the user pointer
## 	given when the warning callback was set is also passed back to
## 	the caller.
##

proc fzWarningCallback*(ctx: ptr FzContext; user: ptr pointer): ptr FzWarningCb {.cdecl,
    importc: "fz_warning_callback", header: "context.h".}
## *
## 	In order to tune MuPDF's behaviour, certain functions can
## 	(optionally) be provided by callers.
##
## *
## 	Given the width and height of an image,
## 	the subsample factor, and the subarea of the image actually
## 	required, the caller can decide whether to decode the whole
## 	image or just a subarea.
##
## 	arg: The caller supplied opaque argument.
##
## 	w, h: The width/height of the complete image.
##
## 	l2factor: The log2 factor for subsampling (i.e. image will be
## 	decoded to (w>>l2factor, h>>l2factor)).
##
## 	subarea: The actual subarea required for the current operation.
## 	The tuning function is allowed to increase this in size if
## 	required.
##





proc fzTuneImageDecode*(ctx: ptr FzContext; imageDecode: ptr FzTuneImageDecodeFn;
                       arg: pointer) {.cdecl, importc: "fz_tune_image_decode",
                                     header: "context.h".}
## *
## 	Set the tuning function to use for
## 	image scaling.
##
## 	image_scale: Function to use.
##
## 	arg: Opaque argument to be passed to tuning function.
##

proc fzTuneImageScale*(ctx: ptr FzContext; imageScale: ptr FzTuneImageScaleFn;
                      arg: pointer) {.cdecl, importc: "fz_tune_image_scale",
                                    header: "context.h".}
## *
## 	Get the number of bits of antialiasing we are
## 	using (for graphics). Between 0 and 8.
##

proc fzAaLevel*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_aa_level",
                                       header: "context.h".}
## *
## 	Set the number of bits of antialiasing we should
## 	use (for both text and graphics).
##
## 	bits: The number of bits of antialiasing to use (values are
## 	clamped to within the 0 to 8 range).
##

proc fzSetAaLevel*(ctx: ptr FzContext; bits: cint) {.cdecl, importc: "fz_set_aa_level",
    header: "context.h".}
## *
## 	Get the number of bits of antialiasing we are
## 	using for text. Between 0 and 8.
##

proc fzTextAaLevel*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_text_aa_level",
    header: "context.h".}
## *
## 	Set the number of bits of antialiasing we
## 	should use for text.
##
## 	bits: The number of bits of antialiasing to use (values are
## 	clamped to within the 0 to 8 range).
##

proc fzSetTextAaLevel*(ctx: ptr FzContext; bits: cint) {.cdecl,
    importc: "fz_set_text_aa_level", header: "context.h".}
## *
## 	Get the number of bits of antialiasing we are
## 	using for graphics. Between 0 and 8.
##

proc fzGraphicsAaLevel*(ctx: ptr FzContext): cint {.cdecl,
    importc: "fz_graphics_aa_level", header: "context.h".}
## *
## 	Set the number of bits of antialiasing we
## 	should use for graphics.
##
## 	bits: The number of bits of antialiasing to use (values are
## 	clamped to within the 0 to 8 range).
##

proc fzSetGraphicsAaLevel*(ctx: ptr FzContext; bits: cint) {.cdecl,
    importc: "fz_set_graphics_aa_level", header: "context.h".}
## *
## 	Get the minimum line width to be
## 	used for stroked lines.
##
## 	min_line_width: The minimum line width to use (in pixels).
##

proc fzGraphicsMinLineWidth*(ctx: ptr FzContext): cfloat {.cdecl,
    importc: "fz_graphics_min_line_width", header: "context.h".}
## *
## 	Set the minimum line width to be
## 	used for stroked lines.
##
## 	min_line_width: The minimum line width to use (in pixels).
##

proc fzSetGraphicsMinLineWidth*(ctx: ptr FzContext; minLineWidth: cfloat) {.cdecl,
    importc: "fz_set_graphics_min_line_width", header: "context.h".}
## *
## 	Get the user stylesheet source text.
##

proc fzUserCss*(ctx: ptr FzContext): cstring {.cdecl, importc: "fz_user_css",
    header: "context.h".}
## *
## 	Set the user stylesheet source text for use with HTML and EPUB.
##

proc fzSetUserCss*(ctx: ptr FzContext; text: cstring) {.cdecl,
    importc: "fz_set_user_css", header: "context.h".}
## *
## 	Return whether to respect document styles in HTML and EPUB.
##

proc fzUseDocumentCss*(ctx: ptr FzContext): cint {.cdecl,
    importc: "fz_use_document_css", header: "context.h".}
## *
## 	Toggle whether to respect document styles in HTML and EPUB.
##

proc fzSetUseDocumentCss*(ctx: ptr FzContext; use: cint) {.cdecl,
    importc: "fz_set_use_document_css", header: "context.h".}
## *
## 	Enable icc profile based operation.
##

proc fzEnableIcc*(ctx: ptr FzContext) {.cdecl, importc: "fz_enable_icc",
                                    header: "context.h".}
## *
## 	Disable icc profile based operation.
##

proc fzDisableIcc*(ctx: ptr FzContext) {.cdecl, importc: "fz_disable_icc",
                                     header: "context.h".}
## *
## 	Memory Allocation and Scavenging:
##
## 	All calls to MuPDF's allocator functions pass through to the
## 	underlying allocators passed in when the initial context is
## 	created, after locks are taken (using the supplied locking
## 	function) to ensure that only one thread at a time calls
## 	through.
##
## 	If the underlying allocator fails, MuPDF attempts to make room
## 	for the allocation by evicting elements from the store, then
## 	retrying.
##
## 	Any call to allocate may then result in several calls to the
## 	underlying allocator, and result in elements that are only
## 	referred to by the store being freed.
##
## *
## 	Allocate memory for a structure, clear it, and tag the pointer
## 	for Memento.
##
## 	Throws exception in the event of failure to allocate.
##

## !!!Ignored construct:  # fz_malloc_struct ( CTX , TYPE ) ( ( TYPE * ) Memento_label ( fz_calloc ( CTX , 1 , sizeof ( TYPE ) ) , # ) ) [NewLine] *
## 	Allocate memory for an array of structures, clear it, and tag
## 	the pointer for Memento.
##
## 	Throws exception in the event of failure to allocate.
##  # fz_malloc_struct_array ( CTX , N , TYPE ) ( ( TYPE * ) Memento_label ( fz_calloc ( CTX , N , sizeof ( TYPE ) ) , # [] ) ) [NewLine] *
## 	Allocate uninitialized memory for an array of structures, and
## 	tag the pointer for Memento. Does NOT clear the memory!
##
## 	Throws exception in the event of failure to allocate.
##  # fz_malloc_array ( CTX , COUNT , TYPE ) ( ( TYPE * ) Memento_label ( fz_malloc ( CTX , ( COUNT ) * sizeof ( TYPE ) ) , # [] ) ) [NewLine] # fz_realloc_array ( CTX , OLD , COUNT , TYPE ) ( ( TYPE * ) Memento_label ( fz_realloc ( CTX , OLD , ( COUNT ) * sizeof ( TYPE ) ) , # [] ) ) [NewLine] *
## 	Allocate uninitialized memory of a given size.
## 	Does NOT clear the memory!
##
## 	May return NULL for size = 0.
##
## 	Throws exception in the event of failure to allocate.
##  void * fz_malloc ( fz_context * ctx , size_t size ) ;
## Error: identifier expected, but got: (!!!

## *
## 	Allocate array of memory of count entries of size bytes.
## 	Clears the memory to zero.
##
## 	Throws exception in the event of failure to allocate.
##

proc fzCalloc*(ctx: ptr FzContext; count: csize_t; size: csize_t): pointer {.cdecl,
    importc: "fz_calloc", header: "context.h".}
## *
## 	Reallocates a block of memory to given size. Existing contents
## 	up to min(old_size,new_size) are maintained. The rest of the
## 	block is uninitialised.
##
## 	fz_realloc(ctx, NULL, size) behaves like fz_malloc(ctx, size).
##
## 	fz_realloc(ctx, p, 0); behaves like fz_free(ctx, p).
##
## 	Throws exception in the event of failure to allocate.
##

proc fzRealloc*(ctx: ptr FzContext; p: pointer; size: csize_t): pointer {.cdecl,
    importc: "fz_realloc", header: "context.h".}
## *
## 	Free a previously allocated block of memory.
##
## 	fz_free(ctx, NULL) does nothing.
##
## 	Never throws exceptions.
##

proc fzFree*(ctx: ptr FzContext; p: pointer) {.cdecl, importc: "fz_free",
    header: "context.h".}
## *
## 	fz_malloc equivalent that returns NULL rather than throwing
## 	exceptions.
##

proc fzMallocNoThrow*(ctx: ptr FzContext; size: csize_t): pointer {.cdecl,
    importc: "fz_malloc_no_throw", header: "context.h".}
## *
## 	fz_calloc equivalent that returns NULL rather than throwing
## 	exceptions.
##

proc fzCallocNoThrow*(ctx: ptr FzContext; count: csize_t; size: csize_t): pointer {.
    cdecl, importc: "fz_calloc_no_throw", header: "context.h".}
## *
## 	fz_realloc equivalent that returns NULL rather than throwing
## 	exceptions.
##

proc fzReallocNoThrow*(ctx: ptr FzContext; p: pointer; size: csize_t): pointer {.cdecl,
    importc: "fz_realloc_no_throw", header: "context.h".}
## *
## 	Portable strdup implementation, using fz allocators.
##

proc fzStrdup*(ctx: ptr FzContext; s: cstring): cstring {.cdecl, importc: "fz_strdup",
    header: "context.h".}
## *
## 	Fill block with len bytes of pseudo-randomness.
##

#proc fzMemrnd*(ctx: ptr FzContext; `block`: ptr uint8T; len: cint) {.cdecl,
#    importc: "fz_memrnd", header: "context.h".}
##  Implementation details: subject to change.
##  Implementations exposed for speed, but considered private.

proc fzVarImp*(a1: pointer) {.cdecl, importc: "fz_var_imp", header: "context.h".}
proc fzPushTry*(ctx: ptr FzContext): ptr FzJmpBuf {.cdecl, importc: "fz_push_try",
    header: "context.h".}
proc fzDoTry*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_do_try",
                                     header: "context.h".}
proc fzDoAlways*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_do_always",
                                        header: "context.h".}
proc fzDoCatch*(ctx: ptr FzContext): cint {.cdecl, importc: "fz_do_catch",
                                       header: "context.h".}
when not defined(FZ_JMPBUF_ALIGN):
  const
    FZ_JMPBUF_ALIGN* = 32






proc fzNewContextImp*(alloc: ptr FzAllocContext; locks: ptr FzLocksContext;
                     maxStore: csize_t; version: cstring): ptr FzContext {.cdecl,
    importc: "fz_new_context_imp", header: "context.h".}
## *
## 	Lock one of the user supplied mutexes.
##

#proc fzLock*(ctx: ptr FzContext; lock: cint) {.inline, cdecl.} =
#  fzLockDebugLock(ctx, lock)
#  ctx.locks.lock(ctx.locks.user, lock)

## *
## 	Unlock one of the user supplied mutexes.
##

# proc fzUnlock*(ctx: ptr FzContext; lock: cint) {.inline, cdecl.} =
#   fzLockDebugUnlock(ctx, lock)
#   ctx.locks.unlock(ctx.locks.user, lock)

##  Lock-safe reference counting functions

# proc fzKeepImp*(ctx: ptr FzContext; p: pointer; refs: ptr cint): pointer {.inline, cdecl.} =
#   if p:
#     cast[nil](mementoCheckIntPointerOrNull(refs))
#     fzLock(ctx, FZ_LOCK_ALLOC)
#     if refs[] > 0:
#       cast[nil](mementoTakeRef(p))
#       inc(refs[])
#     fzUnlock(ctx, FZ_LOCK_ALLOC)
#   return p

## !!!Ignored construct:  static inline void * fz_keep_imp_locked ( fz_context * ctx FZ_UNUSED , void * p , int * refs ) { if ( p ) { ( void ) Memento_checkIntPointerOrNull ( refs ) ; if ( * refs > 0 ) { ( void ) Memento_takeRef ( p ) ; ++ * refs ; } } return p ; } static inline void * fz_keep_imp8 ( fz_context * ctx , void * p , int8_t * refs ) { if ( p ) { ( void ) Memento_checkBytePointerOrNull ( refs ) ; fz_lock ( ctx , FZ_LOCK_ALLOC ) ; if ( * refs > 0 ) { ( void ) Memento_takeRef ( p ) ; ++ * refs ; } fz_unlock ( ctx , FZ_LOCK_ALLOC ) ; } return p ; } static inline void * fz_keep_imp16 ( fz_context * ctx , void * p , int16_t * refs ) { if ( p ) { ( void ) Memento_checkShortPointerOrNull ( refs ) ; fz_lock ( ctx , FZ_LOCK_ALLOC ) ; if ( * refs > 0 ) { ( void ) Memento_takeRef ( p ) ; ++ * refs ; } fz_unlock ( ctx , FZ_LOCK_ALLOC ) ; } return p ; } static inline int fz_drop_imp ( fz_context * ctx , void * p , int * refs ) { if ( p ) { int drop ; ( void ) Memento_checkIntPointerOrNull ( refs ) ; fz_lock ( ctx , FZ_LOCK_ALLOC ) ; if ( * refs > 0 ) { ( void ) Memento_dropIntRef ( p ) ; drop = -- * refs == 0 ; } else drop = 0 ; fz_unlock ( ctx , FZ_LOCK_ALLOC ) ; return drop ; } return 0 ; } static inline int fz_drop_imp8 ( fz_context * ctx , void * p , int8_t * refs ) { if ( p ) { int drop ; ( void ) Memento_checkBytePointerOrNull ( refs ) ; fz_lock ( ctx , FZ_LOCK_ALLOC ) ; if ( * refs > 0 ) { ( void ) Memento_dropByteRef ( p ) ; drop = -- * refs == 0 ; } else drop = 0 ; fz_unlock ( ctx , FZ_LOCK_ALLOC ) ; return drop ; } return 0 ; } static inline int fz_drop_imp16 ( fz_context * ctx , void * p , int16_t * refs ) { if ( p ) { int drop ; ( void ) Memento_checkShortPointerOrNull ( refs ) ; fz_lock ( ctx , FZ_LOCK_ALLOC ) ; if ( * refs > 0 ) { ( void ) Memento_dropShortRef ( p ) ; drop = -- * refs == 0 ; } else drop = 0 ; fz_unlock ( ctx , FZ_LOCK_ALLOC ) ; return drop ; } return 0 ; } # WASM_SKIP_TRY_CATCH [NewLine] *
## 	Exception macro definitions for WASM_SKIP_TRY_CATCH. In this mode, we
## 	throw JS exceptions directly, and we skip fz_catch and fz_always.
## 	Useful for producing cleaner stack traces when debugging.
## 	Should *never* be used in production.
##  # fz_var [NewLine] # fz_var ( var ) ( void ) ( var ) [NewLine] # fz_try [NewLine] # fz_try ( ctx ) do [NewLine] # fz_always [NewLine] # fz_always ( ctx ) while ( 0 ) ;
## Error: token expected: ; but got: (!!!

## !!!Ignored construct:  if ( 0 ) do [NewLine] # fz_catch [NewLine] # fz_catch ( ctx ) while ( 0 ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  if ( 0 ) [NewLine] # [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!

