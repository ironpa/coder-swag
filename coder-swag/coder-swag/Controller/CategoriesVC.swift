//
//  ViewController.swift
//  coder-swag
//
//  Created by Ireneusz Parysz on 02.03.2018.
//  Copyright © 2018 Ireneusz Parysz. All rights reserved.
//

import UIKit

 class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    

    @IBOutlet weak var categoryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        //nav?.tintColor = UIColor.white
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell

        }else
        {
            return CategoryCell()
        }
    }
    

}

