import Qlift


class Tile: QPushButton {
    let x: Int32
    let y: Int32

    init(x: Int32, y: Int32, parent: QWidget) {
        self.x = x
        self.y = y
        super.init(parent: parent)
    }
}

