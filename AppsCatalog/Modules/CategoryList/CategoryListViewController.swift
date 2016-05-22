//
//  CategoryListViewController.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController, CategoryListViewInterface {

    @IBOutlet weak var noResultsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// MARK: - Implementación de CategoryListWireframe
    
    func showNoResults() {
        
    }
    
    func showResults(categories: [CategoryListModel]) {
        
    }
}
