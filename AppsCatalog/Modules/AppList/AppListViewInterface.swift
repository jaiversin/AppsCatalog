//
//  AppListViewInterface.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/23/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation


protocol AppListViewInterface {
    func showNoResults()
    func showResults(appList:[AppListModel])//Reemplazar model por objeto plano para no poner a viajar un objeto complejo cuando el modelo sea NSManagedObject
}

protocol AppListModuleInterface {
    func loadAppListForCategory(categoryId: String)
    func reloadAppListForCategory(categoryId: String)
    func goBack()
}