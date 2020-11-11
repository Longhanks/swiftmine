import Qlift


class MainWindow: UI_MainWindow {
    var dialogIsVisible = false

    init() {
        super.init()
        self.actionNewGame.connectTriggered { _ in
            self.showNewGameDialog()
        }
        self.pushButtonNewGame.connectClicked { _ in
            self.showNewGameDialog()
        }
        self.actionExit.connectTriggered { _ in
            _ = self.close()
        }
        let desktopRect = QApplication.desktop.availableGeometry(for: self)
        let center = desktopRect.center
        self.move(to: QPoint(x: center.x - self.width / 2, y: center.y - self.height / 2))
    }

    func showNewGameDialog() {
        if self.dialogIsVisible {
            return
        }
        self.dialogIsVisible = true

        let dlg = NewGameDialog(parent: self)
        if dlg.exec() == .Accepted {
            let game = GameWidget(rows: dlg.spinBoxRows.value, columns: dlg.spinBoxColumns.value, mines: dlg.spinBoxMines.value, parent: self)
            game.onGameIsWon = { [weak self] in
                self?.gameIsWon()
            }
            game.onGameIsLost = { [weak self] in
                self?.gameIsLost()
            }
            QTimer.singleShot(msec: 0, timerType: .CoarseTimer) { [unowned self] in
                self.centralWidget = game
                QTimer.singleShot(msec: 0, timerType: .CoarseTimer) { [unowned self] in
                    self.resize(width: 0, height: 0)
                    self.setFixedSize(self.size)
                }
            }
            self.dialogIsVisible = false
        } else {
            QCoreApplication.instance.quit()
        }
    }

    func gameIsWon() {
        self.dialogIsVisible = true
        let msgBox = QMessageBox(parent: self)
        msgBox.windowModality = .WindowModal
        msgBox.windowTitle = "You won!"
        msgBox.icon = .Question
        msgBox.text = "Congratulations! New game?"
        msgBox.standardButtons = [.Yes, .No]
        msgBox.setDefaultStandardButton(.No)
        if msgBox.exec() == .No {
            QCoreApplication.instance.quit()
        } else {
            self.dialogIsVisible = false
            self.showNewGameDialog()
        }
    }

    func gameIsLost() {
        self.dialogIsVisible = true
        let msgBox = QMessageBox(parent: self)
        msgBox.windowModality = .WindowModal
        msgBox.windowTitle = "You lost!"
        msgBox.icon = .Question
        msgBox.text = "Game over. New game?"
        msgBox.standardButtons = [.Yes, .No]
        msgBox.setDefaultStandardButton(.No)
        if msgBox.exec() == .No {
            QCoreApplication.instance.quit()
        } else {
            self.dialogIsVisible = false
            self.showNewGameDialog()
        }
    }

    override func closeEvent(event: QCloseEvent) {
        if self.dialogIsVisible {
            event.ignore()
            return
        }
        let msgBox = QMessageBox(parent: self)
        msgBox.windowModality = .WindowModal
        msgBox.windowTitle = "Confirm exit"
        msgBox.icon = .Question
        msgBox.text = "Are you sure you want to quit?"
        msgBox.standardButtons = [.Yes, .No]
        msgBox.setDefaultStandardButton(.No)
        if msgBox.exec() == .Yes {
            event.accept()
        } else {
            event.ignore()
        }
    }
}
