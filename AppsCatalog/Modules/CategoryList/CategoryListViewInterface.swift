//
//  CategoryListViewInterface.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation

protocol CategoryListViewInterface {
    func showNoResults()
    func showResults(categories:[CategoryListModel])//Reemplazar model por objeto plano para no poner a viajar un objeto complejo cuando el modelo sea NSManagedObject
}

protocol CategoryListPresenterInterface {//Module interface
    func reloadCategories()
    func loadCategories()
    func showAppListForCategory(categoryId: String)
}
