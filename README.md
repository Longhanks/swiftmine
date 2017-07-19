# qlift-swift-example
Example consuming Qlift to create a Qt application with Swift

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Longhanks/qlift-swift-example/master/LICENSE)
[![Build status](https://api.travis-ci.org/Longhanks/qlift-swift-example.svg?branch=master)](https://travis-ci.org/Longhanks/qlift-swift-example)

### Build options

Linking [qlift-c-api](https://github.com/Longhanks/qlift-c-api/) dynamically requires you to provide the paths where you installed it, if not in LD_LIBRARY_PATH (e.g. when you passed `CMAKE_INSTALL_PREFIX=/usr`, you can just `swift build`).

If you've built qlift-c-api on macOS with the default configuration (which installs to `/usr/local`), pass these flags:

```bash
swift build -Xcc -I/usr/local/include -Xlinker -L/usr/local/lib
```

If you want to build with stdlib statically linked and the executable optimized, additionally, pass these flags:

```bash
swift build -c release -Xswiftc -static-stdlib
```

If you want to build with [qlift-c-api](https://github.com/Longhanks/qlift-c-api/) statically embedded, use the provided `buildscript.sh`. This can be edited and ammended with the `-c release -Xswiftc -static-stdlib` options if you wish so.

### Screenshot

![Screenshot 1](./Deploy/screenshot.png "Screenshot 1")

