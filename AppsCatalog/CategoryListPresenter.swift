//
//  CategoryListPresenter.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation

class CategoryListPresenter: CateogryListInteractorOutProtocol, CategoryListPresenterInterface {
    var categoryListInteractor : CateogryListInteractorInProtocol?
    var categoryListWireframe : CategoryListWireframe?
    var categoryListInterface : CategoryListViewInterface?
    
    
    
// MARK: Implementación de CateogryListInteractorOutProtocol
    func receiveCategories(data: [CategoryListModel]) {
        if data.count != 0 {
            //Decile a la vista que pinte estas categorías
            categoryListInterface?.showResults(data)
        } else {
            //Decile a la vista que no hay nada que pintar
            categoryListInterface?.showNoResults()
        }
    }
    
// MARK: Implementación de CategoryListPresenterInterface (Module interface)
    func reloadCategories() {
        self.categoryListInteractor?.getCategories({ (data) in
           //Implementación con bloques vacía. Experimental por ahora para adaptar VIPER con callbacks.
        });
    }
    
    func loadCategories() {
        NSLog("primera carga de categorías")
        self.categoryListInteractor?.getCategories({ (data) in
            
        })
    }
    
    func showAppListForCategory(categoryId: String) {
        categoryListWireframe?.presentAppListForCategory(categoryId)
    }
}