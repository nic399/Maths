//
//  main.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL play = true;
        NSLog(@"Welcome to the Maths Game: ");
        
        while (play) {
            char inputChar[127];
            fgets(inputChar, 127, stdin);
            NSString* inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
            NSString* trimmedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"You entered %@", trimmedString);

            AdditionQuestion * q1 = [AdditionQuestion new];
            [q1 printQuestion];
            
            
            
        }
        
        
        
        
        
        
    }
    return 0;
}
