//
//  DetailViewController.m
//  TableViewNSNotificationCenter
//
//  Created by oktay on 19.06.2022.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize person;
@synthesize personNumber;
@synthesize  personName;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%d  %@ ",person.personNo, person.name );
    
    // Do any additional setup after loading the view.
    personName.text = person.name;
    personNumber.text = [NSString stringWithFormat:@"%d", person.personNo];
    
    self.title = person.name;
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
