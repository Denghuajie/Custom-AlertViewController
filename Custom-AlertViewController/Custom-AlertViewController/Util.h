//
//  Util.h
//  IBDesignableTestDemo
//
//  Created by FeiTian on 7/28/16.
//  Copyright © 2016 FeiTian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Util : NSObject

+ (void)showCustomAlertContainsTextFieldInVc:(UIViewController *)vc title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont subTitle:(NSString *)subTitle subTitleColor:(UIColor *)subTitleColor subTitleFont:(UIFont *)subTitleFont placehorderText:(NSString *)placehorderText buttonTitleColor:(UIColor *)buttonTitleColor finishBlock:(void (^)(NSString *text))finishBlock;


+ (void)showCustomAlertInVc:(UIViewController *)vc title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont subTitle:(NSString *)subTitle subTitleColor:(UIColor *)subTitleColor subTitleFont:(UIFont *)subTitleFont placehorderText:(NSString *)placehorderText buttonTitleColor:(UIColor *)buttonTitleColor finishBlock:(void (^)())finishBlock;


@end
