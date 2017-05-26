//
//  QuestionFactory.h
//  Maths
//
//  Created by swcl on 2017-05-04.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

+(Question*)generateQuestion;

@end
