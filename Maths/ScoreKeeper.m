//
//  ScoreKeeper.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(ScoreKeeper*) init{
    self = [super init];
    if (self) {
        _wrong=0;
        _correct=0;
    }
    return self;
}

-(void) adjustScore:(BOOL)isCorrect {
    if (isCorrect) {
        NSLog(@"Right!");
        _correct++;
    }
    else {
        NSLog(@"Wrong!");
        _wrong++;
    }
}

-(void) printScore {
    float total = (float) _correct + (float) _wrong;
    float percentage = (float)_correct/total* 100;
    NSLog(@"Score: %i right, %i wrong ---- %.2f%%", _correct, _wrong, percentage);
}

@end
