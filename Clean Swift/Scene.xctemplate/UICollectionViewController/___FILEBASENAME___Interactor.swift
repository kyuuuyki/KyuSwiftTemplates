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

// MARK: - BUSINESS LOGIC
protocol ___VARIABLE_sceneName___BusinessLogic {
    
    func doSomething(request: ___VARIABLE_sceneName___Model.Something.Request)
}

// MARK: - DATASTORE
protocol ___VARIABLE_sceneName___DataStore {
    
    //var name: String { get set }
}

// MARK: - INTERACTOR
class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
    
    var presenter: ___VARIABLE_sceneName___PresentationLogic?
    var worker: ___VARIABLE_sceneName___Worker?
    
    // MARK: MODEL
    //var name: String = ""
}

// MARK: - DO SOMETHING
extension ___VARIABLE_sceneName___Interactor {
    
    func doSomething(request: ___VARIABLE_sceneName___Model.Something.Request) {
        
        worker = ___VARIABLE_sceneName___Worker()
        worker?.doSomeWork()
        
        let response = ___VARIABLE_sceneName___Model.Something.Response()
        presenter?.presentSomething(response: response)
    }
}