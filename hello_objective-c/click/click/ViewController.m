//
//  ViewController.m
//  click
//
//  Created by 李培培 on 2020/9/18.
//  Copyright © 2020 李培培. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"storyboard文件加载完成✅");
    UILabel* myLab = (UILabel*)[self.view viewWithTag:1];
    NSLog(@"找到标签🏷️");
    [myLab setText:@"通过viewcontrol改变文本内容."];
    NSLog(@"改变标签内容");
    // Do any additional setup after loading the view.
}



- (IBAction)login:(UIButton *)sender {
    [self.myLab setText:@"登陆"];
}

- (IBAction)ok:(UIButton *)sender {
    [self.myLab setText:@"你点击了确认按键"];
}
@end
