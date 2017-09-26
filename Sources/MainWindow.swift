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
            let game = GameWidget(rows: Int(dlg.spinBoxRows.value), columns: Int(dlg.spinBoxColumns.value), mines: Int(dlg.spinBoxMines.value), parent: self)
            self.centralWidget = game
            QTimer.singleShot(msec: 0, timerType: .CoarseTimer) { [unowned self] in
                self.resize(width: 0, height: 0)
            }
            self.dialogIsVisible = false
        } else {
            QCoreApplication.instance.quit()
        }
    }
}

