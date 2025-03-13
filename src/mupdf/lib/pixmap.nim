import ../wrapper_futhark/pdf
import context, document, matrix
import std/strformat

type
  PixmapObj* = object
    handle*: ptr fz_pixmap
    ctx: PDFContext
    doc: PDFDocument
  Pixmap* = ref PixmapObj



proc newPixmapFromPageNumber*(doc:PDFDocument; pageNumber:int; ctm:TransformMatrix = fz_identity): Pixmap =
  result = new Pixmap
  result.handle = fz_new_pixmap_from_page_number(
                                    doc.ctx.handle, 
                                    doc.handle, page_number.cint, 
                                    ctm, 
                                    fz_device_rgb(doc.ctx.handle), 
                                    pageNumber.cint )

proc toPPM*(pix: Pixmap; filename: string ) =
  var txt =  "P3\n"
  txt &= &"{pix.handle.w} {pix.handle.h}\n255\n"
  
  var n = pix.handle.n.int
  for y in 0 ..< pix.handle.h:
    var val = y * pix.handle.stride
    let newPtr = cast[ptr uint8](cast[int](pix.handle.samples) + val)
    var p = cast[ptr UncheckedArray[uint8]](newPtr)

    var row = ""
    for x in 0 ..< pix.handle.w:
      if x > 0:
        row &= "  "
      
      row &= fmt"{p[x*n + 0]} {p[x*n + 1]} {p[x*n + 2]}"
    txt &= row & "\n"
  filename.writeFile(txt)