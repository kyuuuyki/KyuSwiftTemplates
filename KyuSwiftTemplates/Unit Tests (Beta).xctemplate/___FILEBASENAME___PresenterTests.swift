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
		var displayGet___VARIABLE_sceneName___DetailCalled = false
		var displayGet___VARIABLE_sceneName___DetailViewModel: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel!
		func displayGet___VARIABLE_sceneName___Detail(viewModel: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel) {
			displayGet___VARIABLE_sceneName___DetailCalled = true
			displayGet___VARIABLE_sceneName___DetailViewModel = viewModel
		}
	}
}

// MARK: - PRESENT SOMETHING
extension ___VARIABLE_sceneName___PresenterTests {
	func testPresentGet___VARIABLE_sceneName___Detail() {
		// MARK: Given
		let viewController = ___VARIABLE_sceneName___ViewControllerSpy()
		sut.viewController = viewController
		let response = ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Response()
		
		// MARK: When
		sut.presentGet___VARIABLE_sceneName___Detail(response: response)
		
		// MARK: Then
		XCTAssertTrue(viewController.displayGet___VARIABLE_sceneName___DetailCalled)
		XCTAssertEqual(
			viewController.displayGet___VARIABLE_sceneName___DetailViewModel.something,
			something
		)
	}
}
