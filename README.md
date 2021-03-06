# swiftmine
Minesweeper with Swift 5 and [Qlift](https://github.com/Longhanks/Qlift "Qlift")

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Longhanks/swiftmine/master/LICENSE)

## Building

Qt must be installed, of coures. On Linux, `pkgconfig` is used to find the build flags. On macOS, the installation is expected to be at `/usr/local/opt/qt/`, which is also where Homebrew would install Qt per default.

### swiftpm

`swift build`

[Qlift](https://github.com/Longhanks/Qlift "Qlift") provides the *.ui file compiler, `qlift-uic`, which must be used to compile the files from the UI directory into Swift source files in the Sources directory. This must be repeated whenever the *.ui files are changed.

## Screenshot

![Screenshot](./screenshot.png "Screenshot")
