#!/bin/bash

find $YAVS_PROJ_DIR -name "*.[ch]" -print >> cscope.files 2> /dev/null
find $YAVS_PROJ_DIR -name "*.cpp" -print >> cscope.files 2> /dev/null
find $YAVS_PROJ_DIR -name "*.hpp" -print >> cscope.files 2> /dev/null
