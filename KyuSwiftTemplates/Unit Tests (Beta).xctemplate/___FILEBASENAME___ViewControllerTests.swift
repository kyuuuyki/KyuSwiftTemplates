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
		var get___VARIABLE_sceneName___DetailCalled = false
		var get___VARIABLE_sceneName___DetailRequest: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Request!
		func get___VARIABLE_sceneName___Detail(request: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Request) {
			get___VARIABLE_sceneName___DetailCalled = true
			get___VARIABLE_sceneName___DetailRequest = request
		}
	}
	
	private class ___VARIABLE_sceneName___RouterSpy: ___VARIABLE_sceneName___RouterProtocol {
	}
}

// MARK: - TEST SHOULD DO SOMETHING WHEN VIEW IS LOADED
extension ___VARIABLE_sceneName___ViewControllerTests {
	func testShouldDoGet___VARIABLE_sceneName___DetailWhenViewIsLoaded() {
		// MARK: Given
		loadView()
		
		let interactor = ___VARIABLE_sceneName___InteractorSpy()
		sut.interactor = interactor
		
		// MARK: When
		
		// MARK: Then
		XCTAssertTrue(interactor.get___VARIABLE_sceneName___DetailCalled, "viewDidLoad() should ask the interactor to do something")
	}
}

// MARK: - TEST DISPLAY SOMETHING
extension ___VARIABLE_sceneName___ViewControllerTests {
	func testDisplayGet___VARIABLE_sceneName___Detail() {
		// MARK: Given
		loadView()
		
		let viewModel = ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel()
		
		// MARK: When
		sut.displayGet___VARIABLE_sceneName___Detail(viewModel: viewModel)
		
		// MARK: Then
		// XCTAssertEqual(sut.nameTextField.text, "")
	}
}
