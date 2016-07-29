//
//  BlackDotTrapFilter.m
//  Sample1
//
//  Created by Kunal Shrivastava on 7/28/16.
//  Copyright © 2016 Roadside Technologies. All rights reserved.
//

#import "BlackDotTrapFilter.h"

@implementation BlackDotTrapFilter

-(CIColorKernel*)kernel
{
    static CIColorKernel *kernel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kernel = [CIColorKernel kernelWithString:
                  @"kernel vec4 CustomFilter1 ( __sample s ) \
                  \n { \n if ( s.r + s.g + s.b < 0.1 ) \n \
                  { return s.rgba = vec4(1.0, 1.0, 0.0, 1.0); } \
                  \n else \n { return s.rgba; } \n }"];
    });
    
    return kernel;
}

-(CIImage*)outputImage
{
    return [[self kernel] applyWithExtent:_inputImage.extent arguments:@[_inputImage]];
}

@end
