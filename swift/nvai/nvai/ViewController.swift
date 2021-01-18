//
//  ViewController.swift
//  nvai
//
//  Created by 李培培 on 2021/1/5.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "主页";
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title:"设定", style: UIBarButtonItem.Style.plain,target: self, action: #selector(rightClick(rightButton:)));
        
    }

    
    
    @objc func rightClick(rightButton:UIBarButtonItem){
        let setting = SettingViewController();
        self.navigationController?.pushViewController(setting, animated: true);
        
    }
    
    
    
    //一个或多个手指触摸视图或窗口触发此方法
        //touches是UITouch的集合，可以检测触摸书鹣的属性，位置。
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            for touch in touches{
                let t = touch
                if t.tapCount == 2
                {
                    self.view.backgroundColor = UIColor.black
                }
                else if t.tapCount == 1
                {
                    self.view.backgroundColor = UIColor.red
                }
                print("event Begin")
            }
        }
        //一个或多个手指在视图或窗口触发移动事件
        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            for touch in touches{
                let t = touch
                print(t.location(in: self.view))
            }
        }
        //结束触摸事件触发此方法
       override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("event end")
        }
        //系统发出取消触发此方法，比如来电话
        override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
            print("event cancelled")
        }
    

}

