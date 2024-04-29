//
//  main.m
//  BasicObjective-C
//
//  Created by 장여훈 on 4/23/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Pet.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        Pet *myCat = [[Pet alloc] init];
        
        [myCat doCry:@"개냥이"];
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
