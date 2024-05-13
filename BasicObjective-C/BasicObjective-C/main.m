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

typedef struct{
    NSString *name;
    NSInteger age;
}Dog;

struct coder {
    NSString *name;
    NSInteger age;
};

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
        
        int age = 3;
        float percent = 0.3;
        long double pi = 3.14159265358979;
        NSNumber *count = @10;
        
        NSLog(@"%s, line: %d, %lu", __func__, __LINE__, sizeof(age));
        NSLog(@"%s, line: %d, %lu", __func__, __LINE__, sizeof(percent));
        NSLog(@"%s, line: %d, %lu", __func__, __LINE__, sizeof(pi));
        NSLog(@"%s, line: %d, %lu", __func__, __LINE__, sizeof(count));
        
        NSObject *someObj = [[NSObject alloc] init];
        NSLog(@"%s, line: %d, %lu", __func__, __LINE__, sizeof(someObj));
        
        struct coder aCoder;
        
        aCoder.name = @"yh";
        aCoder.age = 20;
        
        // new
        Cat *cuteCat = [Cat new];
        id smallCat = [Cat new];
        
        Dog myDog;
        
        myDog.name = @"멍멍이";
        myDog.age = 2;
        
        Dog *myDogRef = &myDog;
        
        NSString *myDogName = myDogRef->name;
        
        myDogRef->name = @"멍뭉이";
        
        NSString *checkMyDogName = myDogRef->name;
        
        [blockTest someFunctionWithParam:@"hihi"];
        [blockTest someFunctionWithMultiParams:@"hihihi" withAge:10];
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
