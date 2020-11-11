import Qlift


class Tile: QFrame {
    var onClickedSuccessfully: ((Int32, Int32) -> Void)?
    var onClickedMine: (() -> Void)?
    var isMine = false
    var count = 0
    let x: Int32
    let y: Int32
    var label: QLabel!

    init(x: Int32, y: Int32, parent: QWidget) {
        self.x = x
        self.y = y
        super.init(parent: parent)
        let layout = QVBoxLayout(parent: self)
        layout.contentsMargins = QMargins(left: 0, top: 0, right: 0, bottom: 0)
        self.layout = layout
        self.label = QLabel(parent: self)
        self.label.alignment = .AlignCenter
        layout.add(widget: self.label)
        self.styleSheet = "QFrame { background-color: white; }"
        self.sizePolicy = QSizePolicy(horizontal: .Minimum, vertical: .Minimum)
    }

    private var _size = QSize(width: 20, height: 20)

    override var sizeHint: QSize {
        get {
            return self._size
        }
    }

    override func mousePressEvent(event: QMouseEvent) {
        if event.button == .LeftButton {
            self.clickedTile()
        } else if event.button == .RightButton {
            self.rightClickedTile()
        }
    }
}

extension Tile {
    func clickedTile(ignoreMark: Bool = false) {
        if self.label.text == "F" {
            if !ignoreMark {
                return
            } else {
                self.rightClickedTile()
            }
        }

        else if !self.label.text.isEmpty {
            return
        }

        else if self.isMine {
            self.onClickedMine?()
            return
        }

        self.label.text = String(self.count)
        self.onClickedSuccessfully?(self.x, self.y)
    }

    func rightClickedTile() {
        if !self.label.text.isEmpty && self.label.text != "F" {
            return
        }

        if self.label.text == "F" {
            self.label.styleSheet = "QLabel {color: black;}"
            self.label.text = ""
        } else {
            self.label.styleSheet = "QLabel {color: red;}"
            self.label.text = "F"
        }
    }
}
