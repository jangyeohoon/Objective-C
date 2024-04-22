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
    Friend *createdFriend = [Friend getAFriend];
    
    NSLog(@"createdFriend : %@", [createdFriend nickName]);
}


@end
