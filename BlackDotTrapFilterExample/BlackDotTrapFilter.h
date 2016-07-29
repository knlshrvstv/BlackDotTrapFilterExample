//
//  BlackDotTrapFilter.h
//  Sample1
//
//  Created by Kunal Shrivastava on 7/28/16.
//  Copyright © 2016 Roadside Technologies. All rights reserved.
//

#import <CoreImage/CoreImage.h>

@interface BlackDotTrapFilter : CIFilter

@property(nonatomic, retain) CIImage *inputImage;

@end
