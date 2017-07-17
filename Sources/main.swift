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
    label.alignment = .AlignCenter
    let pushButton = QPushButton(text: "Push me!")
    pushButton.connectClicked { checked in
        print("Button clicked, now is \(checked)")
    }
    let spacer1 = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
    let spacer2 = QSpacerItem(width: 20, height: 40, horizontalPolicy: .Minimum, verticalPolicy: .Expanding)
    layout.add(widget: label)
    layout.add(item: spacer1)
    layout.add(widget: pushButton)
    layout.add(item: spacer2)
    mainWindow.centralWidget = widget
    mainWindow.show()
    return application.exec()
}

exit(main())

