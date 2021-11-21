//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import KyuGenericExtensions

// MARK: - DISPLAY LOGIC
protocol ___VARIABLE_sceneName___DisplayLogic: class {
    func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel)
}

// MARK: - VIEW CONTROLLER
class ___VARIABLE_sceneName___ViewController: UIViewController, ___VARIABLE_sceneName___DisplayLogic {
    var interactor: ___VARIABLE_sceneName___BusinessLogic?
    var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    
    // MARK: OBJECT LIFECYCLE
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: SETUP
    private func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: ROUTING
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.setValue(sender, forKey: "sender")
        if let identifier = segue.identifier {
            let selector = NSSelectorFromString("perform\(identifier)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: MODEL
    
    // MARK: VIEW
    
    // MARK: VIEW MODEL

    // MARK: VIEW LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        init___VARIABLE_sceneName___ViewController()
    }
    
    // MARK: INIT
    func init___VARIABLE_sceneName___ViewController() {
        doSomething()
    }
    
    // MARK: ACTION
}

// MARK: - DO SOMETHING
extension ___VARIABLE_sceneName___ViewController {
    func doSomething() {
        let request = ___VARIABLE_sceneName___Model.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: ___VARIABLE_sceneName___Model.Something.ViewModel) {
    }
}

// MARK: - STORYBOARD INSTANTIABLE
extension ___VARIABLE_sceneName___ViewController: StoryboardInstantiable {
    static var storyboardBundle: Bundle { return Bundle(for: ___VARIABLE_sceneName___ViewController.self) }
    static var storyboardName: String { return "___VARIABLE_sceneName___" }
    static var storyboardIdentifier: String { return "___VARIABLE_sceneName___View" }
}
