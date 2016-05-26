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
        
        //CategoryList
        let categoryListPresenter = CategoryListPresenter()
        let categoryListInteractor = CategoryListInteractor()
        
        
        //AppList
        let appListWireframe = AppListWireframe()
        let appListInteractor = AppListInteractor()
        let appListPresenter = AppListPresenter()
        let appListDataManager = AppListDataManager()
        
        categoryListInteractor.output = categoryListPresenter
        
        categoryListPresenter.categoryListWireframe = categoryListWireframe
        categoryListPresenter.categoryListInteractor = categoryListInteractor
        
        categoryListWireframe.categoryListPresenter = categoryListPresenter
        categoryListWireframe.rootWireframe = rootWireframe
        
        categoryListWireframe.appListWireframe = appListWireframe
        
        
        appListInteractor.output = appListPresenter
        
        appListWireframe.appListPresenter = appListPresenter
        
        appListPresenter.appListWireframe = appListWireframe
        appListPresenter.appListInteractor = appListInteractor
        appListInteractor.appListDataManager = appListDataManager
        
        
        
        
        
    }
}