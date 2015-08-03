//
//  Data.m
//  BizEd
//
//  Created by Jordan White on 8/3/15.
//  Copyright © 2015 Two Beards and Fro, LLC. All rights reserved.
//

#import "Data.h"
#import "EducationalClass.h"

@implementation Data

#pragma mark - initializers
+ (instancetype)defaultData {
    static Data *defaultData = nil;
    
    if (!defaultData) {
        defaultData = [[Data alloc]initPrivate];
    }
    return defaultData;
}

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use initPrivate" userInfo:nil];
    return nil;
}

- (instancetype) initPrivate {
    self = [super init];
    
    if (!self.educationalClasses) {
        [self createEdClasses];
    }
    
    return self;
}

- (void)createEdClasses {
    EducationalClass *edClass1 = [[EducationalClass alloc]init];
    edClass1.title = @"Strategy Formulation";
    edClass1.time = @"9:30 AM - 10:45 AM T/Th";
    edClass1.location = @"MCB 308";
    edClass1.details = @"Virtual Exam due Friday (3/25) by 12:00 PM";
    
    EducationalClass *edClass2 = [[EducationalClass alloc]init];
    edClass2.title = @"Managerial Statistics";
    edClass2.time = @"11:00 AM - 12:15 AM T/Th";
    edClass2.location = @"MCB 332";
    edClass2.details = @"Focus for this week: Group Projects!!!";
    
    EducationalClass *edClass3 = [[EducationalClass alloc]init];
    edClass3.title = @"Finance";
    edClass3.time = @"2:15 PM - 3:30 PM T/Th";
    edClass3.location = @"SMYTH 146";
    edClass3.details = @"Member request submissions must be submitted before next lecture";
    
    EducationalClass *edClass4 = [[EducationalClass alloc]init];
    edClass4.title = @"Business Analytics";
    edClass4.time = @"9:00 AM - 10:30 AM M/W";
    edClass4.location = @"MCB 245";
    edClass4.details = @"Chapters 1-7 will be covered in class next lecture";
    
    EducationalClass *edClass5 = [[EducationalClass alloc]init];
    edClass5.title = @"Global Economic Environment";
    edClass5.time = @"11:00 AM - 12:15 AM T/Th";
    edClass5.location = @"SMYTH 331";
    edClass5.details = @"Academic Journal Assessment due Saturday by Noon!";
    
    _educationalClasses = [[NSArray alloc]initWithObjects:edClass1, edClass2, edClass3, edClass4, edClass5, nil];
}

@end
