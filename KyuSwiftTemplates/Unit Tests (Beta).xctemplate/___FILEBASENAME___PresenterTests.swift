//
//  ___FILENAME___
//  ___PROJECTNAME___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// MARK: - PRESENTER
class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
	// MARK: SUBJECT UNDER TEST
	private var sut: ___VARIABLE_sceneName___Presenter!
	
	// MARK: TEST LIFECYCLE
	override func setUp() {
		super.setUp()
		setup___VARIABLE_sceneName___Presenter()
	}
	
	override func tearDown() {
		super.tearDown()
	}
	
	// MARK: TEST SETUP
	private func setup___VARIABLE_sceneName___Presenter() {
		sut = ___VARIABLE_sceneName___Presenter()
	}
	
	// MARK: TEST DOUBLES
	private class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___ViewControllerProtocol {
		var displaySomethingCalled = false
		var displaySomethingViewModel: ___VARIABLE_sceneName___Model.Something.ViewModel!
		func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel) {
			displaySomethingCalled = true
			displaySomethingViewModel = viewModel
		}
	}
}

// MARK: - PRESENT SOMETHING
extension ___VARIABLE_sceneName___PresenterTests {
	func testPresentSomething() {
		// MARK: Given
		let viewController = ___VARIABLE_sceneName___ViewControllerSpy()
		sut.viewController = viewController
		let response = ___VARIABLE_sceneName___Model.Something.Response()
		
		// MARK: When
		sut.presentSomething(response: response)
		
		// MARK: Then
		XCTAssertTrue(viewController.displaySomethingCalled)
		XCTAssertEqual(
			viewController.displaySomethingViewModel.something,
			something
		)
	}
}
