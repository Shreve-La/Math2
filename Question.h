//
//  Question.h
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSString *operation;
@property (nonatomic) NSInteger userAnswer;

// -(NSTimeInterval)timeToAnswer;
-(void)generateQuestion;
- (NSInteger)getAnswer;
- (NSInteger)answerTime;



@end
