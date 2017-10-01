import Qlift


class Tile: QPushButton {
    var onClickedSuccessfully: ((Int32, Int32) -> Void)?
    var onClickedMine: (() -> Void)?
    var isMine = false
    var count = 0
    let x: Int32
    let y: Int32

    init(x: Int32, y: Int32, parent: QWidget) {
        self.x = x
        self.y = y
        super.init(parent: parent)
    }

    override func mousePressEvent(event: QMouseEvent) {
        super.mousePressEvent(event: event)
        if event.button == .LeftButton {
            self.clickedTile()
        } else if event.button == .RightButton {
            self.rightClickedTile()
        }
    }
}

extension Tile {
    func clickedTile(ignoreMark: Bool = false) {
        if self.text == "F" {
            if !ignoreMark {
                return
            } else {
                self.rightClickedTile()
            }
        }

        else if !self.text.isEmpty {
            return
        }

        else if self.isMine {
            self.onClickedMine?()
            return
        }

        self.text = String(self.count)
        self.onClickedSuccessfully?(self.x, self.y)
    }

    func rightClickedTile() {
        if !self.text.isEmpty && self.text != "F" {
            return
        }

        if self.text == "F" {
            // Stylesheet
            self.text = ""
        } else {
            // Stylesheet
            self.text = "F"
        }
    }
}

