//
//  ViewController.m
//  2.1绘图技术
//
//  Created by 神州第一坑 on 2019/4/16.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomView *view =[[CustomView alloc]initWithFrame:self.view.bounds];
    view.tag =1;
    [self.view addSubview:view];
    
    view.lineWidth =10;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CustomView *view =[self.view viewWithTag:1];
    view.lineWidth ++;
}

@end
