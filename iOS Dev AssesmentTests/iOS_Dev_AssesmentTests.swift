//
//  iOS_Dev_AssesmentTests.swift
//  iOS Dev AssesmentTests
//
//  Created by Jose Vargas on 1/12/24.
//

import XCTest
@testable import iOS_Dev_Assesment

final class iOS_Dev_AssesmentTests: XCTestCase {
    
    var viewModel: ProductViewModel!

    override func setUpWithError() throws {
        viewModel = ProductViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func testEvenNumbers_EmptyRange() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [])
        XCTAssertEqual(evenNumbers, 0)
    }
    
    func testEvenNumbers_SingleEvenNumber() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [1,2,3])
        XCTAssertEqual(evenNumbers, 2)
    }
    
    func testEvenNumbers_GreaterThanOrEqualTwo() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [1,2,3,5,7])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertGreaterThanOrEqual(evenNumbers, 2)
        XCTAssertGreaterThanOrEqual(sumEvenNumbers, 2)
    }
    
    func testEvenNumbers_EqualSix() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [1,2,3,4])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertEqual(evenNumbers, 6)
        XCTAssertEqual(sumEvenNumbers, 6)
    }
        
    func testEvenNumbers_RangeBeginWithPositiveEvenNumber() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [4,3,5,7])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertGreaterThanOrEqual(evenNumbers, 4)
        XCTAssertGreaterThanOrEqual(sumEvenNumbers, 4)
    }
    
    func testEvenNumbers_RangeBeginWithNegativeEvenNumber() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [-2,3,5,7])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertGreaterThanOrEqual(evenNumbers, -2)
        XCTAssertGreaterThanOrEqual(sumEvenNumbers, -2)
    }
    
    func testEvenNumbers_RangeEndingWithPositiveEvenNumber() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [3,5,7,2])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertGreaterThanOrEqual(evenNumbers, 2)
        XCTAssertGreaterThanOrEqual(sumEvenNumbers, 2)
    }
    
    func testEvenNumbers_RangeEndingWithNegativeEvenNumber() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [3,5,7,-6])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertGreaterThanOrEqual(evenNumbers, -6)
        XCTAssertGreaterThanOrEqual(sumEvenNumbers, -6)
    }
    
    func testEvenNumbers_RangeIncludesZero() {
        let evenNumbers = viewModel.sumOfEvenNumbers(numbers: [3,5,7,0,8])
        let sumEvenNumbers = viewModel.sumEvenNumbers
        XCTAssertGreaterThanOrEqual(evenNumbers, 8)
        XCTAssertGreaterThanOrEqual(sumEvenNumbers, 8)
    }
}
