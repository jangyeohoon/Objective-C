//
//  Dummy.m
//  BasicObjective-C
//
//  Created by 장여훈 on 5/15/24.
//

#import "Dummy.h"

@implementation Dummy

- (void)dealloc
{
    [super dealloc];
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
}

@end
