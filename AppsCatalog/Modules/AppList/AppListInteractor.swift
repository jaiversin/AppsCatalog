//
//  AppListInteractor.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/23/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation

protocol AppListInteractorInProtocol {
    func getAppListForCategory(category: String)
}

protocol AppListInteractorOutProtocol {
    func receiveAppList(data: Array<AppListModel>)
}

class AppListInteractor: AppListInteractorInProtocol {
    var output: AppListInteractorOutProtocol?
    var appListDataManager: AppListDataManager?
    
    init() {
        
    }
    
    
    func getAppListForCategory(category: String) {
        let firstApp = AppListModel(id: "1", name:"a", iconPath: "icon.jpg", summary: "Summary A", price: "$1", categoryId: "1", categoryName: "Games")
        let secondApp = AppListModel(id: "2", name:"b", iconPath: "icon.jpg", summary: "Summary A", price: "$1", categoryId: "1", categoryName: "Games")
        
        appListDataManager?.getAppListForCategoryId(category) { [weak self] (completionData) in
            
            self!.output!.receiveAppList(completionData)
            
        }
        
        
        
    }
    
}
