//
//  DrawShadowView.m
//  Draw
//
//  Created by 神州第一坑 on 2019/4/11.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "DrawShadowView.h"

@implementation DrawShadowView

- (void)drawRect:(CGRect)rect {

    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextAddRect(context, self.bounds);
    [[UIColor yellowColor] setFill];
    [[UIColor redColor] setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, CGSizeMake(9, 9), 3, [UIColor lightGrayColor].CGColor);
    
    CGPoint points_sj[] ={
        CGPointMake(40, 40),
        CGPointMake(50, 40),
        CGPointMake(45, 60)
    };
    CGContextAddLines(context, points_sj, 3);
    CGContextClosePath(context);
//    CGContextClip(context);
    [[UIColor greenColor] setFill];
    [[UIColor blueColor] setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);
    
    CGPoint points_sb[] ={
        CGPointMake(80, 40),
        CGPointMake(120, 40),
        CGPointMake(120, 60),
        CGPointMake(80, 60)
    };
    CGContextAddLines(context, points_sb, 4);
    CGContextClosePath(context);
    [[UIColor purpleColor] setFill];
    [[UIColor purpleColor] setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);

    
//    [[UIColor whiteColor] setFill];
//    [[UIColor whiteColor] setStroke];
//    CGContextAddRect(context, CGRectMake(20, 20, 100, 100));
//    CGContextDrawPath(context, kCGPathFillStroke);
}

@end
