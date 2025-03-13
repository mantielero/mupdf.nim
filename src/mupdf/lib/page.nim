import ../wrapper/fitz
import std/[strformat]


proc exportPPM*(pix:ptr FzPixmap):string =
  var ppm = "P3\n"
  ppm &= &"{pix.w} {pix.h}\n"
  ppm &= "255\n"

  var n = pix.n.int
  for y in 0 ..< pix.h:
    var val = y * pix.stride
    var p = cast[ptr UncheckedArray[uint8]]( pix.samples.uint + val.uint )

    var row = ""
    for x in 0 ..< pix.w:
      if x > 0:
        row &= "  "
      
      for i in 0..< n:
        row &= fmt"{p[x*n + i]} " #{p[x*n + 1]} {p[x*n + 2]}"
    ppm &= row    
  return ppm