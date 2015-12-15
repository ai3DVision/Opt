#!/bin/bash

# Author: Michael Mara (mmara@cs.stanford.edu)
# Created 11-20-2015
# Last Edited 11-20-2015


foldernames=(SmoothingLaplacianFloat4Graph ImageWarping ShapeFromShadingSimple)
programnames=(meshsmoothing imagewarping shapefromshading)


for index in ${!foldernames[*]}
do
    cd ${foldernames[$index]}
    #make clean
    make
    ./${programnames[$index]}
    cd ..
done
