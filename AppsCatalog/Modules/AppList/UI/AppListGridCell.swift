//
//  AppListGridCell.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/24/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import UIKit

class AppListGridCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func setIconImage(iconPath: String) {
        self.icon.backgroundColor = UIColor.redColor()
        self.icon!.hnk_setImageFromURL(NSURL(string:iconPath))
    }
    
    func setPriceLabel (price: String) {
        self.price!.text = price
    }
    
    func setNameLabel (name: String) {
        self.name!.text = name
    }
}
