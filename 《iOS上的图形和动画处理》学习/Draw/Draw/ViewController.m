//
//  ViewController.m
//  Draw
//
//  Created by 神州第一坑 on 2019/4/11.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"
#import "DrawShadowView.h"
#import "GradientView.h"
#import "TransfromView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DrawShadowView *shadowView =[[DrawShadowView alloc]initWithFrame:CGRectMake(20, 90, 300, 300)];

    [self.view addSubview:shadowView];
    
    GradientView *gradientView =[[GradientView alloc]initWithFrame:CGRectMake(30, 90, 300, 500)];
    
    [self.view addSubview:gradientView];
    
    TransfromView *formView =[[TransfromView alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:formView];
}


@end
