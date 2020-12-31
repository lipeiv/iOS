//
//  ViewController.m
//  switch
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


- (IBAction)switch:(id)sender {
    if([sender isOn] == YES){
        self.view.backgroundColor = [UIColor whiteColor];
    }
    else{
        self.view.backgroundColor = [UIColor blackColor];
    }
}

@end
