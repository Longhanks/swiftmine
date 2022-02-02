import Foundation
import Qlift

#if os(Linux)
srand(UInt32(time(nil)))
#endif

func main() -> Int32 {
    let application = QApplication()
    guard
        let rccFilename = Bundle.module.path(forResource: "resource", ofType: "rcc"),
        QResource.registerResource(rccFilename: rccFilename)
    else {
        fatalError("Can't load resources")
    }
    application.windowIcon = QIcon(fileName: ":/mine.png")
    let mainWindow = MainWindow()
    mainWindow.show()
    return application.exec()
}

exit(main())

