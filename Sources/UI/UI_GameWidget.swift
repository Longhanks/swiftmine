/********************************************************************************
** Form generated from reading UI file 'UI_GameWidget.ui'
**
** Created by: Qlift User Interface Compiler version <undefined>
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

    override init(parent: QWidget? = nil, flags: Qt.WindowFlags = .Widget) {
        super.init(parent: parent, flags: flags)
        self.geometry = QRect(x: 0, y: 0, width: 128, height: 152)
        self.windowTitle = "Form"
        verticalLayout = QVBoxLayout(parent: self)
        verticalLayout.objectName = "verticalLayout"
        verticalLayout.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        verticalLayout.spacing = 0
        verticalSpacerTop = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerTop)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalLayout.objectName = "horizontalLayout"
        horizontalLayout.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        mainLayout = QGridLayout(parent: nil)
        mainLayout.objectName = "mainLayout"
        mainLayout.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        mainLayout.spacing = 1
        horizontalLayout.add(layout: mainLayout)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        verticalSpacerBottom = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerBottom)
    }
}
