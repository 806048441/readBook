//
//  ViewController.m
//  PriceSlider
//
//  Created by 神州第一坑 on 2019/4/19.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"
#import "RangSlider.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    RangSlider *slider =[[RangSlider alloc]initWithFrame:CGRectMake(30, 80, self.view.bounds.size.width-60, 100)];
    
    [self.view addSubview:slider];
    
    
}


@end
