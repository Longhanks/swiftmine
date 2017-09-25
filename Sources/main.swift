import Foundation
import Qlift


func main() -> Int32 {
    let application = QApplication()
    let mainWindow = MainWindow()
    mainWindow.show()
    return application.exec()
}

exit(main())

