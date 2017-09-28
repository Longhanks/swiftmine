#!/bin/bash

if [ ! -f qlift-c-api/build/bin/libqlift-c-api.a ]; then
    rm -rf qlift-c-api
    git clone https://github.com/Longhanks/qlift-c-api
    cd qlift-c-api
    mkdir build
    cd build
    cmake .. -DENABLE_SHARED=OFF -DENABLE_STATIC=ON
    make -j4
    cd ../..
fi
QLIFT_C_API=$(pwd)/qlift-c-api

if [ ! -f qlift/.build/debug/qlift-uic ]; then
    rm -rf qlift
    git clone https://github.com/Longhanks/qlift
    cd qlift
    swift build --product qlift-uic
    cd ..
fi

./qlift/.build/debug/qlift-uic ./UI/UI_GameWidget.ui > ./Sources/UI_GameWidget.swift
./qlift/.build/debug/qlift-uic ./UI/UI_MainWindow.ui > ./Sources/UI_MainWindow.swift
./qlift/.build/debug/qlift-uic ./UI/UI_NewGameDialog.ui > ./Sources/UI_NewGameDialog.swift

if [[ $(uname -s) == 'Darwin' ]]; then
    ADDITIONAL_FLAGS="-Xlinker -search_paths_first -Xlinker -lc++"
    QT_PATH=$(brew --prefix qt)
    QT_FLAGS="-Xlinker $QT_PATH/lib/QtCore.framework/QtCore -Xlinker $QT_PATH/lib/QtGui.framework/QtGui -Xlinker $QT_PATH/lib/QtWidgets.framework/QtWidgets"
else
    QT_FLAGS="-Xlinker -lQt5Core -Xlinker -lQt5Gui -Xlinker -lQt5Widgets"
fi


swift build -Xcc -I$QLIFT_C_API/src $ADDITIONAL_FLAGS -Xlinker -L$QLIFT_C_API/build/bin $QT_FLAGS

