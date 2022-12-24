# nim c -r gen  2>&1 | grep Error | grep archive.h 
import ed
import std/os
import strformat, strutils, sequtils
import npeg
#import compiler/parser # https://stackoverflow.com/questions/32487507/nim-code-parser

iterator getFileList(folder, startsWith, extension:string):string =
  var pattern = folder  / startsWith & &"*.{extension}"
  for i in walkFiles(pattern):
    yield i




#=====================================================

let folder = "/usr/include/mupdf/"
let packageName = "aspect"
let c2nimFile = packageName & ".c2nim"

# --------------------------------------
# 1. Print the filenames to be processed
# --------------------------------------
# Equivalent to something like: # ls /usr/include/opencascade/Aspect*.hxx | cut -c 26-
for fname in getFileList( folder, "*", "h"):
  echo fname.rsplit('/',1)[1]

# --------------------
# 2. Bindings creation
# --------------------

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "Aspect_AspectFillAreaDefinitionError.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.comment(1,5)
binding.ignore = true
headers &= (name, header, binding)
#binding.save

name = "Aspect_AspectLineDefinitionError.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
binding.ignore = true
headers &= (name, header, binding)
#binding.save

name = "Aspect_AspectMarkerDefinitionError.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

#------------------
name = "Aspect_Background.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false) # commentRange = @[(16,29)]
binding.insert("""import ../../tkernel/standard/standard_types
import aspect_types
import ../../tkernel/quantity/quantity_types

""")
binding.setRootObj("AspectBackground")
binding.save
headers &= (name, header, binding)

#------------------
name = "Aspect_CircularGrid.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false) # commentRange = @[(16,29)]
binding.insert("""import ../../tkernel/standard/standard_types
import aspect_types

""")
binding.save
headers &= (name, header, binding)

#------------------
name = "Aspect_ColorSpace.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false) # commentRange = @[(16,29)]
binding.insert("""import ../../tkernel/standard/standard_types
import aspect_types

""")
binding.save
headers &= (name, header, binding)

#------------------
# name = "Aspect_Convert.hxx"
# header = newHeader(folder, name, c2nimFile )
# binding = header.genBindings #(clean = false) # commentRange = @[(16,29)]
# binding.save
# headers &= (name, header, binding)

#------------------
name = "Aspect_DisplayConnectionDefinitionError.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false) # commentRange = @[(16,29)]
binding.save
headers &= (name, header, binding)

#------------------
name = "Aspect_DisplayConnectionDefinitionError.hxx"
header = newHeader(folder, name, c2nimFile ) #
binding = header.genBindings #(clean = false) #  commentRange = @[(16,31)]
binding.save
headers &= (name, header, binding)

#------------------
name = "Aspect_DisplayConnection.hxx"
header = newHeader(folder, name, c2nimFile ) #
header.comment(87, 87)
header.comment(119,119)
binding = header.genBindings(clean = false) #  comment = @[(87,87), (119,119)]
binding.insert("""
import ../../tkernel/tcollection/tcollection_types
import aspect_types

""")
binding.save
headers &= (name, header, binding)



# name = "Aspect_RenderingContext.hxx"
# header = newHeader(folder, name, c2nimFile )
# binding = header.genBindings(clean = false) 
# headers &= (name, header, binding)
# binding.save
# 


#var id:string
#doAssert parser.match(prueba, id).ok
#echo id
#[ 

genFiles("Aspect_Display")
genFiles("Aspect_Drawable")
genFiles("Aspect_Eye")
genFiles("Aspect_FBConfig")
genFiles("Aspect_FillMethod")
genFiles("Aspect_FrustumLRBT")
genFiles("Aspect_GenId")
genFiles("Aspect_GradientBackground")
genFiles("Aspect_GradientFillMethod")
pp("aspect_gradientfillmethod.nim",
  replaceAll = @[("AspectGFM", "aspectGFM")]
)
genFiles("Aspect_GraphicDeviceDefinitionError")
pp("aspect_graphicdevicedefinitionerror.nim",
  commentRange = @[(16,29)]
)
genFiles("Aspect_GraphicsLibrary")
genFiles("Aspect_GridDrawMode")
genFiles("Aspect_Grid")
genFiles("Aspect_GridType")
genFiles("Aspect_Handle")
genFiles("Aspect_HatchStyle")
genFiles("Aspect_IdentDefinitionError")
pp("aspect_identdefinitionerror.nim",
  commentRange = @[(16,27)]
)
genFiles("Aspect_InteriorStyle")
pp("aspect_interiorstyle.nim",
  replaceAll = @[("AspectIS", "aspectIS"),
    (""",           ## !< display only vertices of surface (obsolete)
                   ##  obsolete aliases
    aspectIS_HOLLOW = aspectIS_EMPTY ## !< transparent surface interior""",
    """           ## !< display only vertices of surface (obsolete)
                   ##  obsolete aliases
const
  aspectIS_HOLLOW = aspectIS_EMPTY.AspectInteriorStyle ## !< transparent surface interior""")
  ]
)
genFiles("Aspect_NeutralWindow")
genFiles("Aspect_OpenVRSession")
genFiles("Aspect_PolygonOffsetMode")
pp("aspect_polygonoffsetmode.nim",
  replaceAll = @[("AspectPOM", "aspectPOM"),
    ("""    aspectPOM_All = aspectPOM_Fill or aspectPOM_Line or aspectPOM_Point, aspectPOM_None = 0x08, ##  do not change current polygon offset mode
    aspectPOM_Mask = aspectPOM_All or aspectPOM_None""",
    """const
  aspectPOM_All = (aspectPOM_Fill.int or aspectPOM_Line.int or aspectPOM_Point.int).AspectPolygonOffsetMode
  aspectPOM_None = 0x08 ##  do not change current polygon offset mode
  aspectPOM_Mask = (aspectPOM_All.int or aspectPOM_None.int).AspectPolygonOffsetMode"""
    )
  
  ]
)
genFiles("Aspect_RectangularGrid")
genFiles("Aspect_RenderingContext",
  comment = @[(25,42), (44,44)]
)

genFiles("Aspect_ScrollDelta")
genFiles("Aspect_SequenceOfColor")
genFiles("Aspect_Touch")
genFiles("Aspect_TouchMap")
pp("aspect_touchmap.nim",
  replaceAll = @[("AspectTouchMap* = NCollectionIndexedDataMap[csize_t, AspectTouch]",
    """AspectTouchMap* {.importcpp:"NCollection_IndexedDataMap<Standard_Size, Aspect_Touch>", header:"Aspect_TouchMap.hxx", bycopy.}= object"""
  )]
)
genFiles("Aspect_TrackedDevicePose")
genFiles("Aspect_TypeOfColorScaleData")
genFiles("Aspect_TypeOfColorScaleOrientation")
genFiles("Aspect_TypeOfColorScalePosition")
genFiles("Aspect_TypeOfDeflection")
genFiles("Aspect_TypeOfDisplayText")
pp("aspect_typeofdisplaytext.nim",
  replaceAll = @[("AspectTODT", "aspectTODT")]
)
genFiles("Aspect_TypeOfFacingModel")
pp("aspect_typeoffacingmodel.nim",
  replaceAll = @[("AspectTOFM", "aspectTOFM")]
)
genFiles("Aspect_TypeOfHighlightMethod")
genFiles("Aspect_TypeOfLine")
pp("aspect_typeofline.nim",
  replaceAll = @[("AspectTOL", "aspectTOL")]
)
genFiles("Aspect_TypeOfMarker")
pp("aspect_typeofmarker.nim",
  replaceAll = @[("AspectTOM", "aspectTOM")]
)
genFiles("Aspect_TypeOfResize")
genFiles("Aspect_TypeOfStyleText")
pp("aspect_typeofstyletext.nim",
  replaceAll = @[("AspectTOST", "aspectTOST")]
)
genFiles("Aspect_TypeOfTriedronPosition")
pp("aspect_typeoftriedronposition.nim",
  replaceAll = @[("AspectTOTP", "aspectTOTP"),
    (""",  ## !< at the middle of the right  side
    aspectTOTP_LEFT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_LEFT, ## !< at the left lower corner
    aspectTOTP_LEFT_UPPER = aspectTOTP_TOP or aspectTOTP_LEFT, ## !< at the left upper corner
    aspectTOTP_RIGHT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_RIGHT, ## !< at the right lower corner
    aspectTOTP_RIGHT_UPPER = aspectTOTP_TOP or aspectTOTP_RIGHT ## !< at the right upper corner""",
    """  ## !< at the middle of the right  side

const
  aspectTOTP_LEFT_LOWER  = (aspectTOTP_BOTTOM.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition  ## at the left lower corner
  aspectTOTP_LEFT_UPPER  = (aspectTOTP_TOP.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition     ## at the left upper corner
  aspectTOTP_RIGHT_LOWER = (aspectTOTP_BOTTOM.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition ## at the right lower corner
  aspectTOTP_RIGHT_UPPER = (aspectTOTP_TOP.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition    ## at the right upper corner""")
  
  ]
)
genFiles("Aspect_Units")
pp("aspect_units.nim",
  replaceAll = @[("[]", "")]
)
genFiles("Aspect_VKeyFlags")
pp("aspect_vkeyflags.nim",
  replaceAll = @[("AspectVKeyFlags", "aspectVKeyFlags"), ("aspectVKeyFlags*", "AspectVKeyFlags*")]
)
genFiles("Aspect_VKey")
pp("aspect_vkey.nim",
  replaceAll = @[("AspectVKey", "aspectVKey"), ("aspectVKey*", "AspectVKey*"), ("aspectVKeyBasic*", "AspectVKeyBasic*"),
    ("aspectVKeyUpper - aspectVKeyLower + 1", "(aspectVKeyUpper.int - aspectVKeyLower.int + 1)"),
    ("aspectVKey2Modifier*(theKey: aspectVKey): aspectVKeyFlags", "aspectVKey2Modifier*(theKey: AspectVKey): AspectVKeyFlags")
  ]
)
genFiles("Aspect_VKeySet")
genFiles("Aspect_WidthOfLine")
genFiles("Aspect_WindowDefinitionError")
pp("aspect_windowdefinitionerror.nim",
  commentRange = @[(16,27)]
)
genFiles("Aspect_WindowError")
pp("aspect_windowerror.nim",
  commentRange = @[(16,27)]
)
genFiles("Aspect_Window")
genFiles("Aspect_XAtom")
genFiles("Aspect_XRAction")
pp("aspect_xraction.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRActionSet")
pp("aspect_xractionset.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRActionType")
genFiles("Aspect_XRAnalogActionData")
pp("aspect_xranalogactiondata.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRDigitalActionData")
pp("aspect_xrdigitalactiondata.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRGenericAction")
pp("aspect_xrgenericaction.nim",
  replaceAll = @[("AspectXRGenericAction", "aspectXRGenericAction"),
    ("aspectXRGenericAction*","AspectXRGenericAction*"),
    ("aspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic + 1", "AspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic.int + 1")
  ]
)
genFiles("Aspect_XRHapticActionData")
genFiles("Aspect_XRPoseActionData")
pp("aspect_xrposeactiondata.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRSession")
genFiles("Aspect_XRTrackedDeviceRole")
pp("aspect_xrtrackeddevicerole.nim",
  replaceAll = @[("AspectXR", "aspectXR"), ("aspectXRTrackedDeviceRole*", "AspectXRTrackedDeviceRole*"),
    ("aspectXRTrackedDeviceRoleOther + 1","aspectXRTrackedDeviceRoleOther.int + 1")
  ]
) ]#
#genFiles("Aspect_XWD",
#  comment = @[(17, 92)]
#)






# writeFile(packageName & "_includes.nim", beggining & txt )#& exp)
# pp(packageName & "_includes.nim")