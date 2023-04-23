//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import UIKit

// MARK: - DISPLAY LOGIC
protocol ___VARIABLE_sceneName___ViewControllerProtocol: AnyObject {
	func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel)
}

// MARK: - VIEW CONTROLLER
class ___VARIABLE_sceneName___ViewController: UIViewController, ___VARIABLE_sceneName___ViewControllerProtocol {
	var interactor: ___VARIABLE_sceneName___InteractorProtocol?
	var router: ___VARIABLE_sceneName___RouterProtocol?
	
	// MARK: MODEL
	
	// MARK: VIEW
	
	// MARK: VIEW MODEL
	
	// MARK: VIEW LIFECYCLE
	override func viewDidLoad() {
		super.viewDidLoad()
		init___VARIABLE_sceneName___ViewController()
	}
	
	// MARK: ACTION
}

// MARK: - DO SOMETHING
extension ___VARIABLE_sceneName___ViewController {
	func doSomething() {
		let request = ___VARIABLE_sceneName___Model.Something.Request()
		interactor?.doSomething(request: request)
	}
	
	func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel) {
	}
}

// MARK: - PRIVATE EXTENSIONS
private extension ___VARIABLE_sceneName___ViewController {
	// MARK: INIT
	func init___VARIABLE_sceneName___ViewController() {
		doSomething()
	}
}
