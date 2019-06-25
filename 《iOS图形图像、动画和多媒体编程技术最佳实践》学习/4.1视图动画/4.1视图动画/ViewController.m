//
//  ViewController.m
//  4.1视图动画
//
//  Created by 神州第一坑 on 2019/4/21.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"
#import "YourView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    //    self.view.backgroundColor =[[UIColor redColor] colorWithAlphaComponent:0];
    
//    前边讲的和《iOS上的图形和动画处理》讲的一样的===========================================一样的fffffff——uck
    
    //4.1.1-4.1.2 视图动画 动画的生命周期
    //iOS4之前
    //    [UIView beginAnimations:@"alpha" context:nil];
    //    [UIView setAnimationDuration:10];
    //    [UIView setAnimationDelay:1];
    //    [UIView setAnimationDelegate:self];
    
    //动画的生命周期
    //动画即将开始
    //    [UIView setAnimationWillStartSelector:@selector(alphaWillStart)];
    //动画结束
    //    [UIView setAnimationDidStopSelector:@selector(alphaStop)];
    //    self.view.backgroundColor =[[UIColor redColor] colorWithAlphaComponent:1];
    //    [UIView commitAnimations];
    //
    //iOS4之后动画块block  没有动画开始的回调
    //    [UIView animateWithDuration:10 delay:1 options:UIViewAnimationOptionRepeat animations:^{
    //        self.view.backgroundColor =[[UIColor redColor] colorWithAlphaComponent:1];
    //    } completion:^(BOOL finished) {
    //        NSLog(@"动画执行完了");
    //    }];
    
    
    //    4.1.4过渡动画
    
    
}

- (void)alphaWillStart{
    
    NSLog(@"动画即将开始");
}
- (void)alphaStop{
    
    NSLog(@"动画执行完了");
}

- (IBAction)transition:(id)sender {
    
    //    [UIView beginAnimations:@"transition" context:nil];
    //    [UIView setAnimationDuration:10];
    //    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    //    [UIView setAnimationRepeatAutoreverses:NO];
    //
    ////    setAnimationCurve动画速度变化
    ////    UIViewAnimationCurveEaseInOut,         // 缓入缓出 开始和结束时减速
    ////    UIViewAnimationCurveEaseIn,            // 缓入  开始时减速
    ////    UIViewAnimationCurveEaseOut,           // 缓出  结束时减速
    ////    UIViewAnimationCurveLinear,   //线性  匀速运动
    //
    //
    //    UIButton *button =sender;
    //    switch (button.tag) {
    //        case 1:
    //
    //            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:NO];
    //            break;
    //        case 2:
    //
    //            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:NO];
    //            break;
    //        case 3:
    //
    //            [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:NO];
    //            break;
    //        case 4:
    //
    //            [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:NO];
    //            break;
    //
    //        default:
    //            break;
    //    }
    ////    setAnimationTransition //设置过渡动画效果
    //    //    UIViewAnimationTransitionNone,//不设置任何过渡动画
    //    //    UIViewAnimationTransitionFlipFromLeft,//设置从左往右的翻转
    //    //    UIViewAnimationTransitionFlipFromRight,//设置从右往左的翻转
    //    //    UIViewAnimationTransitionCurlUp,//设置向上翻页
    //    //    UIViewAnimationTransitionCurlDown,//设置向下翻页
    //    [UIView commitAnimations];
    //
    
    //    下边是iOS4之后
    
    UIButton *button =sender;
    UIViewAnimationOptions opt =UIViewAnimationOptionTransitionNone;
    switch (button.tag) {
        case 1:
            opt =UIViewAnimationOptionTransitionFlipFromLeft|UIViewAnimationOptionCurveLinear;
            break;
        case 2:
            opt =UIViewAnimationOptionTransitionFlipFromRight|UIViewAnimationOptionCurveLinear;
            break;
        case 3:
            opt =UIViewAnimationOptionTransitionCurlUp|UIViewAnimationOptionCurveLinear;
            break;
        case 4:
            opt =UIViewAnimationOptionTransitionCrossDissolve;
            break;
            
        default:
            break;
    }
    
    [UIView transitionWithView:self.view duration:10 options:opt animations:^{
        
    } completion:^(BOOL finished) {

    }];
    
    //指定视图容器内创建动画过渡
    //    + (void)transitionWithView:(UIView *)view duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^ __nullable)(void))animations completion:(void (^ __nullable)(BOOL finished))completion NS_AVAILABLE_IOS(4_0);
    //在指定的两个视图之间创建动画过渡
    //    + (void)transitionFromView:(UIView *)fromView toView:(UIView *)toView duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^ __nullable)(BOOL finished))completion NS_AVAILABLE_IOS(4_0); // toView added to fromView.superview, fromView removed from its superview
    //过渡动画常量
//    UIViewAnimationOptionTransitionNone            = 0 << 20, // default
//    UIViewAnimationOptionTransitionFlipFromLeft    = 1 << 20,
//    UIViewAnimationOptionTransitionFlipFromRight   = 2 << 20,
//    UIViewAnimationOptionTransitionCurlUp          = 3 << 20,
//    UIViewAnimationOptionTransitionCurlDown        = 4 << 20,
//    UIViewAnimationOptionTransitionCrossDissolve   = 5 << 20,//这个并没有试出来效果 改天再看看 标记一下
//    UIViewAnimationOptionTransitionFlipFromTop     = 6 << 20,//从上往下翻转
//    UIViewAnimationOptionTransitionFlipFromBottom  = 7 << 20,//从下往上翻转

}
@end
