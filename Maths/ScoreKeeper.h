//
//  ScoreKeeper.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "general_defines.h"

@interface ScoreKeeper : NSObject

@property int correct;
@property int wrong;

-(ScoreKeeper*) init;
-(void) printScore;
-(void) adjustScore: (BOOL) isCorrect;

@end
