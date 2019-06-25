//
//  SlideTransitionAnimator.h
//  4.2自定义视图过渡动画（iOS7之后）
//
//  Created by 神州第一坑 on 2019/4/21.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SlideTransitionAnimator : NSObject<UIViewControllerAnimatedTransitioning>

@property (assign,nonatomic)BOOL  isPresenting;

@end

NS_ASSUME_NONNULL_END
