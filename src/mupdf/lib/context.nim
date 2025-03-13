import ../wrapper_futhark/pdf
import system

type
  PDFContextObj* = object
    handle*:ptr fz_context
    alloc*:ptr fz_alloc_context = nil
    locks*:ptr fz_locks_context = nil    
  PDFContext* = ref PDFContextObj


proc `=destroy`*(self:PDFContextObj) =
  if self.handle.addr != nil:
    fz_drop_context(self.handle)

proc newContext*():PDFContext =
  ## Creates a new database or opens an existing database file stored at the given path. 
  ## If no path is given a new in-memory database is created instead. The instantiated database should be closed with 'duckdb_close'.
  result = new PDFContext
  result.handle = fz_new_context_imp( result.alloc, result.locks, FZ_STORE_UNLIMITED.csize_t,  FZ_VERSION)

  if result.handle.addr == nil:
    quit("failed to create context", QuitFailure)

  # Register document handlers for the default file types we support.
  #fz_try(result.handle)
  try:
    fz_register_document_handlers(result.handle)
  except:
    echo "something wrong happen: fz_register_document_handlers"
  #fz_catch(result.handle)  

#https://github.com/ArtifexSoftware/mupdf/blob/bcf470de10dd710a8c2ea8da88a49cd8f7c4e097/include/mupdf/fitz/context.h#L62
# #define fz_try(ctx) if (!fz_setjmp(*fz_push_try(ctx))) if (fz_do_try(ctx)) do
# 
#fz_do_try()


#[
/**
	These macros provide a simple exception handling system. Use them as
	follows:

	fz_try(ctx)
		...
	fz_catch(ctx)
		...

	or as:

	fz_try(ctx)
		...
	fz_always(ctx)
		...
	fz_catch(ctx)
		...

	Code within the fz_try() section can then throw exceptions using fz_throw()
	(or fz_vthrow()).

	They are implemented with setjmp/longjmp, which can have unfortunate
	consequences for 'losing' local variable values on a throw. To avoid this
	we recommend calling 'fz_var(variable)' before the fz_try() for any
	local variable whose value may change within the fz_try() block and whose
	value will be required afterwards.

	Do not call anything in the fz_always() section that can throw.

	Any exception can be rethrown from the fz_catch() section using fz_rethrow()
	as long as there has been no intervening use of fz_try/fz_catch.
*/
]#