//
//  AppListDataManager.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/24/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AppListDataManager {
    
    func getAppListForCategoryId(categoryId: String, completionHandler: (completion: [AppListModel]) -> Void)  {
        
        Alamofire.request(.GET, "https://itunes.apple.com/us/rss/topfreeapplications/limit=40/json").responseJSON { response in
            
            var appListResponseModel = [AppListModel]()
            switch response.result {
            case .Success:
                
                
                
                if let value = response.result.value {
                    let json = JSON(value)
                    
                    for (_, subJson):(String,JSON) in json["feed"]["entry"] {
                        
                        let name:String = subJson["im:name", "label"].string!
                        let image:String = subJson["im:image", 1, "label"].string!
                        let id:String = subJson["id", "attributes", "im:id"].string!
                        let summary:String = subJson["summary", "label"].string!
                        let price:String = subJson["im:price", "attributes", "amount"].string!
                        let categoryName:String = subJson["category", "attributes", "label"].string!
                        
                        
                        let appModel = AppListModel(id: id,name: name, iconPath: image, summary: summary, price: price, categoryId: categoryId, categoryName: categoryName)
                        
                        
                        appListResponseModel.append(appModel)
                        
                    }
                    completionHandler(completion: appListResponseModel)
                    
                }
            case .Failure(let error):
                completionHandler(completion: [])
                print(error)
            }
        }
        
        
        
    }
    
}