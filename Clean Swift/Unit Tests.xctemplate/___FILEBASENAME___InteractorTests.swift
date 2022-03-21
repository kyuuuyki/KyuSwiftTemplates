//
//  ___FILENAME___
//  ___PROJECTNAME___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// MARK: - INTERACTOR
class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
	// MARK: SUBJECT UNDER TEST
	private var sut: ___VARIABLE_sceneName___Interactor!
	
	// MARK: TEST LIFECYCLE
	override func setUp() {
		super.setUp()
		setup___VARIABLE_sceneName___Interactor()
	}
	
	override func tearDown() {
		super.tearDown()
	}
	
	// MARK: TEST SETUP
	private func setup___VARIABLE_sceneName___Interactor() {
		sut = ___VARIABLE_sceneName___Interactor()
	}
	
	// MARK: TEST DOUBLES
	private class ___VARIABLE_sceneName___PresenterSpy: ___VARIABLE_sceneName___PresenterProtocol {
		var presentSomethingExpectation = XCTestExpectation()
		var presentSomethingResponse: ___VARIABLE_sceneName___Model.Something.Response!
		func presentSomething(response: ___VARIABLE_sceneName___Model.Something.Response) {
			presentSomethingResponse = response
			presentSomethingExpectation.fulfill()
		}
	}
	
	private class ___VARIABLE_sceneName___WorkerMock: ___VARIABLE_sceneName___WorkerProtocol {
		var doSomeWorkCalled = false
		func doSomeWork() {
			doSomeWorkCalled = true
		}
	}
}

// MARK: - TEST DO SOMETHING
extension ___VARIABLE_sceneName___InteractorTests {
	func testDoSomething() {
		// MARK: Given
		let presenter = ___VARIABLE_sceneName___PresenterSpy()
		sut.presenter = presenter
		
		let worker = ___VARIABLE_sceneName___WorkerMock()
		sut.worker = worker
		
		let request = ___VARIABLE_sceneName___Model.Something.Request()
		
		// MARK: When
		sut.doSomething(request: request)
		
		// MARK: Then
		wait(for: [presentSomethingExpectation], timeout: 5)
		
		// Worker
		XCTAssertTrue(worker.doSomeWorkCalled)
		
		// DataStore
		
		// Presenter
		XCTAssertTrue(presenter.presentSomethingResponse.someValue)
	}
}
