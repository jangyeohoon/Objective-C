//
//  ViewController.m
//  objTest
//
//  Created by p195610 on 4/2/24.
//

#import "MainViewController.h"
#import <QRCodeReaderViewController/QRCodeReaderViewController.h>
#import <QRCodeReader.h>

@interface MainViewController () <QRCodeReaderDelegate>
{
    QRCodeReaderViewController *qrCodeVC;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Create the reader object
    QRCodeReader *reader = [QRCodeReader readerWithMetadataObjectTypes:@[AVMetadataObjectTypeQRCode]];

    // Instantiate the view controller
    qrCodeVC = [QRCodeReaderViewController readerWithCancelButtonTitle:@"Cancel" codeReader:reader startScanningAtLoad:YES showSwitchCameraButton:YES showTorchButton:YES];

    // Set the presentation style
    qrCodeVC.modalPresentationStyle = UIModalPresentationFormSheet;

    // Define the delegate receiver
    qrCodeVC.delegate = self;

    // Or use blocks
//    [_reader setCompletionWithBlock:^(NSString *resultAsString) {
//      NSLog(@"%@", resultAsString);
//    }];
    
    NSURL *webSiteUrl = [NSURL URLWithString:@"https://www.google.com"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:webSiteUrl];
    
    [_webView loadRequest:urlRequest];
    
    [_qrButton layer].borderColor = [UIColor redColor].CGColor;
    [_qrButton layer].borderWidth = 3;
    [_qrButton layer].cornerRadius = 5;
    
    [_qrButton addTarget:self action:@selector(qrCodeReader) forControlEvents:UIControlEventTouchUpInside];
}

- (void)qrCodeReader {
    NSLog(@"QR Button called");
}

#pragma mark - QRCodeReader Delegate Methods

- (void)reader:(QRCodeReaderViewController *)reader didScanResult:(NSString *)result
{
    NSLog(@"QR코드 인식 성공");
  [self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"QR인식 결과 : %@", result);
  }];
}

- (void)readerDidCancel:(QRCodeReaderViewController *)reader
{
    NSLog(@"QR코드 인식 실패!");
  [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
