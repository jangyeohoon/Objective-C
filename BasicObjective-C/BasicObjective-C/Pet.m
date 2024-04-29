//
//  Pet.m
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import "Pet.h"

@interface Pet()
{
    NSNumber *age;
}
/// 재선언
@property (readwrite, copy) NSString *name;

@end

@implementation Pet

- (id)init {
    self = [super init];
    
    if (self) {
        age = [NSNumber numberWithInt:3];
    }
    
    return  self;
}

/// 울기
/// - Parameter name: 이름
- (void)doCry:(NSString *)name {
    
    /// 프로퍼티 자체가 readonly라서 setter가 없는 상황이지만
    /// 클래스 익스텐션으로 내부적으로는 프로퍼티를 재선언하고 readwrite로 설정했기 때문에 사용 가능하다.
    [self setName:name];
    
    NSLog(@"doCry - name: %@", _name);
}

@end
