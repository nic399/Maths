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
    }
    return self;
}

-(void)addNewQuestion:(AdditionQuestion *)question {
    [self.questions addObject:question];
}

-(void)print {
    
}

@end
