//
//  ViewController.m
//  BizEd
//
//  Created by Jordan White on 7/28/15.
//  Copyright (c) 2015 Two Beards and Fro. All rights reserved.
//

#import "ViewController.h"
#import "ClassSelectionViewController.h"
#import "NotesViewController.h"
#import "WorkModeViewController.h"


@interface ViewController ()

@property (strong, nonatomic) UIStoryboard *storyBoard;
@property (weak, nonatomic) IBOutlet UIButton *classButton;
@property (weak, nonatomic) IBOutlet UIButton *notesButton;
@property (weak, nonatomic) IBOutlet UIButton *workButton;

@end


@implementation ViewController
@synthesize container;


#pragma mark - general methods
- (void)viewDidLoad {
    [super viewDidLoad];
    _storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
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
    
    ClassSelectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"class"];
    [self displayContentController:vc];
    

    
    _classButton.selected = YES;
}

- (IBAction)notesButton:(UIButton *)sender {
    NotesViewController *vc = [_storyBoard instantiateViewControllerWithIdentifier:@"notes"];
    [self displayContentController:vc];
}

- (IBAction)workButton:(UIButton *)sender {
    WorkModeViewController *vc = [_storyBoard instantiateViewControllerWithIdentifier:@"work"];
    [self displayContentController:vc];
}

- (void)displayContentController: (UIViewController *)vc {
    
    [self addChildViewController:vc];
    //content.view.frame
    [self.container addSubview:vc.view];
    [vc didMoveToParentViewController:self];
}


@end
