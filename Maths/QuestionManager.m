//
//  QuestionManager.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

-(instancetype)init {
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc] init];
        self.totalTime = 0.0;
    }
    return self;
}

-(void)addNewQuestion:(AdditionQuestion *)question {
    [self.questions addObject:question];
    self.totalTime += question.timeTakenInSec;
}

-(NSString*)timeOutput {
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs",
            self.totalTime,
            self.totalTime/[self.questions count]];
}

@end
