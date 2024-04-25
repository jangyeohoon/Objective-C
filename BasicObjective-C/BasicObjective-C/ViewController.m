//
//  ViewController.m
//  BasicObjective-C
//
//  Created by 장여훈 on 4/23/24.
//

#import "ViewController.h"
#import "Friend.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SEL btnSelector = @selector(onTestBtnClicked:);
    
    Friend *createdFriend = [Friend getAFriend];
    
    NSLog(@"createdFriend : %@", [createdFriend nickName]);
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

- (int)getRandomNumber {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    /// 0~99 무작위 수
    return arc4random_uniform(100);
}

@end
