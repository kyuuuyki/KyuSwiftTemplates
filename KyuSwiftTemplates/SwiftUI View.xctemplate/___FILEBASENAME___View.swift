//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import SwiftUI

struct ___VARIABLE_viewName___View: View {
	@ObservedObject var viewModel: ViewModel
	
	var body: some View {
		Text(viewModel.title)
	}
	
	// MARK: VIEWMODEL
	class ViewModel: ObservableObject {
		var title: String
		
		init(title: String) {
			self.title = title
		}
	}
}

// MARK: - VIEWMODEL
extension ___VARIABLE_viewName___View.ViewModel {
	static var preview: ___VARIABLE_viewName___View.ViewModel {
		___VARIABLE_viewName___View.ViewModel(
			title: "___VARIABLE_viewName___View"
		)
	}
}

// MARK: - PREVIEW
struct ___VARIABLE_viewName___View_Previews: PreviewProvider {
	static var previews: some View {
		let viewModel = ___VARIABLE_viewName___View.ViewModel.preview
		return ___VARIABLE_viewName___View(viewModel: viewModel)
	}
}
