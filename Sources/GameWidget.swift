import Qlift


class GameWidget: UI_GameWidget {
    var onGameIsWon: (() -> Void)?
    var onGameIsLost: (() -> Void)?

    init(rows: Int, columns: Int, mines: Int, parent: QWidget? = nil) {
        super.init(parent: parent)
        print("Creating game window with \(rows) rows, \(columns) columns")
        QTimer.singleShot(msec: 2000, timerType: .CoarseTimer) { [unowned self] in
            self.onGameIsWon?()
        }
    }
}

