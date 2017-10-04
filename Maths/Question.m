//
//  Question.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Question.h"


@implementation Question


-(Question*)init
{
    self = [super init];
    if (self)
    {
        self.rightVal = arc4random_uniform(100);
        self.leftVal = arc4random_uniform(100);
        startTime = [NSDate date];
    }
    
    return self;
    
}

-(void) printQuestion
{
    NSLog(@"%i + %i = ", self.rightVal, self.leftVal);
}

-(BOOL) checkAnswer:(int)guess
{
    endTime = [NSDate date];
    return self.rightVal + self.leftVal == guess;
}

-(double)timeTakenInSec {
    
    return [endTime timeIntervalSinceDate:startTime];
}

@end
