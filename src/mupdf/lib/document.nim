import ../wrapper_futhark/pdf
import context

type
  PDFDocumentObj* = object
    handle*: ptr fz_document
    ctx*: PDFContext
  PDFDocument* = ref PDFDocumentObj


proc `=destroy`*(self:PDFDocumentObj) =
  if self.handle.addr != nil:
    fz_drop_document(self.ctx.handle, self.handle)

# var doc:ptr fz_document = fz_open_document(ctx, "helloworld.pdf")
proc openDocument*(ctx:PDFContext; path:string = ""): PDFDocument =
  result = new PDFDocument
  result.handle = fz_open_document(ctx.handle, path.cstring)
  result.ctx = ctx



proc countPages*(doc:PDFDocument):int =
  fz_count_pages(doc.ctx.handle, doc.handle).int