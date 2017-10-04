//
//  main.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL play = true;
        NSLog(@"Welcome to the Maths Game: ");
        InputHandler* myInputHandler = [InputHandler new];
        ScoreKeeper* myScoreKeeper = [[ScoreKeeper alloc] init];
        
        while (play) {
            AdditionQuestion * q1 = [AdditionQuestion new];
            [q1 printQuestion];
            
            // NSString* inputString = [myInputHandler getInput];
            // int answer = [inputString intValue];
            // BOOL correct = [q1 checkAnswer:answer];
            
            [myScoreKeeper adjustScore:[q1 checkAnswer:[[myInputHandler getInput] intValue]]];
            NSLog(@"Time spent on this question: %.2f seconds", [q1 timeTakenInSec]);
            [myScoreKeeper printScore];
            
            NSLog(@"Continue playing? (y/n): ");
            NSString* continuePlaying = [[myInputHandler getInput] lowercaseString];
            if ([continuePlaying isEqualToString:@"n"] || [continuePlaying isEqualToString:@"quit"]) {
                play = false;
            }
            
            
        }
        
        
        
        
        
        
    }
    return 0;
}
