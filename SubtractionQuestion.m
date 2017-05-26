//
//  SubtractionQuestion.m
//  Maths
//
//  Created by swcl on 2017-05-04.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self = [super init]) {
        self.question = [NSString stringWithFormat:@"What is %ld - %ld?", self.rightValue, self.leftValue];
        self.answer = self.rightValue - self.leftValue;
        self.startTime = [NSDate date];
        self.operation = @"-";
    }
    return self;
}


@end
