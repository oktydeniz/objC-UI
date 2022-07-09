//
//  AddNewDataViewController.m
//  TableViewNSNotificationCenter
//
//  Created by oktay on 19.06.2022.
//

#import "AddNewDataViewController.h"

@interface AddNewDataViewController ()

@end

@implementation AddNewDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"New Person Form";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    PersonModel *p = [[PersonModel alloc]init];
    p.name = _personName.text;
    p.personNo = [_personNumber.text integerValue];
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:p forKey:@"person"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"new_person" object:nil userInfo:dic];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
