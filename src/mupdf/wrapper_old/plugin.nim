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