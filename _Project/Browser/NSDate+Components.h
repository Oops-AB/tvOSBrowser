//
//  NSDate+Components.h
//  Browser
//
//  Created by Johan Carlberg on 2022-04-27.
//  Copyright © 2022 High Caffeine Content. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Components)

- (NSDate *)dateWithComponents:(NSDateComponents *)components;

@end

NS_ASSUME_NONNULL_END
