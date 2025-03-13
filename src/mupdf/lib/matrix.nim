import ../wrapper_futhark/pdf

type
  TransformMatrix* = fz_matrix



proc scale*(x,y:float):TransformMatrix =
  fz_scale(x.cfloat,y.cfloat)

proc scale*(tm:TransformMatrix;x,y: float): TransformMatrix =
  tm.fz_pre_scale(x.cfloat,y.cfloat)


proc rotate*(angle:float): TransformMatrix =
  fz_rotate(angle.cfloat)


proc rotate*(tm:TransformMatrix; angle:float): TransformMatrix =
  tm.fz_pre_rotate(angle.cfloat)