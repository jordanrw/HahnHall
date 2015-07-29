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

@property (weak, nonatomic) IBOutlet UIButton *classButton;
@property (weak, nonatomic) IBOutlet UIButton *notesButton;
@property (weak, nonatomic) IBOutlet UIButton *workButton;

@end

@implementation ViewController
@synthesize container;


#pragma mark - general methods
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}



#pragma mark - buttons
- (IBAction)classButton:(UIButton *)sender {
    NSLog(@"class");
    
    ClassSelectionViewController *vc = [[ClassSelectionViewController alloc]init];
    [self addChildViewController:vc];
    
}


- (void)displayContentController: (UIViewController *)content {
    
    //[self addChildViewController:content];
    //content.view.frame = [self frame]
    //self.view addSubview:self.cu
    
}


- (IBAction)notesButton:(UIButton *)sender {
    
}


- (IBAction)workButton:(UIButton *)sender {
    
}


@end
