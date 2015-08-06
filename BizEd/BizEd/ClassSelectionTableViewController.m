//
//  ClassSelectionTableViewController.m
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import "ClassSelectionTableViewController.h"
#import "AssignmentViewController.h"

#import "ClassTableViewCell.h"
#import "Data.h"
#import "EducationalClass.h"

@interface ClassSelectionTableViewController ()

@property (nonatomic, weak) NSArray *edClasses;

@end



@implementation ClassSelectionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Data *data = [Data defaultData];
    _edClasses = data.educationalClasses;
    
    
    //NSLog(@"the ones in ClassTableView: %@",)
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.edClasses count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ClassTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"classCell" forIndexPath:indexPath];
    
    // Configure the cell...
    EducationalClass *clss = [self.edClasses objectAtIndex:indexPath.row];
    cell.classLabel.text = clss.title;
    cell.timeLabel.text = clss.time;
    cell.locationLabel.text = clss.location;
    cell.noteLabel.text = clss.details;
    
//    cell.backgroundView = cell.theView;
//    cell.selectedBackgroundView = cell.theView;
//    cell.theView.backgroundColor = [UIColor redColor];

    
    UIView *selectionColor = [[UIView alloc]init];
    selectionColor.backgroundColor = [UIColor colorWithRed:0.26 green:0.27 blue:0.28 alpha:1];
    cell.selectedBackgroundView = selectionColor;
    
    cell.classLabel.highlightedTextColor = [UIColor whiteColor];
    cell.timeLabel.highlightedTextColor = [UIColor whiteColor];
    cell.locationLabel.highlightedTextColor = [UIColor whiteColor];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld", (long)indexPath.row);
    
    EducationalClass *edClass = [self.edClasses objectAtIndex:indexPath.row];
    [self.delegate didSelectEdClass:edClass];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
