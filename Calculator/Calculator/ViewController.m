//
//  ViewController.m
//  Calculator
//
//  Created by 장여훈 on 3/15/24.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNumberField;

@property (weak, nonatomic) IBOutlet UITextField *secondNumberField;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.resultLabel.text = @"";
}

- (IBAction)add:(id)sender {
    int firstNumber = self.firstNumberField.text.intValue;
    int secondNumber = self.secondNumberField.text.intValue;
    
    NSLog(@"firstNumber: %d", firstNumber);
    NSLog(@"secondNumber: %d", secondNumber);
    
    int result = [self addInt:firstNumber with:secondNumber];
    
    NSLog(@"Result Number: %d", result);
    
    self.resultLabel.text = [[NSString alloc]initWithFormat:@"%d", result];
}

- (IBAction)minus:(id)sender {
    int firstNumber = self.firstNumberField.text.intValue;
    int secondNumber = self.secondNumberField.text.intValue;
    
    NSLog(@"firstNumber: %d", firstNumber);
    NSLog(@"secondNumber: %d", secondNumber);
    
    int result = [self minusInt:firstNumber with:secondNumber];
    
    NSLog(@"Result Number: %d", result);
    
    self.resultLabel.text = [[NSString alloc]initWithFormat:@"%d", result];
}
- (IBAction)multi:(id)sender {
    int firstNumber = self.firstNumberField.text.intValue;
    int secondNumber = self.secondNumberField.text.intValue;
    
    NSLog(@"firstNumber: %d", firstNumber);
    NSLog(@"secondNumber: %d", secondNumber);
    
    int result = [self multiInt:firstNumber with:secondNumber];
    
    NSLog(@"Result Number: %d", result);
    
    self.resultLabel.text = [[NSString alloc]initWithFormat:@"%d", result];
}

- (int)addInt:(int)first with:(int)second {
    int result = first + second;
    return result;
}

- (int)minusInt:(int)first with:(int)second {
    return first - second;
}

- (int)multiInt:(int)first with:(int)second {
    return first * second;
}

@end
