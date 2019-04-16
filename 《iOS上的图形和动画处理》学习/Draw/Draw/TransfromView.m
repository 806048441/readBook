//
//  TransfromView.m
//  Draw
//
//  Created by 神州第一坑 on 2019/4/13.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "TransfromView.h"

@implementation TransfromView
/*
平移
*/
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//
//    CGContextRef context =UIGraphicsGetCurrentContext();
//
//    [[UIColor lightTextColor] set];
//    CGContextAddRect(context, self.bounds);
//    CGContextDrawPath(context, kCGPathFillStroke);
//
//    CGAffineTransform transform = CGAffineTransformMakeTranslation(100, 10);
//    CGPathRef path =CGPathCreateWithRect(CGRectMake(20, 40, 40, 40), &transform);
//    CGContextAddPath(context, path);
//    [[UIColor redColor] setFill];
//    [[UIColor blueColor] setStroke];
//    CGContextDrawPath(context, kCGPathFillStroke);
//
//    CGContextSaveGState(context);
//
//    CGPoint point[]={CGPointMake(30, 30),CGPointMake(90, 30),CGPointMake(60, 90)};
//    UIBezierPath *bPath =[UIBezierPath bezierPath];
//    [bPath moveToPoint:point[0]];
//    [bPath addLineToPoint:point[1]];
//    [bPath addLineToPoint:point[2]];
//    [bPath closePath];
//    CGAffineTransform transform2 = CGAffineTransformMakeTranslation(200, 300);
//    CGPathRef path2 =CGPathCreateCopyByTransformingPath(bPath.CGPath, &transform2);
//    [[UIColor greenColor] set];
//    CGContextAddPath(context, path2);
//    CGContextDrawPath(context, kCGPathFillStroke);
//
//    CGContextRestoreGState(context);
//    CGContextSaveGState(context);
//
//    UIBezierPath *cPath =[UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 160, 80, 80) cornerRadius:40];
//    CGPathRef dPath =CGPathCreateWithRoundedRect(CGRectMake(0, 250, 30, 30), 3, 3, &CGAffineTransformIdentity);
//    /*
//    下边两句顺序是不能交换的
//    */
//    CGContextTranslateCTM(context, 100, 20);
//    CGContextAddPath(context, cPath.CGPath);
//    CGContextAddPath(context, dPath);
//    [[UIColor blueColor] setFill];
//    [[UIColor redColor] setStroke];
//    CGContextSetLineWidth(context, 1);
//    CGContextDrawPath(context, kCGPathFillStroke);
//    CGPathRelease(path);
//    CGPathRelease(path2);
//
//
//
//}

/*
缩放
*/
//- (void)drawRect:(CGRect)rect{
//
//    CGContextRef context =UIGraphicsGetCurrentContext();
//    CGContextAddRect(context, self.bounds);
//    [[UIColor redColor] set];
//    CGContextDrawPath(context, kCGPathFillStroke);
//
//
//    CGAffineTransform scaleTransform =CGAffineTransformScale(CGAffineTransformIdentity, 0.2, 1);
//    CGPathRef path =CGPathCreateWithRect(CGRectMake(30, 80, 100, 100), &scaleTransform);
//    CGContextAddPath(context, path);
//    [[UIColor whiteColor] set];
//    CGContextDrawPath(context, kCGPathFillStroke);
//    CGContextSaveGState(context);
//
//    CGContextScaleCTM(context, 2, 3);
//    CGContextAddRect(context, CGRectMake(100, 100, 50, 50));
//    CGContextAddRect(context, CGRectMake(150, 150, 30, 30));
//    [[UIColor blueColor] set];
//    CGContextDrawPath(context, kCGPathFillStroke);
//    CGContextRestoreGState(context);
//
//    CGPathRelease(path);
//}

/*
旋转
*/
- (void)drawRect:(CGRect)rect{

    [self draw];
}

- (void)draw{
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGAffineTransform routeTransform =CGAffineTransformRotate(CGAffineTransformIdentity, M_PI*(arc4random()%90)/180);
    CGPathRef pathAll =CGPathCreateWithRect(self.bounds, &routeTransform);
    CGContextAddPath(context, pathAll);
    [[UIColor yellowColor] set];
    CGContextDrawPath(context, kCGPathFillStroke);
    
    CGPathRef path =CGPathCreateWithRect(CGRectMake(200,80, 60, 100), &routeTransform);
    CGContextAddPath(context, path);
    [[UIColor redColor] set];
    CGContextDrawPath(context, kCGPathFillStroke);
    CGContextSaveGState(context);
    
    UIBezierPath *bPath =[UIBezierPath bezierPathWithRect:CGRectMake(200,80, 60, 100)];
    CGContextRotateCTM(context, 0);
    CGContextAddPath(context, bPath.CGPath);
    [[UIColor greenColor] set];
    CGContextDrawPath(context, kCGPathFillStroke);
}
@end
