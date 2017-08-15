#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift


let application = QApplication()
let mainWindow = MainWindow()
mainWindow.show()
exit(application.exec())

