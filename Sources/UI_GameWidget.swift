/********************************************************************************
** Form generated from reading UI file 'UI_GameWidget.ui'
**
** Created by: Qlift User Interface Compiler version 0.0.36
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

import Qlift


class UI_GameWidget: QWidget {
    var verticalLayout: QVBoxLayout!
    var verticalSpacerTop: QSpacerItem!
    var horizontalLayout: QHBoxLayout!
    var horizontalSpacerLeft: QSpacerItem!
    var mainLayout: QGridLayout!
    var horizontalSpacerRight: QSpacerItem!
    var verticalSpacerBottom: QSpacerItem!

    init() {
        super.init()
        self.geometry = QRect(x: 0, y: 0, width: 128, height: 152)
        self.windowTitle = "Form"
        verticalLayout = QVBoxLayout(parent: self)
        verticalSpacerTop = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerTop)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        mainLayout = QGridLayout(parent: nil)
        horizontalLayout.add(layout: mainLayout)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        verticalSpacerBottom = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerBottom)
    }
}

