//
//  main.m
//  Maths 2
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n");
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
//        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameOn){
            Question *question =  [QuestionFactory generateQuestion];
            NSLog(@"%@", question.question);
            
            printf("What is the answer: ");
            NSString* inputStr = [inputHandler getInput];
            
            if ([inputStr isEqual: @"quit"]){
                gameOn = NO;}
            
            NSInteger answer = [question getAnswer];
            NSInteger intValue = [inputStr integerValue];
            if (intValue == answer){
                NSLog(@"Right!");
                [scoreKeeper IncreaseRight];
                NSLog(@"Your have %ld right, %ld wrong", (long)scoreKeeper.right, (long)scoreKeeper.wrong);
        
            }else{
                NSLog(@"Wrong! The correct answer is: %ld", answer);
                [scoreKeeper IncreaseWrong];
                NSLog(@"Your have %ld right, %ld wrong", (long)scoreKeeper.right, (long)scoreKeeper.wrong);
                }
            
            [scoreKeeper CalcPercent];
            [questionManager.questions addObject:question];
            NSLog(@"Your have gotten %ld%% right", (long)scoreKeeper.percent);
            [questionManager timeOutput];
            
        }
        
        
    }
    return 0;

}

