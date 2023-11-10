//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import UIKit

// MARK: - DISPLAY LOGIC
protocol ___VARIABLE_sceneName___ViewControllerProtocol: AnyObject {
	func displayGet___VARIABLE_sceneName___Detail(viewModel: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel)
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

// MARK: - GET DETAIL
extension ___VARIABLE_sceneName___ViewController {
	func get___VARIABLE_sceneName___Detail() {
		let request = ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Request()
		interactor?.get___VARIABLE_sceneName___Detail(request: request)
	}
	
	func displayGet___VARIABLE_sceneName___Detail(viewModel: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel) {
	}
}

// MARK: - PRIVATE EXTENSIONS
private extension ___VARIABLE_sceneName___ViewController {
	// MARK: INIT
	func init___VARIABLE_sceneName___ViewController() {
		get___VARIABLE_sceneName___Detail()
	}
}
