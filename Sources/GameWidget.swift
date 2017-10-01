import Qlift


class GameWidget: UI_GameWidget {
    var onGameIsWon: (() -> Void)?
    var onGameIsLost: (() -> Void)?
    let rows: Int32
    let columns: Int32
    var matrix = [[Tile]]()

    init(rows: Int32, columns: Int32, mines: Int32, parent: QWidget? = nil) {
        self.rows = rows
        self.columns = columns
        super.init(parent: parent)

        for column in 0..<columns {
            self.matrix.append([])
            for row in 0..<rows {
                let btn = Tile(x: column, y: row, parent: self)
                self.mainLayout.add(widget: btn, row: row, column: column)
                btn.onClickedSuccessfully = { [unowned self] (x, y) in
                    print("Button at \(x):\(y) pressed")
                }
                self.matrix[Int(column)].append(btn)
            }
        }
    }
}

