//
//  ViewController.m
//  CoreImage框架
//
//  Created by 神州第一坑 on 2019/4/18.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"
#import <CoreImage/CoreImage.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    3.1讲了n种获取UIImage的方法
//    3.2讲n种获取CIImage的方法  两者大同小异 还是直接看操作章节吧 
    
    CGImageRef ref =[UIImage imageNamed:@"1"].CGImage;
    CIImage *ciImage =[CIImage imageWithCGImage:ref];
    
}


@end
