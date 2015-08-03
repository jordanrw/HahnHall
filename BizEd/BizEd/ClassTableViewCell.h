//
//  ClassTableViewCell.h
//  BizEd
//
//  Created by Jordan White on 8/1/15.
//  Copyright © 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *classLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UIImageView *recordImage;

@property (weak, nonatomic) IBOutlet UIView *theView;


@end
