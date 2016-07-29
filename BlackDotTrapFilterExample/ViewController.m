//
//  ViewController.m
//  BlackDotTrapFilterExample
//
//  Created by Shrivastava, Kunal on 7/29/16.
//  Copyright © 2016 KS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *originalImageView;
@property (weak, nonatomic) IBOutlet UIImageView *postFilterImageView;

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self applyFilterToOriginalImage];
}

-(void)applyFilterToOriginalImage
{
    UIImage *originalImage = [UIImage imageNamed:@"spotTheBlackDot"];
    _originalImageView.image = originalImage;
    CIFilter *filter = [CIFilter filterWithName:@"BlackDotTrapFilter"];
    CIImage *hocusPocus = [[CIImage alloc] initWithImage:originalImage];
    [filter setValue:hocusPocus forKey:kCIInputImageKey];
    _postFilterImageView.image = [[UIImage alloc] initWithCIImage:filter.outputImage];
}

@end
