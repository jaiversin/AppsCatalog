//
//  AppListModel.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation

struct AppListModel {
    let name: String
    let iconPath: String
    let summary: String
    let price: String
    let categoryId: String
    let categoryName: String
    
    init(name: String, iconPath: String, summary: String, price: String, categoryId: String, categoryName: String){
        
        self.name = name
        self.iconPath = iconPath
        self.summary = summary
        self.price = price
        self.categoryId = categoryId
        self.categoryName = categoryName
        
    }
    
}