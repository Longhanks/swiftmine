import Qlift


class GameWidget: UI_GameWidget {
    var onGameIsWon: (() -> Void)?
    var onGameIsLost: (() -> Void)?
    let rows: Int
    let columns: Int
    var matrix = [[Tile]]()

    init(rows: Int, columns: Int, mines: Int, parent: QWidget? = nil) {
        self.rows = rows
        self.columns = columns
        super.init(parent: parent)

        for column in 0..<columns {
            self.matrix.append([])
            for row in 0..<rows {
                let btn = Tile(x: column, y: row, parent: self)
                self.mainLayout.add(widget: btn, row: Int32(column), column: Int32(row))
                // clicked callbacks now
                self.matrix[column].append(btn)
            }
        }
    }
}

