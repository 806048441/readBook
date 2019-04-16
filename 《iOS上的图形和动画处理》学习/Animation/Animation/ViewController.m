//
//  ViewController.m
//  Animation
//
//  Created by 神州第一坑 on 2019/4/14.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view =[[UIView alloc]initWithFrame:CGRectMake(200, 200, 30, 30)];
    view.backgroundColor =[UIColor redColor];
    [self.view addSubview:view];
    
    CGAffineTransform trans1 =CGAffineTransformMakeTranslation(100, 50);
    CGAffineTransform trans2 =CGAffineTransformScale(CGAffineTransformIdentity, 2, 2);
    CGAffineTransform trans3 =CGAffineTransformRotate(trans2, 40*M_PI/180);
   
    [UIView animateWithDuration:5 animations:^{
       
        view.transform =trans2;
        

    } completion:^(BOOL finished) {
      

        

        
//        if (finished) {
////
//            [UIView animateWithDuration:5 animations:^{
//
//                [view setTransform:trans2];
//            }];
//        }
    }];
}


@end
