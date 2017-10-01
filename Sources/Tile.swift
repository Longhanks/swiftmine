import Qlift


class Tile: QPushButton {
    var onClickedSuccessfully: ((Int32, Int32) -> Void)?
    var onClickedMine: (() -> Void)?
    let x: Int32
    let y: Int32

    init(x: Int32, y: Int32, parent: QWidget) {
        self.x = x
        self.y = y
        super.init(parent: parent)
        self.connectClicked(receiver: self) { [unowned self] _ in
            self.onClickedSuccessfully?(self.x, self.y)
        }
    }
}

