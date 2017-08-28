import Qlift


class NewGameDialog: UI_NewGameDialog {
    init(parent: QWidget? = nil) {
        super.init(parent: parent, flags: .Sheet)
        self.comboBoxDefaultModes.connectCurrentIndexChanged { (_: Int32) -> Void in
            self.checkNewMode()
        }
        if let parentWidget = parent {
            self.move(to: parentWidget.window.frameGeometry.topLeft + parentWidget.window.rect.center - self.rect.center)
        }
    }

    func checkNewMode() {
        print(#function)
    }
}
