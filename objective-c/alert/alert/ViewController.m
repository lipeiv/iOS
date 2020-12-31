//
//  ViewController.m
//  alert
//
//  Created by 李培培 on 2020/9/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)clicked:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]
        initWithTitle:@"提示"
        message:@"我在学习警告框的用法"
        delegate:self
        cancelButtonTitle:@"确定"
        otherButtonTitles:@"按钮1",@"",@"",nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView
    clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString* msg = [NSString stringWithFormat:@"您点击了第%d个按钮"
                         , buttonIndex];
        // 创建UIAlertView控件
        UIAlertView *alert = [[UIAlertView alloc]
            initWithTitle:@"提示" // 指定标题
            message:msg  // 指定消息
            delegate:nil
            cancelButtonTitle:@"确定" // 为底部的取消按钮设置标题
            // 不设置其他按钮
            otherButtonTitles:nil];
        [alert show];
}
@end
