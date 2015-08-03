//
//  AssignmentTableViewCell.h
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright (c) 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssignmentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dueLabel;

@property (weak, nonatomic) IBOutlet UIButton *continueButton;

@end
