//
//  main.m
//  BasicObjective-C
//
//  Created by 장여훈 on 4/23/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Pet.h"
#import "Cat.h"
#import "BlockTest.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        BlockTest *blockTest = [[BlockTest alloc] init];
        
        [blockTest someFunctionWithBlockParam:^(NSString *name) {
            NSLog(@"%s, line: %d, %@", __func__, __LINE__, name);
        }];
        
        [blockTest someFunctionWithTypeDefBlockParam:^(NSString *name) {
            NSLog(@"%s, line: %d, %@", __func__, __LINE__, name);
        }];
        
        [blockTest someFunction];
        
        Pet *myCat = [[Pet alloc] init];
        
        [myCat doCry:@"개냥이"];
        
        Cat *myCat1 = [[Cat alloc] init];
        Cat *myCat2 = [[Cat alloc] initWithAge:10];
        Cat *myCat3 = [[Cat alloc] initWithName:@"개냥이"];
        Cat *myCat4 = [[Cat alloc] initWithNameAndAge:@"야옹이" age:3];
        
        [blockTest someFunctionWithParam:@"hihi"];
        [blockTest someFunctionWithMultiParams:@"hihihi" withAge:10];
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
