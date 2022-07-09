//
//  CustomTableControllerTableViewController.m
//  TableViewNSNotificationCenter
//
//  Created by oktay on 19.06.2022.
//

#import "CustomTableControllerTableViewController.h"

@interface CustomTableControllerTableViewController ()

@end

@implementation CustomTableControllerTableViewController
@synthesize arr1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PersonModel *p1 = [[PersonModel alloc]init];
    p1.name = @"Oktay Deniz";
    p1.personNo = 1223;
    
    PersonModel *p2 = [[PersonModel alloc]init];
    p2.name = @"Deniz Oktay";
    p2.personNo = 1232;
    
    PersonModel *p3 = [[PersonModel alloc]init];
    p3.name = @"Deniz Deniz";
    p3.personNo = 1245;
    
    PersonModel *p4 = [[PersonModel alloc]init];
    p4.name = @"Oktay Oktay";
    p4.personNo = 1243;
    
    arr1 = [NSMutableArray arrayWithObjects:p1, p2, p3, p4, nil];
    
    [[NSNotificationCenter defaultCenter ] addObserver:self selector:@selector(receivedNotification:) name:@"new_person" object:nil];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void) receivedNotification:(NSNotification *)notification{
    
    NSMutableDictionary *dic = notification.userInfo;
    PersonModel *p = [dic objectForKey:@"person"];
    [arr1 addObject:p];
    [self.tableView reloadData];
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return arr1.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    PersonModel *p = [arr1 objectAtIndex:indexPath.row];
    cell.textLabel.text = p.name;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if(![segue.identifier isEqual:@"sg2"]){
        DetailViewController *mvc = [segue destinationViewController];
        
        NSIndexPath *index = self.tableView.indexPathForSelectedRow;
        
        mvc.person = [arr1 objectAtIndex:index.row];
    }
    
}
@end
