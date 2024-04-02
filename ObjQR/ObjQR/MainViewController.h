//
//  ViewController.h
//  ObjQR
//
//  Created by 장여훈 on 4/2/24.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *qrCodeBtn;


@end

