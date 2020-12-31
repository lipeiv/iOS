//
//  ViewController.h
//  click
//
//  Created by 李培培 on 2020/9/18.
//  Copyright © 2020 李培培. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *myLab;
@property (weak, nonatomic) IBOutlet UIButton *ok;
@property (strong, nonatomic) IBOutlet UIButton *login;
- (IBAction)ok:(UIButton *)sender;
- (IBAction)login:(UIButton *)sender;



@end

