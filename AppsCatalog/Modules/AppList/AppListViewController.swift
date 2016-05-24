//
//  AppListViewController.swift
//  AppsCatalog
//
//  Created by Jhon López on 5/23/16.
//  Copyright © 2016 jaiversin. All rights reserved.
//

import UIKit

var AppListCellIdentifier = "AppListCell"

class AppListViewController: UIViewController, AppListViewInterface, UITableViewDelegate, UITableViewDataSource {

    var appListPresenter: AppListPresenter?
    var dataSource: [AppListModel]?
    
    @IBOutlet weak var noResultsButton: UIButton!
    @IBOutlet var noResultsView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        configureView()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.appListPresenter?.loadAppListForCategory("")
    }
    
    func configureView(){
        navigationItem.title = "Category List"
        
        let addItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: #selector(AppListViewController.goBack))
        
        navigationItem.leftBarButtonItem = addItem
        
    }
    
    func goBack () {
        self.appListPresenter?.goBack()
    }
    @IBAction func closeAppList(sender: AnyObject) {
        self.appListPresenter?.goBack()
    }
    
    // MARK: AppListViewInterface 
    func showResults(appList: [AppListModel]) {
        if appList.count == 0 {
            NSLog("No results")
        } else {
            self.dataSource = appList
            self.tableView.reloadData()
        }
    }
    
    func showNoResults() {
        NSLog("No results")
    }
    
    // MARK: TableView Datasource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataSource?.count)!
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Apps"
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentApp = self.dataSource?[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier(AppListCellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = currentApp?.name
        cell.detailTextLabel?.text = currentApp?.price
        return cell
        
    }
    
    // MARK: TableView Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let currentApp = self.dataSource?[indexPath.row]
        
//        self.categoryListPresenter?.showAppListForCategory((currentCategory?.identifier)!)
    }
}
