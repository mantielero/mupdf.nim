import fitz_types

## *
## 	Bidirectional text processing.
##
## 	Derived from the SmartOffice code, which is itself derived
## 	from the example unicode standard code. Original copyright
## 	messages follow:
##
## 	Copyright (C) Picsel, 2004-2008. All Rights Reserved.
##
## 	Processes Unicode text by arranging the characters into an order
## 	suitable for display. E.g. Hebrew text will be arranged from
## 	right-to-left and any English within the text will remain in the
## 	left-to-right order.
##
## 	This is an implementation of the Unicode Bidirectional Algorithm
## 	which can be found here: http://www.unicode.org/reports/tr9/ and
## 	is based on the reference implementation found on Unicode.org.
##

# import
#   mupdf/fitz/system, mupdf/fitz/context

##  Implementation details: subject to change.







proc fzBidiFragmentText*(ctx: ptr FzContext; text: ptr uint32; textlen: csize_t;
                        baseDir: ptr FzBidiDirection;
                        callback: ptr FzBidiFragmentFn; arg: pointer; flags: cint) {.
    cdecl, importc: "fz_bidi_fragment_text", header: "bidi.h".}
