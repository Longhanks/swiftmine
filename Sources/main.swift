import Foundation
import Qlift

#if os(Linux)
srand(UInt32(time(nil)))
#endif


func main() -> Int32 {
    let application = QApplication()
    let mainWindow = MainWindow()
    mainWindow.show()
    return application.exec()
}

exit(main())

