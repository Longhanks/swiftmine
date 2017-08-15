/********************************************************************************
** Form generated from reading UI file 'UI_NewGameDialog.ui'
**
** Created by: Qlift User Interface Compiler version 0.0.52
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

import Qlift


class UI_NewGameDialog: QDialog {
    var verticalLayoutMain: QVBoxLayout!
    var labelHeader: QLabel!
    var verticalSpacerUpper: QSpacerItem!
    var groupBoxGameSettings: QGroupBox!
    var horizontalLayout: QHBoxLayout!
    var comboBoxDefaultModes: QComboBox!
    var horizontalSpacerComboBox: QSpacerItem!
    var verticalLayoutLabels: QVBoxLayout!
    var labelRows: QLabel!
    var labelColumns: QLabel!
    var labelMines: QLabel!
    var horizontalSpacerSpinBoxes: QSpacerItem!
    var verticalLayoutSpinBoxes: QVBoxLayout!
    var spinBoxRows: QSpinBox!
    var spinBoxColumns: QSpinBox!
    var spinBoxMines: QSpinBox!
    var verticalSpacerLower: QSpacerItem!
    var buttonBox: QDialogButtonBox!

    override init(parent: QWidget? = nil, flags: Qt.WindowFlags = .Widget) {
        super.init(parent: parent, flags: flags)
        self.geometry = QRect(x: 0, y: 0, width: 336, height: 247)
        self.windowTitle = "New Game"
        verticalLayoutMain = QVBoxLayout(parent: self)
        verticalLayoutMain.sizeConstraint = .SetFixedSize
        labelHeader = QLabel(parent: self)
        labelHeader.text = "Select a default mode or enter custom settings:"
        labelHeader.alignment = .AlignCenter
        verticalLayoutMain.add(widget: labelHeader)
        verticalSpacerUpper = QSpacerItem(width: 20, height: 20, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayoutMain.add(item: verticalSpacerUpper)
        groupBoxGameSettings = QGroupBox(parent: self)
        groupBoxGameSettings.title = "Game Settings"
        horizontalLayout = QHBoxLayout(parent: groupBoxGameSettings)
        comboBoxDefaultModes = QComboBox(parent: groupBoxGameSettings)
        comboBoxDefaultModes.add(item: "Beginner")
        comboBoxDefaultModes.add(item: "Intermediate")
        comboBoxDefaultModes.add(item: "Expert")
        comboBoxDefaultModes.add(item: "Custom")
        horizontalLayout.add(widget: comboBoxDefaultModes)
        horizontalSpacerComboBox = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerComboBox)
        verticalLayoutLabels = QVBoxLayout(parent: nil)
        labelRows = QLabel(parent: groupBoxGameSettings)
        labelRows.text = "Rows:"
        verticalLayoutLabels.add(widget: labelRows)
        labelColumns = QLabel(parent: groupBoxGameSettings)
        labelColumns.text = "Columns:"
        verticalLayoutLabels.add(widget: labelColumns)
        labelMines = QLabel(parent: groupBoxGameSettings)
        labelMines.text = "Mines:"
        verticalLayoutLabels.add(widget: labelMines)
        horizontalLayout.add(layout: verticalLayoutLabels)
        horizontalSpacerSpinBoxes = QSpacerItem(width: 28, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerSpinBoxes)
        verticalLayoutSpinBoxes = QVBoxLayout(parent: nil)
        spinBoxRows = QSpinBox(parent: groupBoxGameSettings)
        spinBoxRows.enabled = false
        spinBoxRows.minimum = 8
        spinBoxRows.maximum = 30
        spinBoxRows.value = 9
        verticalLayoutSpinBoxes.add(widget: spinBoxRows)
        spinBoxColumns = QSpinBox(parent: groupBoxGameSettings)
        spinBoxColumns.enabled = false
        spinBoxColumns.minimum = 8
        spinBoxColumns.maximum = 24
        spinBoxColumns.value = 9
        verticalLayoutSpinBoxes.add(widget: spinBoxColumns)
        spinBoxMines = QSpinBox(parent: groupBoxGameSettings)
        spinBoxMines.enabled = false
        spinBoxMines.minimum = 10
        spinBoxMines.maximum = 668
        spinBoxMines.value = 10
        verticalLayoutSpinBoxes.add(widget: spinBoxMines)
        horizontalLayout.add(layout: verticalLayoutSpinBoxes)
        verticalLayoutMain.add(widget: groupBoxGameSettings)
        verticalSpacerLower = QSpacerItem(width: 20, height: 20, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
        verticalLayoutMain.add(item: verticalSpacerLower)
        buttonBox = QDialogButtonBox(parent: self)
        buttonBox.orientation = .Horizontal
        buttonBox.standardButtons = [.Cancel, .Ok]
        verticalLayoutMain.add(widget: buttonBox)
        buttonBox.connectAccepted(to: self.accept)
        buttonBox.connectRejected(to: self.reject)
    }
}

