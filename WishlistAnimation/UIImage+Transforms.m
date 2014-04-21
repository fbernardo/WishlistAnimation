//
// Created by fbernardo on 14/04/14.
//
//

#import "UIImage+Transforms.h"


@implementation UIImage (Transforms)

#pragma mark - Public Methods

- (UIImage *)imageRotatedBy:(CGFloat)radians {
    CGSize imageSize = self.size;
    CGAffineTransform transform = CGAffineTransformMakeRotation(radians);
    CGSize transformedSize = CGSizeApplyAffineTransform(imageSize, transform);
    transformedSize = (CGSize) {
            .width = ceil(ABS(transformedSize.width)),
            .height = ceil(ABS(transformedSize.height))
    };

    UIGraphicsBeginImageContextWithOptions(transformedSize, YES, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, transformedSize.width/2.f, transformedSize.height/2.f);
    CGContextRotateCTM(context, radians);
    CGContextScaleCTM(context, 1, -1);
    CGContextDrawImage(context, CGRectMake(-imageSize.width / 2.f, -imageSize.height / 2.f, imageSize.width, imageSize.height), self.CGImage);
    
    UIImage *transformedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return transformedImage;
}

@end