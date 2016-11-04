//
//  NSString+Extension.m
//  Pig Latin
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

-(NSString *)stringByPigLatinization {
    
    NSCharacterSet * vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiuo"];
    NSScanner * pigScanner = [NSScanner scannerWithString:self];
    NSString *theText;
    [pigScanner scanUpToCharactersFromSet:vowels intoString:&theText];
    
    NSString *newStr = [self substringWithRange:NSMakeRange([theText length], [self length]-[theText length])];
    
    if (self != theText) {}
    else{newStr = [newStr stringByAppendingString:theText];}
    
    if ([self hasPrefix: @"a"]||[self hasPrefix: @"e"]||[self hasPrefix: @"i"]||[self hasPrefix: @"o"]||[self hasPrefix: @"u"]) {
            newStr = [newStr stringByAppendingString:@"way"];
    }else{newStr = [newStr stringByAppendingString:@"ay"];}
    return newStr;
    }
@end
