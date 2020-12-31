//
//  ViewController.h
//  segment2
//
//  Created by 李培培 on 2020/9/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UITextField *label;
- (IBAction)add:(id)sender;
- (IBAction)remove:(id)sender;

@end

