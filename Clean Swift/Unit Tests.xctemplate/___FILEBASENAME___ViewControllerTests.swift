//
//  ___FILENAME___
//  ___PROJECTNAME___
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

// MARK: - VIEW CONTROLLER
class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
	private static var moduleName: String = "___VARIABLE_sceneName___"
	private var nibName = String(describing: ___VARIABLE_sceneName___ViewController.self)
	private var bundle: Bundle? = Bundle(for: ___VARIABLE_sceneName___ViewController.self)
	
	// MARK: SUBJECT UNDER TEST
	private var sut: ___VARIABLE_sceneName___ViewController!
	private var window: UIWindow!
	
	// MARK: TEST LIFECYCLE
	override func setUp() {
		super.setUp()
		window = UIWindow()
		setup___VARIABLE_sceneName___ViewController()
	}
	
	override func tearDown() {
		window = nil
		super.tearDown()
	}
	
	// MARK: TEST SETUP
	private func setup___VARIABLE_sceneName___ViewController() {
		sut = ___VARIABLE_sceneName___ViewController(nibName: nibName, bundle: bundle)
	}
	
	private func loadView() {
		window.addSubview(sut.view)
		RunLoop.current.run(until: Date())
	}
	
	// MARK: TEST DOUBLES
	private class ___VARIABLE_sceneName___InteractorSpy: ___VARIABLE_sceneName___InteractorProtocol {
		var doSomethingCalled = false
		var doSomethingRequest: ___VARIABLE_sceneName___Model.Something.Request!
		func doSomething(request: ___VARIABLE_sceneName___Model.Something.Request) {
			doSomethingCalled = true
			doSomethingRequest = request
		}
	}
	
	private class ___VARIABLE_sceneName___RouterSpy: ___VARIABLE_sceneName___RouterProtocol {
	}
}

// MARK: - TEST SHOULD DO SOMETHING WHEN VIEW IS LOADED
extension ___VARIABLE_sceneName___ViewControllerTests {
	func testShouldDoSomethingWhenViewIsLoaded() {
		// MARK: Given
		loadView()
		
		let interactor = ___VARIABLE_sceneName___InteractorSpy()
		sut.interactor = interactor
		
		// MARK: When
		
		// MARK: Then
		XCTAssertTrue(interactor.doSomethingCalled, "viewDidLoad() should ask the interactor to do something")
	}
}

// MARK: - TEST DISPLAY SOMETHING
extension ___VARIABLE_sceneName___ViewControllerTests {
	func testDisplaySomething() {
		// MARK: Given
		loadView()
		
		let viewModel = ___VARIABLE_sceneName___Model.Something.ViewModel()
		
		// MARK: When
		sut.displaySomething(viewModel: viewModel)
		
		// MARK: Then
		// XCTAssertEqual(sut.nameTextField.text, "")
	}
}
