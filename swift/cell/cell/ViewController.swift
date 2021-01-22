//
//  ViewController.swift
//  cell
//
//  Created by MAC on 2021/01/20.
//  Copyright © 2021 lipeiv. All rights reserved.
//

import UIKit

class RootViewTextCell: UIViewController, UITableViewDataSource {
    var books:[String]!
    
    @IBOutlet var tableView:UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.tableView.dataSource = self;
        books=["1","2","3","5"]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNO = indexPath.row
        let identifier = "1"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let title = titleLabel
        let text = descLabel
        title?.text = "title"
        text?.text = books[rowNO];
        return cell
    }
    
}
