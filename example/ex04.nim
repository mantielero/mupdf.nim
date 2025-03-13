import mupdf/pdf
import std/[strformat, with]

let ctx= newContext()
let doc = ctx.openDocument("helloworld.pdf")
echo "Page count: ", doc.countPages()

let rm = scale(1.2,1.2).rotate(50.0)
var pix = doc.newPixmapFromPageNumber(0, rm)

pix.toPPM("prueba.ppm")

