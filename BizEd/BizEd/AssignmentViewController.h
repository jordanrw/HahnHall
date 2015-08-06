//
//  AssignmentViewController.h
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassSelectionTableViewController.h"

@interface AssignmentViewController : UIViewController <UISplitViewControllerDelegate, UITableViewDataSource, UITableViewDelegate, EducationClassDelegate>

@property (strong, nonatomic) IBOutlet UILabel *topLabel;
@property (strong, nonatomic) IBOutlet UILabel *assignmentLabel;
@property (strong, nonatomic) IBOutlet UIWebView *livePreviewView;


@end
