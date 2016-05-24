//
//  AppListPresenter.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/23/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation



class AppListPresenter: AppListInteractorOutProtocol, AppListModuleInterface {
    var appListInteractor: AppListInteractorInProtocol?
    var appListView: AppListViewInterface?
    var appListWireframe: AppListWireframe?
    
    func receiveAppList(data: Array<AppListModel>) {
        if data.count != 0 {
            self.appListView?.showResults(data)
        } else {
            self.appListView?.showNoResults()
        }
    }
    
    
    func loadAppListForCategory(categoryId: String) {
        self.appListInteractor?.getAppListForCategory(categoryId)
    }
    
    func reloadAppListForCategory(categoryId: String) {
        self.appListInteractor?.getAppListForCategory(categoryId)
    }
    
    func goBack() {
        self.appListWireframe?.dismissAppListController()
    }
}