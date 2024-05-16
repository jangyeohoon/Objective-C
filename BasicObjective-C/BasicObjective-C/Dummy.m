//
//  Dummy.m
//  BasicObjective-C
//
//  Created by 장여훈 on 5/15/24.
//

#import "Dummy.h"

@implementation Dummy

- (id)initWithNameAndAge:(NSString *)nameValue age:(int)ageValue {
    self = [super init];
    if (self) {
        age = ageValue;
        name = nameValue;
    }
    return  self;
}

- (void)dealloc
{
    [super dealloc];
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
}


- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    NSLog(@"%s, line: %d, %@",__func__, __LINE__, @"<#내용#>");
    Dummy *clone = [[self class] allocWithZone:zone];
    clone->name = name;
    clone->age = age;
    return clone;
}

@end
