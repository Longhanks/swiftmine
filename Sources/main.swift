#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift


class MainWindow: UI_MainWindow {
    override init() {
        super.init()
        self.pushButtonNewGame.connectClicked(to: self.printChecked)
    }

    func printChecked(checked: Bool) {
        print("New game checked: \(checked)")
    }
}

func main() -> Int32 {
    let application = QApplication()
    let mainWindow = MainWindow()
    mainWindow.actionExit.connectTriggered { checked in
        application.exit(returnCode: 0)
    }
    mainWindow.show()
    return application.exec()
}

exit(main())

