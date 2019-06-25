//
//  SlideTransitionAnimator.m
//  4.2自定义视图过渡动画（iOS7之后）
//
//  Created by 神州第一坑 on 2019/4/21.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "SlideTransitionAnimator.h"
@interface SlideTransitionAnimator ()

@end
@implementation SlideTransitionAnimator

-(NSTimeInterval) transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    return 0.5;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    UIViewController *fromVC =[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC =[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    CGRect transformedStartFrame =[transitionContext initialFrameForViewController:fromVC];
    CGRect transformedEndFrame =[transitionContext finalFrameForViewController:toVC];
    
    [transitionContext.containerView addSubview:fromVC.view];
    [transitionContext.containerView addSubview:toVC.view];
    toVC.view.frame =transformedStartFrame;
    
    if (self.isPresenting) {
//        [transitionContext.containerView addSubview:fromVC.view];
//        [transitionContext.containerView addSubview:toVC.view];

        [UIView transitionFromView:fromVC.view toView:toVC.view duration:0.5 options:UIViewAnimationOptionTransitionCurlDown completion:^(BOOL finished) {

            toVC.view.frame =transformedEndFrame;
            [transitionContext completeTransition:YES];
        }];
//        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
//
//            toVC.view.frame =transformedEndFrame;
//        } completion:^(BOOL finished) {
//
//            [transitionContext completeTransition:YES];
//        }];

    }else{

//        [transitionContext.containerView addSubview:fromVC.view];
//        [transitionContext.containerView addSubview:toVC.view];

        [UIView transitionFromView:fromVC.view toView:toVC.view duration:0.5 options:UIViewAnimationOptionTransitionCurlUp completion:^(BOOL finished) {

            toVC.view.frame =transformedEndFrame;
            [transitionContext completeTransition:YES];
        }];
//        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
//
//            fromVC.view.frame =transformedStartFrame;
//        } completion:^(BOOL finished) {
//
//            [transitionContext completeTransition:YES];
//        }];
    }
}
@end
