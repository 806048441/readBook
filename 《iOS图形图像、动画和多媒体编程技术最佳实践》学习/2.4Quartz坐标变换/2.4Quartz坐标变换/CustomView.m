//
//  CustomView.m
//  2.4Quartz坐标变换
//
//  Created by 神州第一坑 on 2019/4/18.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//
//
//
////    坐标的原点是左下角 所以要y轴变化（x轴y轴变换是一种特殊的缩放变换） 平移变化 其他内容 在《iOS上的图形和动画处理》写过了 除了旋转变换（当时没理解是怎么旋转的）  其他这里不再重新写了
//    CGImageRef imageRef =[UIImage imageNamed:@"1"].CGImage;
//
//    CGContextRef context =UIGraphicsGetCurrentContext();
//
//    CGContextSaveGState(context);
//
//    CGRect rectImage =CGRectMake(0, 90, self.bounds.size.width, self.bounds.size.width);
//
//    [[UIColor blueColor] setFill];
//    CGPathRef path =CGPathCreateWithRect(rectImage, &CGAffineTransformIdentity);
//    CGContextAddPath(context, path);
//    CGContextDrawPath(context, kCGPathFillStroke);
//
//    CGContextScaleCTM(context, 1, -1);
//    CGContextTranslateCTM(context, 0, -self.bounds.size.width-180);
//    CGContextDrawImage(context, rectImage, imageRef);
//
//}

//这里主要看一下 到底绕着哪里转的
- (void)drawRect:(CGRect)rect{
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGPoint points[]={
        CGPointMake(80, 90),
        CGPointMake(250, 90),
        CGPointMake(250, 300)
    };
    CGContextAddLines(context, points, 3);
    CGContextClosePath(context);
    [[UIColor redColor] setStroke];
    [[UIColor greenColor] setFill];
    CGContextDrawPath(context, kCGPathFillStroke);
    
    CGContextSaveGState(context);
    //这次试出来来了 顺时针绕原点旋转10度
    CGContextRotateCTM(context, 10*M_PI/180);
    CGContextAddLines(context, points, 3);
    CGContextClosePath(context);
    [[UIColor yellowColor] setStroke];
    [[UIColor purpleColor] setFill];
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextRestoreGState(context);
    
    CGAffineTransform transform =CGAffineTransformTranslate(CGAffineTransformIdentity, 20, 180);
    UIBezierPath *bPath =[UIBezierPath bezierPath];
    [bPath moveToPoint:points[0]];
    [bPath addLineToPoint:points[1]];
    [bPath addLineToPoint:points[2]];
    [bPath closePath];
    CGPathRef path =CGPathCreateCopyByTransformingPath(bPath.CGPath, &transform);
    CGContextAddPath(context, path);
    [[UIColor lightGrayColor] setFill];
    [[UIColor whiteColor] setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);

}

@end
