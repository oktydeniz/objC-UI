//
//  DetailViewController.h
//  TableViewNSNotificationCenter
//
//  Created by oktay on 19.06.2022.
//

#import <UIKit/UIKit.h>
#import "PersonModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *personNumber;
@property PersonModel *person;
@property (weak, nonatomic) IBOutlet UILabel *personName;
@end


NS_ASSUME_NONNULL_END
