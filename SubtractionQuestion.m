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
        
        if(self.rightValue >= self.leftValue){
            self.question = [NSString stringWithFormat:@"What is %ld - %ld?", self.rightValue, self.leftValue];
            self.answer = self.rightValue - self.leftValue;
        } else {
            self.question = [NSString stringWithFormat:@"What is %ld - %ld?", self.leftValue, self.rightValue];
            self.answer = self.leftValue - self.rightValue;
        }

        self.startTime = [NSDate date];
        self.operation = @"-";
    }
    return self;
}


@end
