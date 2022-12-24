import fitz_types
##  Copyright (C) 2004-2021 Artifex Software, Inc.
##
##  This file is part of MuPDF.
##
##  MuPDF is free software: you can redistribute it and/or modify it under the
##  terms of the GNU Affero General Public License as published by the Free
##  Software Foundation, either version 3 of the License, or (at your option)
##  any later version.
##
##  MuPDF is distributed in the hope that it will be useful, but WITHOUT ANY
##  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
##  FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
##  details.
##
##  You should have received a copy of the GNU Affero General Public License
##  along with MuPDF. If not, see <https://www.gnu.org/licenses/agpl-3.0.en.html>
##
##  Alternative licensing terms are available from the licensor.
##  For commercial licensing, see <https://www.artifex.com/> or contact
##  Artifex Software, Inc., 1305 Grant Avenue - Suite 200, Novato,
##  CA 94945, U.S.A., +1(415)492-9861, for further information.

when defined(TRACK_USAGE):
  type
    TrackUsageData* {.importc: "track_usage_data", header: "track-usage.h", bycopy.} = object
      count* {.importc: "count".}: cint
      function* {.importc: "function".}: cstring
      line* {.importc: "line".}: cint
      desc* {.importc: "desc".}: cstring
      next* {.importc: "next".}: ptr TrackUsageData

  template track_Label*(a: untyped): void =
    while true:
      var USAGE_DATA: TrackUsageData
      trackUsage(addr(usage_Data), file, line, a)
      if not 0:
        break

  template track_Fn*(): void =
    while true:
      var USAGE_DATA: TrackUsageData
      trackUsage(addr(usage_Data), file, line, function)
      if not 0:
        break

  proc trackUsage*(data: ptr TrackUsageData; function: cstring; line: cint;
                  desc: cstring) {.cdecl, importc: "track_usage",
                                 header: "track-usage.h".}
else:
  template track_Label*(a: untyped): void =
    while true:
      discard
      if not 0:
        break

  template track_Fn*(): void =
    while true:
      discard
      if not 0:
        break
  