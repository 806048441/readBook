//
//  GradientView.m
//  Draw
//
//  Created by 神州第一坑 on 2019/4/12.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "GradientView.h"

@implementation GradientView

- (void)drawRect:(CGRect)rect {
    
   
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextAddRect(context, self.bounds);
    [[UIColor greenColor] set];
    [[UIColor purpleColor] setFill];
    [[UIColor redColor] setStroke];
    CGContextSetLineWidth(context, 10);
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextSaveGState(context);
    
    CGContextSetShadow(context, CGSizeMake(8, 8), 3);
    CGContextAddRect(context, CGRectMake(90, 90, 90, 90));
    [[UIColor purpleColor] setFill];
    [[UIColor purpleColor] setStroke];
    CGContextSetLineWidth(context, 0);
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextRestoreGState(context);
    CGContextSaveGState(context);
    
    CGContextAddRect(context, CGRectMake(90, 90, 90, 90));
    CGContextClip(context);
        CGFloat location[2] ={
        0,1
    };
    CGColorSpaceRef colorSpace =CGColorSpaceCreateDeviceRGB();
    CGColorRef startColor= [UIColor redColor].CGColor;
    CGColorRef endColor=[UIColor yellowColor].CGColor;
    NSArray *array =@[(__bridge id)startColor,(__bridge id)endColor];
    CGGradientRef gradient =CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)array, location);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(90, 90), CGPointMake(180, 90), 0);
    CGContextRestoreGState(context);
    CGContextSaveGState(context);

    CGPoint p[] ={
      CGPointMake(30, 190),
        CGPointMake(80, 190),
        CGPointMake(55, 300)
    };
    CGContextAddLines(context, p, 3);
    CGContextClosePath(context);
    CGPathRef linePath =CGPathCreateMutable();
    CGContextAddPath(context, linePath);
    CGContextClip(context);
    
    [[UIColor yellowColor] setFill];
    [[UIColor yellowColor] setStroke];

    CGContextDrawPath(context, kCGPathFillStroke);
    CGGradientRef gradient2 =CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)array, location);

    CGContextDrawLinearGradient(context, gradient2, CGPointMake(55, 330), CGPointMake(55, 190), 0);
    
    CGColorSpaceRelease(colorSpace);
    CGGradientRelease(gradient);
    CGPathRelease(linePath);
    CGGradientRelease(gradient2);
}

@end
