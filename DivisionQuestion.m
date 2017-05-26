//
//  DivisionQuestion.m
//  Maths
//
//  Created by swcl on 2017-05-04.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self = [super init]) {
        self.rightValue = (arc4random_uniform(10)+1)*self.leftValue;
        self.question = [NSString stringWithFormat:@"What is %ld divided by %ld?", self.rightValue, self.leftValue];
        self.answer = self.rightValue / self.leftValue;
        self.startTime = [NSDate date];
        self.operation = @"division";
    }
    return self;
}


@end
