#if os(Linux)
import Glibc
#else
import Darwin
#endif


func randint(bound: UInt32) -> Int {
    #if os(Linux)
    return random() % (Int(bound) + 1)
    #else
    return Int(arc4random_uniform(bound + 1))
    #endif
}
