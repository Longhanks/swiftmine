import Qlift

class NewGameDialog: UI_NewGameDialog {
    init(parent: QWidget? = nil) {
        super.init(parent: parent, flags: .Sheet)
        self.comboBoxDefaultModes.connectCurrentIndexChanged { [weak self] in
            self?.checkNewMode($0)
        }
        if let parentWidget = parent {
            self.move(to: parentWidget.window.frameGeometry.topLeft + parentWidget.window.rect.center - self.rect.center)
        }
    }

    func checkNewMode(_ index: Int32) {
        let newMode = comboBoxDefaultModes.itemText(index: index)
        switch newMode {
        case "Beginner":
            self.spinBoxRows.enabled = false
            self.spinBoxRows.value = 9
            self.spinBoxColumns.enabled = false
            self.spinBoxColumns.value = 9
            self.spinBoxMines.enabled = false
            self.spinBoxMines.value = 10
        case "Intermediate":
            self.spinBoxRows.enabled = false
            self.spinBoxRows.value = 16
            self.spinBoxColumns.enabled = false
            self.spinBoxColumns.value = 16
            self.spinBoxMines.enabled = false
            self.spinBoxMines.value = 40
        case "Expert":
            self.spinBoxRows.enabled = false
            self.spinBoxRows.value = 30
            self.spinBoxColumns.enabled = false
            self.spinBoxColumns.value = 16
            self.spinBoxMines.enabled = false
            self.spinBoxMines.value = 99
        case "Custom":
            self.spinBoxRows.enabled = true
            self.spinBoxColumns.enabled = true
            self.spinBoxMines.enabled = true
        default:
            fatalError("Unknown game mode.")
        }
    }
}
