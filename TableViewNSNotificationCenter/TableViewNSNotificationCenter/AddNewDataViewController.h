//
//  AddNewDataViewController.h
//  TableViewNSNotificationCenter
//
//  Created by oktay on 19.06.2022.
//

#import <UIKit/UIKit.h>
#import "PersonModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface AddNewDataViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *personNumber;
@property (weak, nonatomic) IBOutlet UITextField *personName;
- (IBAction)save:(id)sender;

@end

NS_ASSUME_NONNULL_END
