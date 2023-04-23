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
}

// MARK: - PREVIEW
struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
	static var previews: some View {
		let viewController = ___VARIABLE_sceneName___ViewController()
		let viewModel = ___VARIABLE_sceneName___ViewModel(
			title: "___VARIABLE_sceneName___View"
		)
		viewController.viewModel = viewModel
		return ___VARIABLE_sceneName___View(viewController: viewController)
	}
}

// MARK: - VIEW MODEL
struct ___VARIABLE_sceneName___ViewModel {
	var title: String = ""
}
