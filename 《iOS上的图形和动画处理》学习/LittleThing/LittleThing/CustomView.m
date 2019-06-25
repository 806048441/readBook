//
//  CustomView.m
//  LittleThing
//
//  Created by 神州第一坑 on 2019/4/19.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGPoint points[] = {
        
        self.touchView[0].center,
        self.touchView[1].center,
        self.touchView[2].center,
        self.touchView[3].center
//        CGPointMake(CGRectGetMidX(self.touchView[0].frame), CGRectGetMidY(self.touchView[0].frame)),
//        CGPointMake(CGRectGetMidX(self.touchView[1].frame), CGRectGetMidY(self.touchView[1].frame)),
//        CGPointMake(CGRectGetMidX(self.touchView[2].frame), CGRectGetMidY(self.touchView[2].frame)),
//        CGPointMake(CGRectGetMidX(self.touchView[3].frame), CGRectGetMidY(self.touchView[3].frame))
    };
    
    UIBezierPath *bezierPath =[UIBezierPath bezierPath];
    [bezierPath moveToPoint:self.touchView[0].center];
    [bezierPath addLineToPoint:self.touchView[1].center];
    [bezierPath addLineToPoint:self.touchView[2].center];
    [bezierPath addLineToPoint:self.touchView[3].center];
    [bezierPath closePath];
    
    CGImageRef imageRef =[UIImage imageNamed:@"1"].CGImage;
    CGContextAddPath(context, bezierPath.CGPath);
    CGContextDrawImage(<#CGContextRef  _Nullable c#>, <#CGRect rect#>, <#CGImageRef  _Nullable image#>)
    
    
    CGContextClosePath(context);

    
}
@end
