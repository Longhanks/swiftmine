/********************************************************************************
** Form generated from reading UI file 'UI_MainWindow.ui'
**
** Created by: Qlift User Interface Compiler version 0.0.9
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

import Qlift

class UI_MainWindow: QMainWindow {
    var centralwidget: QWidget
    var verticalLayout: QVBoxLayout
    var horizontalLayout: QHBoxLayout
    var horizontalSpacerLeft: QSpacerItem
    var pushButtonNewGame: QPushButton
    var horizontalSpacerRight: QSpacerItem
    var menubar: QMenuBar
    var menuFile: QMenu
    var actionNewGame: QAction
    var actionExit: QAction

    init() {
        actionNewGame = QAction(self)
        actionNewGame.text = "&New Game"
        actionExit = QAction(self)
        actionExit.text = "&Exit"
        self.geometry = QRect(x: 0, y: 0, width: 205, height: 169)
        self.windowTitle = "MainWindow"
        centralwidget = QWidget(parent: self)
        verticalLayout = QVBoxLayout(parent: centralwidget)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        pushButtonNewGame = QPushButton(parent: centralwidget)
        pushButtonNewGame.text = "New Game"
        horizontalLayout.add(widget: pushButtonNewGame)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        self.centralWidget = centralwidget
        menubar = QMenuBar(parent: self)
        menubar.geometry = QRect(x: 0, y: 0, width: 205, height: 30)
        menuFile = QMenu(parent: menubar)
        menuFile.title = "&File"
        menubar.add(action: menuFile.menuAction())
        self.menuBar = menubar
    }
}

