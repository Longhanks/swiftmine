import Qlift


class GameWidget: UI_GameWidget {
    init(rows: Int, columns: Int, mines: Int, parent: QWidget? = nil) {
        super.init(parent: parent)
        print("Creating game window with \(rows) rows, \(columns) columns")
    }
}

