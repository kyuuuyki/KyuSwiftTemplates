//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import SwiftUI
import UIKit

// MARK: - DISPLAY LOGIC
protocol ___VARIABLE_sceneName___ViewControllerProtocol: AnyObject {
	func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel)
}

// MARK: - VIEW CONTROLLER
class ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewControllerProtocol, ObservableObject {
	weak var hostingController: UIHostingController<___VARIABLE_sceneName___View>?
	var interactor: ___VARIABLE_sceneName___InteractorProtocol?
	var router: ___VARIABLE_sceneName___RouterProtocol?
	
	@Published var viewModel = ___VARIABLE_sceneName___ViewModel()
	
	func onAppear() {
		init___VARIABLE_sceneName___ViewController()
	}
}

// MARK: - DO SOMETHING
extension ___VARIABLE_sceneName___ViewController {
	func doSomething() {
		let request = ___VARIABLE_sceneName___Model.Something.Request()
		interactor?.doSomething(request: request)
	}
	
	func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel) {
		self.viewModel.title = "___VARIABLE_sceneName___ViewController"
	}
}

// MARK: - PRIVATE EXTENSIONS
private extension ___VARIABLE_sceneName___ViewController {
	// MARK: INIT
	func init___VARIABLE_sceneName___ViewController() {
		doSomething()
	}
}
