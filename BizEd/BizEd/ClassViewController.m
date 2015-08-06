//
//  ClassViewController.m
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ClassViewController.h"
#import "ClassSelectionTableViewController.h"
#import "AssignmentViewController.h"

@interface ClassViewController ()

@end

@implementation ClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //setting the width of the tableview
    NSLog(@"width: %f", self.view.bounds.size.width);
    self.maximumPrimaryColumnWidth = 415;
    self.preferredPrimaryColumnWidthFraction = .5;
    //self.splitViewController.preferredPrimaryColumnWidthFraction = 0.5;
    
    AssignmentViewController *detailVC = (AssignmentViewController *)[self.viewControllers objectAtIndex:1];
    ClassSelectionTableViewController *masterVC = (ClassSelectionTableViewController *)[[self.viewControllers objectAtIndex:0] topViewController];
    
    //talker            //receiver
    masterVC.delegate = detailVC;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
