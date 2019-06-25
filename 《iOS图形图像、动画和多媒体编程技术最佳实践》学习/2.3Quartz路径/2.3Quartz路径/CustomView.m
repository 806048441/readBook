//
//  CustomView.m
//  2.3Quartz路径
//
//  Created by 神州第一坑 on 2019/4/17.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
/*
其他的画了 在《iOS图形和动画处理里》 画了不少  画几条贝塞尔曲线吧
*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(context, 100, 100);//设置起点
    CGContextAddCurveToPoint(context, 100, 100, 130, 80, 320, 500);//添加曲线路径
    [[UIColor redColor] setStroke];
    CGContextSetLineWidth(context, 8);
    CGContextDrawPath(context, kCGPathStroke);
    CGContextSaveGState(context);
    
//    在上下文的路径中添加一个圆弧，可能前面有一个
//        直线段。 `（x，y）'是弧的中心; `radius'是它的
//        半径; `startAngle'是弧的第一个端点的角度;
//        `endAngle'是弧的第二个端点的角度; 和
//        如果要顺时针绘制圆弧，则'顺时针'为1，否则为0。
//        `startAngle'和`endAngle'以弧度为单位。
    CGContextAddArc(context, 200, 200, 50, 10.0*M_PI/180.0, 60*M_PI/180.0, 0);//最后一个参数 int类型 是顺时针 逆时针的意思
    [[UIColor greenColor] setStroke];
//    [[UIColor yellowColor] setFill];
//    CGContextClosePath(context);
    CGContextDrawPath(context, kCGPathFillStroke);

    
    
}
@end
