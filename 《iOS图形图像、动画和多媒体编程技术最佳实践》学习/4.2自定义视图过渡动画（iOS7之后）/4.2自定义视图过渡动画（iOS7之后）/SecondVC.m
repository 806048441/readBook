//
//  SecondVC.m
//  4.2自定义视图过渡动画（iOS7之后）
//
//  Created by 神州第一坑 on 2019/4/21.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "SecondVC.h"
#import "SlideTransitionAnimator.h"
@interface SecondVC ()<UIViewControllerTransitioningDelegate>

@end

@implementation SecondVC

- (instancetype)init{
    
    self =[super init];
    if (self) {
        
        self.transitioningDelegate =self;
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title =@"secondVC";
    
    self.view.backgroundColor =[UIColor greenColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    
    
    SlideTransitionAnimator *animator =[SlideTransitionAnimator new];
    return animator;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    
    SlideTransitionAnimator *animator =[SlideTransitionAnimator new];
    animator.isPresenting =YES;
    return animator;
}
@end
