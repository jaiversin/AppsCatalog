//
//  BaseWireframe.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/23/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import UIKit

class BaseWireframe: NSObject {
    
    // MARK: Funciones utilitarias
    func viewControllerFromStoryboardWithIdentifier(identifier: String) -> UIViewController {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(identifier)
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
}
