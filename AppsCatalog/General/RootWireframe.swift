//
//  RootWireframe.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import UIKit

class RootWireframe : NSObject {
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}