//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import UIKit

// MARK: - PRESENTATION LOGIC
protocol ___VARIABLE_sceneName___PresenterProtocol {
	func presentSomething(response: ___VARIABLE_sceneName___Model.Something.Response)
}

// MARK: - PRESENTER
struct ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterProtocol {
	weak var viewController: ___VARIABLE_sceneName___ViewControllerProtocol?
}

// MARK: - DO SOMETHING
extension ___VARIABLE_sceneName___Presenter {
	func presentSomething(response: ___VARIABLE_sceneName___Model.Something.Response) {
		let viewModel = ___VARIABLE_sceneName___Model.Something.ViewModel()
		viewController?.displaySomething(viewModel: viewModel)
	}
}
