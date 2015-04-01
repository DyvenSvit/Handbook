//
//  NSString+Utils.m
//  Handbook
//
//  Created by Admin on 4/1/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

-(int)parseInt
{
    // Intermediate
    NSString *numberString;
    
    NSScanner *scanner = [NSScanner scannerWithString:self];
    NSCharacterSet *numbers = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    
    // Throw away characters before the first number.
    [scanner scanUpToCharactersFromSet:numbers intoString:NULL];
    
    // Collect numbers.
    [scanner scanCharactersFromSet:numbers intoString:&numberString];
    
    // Result.
    int number = [numberString integerValue];
    
    return number;
}

@end
