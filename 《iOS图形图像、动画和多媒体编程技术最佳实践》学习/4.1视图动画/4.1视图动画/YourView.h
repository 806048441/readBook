//
//  YourView.h
//  4.1视图动画
//
//  Created by 神州第一坑 on 2019/4/28.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YourView : UIView<NSCopying>

- (id)copyWithZone:(nullable NSZone *)zone;
- (id)mutableCopyWithZone:(nullable NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
