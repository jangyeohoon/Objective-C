//
//  Friend.h
//  BasicObjective-C
//
//  Created by 장여훈 on 4/23/24.
//

#ifndef Friend_h
#define Friend_h
#import <UIKit/UIKit.h>

@interface Friend : NSObject

/// 외부에서 접근 가능 - 멤버 변수
@property NSString *nickName;

@property NSNumber *age;
 

/// 인스턴스 메서드 - 객체 생성 후 그 녀석이 가지고 있는 메서드
- (void)sayHello;

/// 클래스 메서드 - 객체 생성 X - 스태틱 메서드
+ (void)sayGoodbye;

/// 
+ (id)getAFriend;

@end

#endif /* Friend_h */
