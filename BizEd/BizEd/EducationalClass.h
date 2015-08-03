//
//  EducationalClass.h
//  BizEd
//
//  Created by Jordan White on 8/2/15.
//  Copyright © 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EducationalClass : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *details;

@property (nonatomic) BOOL isLive;

@end
