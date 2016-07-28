//
//  ViewController.m
//  Custom-AlertViewController
//
//  Created by FeiTian on 7/28/16.
//  Copyright © 2016 Mr.Deng. All rights reserved.
//

#import "ViewController.h"
#import "Util.h"
@interface ViewController ()

@end

@implementation ViewController

- (IBAction)click:(id)sender {
    [Util showCustomAlertContainsTextFieldInVc:self title:@"密码确认" titleColor:[UIColor redColor] titleFont:[UIFont systemFontOfSize:17.0f] subTitle:@"苹果完了还有刘华爷" subTitleColor:[UIColor blackColor] subTitleFont:[UIFont systemFontOfSize:14.0f] placehorderText:@"请输入密码" buttonTitleColor:[UIColor orangeColor] finishBlock:^(NSString *text) {
        NSLog(@"%@", text);
    }];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
