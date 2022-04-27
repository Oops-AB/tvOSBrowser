//
//  NSDate+Components.m
//  Browser
//
//  Created by Johan Carlberg on 2022-04-27.
//  Copyright © 2022 High Caffeine Content. All rights reserved.
//

#import "NSDate+Components.h"

@implementation NSDate (Components)

- (NSDate *)dateWithComponents:(NSDateComponents *)components {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitNanosecond
                                                   fromDate:self];

    if ([components era] != NSDateComponentUndefined) {
        [dateComponents setEra:[components era]];
    }
    if ([components year] != NSDateComponentUndefined) {
        [dateComponents setYear:[components year]];
    }
    if ([components month] != NSDateComponentUndefined) {
        [dateComponents setMonth:[components month]];
    }
    if ([components day] != NSDateComponentUndefined) {
        [dateComponents setDay:[components day]];
    }
    if ([components hour] != NSDateComponentUndefined) {
        [dateComponents setHour:[components hour]];
    }
    if ([components minute] != NSDateComponentUndefined) {
        [dateComponents setMinute:[components minute]];
    }
    if ([components second] != NSDateComponentUndefined) {
        [dateComponents setSecond:[components second]];
    }
    if ([components nanosecond] != NSDateComponentUndefined) {
        [dateComponents setNanosecond:[components nanosecond]];
    }

    return [calendar dateFromComponents:dateComponents];
}

@end
