//
//  AssignmentViewController.m
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "AssignmentViewController.h"
#import "AssignmentTableViewCell.h"


@interface AssignmentViewController ()

@end

@implementation AssignmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    AssignmentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"assignmentCell"];
    if (cell == nil) {
        cell = [[AssignmentTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"assignmentCell"];
    }
    
    
    
    return cell;
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
