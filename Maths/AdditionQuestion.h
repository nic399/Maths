//
//  AdditionQuestion.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject
    
    @property int a;
    @property int b;
    
    -(AdditionQuestion *) init;
    -(void) printQuestion;
    -(BOOL) checkAnswer: (int) guess;

@end
