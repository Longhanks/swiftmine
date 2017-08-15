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
    }

    func showNewGameDialog() {
        if self.dialogIsVisible {
            return
        }
        self.dialogIsVisible = true
        
        let dlg = UI_NewGameDialog(parent: self)
        if dlg.exec() == .Accepted {
            print("Dialog accepted")
            self.dialogIsVisible = false
        } else {
            QCoreApplication.instance.quit()
        }
    }
}

