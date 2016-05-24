//
//  AppListWireframe.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/23/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import UIKit

class AppListWireframe: BaseWireframe, UIViewControllerTransitioningDelegate {
    var appListPresenter:AppListPresenter?
    var currentViewController: UIViewController?
    
    func presentAppListFromController(viewController: UIViewController){
        let appListViewController = self.listViewControllerFromStoryboard()
        
        appListViewController.transitioningDelegate = self
        appListViewController.appListPresenter = appListPresenter
        
        appListPresenter?.appListView = appListViewController
        
        viewController.presentViewController(appListViewController, animated: true) { 
            
        }
        currentViewController = viewController
    }
    
    func dismissAppListController(){
        currentViewController?.dismissViewControllerAnimated(true, completion: {
            
        })
    }
    
    
    // MARK: Funciones utilitarias
    func listViewControllerFromStoryboard() -> AppListViewController {
        let viewController = viewControllerFromStoryboardWithIdentifier("AppsList") as! AppListViewController
        return viewController
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AppListPresentationTransition()
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AppListDismissTransition()
    }
}