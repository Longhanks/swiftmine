# qlift-swift-example
Example consuming Qlift to create a Qt application with Swift

### Building

Building with stdlib dynamically linked:

```bash
swift build
```

Building with stdlib statically linked and optimized:

```bash
swift build -c release -Xswiftc -static-stdlib
```

