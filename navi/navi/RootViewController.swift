//
//  ViewController.swift
//  navi
//
//  Created by 李培培 on 2021/1/23.
//

import UIKit

class RootViewController: UITableViewController{
 
   
    var settingButton :UIBarButtonItem!
    var settingController: SettingViewController!
    var bundle = Bundle.main
    var cell = RootViewTextCell()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationItem.title="VPSDK Sample";
        self.settingController = self.storyboard?.instantiateViewController(withIdentifier: "setting") as? SettingViewController
        self.settingButton = UIBarButtonItem(title:"設定",
                                             style: UIBarButtonItem.Style.plain,
                                             target: self,
                                             action: #selector(settingButtonPushed(settingButton:)));
        self.navigationItem.rightBarButtonItem = self.settingButton;
        
        let cell = bundle.loadNibNamed("TableViewCell", owner: nil, options: nil)?[0]
        self.tableView.addSubview(cell as! UIView )
        
    }

    @objc func settingButtonPushed(settingButton: UIBarButtonItem) {
        print("settingButton is clicked!")
        self.navigationController?.pushViewController(settingController, animated: true);
    }

    func appendData(title:String, desc:String){
     
        //cell.titleLabel?.text=title
        //cell.descLabel?.text=desc
        
        //print("Ctrl>table>>", tableView as Any, "<<<Ctrl")
        print("Ctrl>cell>>", cell as Any, "<<<Ctrl")
        //self.tableView.addSubview(cell)
    }


}
