//
//  BlockTest.m
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import "BlockTest.h"

@implementation BlockTest

- (instancetype)init
{
    self = [super init];
    if (self) { 
        someBlock = ^{
            NSLog(@"%s, line: %d, %@",__func__, __LINE__, @"someBlock 호출");
        };
        someBlockWithParam = ^(NSString *name) {
            NSLog(@"%s, line: %d, name: %@",__func__, __LINE__, name);
        };
        someBlockWithMultiParam = ^(NSString *name, int age){
            NSLog(@"%s, line: %d, name: %@, age: %d",__func__, __LINE__, name, age);
        };
    }
    return self;
}

- (void)someFunction {
    NSLog(@"%s, line: %d, %@",__func__, __LINE__, @"일반 함수 호출");
    someBlock();
}

- (void)someFunctionWithParam:(NSString *)name {
    NSLog(@"%s, line: %d, %@",__func__, __LINE__, @"");
    someBlockWithParam(name);
}

- (void)someFunctionWithMultiParams:(NSString *)name withAge:(int)age {
    NSLog(@"%s, line: %d, %@",__func__, __LINE__, @"");
    someBlockWithMultiParam(name, age);
}

- (void)someFunctionWithBlockParam:(void(^)(NSString *))done;
{
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
    done(@"완료");
}

- (void)someFunctionWithTypeDefBlockParam:(DoneBlock)done;
{
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
    done(@"DoneBlock완료");
}
@end
