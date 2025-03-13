import os, strformat

import nimterop/[cimport]

when defined(windows):
  # Windows specific symbols, options and files

  # Dynamic library to link against
  const dynlibFile = "libmupdf.dll"

elif defined(linux):
  const dynlibFile = "libmupdf.so"
  

else:
  static: doAssert false

const
  base = currentSourcePath.parentDir()
  buildDir = (base / "build").sanitizePath
  includeDir = (buildDir / "include").sanitizePath  

echo base

static:
  cDebug()
  gitPull("https://github.com/ArtifexSoftware/mupdf", base, """
include/*
""")
  cSkipSymbol(@[
    "FZ_LANG_ur", "FZ_LANG_urd", "FZ_LANG_ko", "FZ_LANG_ja", "FZ_LANG_zh", 
    "FZ_LANG_zh_Hans", "FZ_LANG_zh_Hant"
  ])


#cPlugin:
#  import
#    strutils

  #proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
  #  if sym.kind == nskProc and sym.name.startsWith("_"):
  #    sym.name = sym.name.replace("_", "priv_")
  #  if sym.kind == nskProc and sym.name.endsWith("_"):
  #    sym.name = sym.name.replace("_", "_priv")


#cIncludeDir "/usr/include"  
cIncludeDir includeDir

cPlugin:
    import strutils
    proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
        if sym.kind == nskConst and sym.name.startsWith("__"):
          sym.name = sym.name.replace("__", "priv__")      
        if sym.kind == nskConst and sym.name.startsWith("_"):
          sym.name = sym.name.replace("_", "priv_")
        if sym.kind == nskField and sym.name.endsWith("_"):
          sym.name = sym.name.replace("_", "_priv")  
        if sym.kind == nskConst and sym.name.endsWith("__"):
          sym.name = sym.name.replace("__", "__priv")                    
#            if sym.name == "_N_VectorContent_Serial":
#                sym.name = "N_VectorContent_Serial_Base"
#        sym.name = sym.name.strip(chars = {'_'})
#-DHAVE_SIGSETJMP=0
cOverride:
  type sigjmp_buf = object
  # type sigjmp_buf {.importc, header: "<setjmp.h>".} = object

#dynlib="dynlibFile", 

#cImport(includeDir/"mupdf/fitz.h",  flags="-f:ast2", recurse=true)
cImport(includeDir/"mupdf/fitz/archive.h",  flags="-f:ast2", recurse=true)
