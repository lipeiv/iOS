//
//  ViewController.swift
//  TapTest
//
//  Created by MAC on 2020/12/31.
//  Copyright © 2020 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1:UITextField!
    @IBOutlet weak var text2:UITextField!
    @IBOutlet weak var label1:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var button:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        
    
    }
    
    @objc func tapped(sender:UIButton) {
        print(self.label1.text as Any,self.label2.text as Any)
        self.label1.text = text1.text
        self.label2.text = text2.text
    }

}


