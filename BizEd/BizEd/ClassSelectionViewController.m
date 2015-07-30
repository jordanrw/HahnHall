//
//  ClassSelectionViewController.m
//  BizEd
//
//  Created by Jordan White on 7/28/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ClassSelectionViewController.h"

@interface ClassSelectionViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ClassSelectionViewController

-(void)bakeCookies {
    
}

- (void)eatCookies {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(UIButton *)sender {
    _label.text = @"Classes";
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
