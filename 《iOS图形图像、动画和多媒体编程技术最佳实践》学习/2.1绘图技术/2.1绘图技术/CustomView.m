//
//  CustomView.m
//  2.1绘图技术
//
//  Created by 神州第一坑 on 2019/4/16.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@end
@implementation CustomView

- (void)setLineWidth:(CGFloat)lineWidth{
    
    _lineWidth =lineWidth;
    
    //重绘 2.1.1 生命周期
    [self setNeedsDisplay];
}


//填充矩形 矩形描边 2.1.2 2.1.3
//- (void)drawRect:(CGRect)rect {
//
//    [[UIColor blueColor] setFill];
//    UIRectFill(rect);
//
//    [[UIColor redColor] setStroke];
//    CGContextRef context =UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, self.lineWidth);
//    UIRectFrame(rect);
//}

//绘制图像 文本 2.1.4
- (void)drawRect:(CGRect)rect{
    
    
    
    //    UIImage *image1 =[UIImage imageNamed:@"1.png"];
    
    //    [image1 drawAtPoint:CGPointMake(0, 0)];//设置绘制定点
    
    //    [image1 drawInRect:CGRectMake(0, 0, self.bounds.size.width, 200)];//图片绘制在置顶矩形里
    
    //    [image1 drawAsPatternInRect:self.bounds];//会平铺（图片大小小鱼矩形大小的时候）
    
    
    
    /*
     下边这个图片 大于图纸
     */
    //    UIImage *image2 =[UIImage imageNamed:@"1.jpeg"];
    
    //    [image2 drawAtPoint:CGPointMake(0, 0)];
    //
    //    [image2 drawInRect:CGRectMake(0,0 , self.bounds.size.width,200)];
    
    //    [image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）
    
    
    NSMutableParagraphStyle *style =[[NSMutableParagraphStyle alloc]init];
    style.lineBreakMode=NSLineBreakByWordWrapping;
    
//    [@"费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）" drawAtPoint:CGPointMake(40, 100) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor],NSParagraphStyleAttributeName:style}];//这个横着一直往前绘制 定点绘制 只管起点
    
    
    [@"费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖费刷奖[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）[image2 drawAsPatternInRect:self.bounds];//会平铺（图片大小大于矩形大小的时候和定点绘制效果一致）" drawInRect:self.bounds withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSStrokeColorAttributeName:[UIColor whiteColor],NSForegroundColorAttributeName:[UIColor whiteColor],NSParagraphStyleAttributeName:style}];//在指定的矩形里绘制 label里的结尾胜率号 也没起作用 后边coreText的时候 再研究这个 
    
}

@end
