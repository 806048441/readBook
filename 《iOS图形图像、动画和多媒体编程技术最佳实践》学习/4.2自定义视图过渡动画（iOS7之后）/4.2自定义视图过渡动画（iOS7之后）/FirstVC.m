//
//  FirstVC.m
//  4.2自定义视图过渡动画（iOS7之后）
//
//  Created by 神州第一坑 on 2019/4/21.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "FirstVC.h"
#import "SecondVC.h"
#import "SlideTransitionAnimator.h"
@interface FirstVC ()<UINavigationControllerDelegate,UIViewControllerTransitioningDelegate>

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title =@"firstVC";

    self.view.backgroundColor =[UIColor redColor];
    
    self.navigationController.delegate =self;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.navigationController pushViewController:[SecondVC new] animated:YES];
    
//    SecondVC *second =[[SecondVC alloc]init];
//    [self.navigationController presentViewController:second animated:YES completion:nil];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC{
    
    SlideTransitionAnimator *animator =[SlideTransitionAnimator new];
    animator.isPresenting =(operation==UINavigationControllerOperationPop)?YES:NO;
    return animator;
}



@end
