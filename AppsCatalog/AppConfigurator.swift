//
//  AppWireframe.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import UIKit

class AppConfigurator {
    
    var categoryListWireframe:CategoryListWireframe = CategoryListWireframe()
    
    init(){
        self.makeInitialConfig()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        categoryListWireframe.presentCategoryListViewAsRoot(window)
    }
    
    func makeInitialConfig()  {
        let rootWireframe = RootWireframe()
        
        let categoryListPresenter = CategoryListPresenter()
        let categoryListInteractor = CategoryListInteractor()
        
        categoryListInteractor.output = categoryListPresenter
        
        categoryListPresenter.categoryListWireframe = categoryListWireframe
        categoryListPresenter.categoryListInteractor = categoryListInteractor
        
        categoryListWireframe.categoryListPresenter = categoryListPresenter
        categoryListWireframe.rootWireframe = rootWireframe
        
    }
}