//
//  InputHandler.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*) getInput {
    char inputChar[127];
    fgets(inputChar, 127, stdin);
    NSString* inputString = [NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding];
    NSString* trimmedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return trimmedString;
}

@end
