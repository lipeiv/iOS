//
//  ViewController.m
//  segment2
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


- (IBAction)remove:(id)sender {
    NSUInteger count = self.segment.numberOfSegments;
    [self.segment removeSegmentAtIndex:count-1 animated:YES];
}


- (IBAction)add:(id)sender {
    NSUInteger count = self.segment.numberOfSegments;
    NSString* title = self.label.text;
    if([title length] > 0){
        [self.segment insertSegmentWithTitle:title atIndex:count animated:YES];
        self.label.text = @"";
    }
}
@end
