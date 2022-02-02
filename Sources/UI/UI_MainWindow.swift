/********************************************************************************
** Form generated from reading UI file 'UI_MainWindow.ui'
**
** Created by: Qlift User Interface Compiler version <undefined>
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

import Qlift


class UI_MainWindow: QMainWindow {
    var centralwidget: QWidget!
    var verticalLayout_2: QVBoxLayout!
    var Main: QWidget!
    var verticalLayout: QVBoxLayout!
    var verticalSpacerTop: QSpacerItem!
    var horizontalLayout: QHBoxLayout!
    var horizontalSpacerLeft: QSpacerItem!
    var pushButtonNewGame: QPushButton!
    var horizontalSpacerRight: QSpacerItem!
    var verticalSpacerBottom: QSpacerItem!
    var menubar: QMenuBar!
    var menuFile: QMenu!
    var actionNewGame: QAction!
    var actionExit: QAction!

    override init(parent: QWidget? = nil, flags: Qt.WindowFlags = .Widget) {
        super.init(parent: parent, flags: flags)
        actionNewGame = QAction(parent: self)
        actionNewGame.text = "New Game"
        actionExit = QAction(parent: self)
        actionExit.text = "Exit"
        self.geometry = QRect(x: 0, y: 0, width: 205, height: 169)
        self.windowTitle = "swiftmine"
        centralwidget = QWidget(parent: self)
        centralwidget.objectName = "centralwidget"
        verticalLayout_2 = QVBoxLayout(parent: centralwidget)
        verticalLayout_2.objectName = "verticalLayout_2"
        verticalLayout_2.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        verticalLayout_2.spacing = 0
        Main = QWidget(parent: centralwidget)
        Main.objectName = "Main"
        verticalLayout = QVBoxLayout(parent: Main)
        verticalLayout.objectName = "verticalLayout"
        verticalLayout.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        verticalSpacerTop = QSpacerItem(width: 20, height: 32, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerTop)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalLayout.objectName = "horizontalLayout"
        horizontalLayout.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        pushButtonNewGame = QPushButton(parent: Main)
        pushButtonNewGame.objectName = "pushButtonNewGame"
        pushButtonNewGame.text = "New Game"
        horizontalLayout.add(widget: pushButtonNewGame)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        verticalSpacerBottom = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerBottom)
        verticalLayout_2.add(widget: Main)
        self.centralWidget = centralwidget
        menubar = QMenuBar(parent: self)
        menubar.objectName = "menubar"
        menubar.geometry = QRect(x: 0, y: 0, width: 205, height: 22)
        menuFile = QMenu(parent: menubar)
        menuFile.objectName = "menuFile"
        menuFile.title = "File"
        menuFile.add(action: actionNewGame)
        menuFile.add(action: actionExit)
        menubar.add(action: menuFile.menuAction())
        self.menuBar = menubar
    }
}
