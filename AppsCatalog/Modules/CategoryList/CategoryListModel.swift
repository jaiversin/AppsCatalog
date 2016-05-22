//
//  CategoryListModel.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation

struct CategoryListModel {
    let identifier : NSString
    let label : NSString
    
    init (identifier:NSString, label:NSString){
        self.identifier = identifier
        self.label = label
    }
    
    
}