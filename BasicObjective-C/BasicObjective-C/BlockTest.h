//
//  BlockTest.h
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString *MyString;

typedef void(^DoneBlock)(NSString *);

@interface BlockTest : NSObject
{
    NSString *name;
    MyString myName;
    
    void (^someBlock)(void);
    void (^someBlockWithParam)(NSString *);
    void (^someBlockWithMultiParam)(NSString *, int);
}
- (void)someFunction;

- (void)someFunctionWithParam:(NSString *)name;

- (void)someFunctionWithMultiParams:(NSString *)name withAge:(int)age;

- (void)someFunctionWithBlockParam:(void(^)(NSString *))done;

- (void)someFunctionWithTypeDefBlockParam:(DoneBlock)done;

@end

NS_ASSUME_NONNULL_END
