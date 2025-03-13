import os, strformat

import nimterop/[cimport, build]

#when defined(windows):
  # Windows specific symbols, options and files

  # Dynamic library to link against
#  const dynlibFile = "libmupdf.dll"

#elif defined(linux):
#  const dynlibFile = "libmupdf.so"
  

#else:
#  static: doAssert false

static:
  cDebug()
  cSkipSymbol(@[
    "FZ_LANG_ur", "FZ_LANG_urd", "FZ_LANG_ko", "FZ_LANG_ja", "FZ_LANG_zh", "FZ_LANG_zh_Hans", "FZ_LANG_zh_Hant"
  ])

const
  #baseDir = getProjectCacheDir("testwrapper")             # Download library within nimcache
  baseDir = "./build"


getHeader(
  "fitz.h",                                         # The header file to wrap, full path is returned in `headerPath`
  giturl = "https://github.com/ArtifexSoftware/mupdf",    # Git repo URL
  outdir = baseDir,                                       # Where to download/build/search
  conFlags = "",#--disable-comp --enable-feature",           # Flags to pass configure script
  cmakeFlags = "" #-DENABLE_STATIC_LIB=ON"                   # Flags to pass to Cmake
  #altNames = "hdr"                                        # Alterate names of the library binary, full path returned in `headerLPath`
)


#const
#  base = currentSourcePath.parentDir()
#  buildDir = (base / "build").sanitizePath
#  includeDir = (buildDir / "include").sanitizePath  

#echo base





#cPlugin:
#  import
#    strutils

  #proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
  #  if sym.kind == nskProc and sym.name.startsWith("_"):
  #    sym.name = sym.name.replace("_", "priv_")
  #  if sym.kind == nskProc and sym.name.endsWith("_"):
  #    sym.name = sym.name.replace("_", "_priv")


#cIncludeDir "/usr/include"  
#cIncludeDir includeDir

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
# Wrap headerPath as returned from getHeader() and link statically
# or dynamically depending on user input
when not isDefined(headerStatic):
  cImport(headerPath, recurse = true, dynlib = "headerLPath")       # Pass dynlib if not static link
else:
  cImport(headerPath, recurse = true)