//
//  QuestionManager.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property NSMutableArray<AdditionQuestion*> *questions;
@property double totalTime;

-(instancetype)init;
-(void)addNewQuestion:(AdditionQuestion*)question;
-(NSString*)timeOutput;

@end
