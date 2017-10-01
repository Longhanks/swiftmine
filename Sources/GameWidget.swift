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
                    self.clickSucceeded(column: x, row: y)
                }
                btn.onClickedMine = { [unowned self] in
                    self.onGameIsLost?()
                }
                self.matrix[Int(column)].append(btn)
            }
        }

        // Apply the mines
        var counter = 0
        while counter < mines {
            let x = randint(bound: UInt32(columns - 1))
            let y = randint(bound: UInt32(rows - 1))
            if self.matrix[x][y].isMine {
                continue
            } else {
                self.matrix[x][y].isMine = true
                counter += 1
            }
        }

        // Set the count
        for column in self.matrix {
            for btn in column {
                for (x, y) in self.getValidMatrixIndices(x: btn.x, y: btn.y) {
                    let neighbor = self.matrix[Int(x)][Int(y)]
                    if neighbor.isMine {
                        btn.count += 1
                    }
                }
            }
        }
    }
}

extension GameWidget {
    func clickSucceeded(column: Int32, row: Int32) {
        let btn = self.matrix[Int(column)][Int(row)]
        if btn.count == 0 {
            for (x, y) in self.getValidMatrixIndices(x: column, y: row) {
                self.matrix[Int(x)][Int(y)].clickedTile(ignoreMark: true)
            }
        }
        self.checkIfGameIsWon()
    }

    func getValidMatrixIndices(x: Int32, y: Int32) -> [(Int32, Int32)] {
        var indices: [(Int32, Int32)] = []
        indices.append((x - 1, y - 1))
        indices.append((x, y - 1))
        indices.append((x + 1, y - 1))
        indices.append((x - 1, y))
        indices.append((x + 1, y))
        indices.append((x - 1, y + 1))
        indices.append((x, y + 1))
        indices.append((x + 1, y + 1))

        return indices.filter { (x, y) in
            if x >= 0 && y >= 0 {
                let columns = self.matrix.count
                let rows = self.matrix[0].count
                if x < columns && y < rows {
                    return true
                }
            }
            return false
        }
    }

    func checkIfGameIsWon() {
        for column in self.matrix {
            for btn in column {
                let countIsVisible = !btn.text.isEmpty && btn.text != "F"
                if !(countIsVisible || btn.isMine) {
                    return
                }
            }
        }
        self.onGameIsWon?()
    }
}
