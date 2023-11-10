//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import SwiftUI
import UIKit

// MARK: - DISPLAY LOGIC
protocol ___VARIABLE_sceneName___ViewControllerProtocol: AnyObject {
	func displayGet___VARIABLE_sceneName___Detail(viewModel: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel)
}

// MARK: - VIEW CONTROLLER
class ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewControllerProtocol, ObservableObject {
	weak var hostingController: UIHostingController<___VARIABLE_sceneName___View>?
	var interactor: ___VARIABLE_sceneName___InteractorProtocol?
	var router: ___VARIABLE_sceneName___RouterProtocol?
	
	@Published var viewModel = ___VARIABLE_sceneName___View.ViewModel()
	
	// MARK: PRIVATE
	private var isInitialized = false
	private var refreshableContinuation: CheckedContinuation<Void, Never>?
	
	func onAppear() {
		init___VARIABLE_sceneName___ViewController()
	}
	
	// MARK: ACTIONS
	func refresh() async {
		await withCheckedContinuation { continuation in
			self.refreshableContinuation = continuation
			self.get___VARIABLE_sceneName___Detail()
		}
	}
}

// MARK: - GET DETAIL
extension ___VARIABLE_sceneName___ViewController {
	func get___VARIABLE_sceneName___Detail() {
		let request = ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Request()
		interactor?.get___VARIABLE_sceneName___Detail(request: request)
	}
	
	func displayGet___VARIABLE_sceneName___Detail(viewModel: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel) {
		self.viewModel.title = "___VARIABLE_sceneName___ViewController"
		
		// End Refreshing
		self.refreshableContinuation?.resume()
		self.refreshableContinuation = nil
	}
}

// MARK: - PRIVATE EXTENSIONS
private extension ___VARIABLE_sceneName___ViewController {
	// MARK: INIT
	func init___VARIABLE_sceneName___ViewController() {
		guard !isInitialized else { return }
		isInitialized = true
		
		get___VARIABLE_sceneName___Detail()
	}
}
