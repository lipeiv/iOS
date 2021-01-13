//
//  ViewController.swift
//  sample
//
//  Created by MAC on 2021/01/04.
//  Copyright © 2021 Mti. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var settingButton: UIBarButtonItem!;
    var settingController: SettingViewController!;

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "VPSDK Sample";

        self.settingController = self.storyboard?.instantiateViewController(withIdentifier: "setting") as? SettingViewController
        self.settingButton = UIBarButtonItem(title: "setting",style: UIBarButtonItem.Style.plain, target: self, action: #selector(settingButtonPushed(settingButton:)));
        self.navigationItem.rightBarButtonItem = self.settingButton

    }
    
    @objc func settingButtonPushed(settingButton: UIBarButtonItem){
        print("settingButton is clicked.")
        self.navigationController?.pushViewController(self.settingController, animated: true)
    }


}

