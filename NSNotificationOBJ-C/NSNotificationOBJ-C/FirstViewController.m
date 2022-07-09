//
//  FirstViewController.m
//  NSNotificationOBJ-C
//
//  Created by oktay on 19.06.2022.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)firstButton:(id)sender {
    
    //NSNotificationCenter
    
    // sender -> gonderici
    // observer -> dinleyici
    // observerin cagiracagi metod
    NSNumber *nr1 = [NSNumber numberWithInt:1];
    NSMutableDictionary *userInf = [NSMutableDictionary dictionary];
    [userInf setObject:nr1 forKey:@"dnm"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"not1" object:nil userInfo:userInf];
}
@end
