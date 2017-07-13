#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift


func main() -> Int32 {
    let application = QApplication()
    let mainWindow = QMainWindow()
    let widget = QWidget()
    let layout = QVBoxLayout(parent: widget)
    let label = QLabel(text: "Hello, world!")
    label.alignment = 132
    let pushButton = QPushButton(text: "Push me!")
    pushButton.connectClicked { checked in
        print("Button clicked, now is \(checked)")
    }
    layout.add(widget: label)
    layout.add(widget: pushButton)
    mainWindow.centralWidget = widget
    mainWindow.show()
    return application.exec()
}

exit(main())

