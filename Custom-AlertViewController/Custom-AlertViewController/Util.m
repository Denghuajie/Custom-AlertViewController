//
//  Util.m
//  IBDesignableTestDemo
//
//  Created by FeiTian on 7/28/16.
//  Copyright © 2016 FeiTian. All rights reserved.
//

#import "Util.h"
@implementation Util

/**
 *  带有textField样式的UIAlertViewController
 *
 *  @param vc               显示的控制器
 *  @param title            title文字
 *  @param titleColor       title文字颜色
 *  @param titleFont        title字体大小
 *  @param subTitle         message文字
 *  @param subTitleColor    message文字颜色
 *  @param subTitleFont     message字体大小
 *  @param placehorderText  textField的占位文本
 *  @param buttonTitleColor 按钮字体颜色,传`nil`表示用系统默认的
 *  @param finishBlock      点击确定按钮的事件
 */
+ (void)showCustomAlertContainsTextFieldInVc:(UIViewController *)vc title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont subTitle:(NSString *)subTitle subTitleColor:(UIColor *)subTitleColor subTitleFont:(UIFont *)subTitleFont placehorderText:(NSString *)placehorderText buttonTitleColor:(UIColor *)buttonTitleColor finishBlock:(void (^)(NSString *text))finishBlock
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = NSTextAlignmentLeft;
    paragraphStyle.lineSpacing = 5.0;
    NSDictionary * attributes = @{NSFontAttributeName : subTitleFont, NSParagraphStyleAttributeName : paragraphStyle, NSForegroundColorAttributeName: subTitleColor};
    NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc] initWithString:subTitle];
    [attributedTitle addAttributes:attributes range:NSMakeRange(0, subTitle.length)];
    
    [alertVC setValue:attributedTitle forKey:@"attributedMessage"];
    NSMutableAttributedString *hogan = [[NSMutableAttributedString alloc] initWithString:title];
    [hogan addAttributes:@{NSForegroundColorAttributeName: titleColor, NSFontAttributeName:titleFont} range:NSMakeRange(0, hogan.length)];
    [alertVC setValue:hogan forKey:@"attributedTitle"];
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = placehorderText;
        textField.textAlignment = NSTextAlignmentCenter;
        textField.secureTextEntry = YES;
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消"
                                                     style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction *action){
                                                       
                                                   }];
    if (buttonTitleColor)[cancel setValue:buttonTitleColor forKey:@"titleTextColor"];
    [alertVC addAction:cancel];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定"
                                                   style:UIAlertActionStyleDefault
                                                 handler:^(UIAlertAction *action){
                                                     UITextField *textField = [alertVC textFields][0];                                                                                        finishBlock(textField.text);
                                                     
                                                 }];
    if (buttonTitleColor)[sure setValue:buttonTitleColor forKey:@"titleTextColor"];
    [alertVC addAction:sure];
    [vc presentViewController:alertVC animated:YES completion:nil];
}



/**
 *  不带textField的UIAlertViewController
 *
 *  @param vc               <#vc description#>
 *  @param title            <#title description#>
 *  @param titleColor       <#titleColor description#>
 *  @param titleFont        <#titleFont description#>
 *  @param subTitle         <#subTitle description#>
 *  @param subTitleColor    <#subTitleColor description#>
 *  @param subTitleFont     <#subTitleFont description#>
 *  @param placehorderText  <#placehorderText description#>
 *  @param buttonTitleColor <#buttonTitleColor description#>
 *  @param finishBlock      <#finishBlock description#>
 */

+ (void)showCustomAlertInVc:(UIViewController *)vc title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont subTitle:(NSString *)subTitle subTitleColor:(UIColor *)subTitleColor subTitleFont:(UIFont *)subTitleFont placehorderText:(NSString *)placehorderText buttonTitleColor:(UIColor *)buttonTitleColor finishBlock:(void (^)())finishBlock
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = NSTextAlignmentLeft;
    paragraphStyle.lineSpacing = 5.0;
    NSDictionary * attributes = @{NSFontAttributeName : subTitleFont, NSParagraphStyleAttributeName : paragraphStyle, NSForegroundColorAttributeName: subTitleColor};
    NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc] initWithString:subTitle];
    [attributedTitle addAttributes:attributes range:NSMakeRange(0, subTitle.length)];
    
    [alertVC setValue:attributedTitle forKey:@"attributedMessage"];
    NSMutableAttributedString *hogan = [[NSMutableAttributedString alloc] initWithString:title];
    [hogan addAttributes:@{NSForegroundColorAttributeName: titleColor, NSFontAttributeName:titleFont} range:NSMakeRange(0, hogan.length)];
    [alertVC setValue:hogan forKey:@"attributedTitle"];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消"
                                                     style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction *action){
                                                       
                                                   }];
    if (buttonTitleColor)[cancel setValue:buttonTitleColor forKey:@"titleTextColor"];
    [alertVC addAction:cancel];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定"
                                                   style:UIAlertActionStyleDefault
                                                 handler:^(UIAlertAction *action){
                                                                                                    finishBlock();
                                                     
                                                 }];
    if (buttonTitleColor)[sure setValue:buttonTitleColor forKey:@"titleTextColor"];
    [alertVC addAction:sure];
    [vc presentViewController:alertVC animated:YES completion:nil];
    
}




@end
