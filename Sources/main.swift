#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift


func main() -> Int32 {
    let application = QApplication()
    let mainWindow = MainWindow()
    let desktopRect = QApplication.desktop.availableGeometry(for: mainWindow)
    let center = desktopRect.center
    mainWindow.move(to: QPoint(x: center.x - mainWindow.width / 2, y: center.y - mainWindow.height / 2))
    mainWindow.show()
    return application.exec()
}

exit(main())

