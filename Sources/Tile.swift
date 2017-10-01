import Qlift


class Tile: QPushButton {
    let x: Int
    let y: Int

    init(x: Int, y: Int, parent: QWidget) {
        self.x = x
        self.y = y
        super.init(parent: parent)
    }
}

