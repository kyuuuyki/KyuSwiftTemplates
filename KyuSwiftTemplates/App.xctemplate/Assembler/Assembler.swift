//
//  Assembler.swift
//  ___PROJECTNAME___
//

import Foundation
import KyuGenericExtensions
import SwiftUI

public final class Assembler: AssemblerProtocol {
	// MARK: PUBLIC
	public static func assembler() -> AssemblerProtocol {
		self.shared
	}
	
	public let container: ContainerProtocol = Container()
	
	// MARK: PRIVATE
	private init() {}
	internal static let shared = Assembler()
	
	// MARK: WINDOW MANAGER
	let windowManager = AppWindowManager()
}

public extension Assembler {
	func configure(window: UIWindow?) {
		configureModules()
		configureRootViewController(window: window)
	}
	
	func configureModules() {
		container.register(
			TransitionCoordinatorProtocol.self,
			name: TransitionCoordinator.moduleName
		) { _ in
			TransitionCoordinator()
		}
		
		container.register(
			SceneModuleProtocol.self,
			name: ___VARIABLE_sceneName___SceneModule.moduleName
		) { _ in
			___VARIABLE_sceneName___SceneModule()
		}
	}
	
	func configureRootViewController(window: UIWindow?) {
		guard let window else { return }
		windowManager.configureRootWindow(window: window)
		
		let viewController = try? resolver
			.resolve(
				SceneModuleProtocol.self,
				name: ___VARIABLE_sceneName___SceneModule.moduleName
			)
			.build(resolver: resolver)
		window.rootViewController = viewController
	}
}
