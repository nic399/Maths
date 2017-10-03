//
//  AdditionQuestion.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "AdditionQuestion.h"


@implementation AdditionQuestion
    
    
    -(AdditionQuestion*)init
    {
        self = [super init];
        if (self)
        {
            self.a = arc4random_uniform(100);
            self.b = arc4random_uniform(100);
        }
        
        return self;
        
    }
    
    -(void) printQuestion
    {
        NSLog(@"%i + %i = ", self.a, self.b);
    }
    
    -(BOOL) checkAnswer:(int)guess
    {
        
        return self.a + self.b == guess;
    }
    
    
@end
