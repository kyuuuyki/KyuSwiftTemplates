//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import SwiftUI
import UIKit

// MARK: - VIEW
struct ___VARIABLE_sceneName___View: View {
	@ObservedObject var viewController: ___VARIABLE_sceneName___ViewController
	
	var body: some View {
		let viewModel = $viewController.viewModel
		
		Text(viewModel.title.wrappedValue)
			.onAppear { [weak viewController] in
				viewController?.onAppear()
			}
	}
	
	// MARK: VIEWMODEL
	struct ViewModel {
		var title: String = "___VARIABLE_sceneName___View"
	}
}

// MARK: - VIEWMODEL
extension ___VARIABLE_sceneName___View.ViewModel {
	static var preview: ___VARIABLE_sceneName___View.ViewModel {
		___VARIABLE_sceneName___View.ViewModel()
	}
}

// MARK: - PREVIEW
struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
	static var previews: some View {
		let viewController = ___VARIABLE_sceneName___ViewController()
		viewController.viewModel = ___VARIABLE_sceneName___View.ViewModel.preview
		return ___VARIABLE_sceneName___View(viewController: viewController)
	}
}
