//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation

// MARK: - BUSINESS LOGIC
protocol ___VARIABLE_sceneName___InteractorProtocol {
	func get___VARIABLE_sceneName___Detail(request: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Request)
}

// MARK: - INTERACTOR
class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorProtocol {
	var presenter: ___VARIABLE_sceneName___PresenterProtocol?
	var worker: ___VARIABLE_sceneName___WorkerProtocol?
	
	init(
		presenter: ___VARIABLE_sceneName___PresenterProtocol?,
		worker: ___VARIABLE_sceneName___WorkerProtocol?
	) {
		self.presenter = presenter
		self.worker = worker
	}
}

// MARK: - GET DETAIL
extension ___VARIABLE_sceneName___Interactor {
	func get___VARIABLE_sceneName___Detail(request: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Request) {
		worker?.doSomeWork()
		
		let response = ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Response()
		presenter?.presentGet___VARIABLE_sceneName___Detail(response: response)
	}
}
