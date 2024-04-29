//
//  Friend+Info.m
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import "Friend+Info.h"

@implementation Friend (Info)

- (NSString *)getInfo{
    
    return [NSString stringWithFormat:@"친구이름 : %@", self.nickName];
}

@end
