//
//  NSDate+Helpers.m
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import "NSDate+Helpers.h"

@implementation NSDate (Helpers)

- (BOOL)isToday {
    return [[NSCalendar currentCalendar] isDateInToday:self];
}

@end
