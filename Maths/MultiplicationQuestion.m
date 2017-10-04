//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(void)printQuestion{
    NSLog(@"%i * %i = ", self.leftVal, self.rightVal);
    
}

-(BOOL)checkAnswer:(int)guess {
    endTime = [NSDate date];
    return self.rightVal * self.leftVal == guess;
}

@end
