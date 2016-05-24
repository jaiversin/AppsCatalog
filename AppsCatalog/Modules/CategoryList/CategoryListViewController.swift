//
//  CategoryListViewController.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/22/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import UIKit

var CellIdentifier = "CategoryCell"

class CategoryListViewController: UITableViewController, CategoryListViewInterface {

    var categoryListPresenter:CategoryListPresenter?
    var tableDataSource : [CategoryListModel]?
    
    @IBOutlet weak var noResultsButton: UIButton!
    @IBOutlet var noResultsView: UIView!
    @IBOutlet weak var categoriesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.categoriesTable = tableView
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.categoryListPresenter?.loadCategories()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func reloadResults(sender: UIButton) {
        NSLog("Se van a recargar, ay ay ay")
        self.categoryListPresenter?.reloadCategories()
    }
    
// MARK: - Implementación de CategoryListWireframe
    
    func showNoResults() {
        self.view = noResultsView
//        self.noResultsButton.hidden = false;
//        self.categoriesTable.hidden = true;
    }
    
    func showResults(categories: [CategoryListModel]) {
        if categories.count == 0 {
            self.showNoResults()
        } else {
            self.view = tableView
            self.tableDataSource = categories
            self.tableView.reloadData()
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.tableDataSource?.count)!
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Categorías"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentCategory = self.tableDataSource?[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = currentCategory?.label
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let currentCategory = self.tableDataSource?[indexPath.row]
        
        self.categoryListPresenter?.showAppListForCategory((currentCategory?.identifier)!)
    }
}
