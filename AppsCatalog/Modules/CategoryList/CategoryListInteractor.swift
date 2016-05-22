//
//  CategoryListInteractor.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation

protocol CateogryListInteractorInProtocol {
    func getCategories(completionHandler:(data: Array<CategoryListModel>)->Void)
}

protocol CateogryListInteractorOutProtocol {
    func receiveCategories(data: Array<CategoryListModel>)
}

class CategoryListInteractor: CateogryListInteractorInProtocol {
    
    var output : CateogryListInteractorOutProtocol?
    
    init(){
        
    }
    
    func getCategories(completionHandler: (data: Array<CategoryListModel>) -> Void) {
        let firstModel: CategoryListModel = CategoryListModel(identifier: "6014",label: "Games")
        let secondModel: CategoryListModel = CategoryListModel(identifier: "6008",label: "Photo & Video")
        
        let data: [CategoryListModel] = [firstModel, secondModel];
        
        //Implementación con bloques
        //completionHandler(data: data);
        
        self.output?.receiveCategories(data);
        
    }
    
}