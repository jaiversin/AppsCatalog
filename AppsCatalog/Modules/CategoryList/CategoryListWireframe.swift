//
//  CategoryListWireframe.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import UIKit

class CategoryListWireframe: BaseWireframe {
    var rootWireframe: RootWireframe?
    var appListWireframe: AppListWireframe?
    var categoryListPresenter: CategoryListPresenter?
    var currentController: UIViewController?
    
    func presentCategoryListViewAsRoot(window: UIWindow) {
        let viewController = listViewControllerFromStoryboard()
        
        //A ver, presentemonos
        viewController.categoryListPresenter = categoryListPresenter
        self.categoryListPresenter?.categoryListInterface = viewController
        
        //Mostremos
        self.rootWireframe?.showRootViewController(viewController, inWindow: window)
        
        currentController = viewController
    }
    
    func presentAppListForCategory(categoryId: String){
        appListWireframe?.presentAppListFromController(currentController!)
    }
    
// MARK: Funciones utilitarias
    
    func listViewControllerFromStoryboard() -> CategoryListViewController {
        let viewController = viewControllerFromStoryboardWithIdentifier("CategoryList") as! CategoryListViewController
        return viewController
    }
    
}