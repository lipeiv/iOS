//
//  ViewController.swift
//  navi
//
//  Created by 李培培 on 2021/1/21.
//

import UIKit

let cellID = "cellID"
struct Once
{
    static let identifier = "cell"
    static var isRegister : Bool = false
}

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    
    
    var books: [String]!
    var details: [String]!
    var nameField: UITextField!
    var detailField: UITextField!
    var rowNo : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title="图书"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "設定", style: UIBarButtonItem.Style.plain, target: self, action: #selector(rightBtn))
        let tableView = UITableView(frame: view.bounds, style: .grouped)
                tableView.backgroundColor = UIColor.white;
                view.addSubview(tableView)
                tableView.dataSource = self
                tableView.delegate = self

        
    }
    
    func loadData() {
        books = ["一","二","三","四"]
        details = ["1","2","3","numberOfRowsInSection section:Int) -> Int numberOfRowsInSection section: Int) -> Int "]
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.loadData();
        //self.tableView.reloadData();
    }
    
    // cell的个数
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return books.count
        }
        // UITableViewCell
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellid = "testCellID"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
            if cell==nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
            }
            let rowNo = indexPath.row
            cell?.textLabel?.text = books[rowNo]
            cell?.detailTextLabel?.text = details[rowNo]
            return cell!
        }

    //MARK: 选择编辑模式，不删除也不添加就设置为none
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 1
        }
    
    
    @objc func rightBtn(){
        let setting = SettingViewController();
        self.navigationController?.pushViewController(setting, animated: true)
        return
    }
}

