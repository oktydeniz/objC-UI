//
//  SecondViewController.m
//  NSNotificationOBJ-C
//
//  Created by oktay on 19.06.2022.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize time;
@synthesize secondLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    time = 0;
    
    
    // Do any additional setup after loading the view.
    //observe
   
   [[NSNotificationCenter defaultCenter ] addObserver:self selector:@selector(receivedNotification:) name:@"not1" object:nil];
}
-(void) receivedNotification:(NSNotification *) notification{
    NSMutableDictionary *dic = notification.userInfo;
    NSNumber *number = [dic objectForKey:@"dnm"];
    
    time++;
    secondLabel.text = [NSString stringWithFormat:@" %d", time];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
