//
//  QuestionFactory.m
//  Maths
//
//  Created by swcl on 2017-05-04.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory



+(Question*)generateQuestion{
    NSArray *questionSubClassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    int randomNum = arc4random_uniform(4);
    NSLog(@"Type:%@ randomNum:%d", questionSubClassNames[randomNum], randomNum);
    Question *questionObject = [[NSClassFromString(questionSubClassNames[randomNum])alloc]init];
    NSLog(@"question: %@", questionObject.question);
    return questionObject;
}


@end

