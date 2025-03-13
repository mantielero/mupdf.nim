##  Copyright (C) 2004-2022 Artifex Software, Inc.
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

## !!!Ignored construct:  # MUPDF_FITZ_ARCHIVE_H [NewLine] # MUPDF_FITZ_ARCHIVE_H [NewLine] # mupdf/fitz/system.h [NewLine] # mupdf/fitz/context.h [NewLine] # mupdf/fitz/buffer.h [NewLine] # mupdf/fitz/stream.h [NewLine] # mupdf/fitz/tree.h [NewLine]  PUBLIC API *
## 	fz_archive:
##
## 	fz_archive provides methods for accessing "archive" files.
## 	An archive file is a conceptual entity that contains multiple
## 	files, which can be counted, enumerated, and read.
##
## 	Implementations of fz_archive based upon directories, zip
## 	and tar files are included.
##  typedef struct fz_archive fz_archive ;
## Error: identifier expected, but got: (!!!

## *
## 	Open a zip or tar archive
##
## 	Open a file and identify its archive type based on the archive
## 	signature contained inside.
##
## 	filename: a path to a file as it would be given to open(2).
##

proc fzOpenArchive*(ctx: ptr FzContext; filename: cstring): ptr FzArchive {.
    importc: "fz_open_archive", header: "archive.h".}
## *
## 	Open zip or tar archive stream.
##
## 	Open an archive using a seekable stream object rather than
## 	opening a file or directory on disk.
##

proc fzOpenArchiveWithStream*(ctx: ptr FzContext; file: ptr FzStream): ptr FzArchive {.
    importc: "fz_open_archive_with_stream", header: "archive.h".}
## *
## 	Open a directory as if it was an archive.
##
## 	A special case where a directory is opened as if it was an
## 	archive.
##
## 	Note that for directories it is not possible to retrieve the
## 	number of entries or list the entries. It is however possible
## 	to check if the archive has a particular entry.
##
## 	path: a path to a directory as it would be given to opendir(3).
##

proc fzOpenDirectory*(ctx: ptr FzContext; path: cstring): ptr FzArchive {.
    importc: "fz_open_directory", header: "archive.h".}
## *
## 	Determine if a given path is a directory.
##

proc fzIsDirectory*(ctx: ptr FzContext; path: cstring): cint {.
    importc: "fz_is_directory", header: "archive.h".}
## *
## 	Drop a reference to an archive.
##
## 	When the last reference is dropped, this closes and releases
## 	any memory or filehandles associated with the archive.
##

proc fzDropArchive*(ctx: ptr FzContext; arch: ptr FzArchive) {.
    importc: "fz_drop_archive", header: "archive.h".}
## *
## 	Keep a reference to an archive.
##

proc fzKeepArchive*(ctx: ptr FzContext; arch: ptr FzArchive): ptr FzArchive {.
    importc: "fz_keep_archive", header: "archive.h".}
## *
## 	Return a pointer to a string describing the format of the
## 	archive.
##
## 	The lifetime of the string is unspecified (in current
## 	implementations the string will persist until the archive
## 	is closed, but this is not guaranteed).
##

proc fzArchiveFormat*(ctx: ptr FzContext; arch: ptr FzArchive): cstring {.
    importc: "fz_archive_format", header: "archive.h".}
## *
## 	Number of entries in archive.
##
## 	Will always return a value >= 0.
##
## 	May throw an exception if this type of archive cannot count the
## 	entries (such as a directory).
##

proc fzCountArchiveEntries*(ctx: ptr FzContext; arch: ptr FzArchive): cint {.
    importc: "fz_count_archive_entries", header: "archive.h".}
## *
## 	Get listed name of entry position idx.
##
## 	idx: Must be a value >= 0 < return value from
## 	fz_count_archive_entries. If not in range NULL will be
## 	returned.
##
## 	May throw an exception if this type of archive cannot list the
## 	entries (such as a directory).
##

proc fzListArchiveEntry*(ctx: ptr FzContext; arch: ptr FzArchive; idx: cint): cstring {.
    importc: "fz_list_archive_entry", header: "archive.h".}
## *
## 	Check if entry by given name exists.
##
## 	If named entry does not exist 0 will be returned, if it does
## 	exist 1 is returned.
##
## 	name: Entry name to look for, this must be an exact match to
## 	the entry name in the archive.
##

proc fzHasArchiveEntry*(ctx: ptr FzContext; arch: ptr FzArchive; name: cstring): cint {.
    importc: "fz_has_archive_entry", header: "archive.h".}
## *
## 	Opens an archive entry as a stream.
##
## 	name: Entry name to look for, this must be an exact match to
## 	the entry name in the archive.
##
## 	Throws an exception if a matching entry cannot be found.
##

proc fzOpenArchiveEntry*(ctx: ptr FzContext; arch: ptr FzArchive; name: cstring): ptr FzStream {.
    importc: "fz_open_archive_entry", header: "archive.h".}
## *
## 	Reads all bytes in an archive entry
## 	into a buffer.
##
## 	name: Entry name to look for, this must be an exact match to
## 	the entry name in the archive.
##
## 	Throws an exception if a matching entry cannot be found.
##

proc fzReadArchiveEntry*(ctx: ptr FzContext; arch: ptr FzArchive; name: cstring): ptr FzBuffer {.
    importc: "fz_read_archive_entry", header: "archive.h".}
## *
## 	fz_archive: tar implementation
##
## *
## 	Detect if stream object is a tar achieve.
##
## 	Assumes that the stream object is seekable.
##

proc fzIsTarArchive*(ctx: ptr FzContext; file: ptr FzStream): cint {.
    importc: "fz_is_tar_archive", header: "archive.h".}
## *
## 	Open a tar archive file.
##
## 	An exception is throw if the file is not a tar archive as
## 	indicated by the presence of a tar signature.
##
## 	filename: a path to a tar archive file as it would be given to
## 	open(2).
##

proc fzOpenTarArchive*(ctx: ptr FzContext; filename: cstring): ptr FzArchive {.
    importc: "fz_open_tar_archive", header: "archive.h".}
## *
## 	Open a tar archive stream.
##
## 	Open an archive using a seekable stream object rather than
## 	opening a file or directory on disk.
##
## 	An exception is throw if the stream is not a tar archive as
## 	indicated by the presence of a tar signature.
##
##

proc fzOpenTarArchiveWithStream*(ctx: ptr FzContext; file: ptr FzStream): ptr FzArchive {.
    importc: "fz_open_tar_archive_with_stream", header: "archive.h".}
## *
## 	fz_archive: zip implementation
##
## *
## 	Detect if stream object is a zip archive.
##
## 	Assumes that the stream object is seekable.
##

proc fzIsZipArchive*(ctx: ptr FzContext; file: ptr FzStream): cint {.
    importc: "fz_is_zip_archive", header: "archive.h".}
## *
## 	Open a zip archive file.
##
## 	An exception is throw if the file is not a zip archive as
## 	indicated by the presence of a zip signature.
##
## 	filename: a path to a zip archive file as it would be given to
## 	open(2).
##

proc fzOpenZipArchive*(ctx: ptr FzContext; path: cstring): ptr FzArchive {.
    importc: "fz_open_zip_archive", header: "archive.h".}
## *
## 	Open a zip archive stream.
##
## 	Open an archive using a seekable stream object rather than
## 	opening a file or directory on disk.
##
## 	An exception is throw if the stream is not a zip archive as
## 	indicated by the presence of a zip signature.
##
##

proc fzOpenZipArchiveWithStream*(ctx: ptr FzContext; file: ptr FzStream): ptr FzArchive {.
    importc: "fz_open_zip_archive_with_stream", header: "archive.h".}
## *
## 	fz_zip_writer offers methods for creating and writing zip files.
## 	It can be seen as the reverse of the fz_archive zip
## 	implementation.
##

type
  FzZipWriter* = fzZipWriter

## *
## 	Create a new zip writer that writes to a given file.
##
## 	Open an archive using a seekable stream object rather than
## 	opening a file or directory on disk.
##

proc fzNewZipWriter*(ctx: ptr FzContext; filename: cstring): ptr FzZipWriter {.
    importc: "fz_new_zip_writer", header: "archive.h".}
## *
## 	Create a new zip writer that writes to a given output stream.
##
## 	Ownership of out passes in immediately upon calling this function.
## 	The caller should never drop the fz_output, even if this function throws
## 	an exception.
##

proc fzNewZipWriterWithOutput*(ctx: ptr FzContext; `out`: ptr FzOutput): ptr FzZipWriter {.
    importc: "fz_new_zip_writer_with_output", header: "archive.h".}
## *
## 	Given a buffer of data, (optionally) compress it, and add it to
## 	the zip file with the given name.
##

proc fzWriteZipEntry*(ctx: ptr FzContext; zip: ptr FzZipWriter; name: cstring;
                     buf: ptr FzBuffer; compress: cint) {.
    importc: "fz_write_zip_entry", header: "archive.h".}
## *
## 	Close the zip file for writing.
##
## 	This flushes any pending data to the file. This can throw
## 	exceptions.
##

proc fzCloseZipWriter*(ctx: ptr FzContext; zip: ptr FzZipWriter) {.
    importc: "fz_close_zip_writer", header: "archive.h".}
## *
## 	Drop the reference to the zipfile.
##
## 	In common with other 'drop' methods, this will never throw an
## 	exception.
##

proc fzDropZipWriter*(ctx: ptr FzContext; zip: ptr FzZipWriter) {.
    importc: "fz_drop_zip_writer", header: "archive.h".}
## *
## 	Create an archive that holds named buffers.
##
## 	tree can either be a preformed tree with fz_buffers as values,
## 	or it can be NULL for an empty tree.
##

proc fzNewTreeArchive*(ctx: ptr FzContext; tree: ptr FzTree): ptr FzArchive {.
    importc: "fz_new_tree_archive", header: "archive.h".}
## *
## 	Add a named buffer to an existing tree archive.
##
## 	The tree will take a new reference to the buffer. Ownership
## 	is not transferred.
##

proc fzTreeArchiveAddBuffer*(ctx: ptr FzContext; arch: ptr FzArchive; name: cstring;
                            buf: ptr FzBuffer) {.
    importc: "fz_tree_archive_add_buffer", header: "archive.h".}
## *
## 	Add a named block of data to an existing tree archive.
##
## 	The data will be copied into a buffer, and so the caller
## 	may free it as soon as this returns.
##

proc fzTreeArchiveAddData*(ctx: ptr FzContext; arch: ptr FzArchive; name: cstring;
                          data: pointer; size: csize_t) {.
    importc: "fz_tree_archive_add_data", header: "archive.h".}
## *
## 	Create a new multi archive (initially empty).
##

proc fzNewMultiArchive*(ctx: ptr FzContext): ptr FzArchive {.
    importc: "fz_new_multi_archive", header: "archive.h".}
## *
## 	Add an archive to the set of archives handled by a multi
## 	archive.
##
## 	If path is NULL, then the archive contents will appear at the
## 	top level, otherwise, the archives contents will appear prefixed
## 	by path.
##

proc fzMountMultiArchive*(ctx: ptr FzContext; arch: ptr FzArchive; sub: ptr FzArchive;
                         path: cstring) {.importc: "fz_mount_multi_archive",
                                        header: "archive.h".}
## *
## 	Implementation details: Subject to change.
##

type
  FzArchive* {.importc: "fz_archive", header: "archive.h", bycopy.} = object
    refs* {.importc: "refs".}: cint
    file* {.importc: "file".}: ptr FzStream
    format* {.importc: "format".}: cstring
    dropArchive* {.importc: "drop_archive".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive)
    countEntries* {.importc: "count_entries".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive): cint
    listEntry* {.importc: "list_entry".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive; idx: cint): cstring
    hasEntry* {.importc: "has_entry".}: proc (ctx: ptr FzContext; arch: ptr FzArchive;
        name: cstring): cint
    readEntry* {.importc: "read_entry".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive; name: cstring): ptr FzBuffer
    openEntry* {.importc: "open_entry".}: proc (ctx: ptr FzContext;
        arch: ptr FzArchive; name: cstring): ptr FzStream


proc fzNewArchiveOfSize*(ctx: ptr FzContext; file: ptr FzStream; size: cint): ptr FzArchive {.
    importc: "fz_new_archive_of_size", header: "archive.h".}
## !!!Ignored construct:  # fz_new_derived_archive ( C , F , M ) ( ( M * ) Memento_label ( fz_new_archive_of_size ( C , F , sizeof ( M ) ) , # ) ) [NewLine] # [NewLine]
## Error: identifier expected, but got: (!!!
