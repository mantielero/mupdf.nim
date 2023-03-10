import fitz_types

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

# import
#   mupdf/fitz/system, mupdf/fitz/context, mupdf/fitz/buffer, mupdf/fitz/pool

## *
## 	XML document model
##





proc fzParseXml*(ctx: ptr FzContext; buf: ptr FzBuffer; preserveWhite: cint): ptr FzXml {.
    cdecl, importc: "fz_parse_xml", header: "xml.h".}
## *
## 	Parse the contents of a buffer into a tree of XML nodes,
## 	using the HTML5 parsing algorithm.
##

proc fzParseXmlFromHtml5*(ctx: ptr FzContext; buf: ptr FzBuffer): ptr FzXml {.cdecl,
    importc: "fz_parse_xml_from_html5", header: "xml.h".}
## *
## 	Add a reference to the XML.
##

proc fzKeepXml*(ctx: ptr FzContext; xml: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_keep_xml", header: "xml.h".}
## *
## 	Drop a reference to the XML. When the last reference is
## 	dropped, the node and all its children and siblings will
## 	be freed.
##

proc fzDropXml*(ctx: ptr FzContext; xml: ptr FzXml) {.cdecl, importc: "fz_drop_xml",
    header: "xml.h".}
## *
## 	Detach a node from the tree, unlinking it from its parent,
## 	and setting the document root to the node.
##

proc fzDetachXml*(ctx: ptr FzContext; node: ptr FzXml) {.cdecl,
    importc: "fz_detach_xml", header: "xml.h".}
## *
## 	Return the topmost XML node of a document.
##

proc fzXmlRoot*(xml: ptr FzXmlDoc): ptr FzXml {.cdecl, importc: "fz_xml_root",
    header: "xml.h".}
## *
## 	Return previous sibling of XML node.
##

proc fzXmlPrev*(item: ptr FzXml): ptr FzXml {.cdecl, importc: "fz_xml_prev",
                                        header: "xml.h".}
## *
## 	Return next sibling of XML node.
##

proc fzXmlNext*(item: ptr FzXml): ptr FzXml {.cdecl, importc: "fz_xml_next",
                                        header: "xml.h".}
## *
## 	Return parent of XML node.
##

proc fzXmlUp*(item: ptr FzXml): ptr FzXml {.cdecl, importc: "fz_xml_up", header: "xml.h".}
## *
## 	Return first child of XML node.
##

proc fzXmlDown*(item: ptr FzXml): ptr FzXml {.cdecl, importc: "fz_xml_down",
                                        header: "xml.h".}
## *
## 	Return true if the tag name matches.
##

proc fzXmlIsTag*(item: ptr FzXml; name: cstring): cint {.cdecl,
    importc: "fz_xml_is_tag", header: "xml.h".}
## *
## 	Return tag of XML node. Return NULL for text nodes.
##

proc fzXmlTag*(item: ptr FzXml): cstring {.cdecl, importc: "fz_xml_tag", header: "xml.h".}
## *
## 	Return the value of an attribute of an XML node.
## 	NULL if the attribute doesn't exist.
##

proc fzXmlAtt*(item: ptr FzXml; att: cstring): cstring {.cdecl, importc: "fz_xml_att",
    header: "xml.h".}
## *
## 	Return the value of an attribute of an XML node.
## 	If the first attribute doesn't exist, try the second.
## 	NULL if neither attribute exists.
##

proc fzXmlAttAlt*(item: ptr FzXml; one: cstring; two: cstring): cstring {.cdecl,
    importc: "fz_xml_att_alt", header: "xml.h".}
## *
## 	Check for a matching attribute on an XML node.
##
## 	If the node has the requested attribute (name), and the value
## 	matches (match) then return 1. Otherwise, 0.
##

proc fzXmlAttEq*(item: ptr FzXml; name: cstring; match: cstring): cint {.cdecl,
    importc: "fz_xml_att_eq", header: "xml.h".}
## *
## 	Add an attribute to an XML node.
##

proc fzXmlAddAtt*(ctx: ptr FzContext; pool: ptr FzPool; node: ptr FzXml; key: cstring;
                 val: cstring) {.cdecl, importc: "fz_xml_add_att", header: "xml.h".}
## *
## 	Return the text content of an XML node.
## 	Return NULL if the node is a tag.
##

proc fzXmlText*(item: ptr FzXml): cstring {.cdecl, importc: "fz_xml_text",
                                       header: "xml.h".}
## *
## 	Pretty-print an XML tree to stdout.
##

proc fzDebugXml*(item: ptr FzXml; level: cint) {.cdecl, importc: "fz_debug_xml",
    header: "xml.h".}
## *
## 	Search the siblings of XML nodes starting with item looking for
## 	the first with the given tag.
##
## 	Return NULL if none found.
##

proc fzXmlFind*(item: ptr FzXml; tag: cstring): ptr FzXml {.cdecl,
    importc: "fz_xml_find", header: "xml.h".}
## *
## 	Search the siblings of XML nodes starting with the first sibling
## 	of item looking for the first with the given tag.
##
## 	Return NULL if none found.
##

proc fzXmlFindNext*(item: ptr FzXml; tag: cstring): ptr FzXml {.cdecl,
    importc: "fz_xml_find_next", header: "xml.h".}
## *
## 	Search the siblings of XML nodes starting with the first child
## 	of item looking for the first with the given tag.
##
## 	Return NULL if none found.
##

proc fzXmlFindDown*(item: ptr FzXml; tag: cstring): ptr FzXml {.cdecl,
    importc: "fz_xml_find_down", header: "xml.h".}
## *
## 	Search the siblings of XML nodes starting with item looking for
## 	the first with the given tag (or any tag if tag is NULL), and
## 	with a matching attribute.
##
## 	Return NULL if none found.
##

proc fzXmlFindMatch*(item: ptr FzXml; tag: cstring; att: cstring; match: cstring): ptr FzXml {.
    cdecl, importc: "fz_xml_find_match", header: "xml.h".}
## *
## 	Search the siblings of XML nodes starting with the first sibling
## 	of item looking for the first with the given tag (or any tag if tag
## 	is NULL), and with a matching attribute.
##
## 	Return NULL if none found.
##

proc fzXmlFindNextMatch*(item: ptr FzXml; tag: cstring; att: cstring; match: cstring): ptr FzXml {.
    cdecl, importc: "fz_xml_find_next_match", header: "xml.h".}
## *
## 	Search the siblings of XML nodes starting with the first child
## 	of item looking for the first with the given tag (or any tag if
## 	tag is NULL), and with a matching attribute.
##
## 	Return NULL if none found.
##

proc fzXmlFindDownMatch*(item: ptr FzXml; tag: cstring; att: cstring; match: cstring): ptr FzXml {.
    cdecl, importc: "fz_xml_find_down_match", header: "xml.h".}
## *
## 	Perform a depth first search from item, returning the first
## 	child that matches the given tag (or any tag if tag is NULL),
## 	with the given attribute (if att is non NULL), that matches
## 	match (if match is non NULL).
##

proc fzXmlFindDfs*(item: ptr FzXml; tag: cstring; att: cstring; match: cstring): ptr FzXml {.
    cdecl, importc: "fz_xml_find_dfs", header: "xml.h".}
## *
## 	Perform a depth first search onwards from item, returning the first
## 	child that matches the given tag (or any tag if tag is NULL),
## 	with the given attribute (if att is non NULL), that matches
## 	match (if match is non NULL).
##

proc fzXmlFindNextDfs*(item: ptr FzXml; tag: cstring; att: cstring; match: cstring): ptr FzXml {.
    cdecl, importc: "fz_xml_find_next_dfs", header: "xml.h".}
## *
## 	DOM-like functions for html in xml.
##
## *
## 	Return a borrowed reference for the 'body' element of
## 	the given DOM.
##

proc fzDomBody*(ctx: ptr FzContext; dom: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_body", header: "xml.h".}
## *
## 	Return a borrowed reference for the document (the top
## 	level element) of the DOM.
##

proc fzDomDocumentElement*(ctx: ptr FzContext; dom: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_document_element", header: "xml.h".}
## *
## 	Create an element of a given tag type for the given DOM.
##
## 	The element is not linked into the DOM yet.
##

proc fzDomCreateElement*(ctx: ptr FzContext; dom: ptr FzXml; tag: cstring): ptr FzXml {.
    cdecl, importc: "fz_dom_create_element", header: "xml.h".}
## *
## 	Create a text node for the given DOM.
##
## 	The element is not linked into the DOM yet.
##

proc fzDomCreateTextNode*(ctx: ptr FzContext; dom: ptr FzXml; text: cstring): ptr FzXml {.
    cdecl, importc: "fz_dom_create_text_node", header: "xml.h".}
## *
## 	Find the first element matching the requirements in a depth first traversal from elt.
##
## 	The tagname must match tag, unless tag is NULL, when all tag names are considered to match.
##
## 	If att is NULL, then all tags match.
## 	Otherwise:
## 		If match is NULL, then only nodes that have an att attribute match.
## 		If match is non-NULL, then only nodes that have an att attribute that matches match match.
##
## 	Returns NULL (if no match found), or a borrowed reference to the first matching element.
##

proc fzDomFind*(ctx: ptr FzContext; elt: ptr FzXml; tag: cstring; att: cstring;
               match: cstring): ptr FzXml {.cdecl, importc: "fz_dom_find",
                                        header: "xml.h".}
## *
## 	Find the next element matching the requirements.
##

proc fzDomFindNext*(ctx: ptr FzContext; elt: ptr FzXml; tag: cstring; att: cstring;
                   match: cstring): ptr FzXml {.cdecl, importc: "fz_dom_find_next",
    header: "xml.h".}
## *
## 	Insert an element as the last child of a parent, unlinking the
## 	child from its current position if required.
##

proc fzDomAppendChild*(ctx: ptr FzContext; parent: ptr FzXml; child: ptr FzXml) {.cdecl,
    importc: "fz_dom_append_child", header: "xml.h".}
## *
## 	Insert an element (new_elt), before another element (node),
## 	unlinking the new_elt from its current position if required.
##

proc fzDomInsertBefore*(ctx: ptr FzContext; node: ptr FzXml; newElt: ptr FzXml) {.cdecl,
    importc: "fz_dom_insert_before", header: "xml.h".}
## *
## 	Insert an element (new_elt), after another element (node),
## 	unlinking the new_elt from its current position if required.
##

proc fzDomInsertAfter*(ctx: ptr FzContext; node: ptr FzXml; newElt: ptr FzXml) {.cdecl,
    importc: "fz_dom_insert_after", header: "xml.h".}
## *
## 	Remove an element from the DOM. The element can be added back elsewhere
## 	if required.
##
## 	No reference counting changes for the element.
##

proc fzDomRemove*(ctx: ptr FzContext; elt: ptr FzXml) {.cdecl, importc: "fz_dom_remove",
    header: "xml.h".}
## *
## 	Clone an element (and its children).
##
## 	A borrowed reference to the clone is returned. The clone is not
## 	yet linked into the DOM.
##

proc fzDomClone*(ctx: ptr FzContext; elt: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_clone", header: "xml.h".}
## *
## 	Return a borrowed reference to the first child of a node,
## 	or NULL if there isn't one.
##

proc fzDomFirstChild*(ctx: ptr FzContext; elt: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_first_child", header: "xml.h".}
## *
## 	Return a borrowed reference to the parent of a node,
## 	or NULL if there isn't one.
##

proc fzDomParent*(ctx: ptr FzContext; elt: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_parent", header: "xml.h".}
## *
## 	Return a borrowed reference to the next sibling of a node,
## 	or NULL if there isn't one.
##

proc fzDomNext*(ctx: ptr FzContext; elt: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_next", header: "xml.h".}
## *
## 	Return a borrowed reference to the previous sibling of a node,
## 	or NULL if there isn't one.
##

proc fzDomPrevious*(ctx: ptr FzContext; elt: ptr FzXml): ptr FzXml {.cdecl,
    importc: "fz_dom_previous", header: "xml.h".}
## *
## 	Add an attribute to an element.
##
## 	Ownership of att and value remain with the caller.
##

proc fzDomAddAttribute*(ctx: ptr FzContext; elt: ptr FzXml; att: cstring; value: cstring) {.
    cdecl, importc: "fz_dom_add_attribute", header: "xml.h".}
## *
## 	Remove an attribute from an element.
##

proc fzDomRemoveAttribute*(ctx: ptr FzContext; elt: ptr FzXml; att: cstring) {.cdecl,
    importc: "fz_dom_remove_attribute", header: "xml.h".}
## *
## 	Retrieve the value of a given attribute from a given element.
##
## 	Returns a borrowed pointer to the value or NULL if not found.
##

proc fzDomAttribute*(ctx: ptr FzContext; elt: ptr FzXml; att: cstring): cstring {.cdecl,
    importc: "fz_dom_attribute", header: "xml.h".}
## *
## 	Enumerate through the attributes of an element.
##
## 	Call with i=0,1,2,3... to enumerate attributes.
##
## 	On return *att and the return value will be NULL if there are not
## 	that many attributes to read. Otherwise, *att will be filled in
## 	with a borrowed pointer to the attribute name, and the return
## 	value will be a borrowed pointer to the value.
##

proc fzDomGetAttribute*(ctx: ptr FzContext; elt: ptr FzXml; i: cint; att: cstringArray): cstring {.
    cdecl, importc: "fz_dom_get_attribute", header: "xml.h".}
