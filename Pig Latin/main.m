//
//  main.m
//  Pig Latin
//
//  Created by Erin Luu on 2016-11-04.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Extension.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Get String
        char x [255];
        fgets(x, 255, stdin);
        NSString * input = [NSString stringWithCString:x encoding:NSUTF8StringEncoding];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSArray * setOfWords = [input componentsSeparatedByString:@" "];
        
        for (NSString * word in setOfWords){
            NSString * pigWord = [word stringByPigLatinization];
            NSLog(@"%@", pigWord);
        }
    }
    return 0;
}
