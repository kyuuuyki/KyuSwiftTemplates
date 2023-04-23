//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation

// MARK: - BUSINESS LOGIC
protocol ___VARIABLE_sceneName___InteractorProtocol {
	func doSomething(request: ___VARIABLE_sceneName___Model.Something.Request)
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

// MARK: - DO SOMETHING
extension ___VARIABLE_sceneName___Interactor {
	func doSomething(request: ___VARIABLE_sceneName___Model.Something.Request) {
		worker?.doSomeWork()
		
		let response = ___VARIABLE_sceneName___Model.Something.Response()
		presenter?.presentSomething(response: response)
	}
}
