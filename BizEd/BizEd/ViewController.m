//
//  ViewController.m
//  BizEd
//
//  Created by Jordan White on 7/28/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ViewController.h"

#import "ClassViewController.h"
#import "NotesViewController.h"
#import "WorkModeViewController.h"


@interface ViewController ()

@property (strong, nonatomic) UIStoryboard *storyBoard;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end


@implementation ViewController
@synthesize container;


#pragma mark - general methods
- (void)viewDidLoad {
    [super viewDidLoad];
    _storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    //load the class page
    ClassViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"class"];
    [self displayContentController:vc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}



#pragma mark - SideView (buttons)
- (IBAction)classButton:(UIButton *)sender {
    
    ClassViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"class"];
    _titleLabel.text = @"Class Selection";
    [self displayContentController:vc];
}

- (IBAction)notesButton:(UIButton *)sender {
    NotesViewController *vc = [_storyBoard instantiateViewControllerWithIdentifier:@"notes"];
    _titleLabel.text = @"Notes";
    [self displayContentController:vc];
}

- (IBAction)workButton:(UIButton *)sender {
    WorkModeViewController *vc = [_storyBoard instantiateViewControllerWithIdentifier:@"work"];
    _titleLabel.text = @"Work Mode";
    [self displayContentController:vc];
}

- (void)displayContentController: (UIViewController *)vc {
    
    [self addChildViewController:vc];
    //content.view.frame
    [self.container addSubview:vc.view];
    [vc didMoveToParentViewController:self];
}


@end
