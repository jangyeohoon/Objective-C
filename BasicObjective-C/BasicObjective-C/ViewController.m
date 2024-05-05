//
//  ViewController.m
//  BasicObjective-C
//
//  Created by 장여훈 on 4/23/24.
//

#import "ViewController.h"
#import "Friend.h"
#import "Friend+Info.h"
#import "NSDate+Helpers.h"
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Cat *myCat = [[Cat alloc] init];
    
//    [_selectorTestButton addTarget:self action:btnSelector forControlEvents:UIControlEventTouchUpInside];
    
    Friend *aFriend = [[Friend alloc] init];
    
    [aFriend setNickName:@"안녕하세요 홍길동입니다."];
    
    NSString *info = [aFriend getInfo];
    NSLog(@"info: %@", info);
    
    NSDate *today = [NSDate date];
    
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:-(60.0f*60.0f*24.0f)];
    
    [today isToday];
    
    NSLog(yesterday ? @"오늘입니다" : @"오늘이 아닙니다");
    
}

- (void)onTestBtnClicked:(UIButton *) sender {
    NSLog(@"name: %@, btnTitle: %@",
          NSStringFromSelector(_cmd), sender.titleLabel.text);
}

/// 매개변수 없고, 반환값 또한 없다
/// [self sayHello];
- (void)sayHello {
    NSLog(@"안녕하세요!");
}


/// 반환이 있는 형태
///  - return 랜덤 숫자
- (int)getRandomNumber {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    /// 0~99 무작위 수
    return arc4random_uniform(100);
}

- (void)saySomethingWithParam:(NSInteger) number {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    NSLog(@"number: %d", number);
}

@end
