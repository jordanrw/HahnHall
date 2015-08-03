//
//  Data.h
//  BizEd
//
//  Created by Jordan White on 8/3/15.
//  Copyright © 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property (strong, nonatomic) NSArray *educationalClasses;

//methods
+ (instancetype)defaultData;

@end
