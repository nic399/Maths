//
//  QuestionManager.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray<Question*> *questions;
@property double totalTime;

-(instancetype)init;
-(void)addNewQuestion:(Question*)question;
-(NSString*)timeOutput;

@end
