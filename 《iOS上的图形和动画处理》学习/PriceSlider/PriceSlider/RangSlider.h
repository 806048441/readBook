//
//  RangSlider.h
//  PriceSlider
//
//  Created by 神州第一坑 on 2019/4/19.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RangSlider : UIControl

@property (strong,nonatomic)UIImageView * lowImageView;
@property (strong,nonatomic)UIImageView * upperImageView;
@property (assign,nonatomic)CGFloat lowValue;
@property (assign,nonatomic)CGFloat upperValue;
@property (assign,nonatomic)CGFloat  minValue;
@property (assign,nonatomic)CGFloat  maxValue;
@property(assign, nonatomic)CGFloat distanceValue;
@property(assign, nonatomic)CGFloat stepValue;
@property (assign,nonatomic)CGSize  imageSize;
@property (assign,nonatomic)CGFloat  lineHeight;
@property (strong,nonatomic)UIColor * disableLineColor;
@property (strong,nonatomic)UIColor * enableLineColor;

//Setting the lower/upper values with an animation :-)
- (void)setLowerValue:(float)lowerValue animated:(BOOL) animated;

- (void)setUpperValue:(float)upperValue animated:(BOOL) animated;

- (void) setLowerValue:(float) lowerValue upperValue:(float) upperValue animated:(BOOL)animated;
@end

NS_ASSUME_NONNULL_END
