%%module tesseract
%%{
#include <leptonica/allheaders.h>
#include <tesseract/baseapi.h>
%(includes)s

%%}

%%include "typemaps.i"
%%include "cpointer.i"
%%typemap(in) unsigned char *
{
	$1 = (unsigned char *)PyString_AsString($input);
}
%%typemap(typecheck) unsigned char * {
   $1 = PyString_Check($input) ? 1 : 0;
}
%%typemap(in) l_uint32 *
{
	$1 = (l_uint32 *)PyString_AsString($input);
}
%%typemap(in) l_uint32
{
	$1 = (l_uint32)PyInt_AsLong($input);
}
%%typemap(in) l_int32
{
	$1 = (l_int32)PyInt_AsLong($input);
}

%%ignore tesseract::TessBaseAPI::GetLastInitLanguage;
%%ignore tesseract::TessBaseAPI::SetDictFunc;

%%include <leptonica/pix.h>
%%include <tesseract/thresholder.h>
%%include <tesseract/publictypes.h>
%%include <tesseract/baseapi.h>

%(swig_includes)s
