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

# import
#   mupdf/fitz/system

##  md5 digests
## *
## 	Structure definition is public to enable stack
## 	based allocation. Do not access the members directly.
##




proc fzMd5Init*(state: ptr FzMd5) {.cdecl, importc: "fz_md5_init", header: "crypt.h".}
## *
## 	MD5 block update operation. Continues an MD5 message-digest
## 	operation, processing another message block, and updating the
## 	context.
##
## 	Never throws an exception.
##

proc fzMd5Update*(state: ptr FzMd5; input: ptr cuchar; inlen: csize_t) {.cdecl,
    importc: "fz_md5_update", header: "crypt.h".}
## *
## 	MD5 block update operation. Continues an MD5 message-digest
## 	operation, processing an int64, and updating the context.
##
## 	Never throws an exception.
##

proc fzMd5UpdateInt64*(state: ptr FzMd5; i: int64) {.cdecl,
    importc: "fz_md5_update_int64", header: "crypt.h".}
## *
## 	MD5 finalization. Ends an MD5 message-digest operation, writing
## 	the message digest and zeroizing the context.
##
## 	Never throws an exception.
##

proc fzMd5Final*(state: ptr FzMd5; digest: array[16, cuchar]) {.cdecl,
    importc: "fz_md5_final", header: "crypt.h".}
##  sha-256 digests
## *
## 	Structure definition is public to enable stack
## 	based allocation. Do not access the members directly.
##





proc fzSha256Init*(state: ptr FzSha256) {.cdecl, importc: "fz_sha256_init",
                                      header: "crypt.h".}
## *
## 	SHA256 block update operation. Continues an SHA256 message-
## 	digest operation, processing another message block, and updating
## 	the context.
##
## 	Never throws an exception.
##

proc fzSha256Update*(state: ptr FzSha256; input: ptr cuchar; inlen: csize_t) {.cdecl,
    importc: "fz_sha256_update", header: "crypt.h".}
## *
## 	MD5 finalization. Ends an MD5 message-digest operation, writing
## 	the message digest and zeroizing the context.
##
## 	Never throws an exception.
##

proc fzSha256Final*(state: ptr FzSha256; digest: array[32, cuchar]) {.cdecl,
    importc: "fz_sha256_final", header: "crypt.h".}
##  sha-512 digests
## *
## 	Structure definition is public to enable stack
## 	based allocation. Do not access the members directly.
##





proc fzSha512Init*(state: ptr FzSha512) {.cdecl, importc: "fz_sha512_init",
                                      header: "crypt.h".}
## *
## 	SHA512 block update operation. Continues an SHA512 message-
## 	digest operation, processing another message block, and updating
## 	the context.
##
## 	Never throws an exception.
##

proc fzSha512Update*(state: ptr FzSha512; input: ptr cuchar; inlen: csize_t) {.cdecl,
    importc: "fz_sha512_update", header: "crypt.h".}
## *
## 	SHA512 finalization. Ends an SHA512 message-digest operation,
## 	writing the message digest and zeroizing the context.
##
## 	Never throws an exception.
##

proc fzSha512Final*(state: ptr FzSha512; digest: array[64, cuchar]) {.cdecl,
    importc: "fz_sha512_final", header: "crypt.h".}
##  sha-384 digests



proc fzSha384Init*(state: ptr FzSha384) {.cdecl, importc: "fz_sha384_init",
                                      header: "crypt.h".}
## *
## 	SHA384 block update operation. Continues an SHA384 message-
## 	digest operation, processing another message block, and updating
## 	the context.
##
## 	Never throws an exception.
##

proc fzSha384Update*(state: ptr FzSha384; input: ptr cuchar; inlen: csize_t) {.cdecl,
    importc: "fz_sha384_update", header: "crypt.h".}
## *
## 	SHA384 finalization. Ends an SHA384 message-digest operation,
## 	writing the message digest and zeroizing the context.
##
## 	Never throws an exception.
##

proc fzSha384Final*(state: ptr FzSha384; digest: array[64, cuchar]) {.cdecl,
    importc: "fz_sha384_final", header: "crypt.h".}
##  arc4 crypto
## *
## 	Structure definition is public to enable stack
## 	based allocation. Do not access the members directly.
##




proc fzArc4Init*(state: ptr FzArc4; key: ptr cuchar; len: csize_t) {.cdecl,
    importc: "fz_arc4_init", header: "crypt.h".}
## *
## 	RC4 block encrypt operation; encrypt src into dst (both of
## 	length len) updating the RC4 state as we go.
##
## 	Never throws an exception.
##

proc fzArc4Encrypt*(state: ptr FzArc4; dest: ptr cuchar; src: ptr cuchar; len: csize_t) {.
    cdecl, importc: "fz_arc4_encrypt", header: "crypt.h".}
## *
## 	RC4 finalization. Zero the context.
##
## 	Never throws an exception.
##

proc fzArc4Final*(state: ptr FzArc4) {.cdecl, importc: "fz_arc4_final",
                                   header: "crypt.h".}
##  AES block cipher implementation from XYSSL
## *
## 	Structure definitions are public to enable stack
## 	based allocation. Do not access the members directly.
##



const
  FZ_AES_DECRYPT* = 0
  FZ_AES_ENCRYPT* = 1

## *
## 	AES encryption intialisation. Fills in the supplied context
## 	and prepares for encryption using the given key.
##
## 	Returns non-zero for error (key size other than 128/192/256).
##
## 	Never throws an exception.
##

proc fzAesSetkeyEnc*(ctx: ptr FzAes; key: ptr cuchar; keysize: cint): cint {.cdecl,
    importc: "fz_aes_setkey_enc", header: "crypt.h".}
## *
## 	AES decryption intialisation. Fills in the supplied context
## 	and prepares for decryption using the given key.
##
## 	Returns non-zero for error (key size other than 128/192/256).
##
## 	Never throws an exception.
##

proc fzAesSetkeyDec*(ctx: ptr FzAes; key: ptr cuchar; keysize: cint): cint {.cdecl,
    importc: "fz_aes_setkey_dec", header: "crypt.h".}
## *
## 	AES block processing. Encrypts or Decrypts (according to mode,
## 	which must match what was initially set up) length bytes (which
## 	must be a multiple of 16), using (and modifying) the insertion
## 	vector iv, reading from input, and writing to output.
##
## 	Never throws an exception.
##

proc fzAesCryptCbc*(ctx: ptr FzAes; mode: cint; length: csize_t; iv: array[16, cuchar];
                   input: ptr cuchar; output: ptr cuchar) {.cdecl,
    importc: "fz_aes_crypt_cbc", header: "crypt.h".}
