# swiftmine
Minesweeper with Swift 5 and [Qlift](https://github.com/Longhanks/Qlift "Qlift")

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Longhanks/swiftmine/master/LICENSE)

## Building

Qt5 must be installed. On macOS, use `brew install qt@5`. On Linux, `pkgconfig` is used to find the build flags. On macOS, `.pc` files also is used to find Qt frameworks and build flags. Use Xcode from 13.3 (now beta) for build macOS applications. 
For macOS, add next line to `.zprofile`:

```bash
launchctl setenv PKG_CONFIG_PATH /opt/homebrew/opt/qt5/lib/pkgconfig
```
on Apple Silicon Mac or

```bash
launchctl setenv PKG_CONFIG_PATH /usr/local/opt/qt5/lib/pkgconfig
```
on Intel Mac or Apple Silicon Mac for develop under Rosetta

### swiftpm

`swift build`

[Qlift](https://github.com/Longhanks/Qlift "Qlift") provides the *.ui file compiler, `qlift-uic`, which must be used to compile the files from the UI directory into Swift source files in the Sources directory. This must be repeated whenever the *.ui files are changed.

## Screenshot

![Screenshot](./screenshot.png "Screenshot")
