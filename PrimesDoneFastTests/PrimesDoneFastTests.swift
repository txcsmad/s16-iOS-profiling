import XCTest
@testable import PrimesDoneFast

class PrimesDoneFastTests: XCTestCase {

    func testPrimes() {
        let primes = FunctionalSieve().primesUpTo(10000)
        assert(primes.last == 9973)
        assert(primes.count == 1230)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure here
        }
    }
    
}
