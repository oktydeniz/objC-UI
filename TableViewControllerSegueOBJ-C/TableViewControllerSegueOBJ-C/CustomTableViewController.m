//
//  CustomTableViewController.m
//  TableViewControllerSegueOBJ-C
//
//  Created by oktay on 19.06.2022.
//

#import "CustomTableViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
@synthesize arr1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p1 = [[Person alloc]init];
    p1.name = @"Oktay Deniz";
    p1.personNo = 1223;
    
    Person *p2 = [[Person alloc]init];
    p2.name = @"Deniz Oktay";
    p2.personNo = 1232;
    
    Person *p3 = [[Person alloc]init];
    p3.name = @"Deniz Deniz";
    p3.personNo = 1245;
    
    Person *p4 = [[Person alloc]init];
    p4.name = @"Oktay Oktay";
    p4.personNo = 1243;
    
    arr1 = [NSMutableArray arrayWithObjects:p1, p2, p3, p4, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return arr1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Person *p = [arr1 objectAtIndex:indexPath.row];
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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    DetailViewController *mvc = [segue destinationViewController];
    
    NSIndexPath *index = self.tableView.indexPathForSelectedRow;
    
    mvc.person = [arr1 objectAtIndex:index.row];
}


@end
