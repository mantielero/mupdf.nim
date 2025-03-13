{.passC: "-I/usr/include/mupdf/fitz".}

{.passL: "-lmupdf".}
{.passL: "-lmupdf-third".}
{.passL: "-lmujs -lfreetype -lopenjpeg -ljbig2dec -lopenjp2  -lgumbo -lharfbuzz -ljpeg -lz -lm".}




import fitz/[archive, band_writer, bidi, bitmap, buffer, color, 
  compress, context, device, 
  display_list, document, fitz_types, font, 
  geometry, 
  #getopt, glyph_cache, glyph, hash, image, link, 
  log, outline, 
  #output, 
  output_svg, 
  #path, 
  pixmap, pool, 
  #separation, 
  shade, store, story, story_writer, 
  #stream, 
  string_util, structured_text, 
  #text, 
  track_usage, transition, 
  tree, types, util, version, write_pixmap, writer, xml]

#import fitz/compressed_buffer
#import fitz/config
#import fitz/crypt
#import fitz/exportfitz
#import fitz/filter
export archive, band_writer, bidi, bitmap, buffer, color, 
  compress, context, device, 
  display_list, document, fitz_types, font, 
  geometry, 
  #getopt, glyph_cache, glyph, hash, image, link, 
  log, outline, 
  #output, 
  output_svg, 
  #path, 
  pixmap, pool, 
  #separation, 
  shade, store, story, story_writer, 
  #stream, 
  string_util, structured_text, 
  #text, 
  track_usage, transition, 
  tree, types, util, version, write_pixmap, writer, xml

#export compressed_buffer
#export config
#export crypt
#export exportfitz
#export filter