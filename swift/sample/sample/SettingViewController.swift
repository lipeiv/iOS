//
//  SettingViewController.swift
//  sample
//
//  Created by MAC on 2021/01/04.
//  Copyright © 2021 Mti. All rights reserved.
//
import UIKit

class SettingViewController: UIViewController {
    
    var settingButton: UIBarButtonItem!;
    @IBOutlet weak var aliasText: UITextField!
    @IBOutlet weak var tagText: UITextField!
    
    @IBOutlet weak var sdkVersion: UILabel!
    @IBOutlet weak var backgroudMode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "setting";

        
    }
    
    
    @IBAction func settingButtonPushed(_ sender: Any) {
        let alias = aliasText.text
        let tag = tagText.text
        print("alias is \(alias!),tag is \(tag!)")
        self.sdkVersion.text = alias
        self.backgroudMode.text = tag
    }
    


}
