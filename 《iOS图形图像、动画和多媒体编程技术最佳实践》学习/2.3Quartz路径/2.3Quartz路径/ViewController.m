//
//  ViewController.m
//  2.3Quartz路径
//
//  Created by 神州第一坑 on 2019/4/17.
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
    [self.view addSubview:view];
    
}


@end
