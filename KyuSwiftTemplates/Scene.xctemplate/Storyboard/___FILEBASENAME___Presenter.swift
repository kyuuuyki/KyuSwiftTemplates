//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import UIKit

// MARK: - PRESENTATION LOGIC
protocol ___VARIABLE_sceneName___PresenterProtocol {
	func presentGet___VARIABLE_sceneName___Detail(response: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Response)
}

// MARK: - PRESENTER
struct ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterProtocol {
	weak var viewController: ___VARIABLE_sceneName___ViewControllerProtocol?
}

// MARK: - GET DETAIL
extension ___VARIABLE_sceneName___Presenter {
	func presentGet___VARIABLE_sceneName___Detail(response: ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.Response) {
		let viewModel = ___VARIABLE_sceneName___Model.Get___VARIABLE_sceneName___Detail.ViewModel()
		viewController?.displayGet___VARIABLE_sceneName___Detail(viewModel: viewModel)
	}
}
