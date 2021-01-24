//
//  SettingViewController.swift
//  navi
//
//  Created by 李培培 on 2021/1/23.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var aliasText : UITextField!
    @IBOutlet weak var tagText : UITextField!
    @IBOutlet weak var version : UILabel!
    @IBOutlet weak var endpointId : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title="設定"
        
        
 
        
        
    }
        
        
        
        @IBAction func settingButtonPushed(){
            let alias = aliasText.text
            let tag = tagText.text
            
            print("設定")
            version.text = alias
            endpointId.text = tag
            self.view.endEditing(true)
            //aliasText.resignFirstResponder()
            //tagText.resignFirstResponder()
            display_(title: alias!, desc: tag!)

    }
    
    
    func display_(title: String, desc: String) {
        let alert = UIAlertController(title: title, message: desc, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "了解", style: UIAlertAction.Style.cancel, handler: nil);
        alert.addAction(OKAction)
        UIApplication.shared.keyWindow?.rootViewController!.present(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
