//
//  ___FILENAME___
//  ___PROJECTNAME___
//

import Foundation
import KyuGenericExtensions
import UIKit

public struct ___VARIABLE_sceneName___SceneModule: SceneModuleProtocol {
	public static var moduleName: String = "___PROJECTNAME___.___FILENAME___"
	public var nibName = String(describing: ___VARIABLE_sceneName___ViewController.self)
	public var bundle: Bundle? = Bundle(for: ___VARIABLE_sceneName___ViewController.self)
	
	public init() {}
	
	public func build(resolver: ResolverProtocol, parameters: [String: Any]?) -> UIViewController? {
		// Services
		guard let transitionCoordinator = resolver.resolve(
			TransitionCoordinatorProtocol.self,
			name: "___PROJECTNAME___.TransitionCoordinator"
		) else {
			return nil
		}
		
		// ViewController
		let viewController = ___VARIABLE_sceneName___ViewController(
			nibName: nibName,
			bundle: bundle
		)
		
		let worker = ___VARIABLE_sceneName___Worker()
		let presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
		let interactor = ___VARIABLE_sceneName___Interactor(
			presenter: presenter,
			worker: worker
		)
		let router = ___VARIABLE_sceneName___Router(viewController: viewController)
		
		viewController.interactor = interactor
		viewController.router = router
		return viewController
	}
}
