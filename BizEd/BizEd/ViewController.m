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
    
    ClassSelectionViewController *cvc = [[ClassSelectionViewController alloc]init];
    [cvc.view setBackgroundColor:[UIColor redColor]];
    [self displayContentController:cvc];
    
//    UILabel *label = [[UILabel alloc]init];
//    label.text = @"BOOOM";
//    [self.container addSubview:label];
  
    /* add it but not in the container
    ClassSelectionViewController *cvc = [[ClassSelectionViewController alloc]init];
    [cvc.view setBackgroundColor:[UIColor purpleColor]];
    [self addChildViewController:cvc];
    [cvc didMoveToParentViewController:self];
    
    [self.view addSubview:cvc.view];
     */

}


- (void)displayContentController: (UIViewController *)vc {

    [self addChildViewController:vc];
    //content.view.frame
    [self.container addSubview:vc.view];
    [vc didMoveToParentViewController:self];
}

//- (CGRect)frameForContent {
//    CGRect *cg = [cGRect
//    return cg;
//}


- (IBAction)notesButton:(UIButton *)sender {
    
}


- (IBAction)workButton:(UIButton *)sender {
    
}


@end
