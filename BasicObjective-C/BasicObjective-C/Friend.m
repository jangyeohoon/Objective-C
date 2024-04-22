//
//  Friend.m
//  BasicObjective-C
//
//  Created by 장여훈 on 4/23/24.
//

#import <Foundation/Foundation.h>
#import "Friend.h"

@interface Friend ()
{
    NSString *_name;
}
@end

@implementation Friend

- (void)sayHello {
    
    self->_name = @"hi";
    
    self -> _nickName = @"홍길동";
    
    NSLog(@"안녕하세요! %@", _name);
}

+ (void)sayGoodbye {
    NSLog(@"잘가!");
}

+ (id)getAFriend {
    
    Friend *aFriend = [[Friend alloc] init];
    
    [aFriend setNickName: @"홍홍홍"];
    
    return aFriend;
}

@end
