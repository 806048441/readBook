//
//  RangSlider.m
//  PriceSlider
//
//  Created by 神州第一坑 on 2019/4/19.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "RangSlider.h"
@interface RangSlider ()

@property (assign,nonatomic)CGFloat  topDistance;
@property (assign,nonatomic)CGFloat  horizontalDistance;
@end
@implementation RangSlider

- (instancetype)initWithFrame:(CGRect)frame{
    
    self =[super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor =[UIColor purpleColor];
        self.topDistance=20;
        self.horizontalDistance =15;
        self.lineHeight =8;
        self.imageSize =CGSizeMake(45, 45);
        self.minValue =0;
        self.maxValue =10;
        self.lowValue=0;
        self.upperValue=10;
        self.distanceValue =2;
        self.stepValue=2;
        self.disableLineColor =[UIColor lightGrayColor];
        self.enableLineColor =[UIColor redColor];
        
        self.lowImageView =[[UIImageView alloc]initWithFrame:CGRectMake(self.horizontalDistance, self.topDistance, self.imageSize.width, self.imageSize.height)];
        self.upperImageView =[[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width-self.imageSize.width-self.horizontalDistance, self.topDistance, self.imageSize.width, self.imageSize.height)];
        self.lowImageView.backgroundColor =[UIColor yellowColor];
        self.upperImageView.backgroundColor =[UIColor yellowColor];
        self.lowImageView.layer.cornerRadius=self.lowImageView.bounds.size.width/2;
        self.lowImageView.layer.shadowRadius=4;
        self.lowImageView.layer.shadowColor=[UIColor blackColor].CGColor;
        self.lowImageView.layer.shadowOffset=CGSizeMake(0, 0);
        self.lowImageView.layer.shadowOpacity=0.2;
        
        self.upperImageView.layer.cornerRadius=self.lowImageView.bounds.size.width/2;
        self.upperImageView.layer.shadowRadius=4;
        self.upperImageView.layer.shadowColor=[UIColor blackColor].CGColor;
        self.upperImageView.layer.shadowOffset=CGSizeMake(0, 0);
        self.upperImageView.layer.shadowOpacity=0.2;
        [self addSubview:self.lowImageView];
        [self addSubview:self.upperImageView];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, self.lineHeight);
    CGContextSetLineCap(context, kCGLineCapRound);
    
    CGFloat baseScale=(self.frame.size.width-self.horizontalDistance*2-self.imageSize.width)/(self.maxValue-self.minValue);
    CGFloat startX =self.horizontalDistance+self.imageSize.width*0.5;
    CGContextMoveToPoint(context, self.minValue*baseScale+startX, self.topDistance+self.imageSize.height/2);
    CGContextAddLineToPoint(context, baseScale*self.lowValue+startX, self.topDistance+self.imageSize.height/2);
    [self.disableLineColor setStroke];
    CGContextStrokePath(context);

    CGContextMoveToPoint(context, baseScale*self.lowValue+startX, self.topDistance+self.imageSize.height/2);
    CGContextAddLineToPoint(context, baseScale*self.upperValue+startX, self.topDistance+self.imageSize.height/2);
    [self.enableLineColor setStroke];
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, self.upperValue*baseScale+startX, self.topDistance+self.imageSize.height/2);
    CGContextAddLineToPoint(context, self.maxValue*baseScale+startX, self.topDistance+self.imageSize.height/2);
    [self.disableLineColor setStroke];
    CGContextStrokePath(context);
}



#pragma mark - setter

- (void)setMinValue:(CGFloat)minValue{
    
    NSAssert(minValue>=0, @"minValue>=0才过的去");
    _minValue =minValue;
}

- (void)setMaxValue:(CGFloat)maxValue{
    
    NSAssert(maxValue>=self.minValue, @"maxValue>=minValue才过的去");
    _maxValue =maxValue;
}

- (void)setLowValue:(CGFloat)lowValue{
    
    _lowValue =lowValue;
    [self setNeedsDisplay];
}

- (void)setUpperValue:(CGFloat)upperValue{
    
    _upperValue =upperValue;
    [self setNeedsDisplay];
}

- (void)setDistanceValue:(CGFloat)distanceValue{
    
    _distanceValue =distanceValue;
    self.lowValue =_lowValue;
    self.upperValue =_upperValue;
}
- (void)setLowerValue:(float)lowerValue animated:(BOOL) animated{
    
    CGFloat time =animated?0.25:0;
    CGFloat baseScale=(self.frame.size.width-self.horizontalDistance*2-self.imageSize.width)/(self.maxValue-self.minValue);
    CGFloat startX =self.horizontalDistance+self.imageSize.width*0.5;
    [UIView animateWithDuration:time animations:^{
        
        self.lowImageView.center =CGPointMake(baseScale*lowerValue+startX, self.lowImageView.center.y);
        self.lowValue =lowerValue;
    }];
}

- (void)setUpperValue:(float)upperValue animated:(BOOL) animated{
    
    CGFloat time =animated?0.25:0;
    CGFloat baseScale=(self.frame.size.width-self.horizontalDistance*2-self.imageSize.width)/(self.maxValue-self.minValue);
    CGFloat startX =self.horizontalDistance+self.imageSize.width*0.5;
    [UIView animateWithDuration:time animations:^{
        
        self.upperImageView.center =CGPointMake(baseScale*upperValue+startX, self.upperImageView.center.y);
        self.upperValue =upperValue;
    }];
}

- (void) setLowerValue:(float) lowerValue upperValue:(float) upperValue animated:(BOOL)animated{
    
    CGFloat time =animated?0.25:0;
    CGFloat baseScale=(self.frame.size.width-self.horizontalDistance*2-self.imageSize.width)/(self.maxValue-self.minValue);
    CGFloat startX =self.horizontalDistance+self.imageSize.width*0.5;
    [UIView animateWithDuration:time animations:^{
        
        self.upperImageView.center =CGPointMake(baseScale*upperValue+startX, self.upperImageView.center.y);
        self.lowImageView.center =CGPointMake(baseScale*lowerValue+startX, self.lowImageView.center.y);
        self.lowValue =lowerValue;
        self.upperValue =upperValue;
    }];
}



#pragma mark - Touch handling

-(BOOL) beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    
    CGPoint touchPoint = [touch locationInView:self];
    CGFloat value=(self.maxValue-self.minValue)*(touchPoint.x-self.horizontalDistance-self.imageSize.width*0.5)/(self.frame.size.width-self.horizontalDistance*2-self.imageSize.width);
    
    if(CGRectContainsPoint(self.lowImageView.frame, touchPoint) && value>=self.minValue && value<self.upperValue){
        
        self.lowImageView.highlighted =YES;
        return YES;
    }
    
    if(CGRectContainsPoint(self.upperImageView.frame, touchPoint) && value<=self.maxValue && value>self.lowValue){
        
        self.upperImageView.highlighted =YES;
    }
    return YES;
}


-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    
    CGPoint touchPoint = [touch locationInView:self];
    CGFloat value=(self.maxValue-self.minValue)*(touchPoint.x-self.horizontalDistance-self.imageSize.width*0.5)/(self.frame.size.width-self.horizontalDistance*2-self.imageSize.width);

    NSLog(@"%f---",value);
    
    if(self.lowImageView.highlighted && value>=self.minValue &&value<self.upperValue-self.distanceValue){
        
        self.lowImageView.center =CGPointMake(touchPoint.x, self.lowImageView.center.y);
        self.lowValue=value;
//        [self sendActionsForControlEvents:UIControlEventValueChanged];
        return YES;
    }
    
    if(self.upperImageView.highlighted && value<=self.maxValue && value>self.lowValue+self.distanceValue){
        
        self.upperImageView.center =CGPointMake(touchPoint.x, self.lowImageView.center.y);
        self.upperValue=value;
//        [self sendActionsForControlEvents:UIControlEventValueChanged];
    }
    return YES;
}



-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    
    if (self.lowImageView.highlighted && self.stepValue) {
        
        [self setLowerValue:roundf(self.lowValue/self.stepValue)*self.stepValue animated:YES];
    }
    if (self.upperImageView.highlighted && self.stepValue) {

        [self setUpperValue:roundf(self.upperValue/self.stepValue)*self.stepValue animated:YES];
    }
    
    self.lowImageView.highlighted = NO;
    self.upperImageView.highlighted = NO;
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
