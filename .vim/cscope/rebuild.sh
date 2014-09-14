#!/bin/bash

cd $YAVS_CSCOPE_DIR
rm cscope*
rm tags

source files.sh

cscope -b -q -k 2> /dev/null
ctags -L $YAVS_CSCOPE_DIR/cscope.files --c++-kinds=+p --fields=+iaS --extra=+q 2> /dev/null
 
cp cscope* $YAVS_CSCOPE_TARGET_DIR
cp tags $YAVS_CSCOPE_TARGET_DIR
