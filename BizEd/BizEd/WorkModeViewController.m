//
//  WorkModeViewController.m
//  BizEd
//
//  Created by Jordan White on 7/28/15.
//  Copyright (c) 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import "WorkModeViewController.h"

@interface WorkModeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation WorkModeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(UIButton *)sender {
    _label.text = @"Work Mode Yo";
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
