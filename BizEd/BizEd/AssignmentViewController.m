//
//  AssignmentViewController.m
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import "AssignmentViewController.h"
#import "AssignmentTableViewCell.h"


@interface AssignmentViewController ()

@end

@implementation AssignmentViewController

#pragma mark - set up
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Top View



#pragma mark - TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    AssignmentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"assignmentCell"];
    
    cell.titleLabel.text = @"Hello";
    cell.backgroundColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1];
    
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
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
