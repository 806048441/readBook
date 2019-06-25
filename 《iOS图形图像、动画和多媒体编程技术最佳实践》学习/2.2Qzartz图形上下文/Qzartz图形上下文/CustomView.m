//
//  CustomView.m
//  Qzartz图形上下文
//
//  Created by 神州第一坑 on 2019/4/16.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
画臭的东西
*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(context, 60, 60);
    CGContextAddLineToPoint(context,  200,60);
    CGContextAddLineToPoint(context, 130, 200);
    CGContextClosePath(context);
    
    [[UIColor blueColor] setFill];
    [[UIColor redColor] setStroke];
    CGContextSetLineWidth(context, 10);
    CGContextDrawPath(context, kCGPathFillStroke);
}
@end
