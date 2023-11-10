//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import KyuGenericExtensions
import SwiftUI
import UIKit

// MARK: - SCENE MODULE
public struct ___VARIABLE_sceneName___SceneModule: SceneModuleProtocol {
	public static var moduleName: String = "___PROJECTNAME___.___VARIABLE_sceneName___SceneModule"
	
	public func build(
		resolver: ResolverProtocol,
		parameters: [String: Any]
	) throws -> UIViewController {
		// Services
		let transitionCoordinator = try resolver.resolve(
			TransitionCoordinatorProtocol.self,
			name: "___PROJECTNAME___.TransitionCoordinator"
		)
		
		// ViewController
		let viewController = ___VARIABLE_sceneName___ViewController()
		
		let worker = ___VARIABLE_sceneName___Worker()
		let presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
		let interactor = ___VARIABLE_sceneName___Interactor(
			presenter: presenter,
			worker: worker
		)
		let router = ___VARIABLE_sceneName___Router(transitionCoordinator: transitionCoordinator)
		viewController.interactor = interactor
		viewController.router = router
		
		let view = ___VARIABLE_sceneName___View(viewController: viewController)
		let hostingController = UIHostingController(rootView: view)
		hostingController.navigationItem.hidesBackButton = true
		
		viewController.hostingController = hostingController
		return hostingController
	}
}
