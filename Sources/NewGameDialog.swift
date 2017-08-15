import Qlift


class NewGameDialog: UI_NewGameDialog {
    init(parent: QWidget? = nil) {
        super.init(parent: parent, flags: .Sheet)
        self.comboBoxDefaultModes.connectCurrentIndexChanged { (_: Int32) -> Void in
            self.checkNewMode()
        }
    }

    func checkNewMode() {
        print(#function)
    }
}
