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
	private static let shared = Assembler()
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
		let viewController = try? resolver
			.resolve(
				SceneModuleProtocol.self,
				name: ___VARIABLE_sceneName___SceneModule.moduleName
			)
			.build(resolver: resolver)
		window?.rootViewController = viewController
	}
}
