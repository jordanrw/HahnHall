//
//  ClassViewController.m
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ClassViewController.h"

@interface ClassViewController ()

@end

@implementation ClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"width: %f", self.view.bounds.size.width);
    self.maximumPrimaryColumnWidth = 415;
    self.preferredPrimaryColumnWidthFraction = .5;
    
    //self.splitViewController.preferredPrimaryColumnWidthFraction = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//954  |  415 + 539


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
