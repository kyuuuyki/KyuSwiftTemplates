//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import SwiftUI

struct ___VARIABLE_viewName___View: View {
	@ObservedObject var viewModel: ___VARIABLE_viewName___ViewModel
	
    var body: some View {
        Text("___VARIABLE_viewName___View")
    }
}

struct ___VARIABLE_viewName___View_Previews: PreviewProvider {
    static var previews: some View {
		let viewModel = ___VARIABLE_viewName___ViewModel()
		let preview = ___VARIABLE_viewName___View(viewModel: viewModel)
        return preview
    }
}

class ___VARIABLE_viewName___ViewModel: ObservableObject {
}
