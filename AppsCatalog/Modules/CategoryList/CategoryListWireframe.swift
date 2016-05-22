//
//  CategoryListWireframe.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import UIKit

class CategoryListWireframe: NSObject {
    var rootWireframe:RootWireframe?
    var categoryListPresenter:CategoryListPresenter?
    
    func presentCategoryListViewAsRoot(window: UIWindow) {
        let viewController = listViewControllerFromStoryboard()
        
        //A ver, presentemonos
        viewController.categoryListPresenter = categoryListPresenter
        self.categoryListPresenter?.categoryListInterface = viewController
        
        //Mostremos
        self.rootWireframe?.showRootViewController(viewController, inWindow: window)
    }
    
    
// MARK: Funciones utilitarias
    func listViewControllerFromStoryboard() -> CategoryListViewController {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier("CategoryList") as! CategoryListViewController
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
    
}