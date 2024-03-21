//
//  ViewController.m
//  ObjCounter
//
//  Created by 장여훈 on 3/15/24.
//

#import "ViewController.h"

// 클래스의 Private 멤버는 이곳에 적는다
@interface ViewController ()

// *은 C의 포인터 스타일과 일맥상통
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@property int count;

@end

// 클래스의 실제 구현부를 적는다
@implementation ViewController

//
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.count = 0;
    
    [self updateLabel];
    
}

- (void)updateLabel {
    NSString *text = [[NSString alloc] initWithFormat:@"%d", self.count];
    // 프로퍼티는 self랑 사용
    self.countLabel.text = text;
}

- (IBAction)plusOne:(id)sender {
    self.count++;
    
    [self updateLabel];
}
- (IBAction)resetButton:(id)sender {
    self.count = 0;
    
    [self updateLabel];
}
@end
