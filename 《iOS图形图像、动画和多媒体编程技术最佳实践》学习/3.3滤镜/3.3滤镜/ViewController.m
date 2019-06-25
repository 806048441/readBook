//
//  ViewController.m
//  3.3滤镜
//
//  Created by 神州第一坑 on 2019/4/18.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import "ViewController.h"
#import <CoreImage/CoreImage.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
//    CIContext *ciContext =[CIContext contextWithOptions:nil];
//    CIImage *ciImage =[CIImage imageWithCGImage:[UIImage imageNamed:@"1"].CGImage];
//    CIFilter *invert =[CIFilter filterWithName:@"CIColorInvert"];
//    [invert setDefaults];
//    [invert setValue:ciImage forKey:@"inputImage"];
//    CIImage *result =[invert valueForKey:@"outputImage"];
}
- (IBAction)segment:(id)sender {
    
    UISegmentedControl *segment =sender;
    if (segment.selectedSegmentIndex) {
        [self filterGaussianBlur];
    }else{
        [self filterSepiaTone];
    }
}
- (IBAction)slider:(id)sender {
    
    if (self.segment.selectedSegmentIndex) {
        [self filterGaussianBlur];
    }else{
        [self filterSepiaTone];
    }
}

- (void)filterSepiaTone{
    
    CIContext *context =[CIContext contextWithOptions:nil];
    CIImage *image =[CIImage imageWithCGImage:[UIImage imageNamed:@"1"].CGImage];
    CIImage *result;
    
    CIFilter *filter =[CIFilter filterWithName:@"CISepiaTone"];
    [filter setValue:image forKey:@"inputImage"];
    double value= self.slider.value;
    NSString *text =[NSString stringWithFormat:@"旧色调Intensity:%.2f",value];
    self.contentLabel.text =text;
    [filter setValue:[NSNumber numberWithFloat:value] forKey:@"inputIntensity"];
    result =[filter valueForKey:@"outputImage"];
    CGImageRef imageRef =[context createCGImage:result fromRect:CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height)];
    UIImage *imageResult =[[UIImage alloc]initWithCGImage:imageRef];
    self.imageView.image =imageResult;
    CGImageRelease(imageRef);
}

- (void)filterGaussianBlur{
    
    CIContext *context =[CIContext contextWithOptions:nil];
    CIImage *image =[CIImage imageWithCGImage:[UIImage imageNamed:@"1"].CGImage];
    CIImage *result;
    
    CIFilter *filter =[CIFilter filterWithName:@"CIGaussianBlur"];
    [filter setValue:image forKey:@"inputImage"];
    double value= self.slider.value*30;
    NSString *text =[NSString stringWithFormat:@"高斯模糊Radius:%.2f",value];
    self.contentLabel.text =text;
    [filter setValue:[NSNumber numberWithFloat:value] forKey:@"inputRadius"];
    result =[filter valueForKey:@"outputImage"];
    CGImageRef imageRef =[context createCGImage:result fromRect:CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height)];
    UIImage *imageResult =[[UIImage alloc]initWithCGImage:imageRef];
    self.imageView.image =imageResult;
    CGImageRelease(imageRef);
}


@end
