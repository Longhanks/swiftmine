/********************************************************************************
** Form generated from reading UI file 'UI_MainWindow.ui'
**
** Created by: Qlift User Interface Compiler version 0.0.52
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

import Qlift


class UI_MainWindow: QMainWindow {
    var centralwidget: QWidget!
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
        self.geometry = QRect(x: 0, y: 0, width: 250, height: 200)
        self.windowTitle = "swiftmine"
        centralwidget = QWidget(parent: self)
        verticalLayout = QVBoxLayout(parent: centralwidget)
        verticalSpacerTop = QSpacerItem(width: 17, height: 48, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerTop)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        pushButtonNewGame = QPushButton(parent: centralwidget)
        pushButtonNewGame.text = "New Game"
        horizontalLayout.add(widget: pushButtonNewGame)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        verticalSpacerBottom = QSpacerItem(width: 17, height: 48, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayout.add(item: verticalSpacerBottom)
        self.centralWidget = centralwidget
        menubar = QMenuBar(parent: self)
        menubar.geometry = QRect(x: 0, y: 0, width: 250, height: 22)
        menuFile = QMenu(parent: menubar)
        menuFile.title = "File"
        menuFile.add(action: actionNewGame)
        menuFile.add(action: actionExit)
        menubar.add(action: menuFile.menuAction())
        self.menuBar = menubar
    }
}

