//
//  QuestionFactory.m
//  Maths
//
//  Created by swcl on 2017-05-04.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "QuestionFactory.h"
@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        }
    return self;
}


-(Question*)generateQuestion{
    NSArray *questionSubClassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    int randomNum = arc4random_uniform(4);
    NSLog(@"%d", randomNum);
//  Question *question = [[NSClassFromString(questionSubClassNames[randomNum])alloc]init];
    NSLog(@"%@", questionSubClassNames[randomNum]);
    Question *question = [[NSClassFromString(questionSubClassNames[0])alloc]init];

    return question;
}



@end

