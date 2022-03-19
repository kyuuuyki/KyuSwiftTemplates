//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// MARK: - INTERACTOR
class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
    
    // MARK: SUBJECT UNDER TEST
    var sut: ___VARIABLE_sceneName___Interactor!
    
    // MARK: TEST LIFECYCLE
    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Interactor()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: TEST SETUP
    func setup___VARIABLE_sceneName___Interactor() {
        sut = ___VARIABLE_sceneName___Interactor()
    }
    
    // MARK: TEST DOUBLES
    class ___VARIABLE_sceneName___PresenterSpy: I___VARIABLE_sceneName___Presenter {
        var presentSomethingCalled = false
        
        func presentSomething(response: ___VARIABLE_sceneName___Model.Something.Response) {
            presentSomethingCalled = true
        }
    }
    
    // MARK: TESTS
    func testDoSomething() {
        // Given
        let spy = ___VARIABLE_sceneName___PresenterSpy()
        sut.presenter = spy
        let request = ___VARIABLE_sceneName___Model.Something.Request()
        
        // When
        sut.doSomething(request: request)
        
        // Then
        XCTAssertTrue(spy.presentSomethingCalled, "doSomething(request:) should ask the presenter to format the result")
    }
}
