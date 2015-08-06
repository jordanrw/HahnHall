//
//  ClassSelectionTableViewController.h
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EducationalClass.h"

@class AssignmentViewController;

@protocol EducationClassDelegate <NSObject>

- (void)didSelectEdClass:(EducationalClass*)edClass;

@end



@interface ClassSelectionTableViewController : UITableViewController

@property (nonatomic, strong) id<EducationClassDelegate> delegate;
@property (nonatomic, strong) AssignmentViewController *assignmentVC;

@end
