//
//  NSDateComponents+String.m
//  Browser
//
//  Created by Johan Carlberg on 2022-04-27.
//  Copyright © 2022 Oops AB. All rights reserved.
//

#import "NSDateComponents+String.h"

@implementation NSDateComponents (String)

+ (NSDateComponents *)componentsFromString:(NSString *)string {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    NSArray<NSString *> *items = [string componentsSeparatedByString:@":"];

    if ([[items firstObject] length] > 0) {
        [components setHour:[[items firstObject] integerValue]];
    }
    if ([items count] > 1) {
        [components setMinute:[items[1] integerValue]];
    }
    if ([items count] > 2) {
        [components setSecond:[items[2] integerValue]];
    }

    return components;
}

@end
