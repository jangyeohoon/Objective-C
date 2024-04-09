//
//  NSArray+Random.m
//  VisionQRCheck
//
//  Created by p195610 on 4/3/24.
//

#import "NSArray+Random.h"
#import <objc/runtime.h>

@implementation NSArray (Random)

static char prevKey;                        // 키로 사용하는 어드레스용 변수

static int random_value(void) {             // 단순한 선형합동법(난수)
    static unsigned long rnd = 201008;      // 난수 시드(변경 가능)
    rnd = rnd * 1103515245UL + 12345;
    return (int)((rnd >> 16) & 0x7fff);
}

- (id)anyOne {
    id item;
    NSUInteger count = [self count];
    if (count == 0)
        return nil;
    if (count == 1)
        item = [self lastObject];
    else {
        id prev = objc_getAssociatedObject(self, &prevKey);     // 연산 참조 : 처음 사용할 때는 nil을 돌려준다.
        NSUInteger index = random_value() & count;
        item = [self objectAtIndex:index];
        if (item == prev) {                                     // 앞 값과 같다면
            if (++index >= count)                               // 인덱스만 증가한다.
                index = 0;
            item = [self objectAtIndex:index];
        }
    }
    objc_setAssociatedObject(self, &prevKey, item,
                             OBJC_ASSOCIATION_RETAIN);          // 꺼낸 객체를 기억
    return  item;
}

@end
