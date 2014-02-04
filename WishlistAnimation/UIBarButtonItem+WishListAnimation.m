//
//  UIBarButtonItem+WishListAnimation.m
//  WishlistAnimation
//
//  Created by Fábio Bernardo on 03/02/14.
//  Copyright (c) 2014 fbernardo. All rights reserved.
//

#import "UIBarButtonItem+WishListAnimation.h"

@implementation UIBarButtonItem (WishListAnimation)

- (void)wishListAnimationWithImage:(UIImage *)image completionBlock:(void (^)())completionBlock {
    UIView *view = [self valueForKeyPath:@"view"];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect frame = [window convertRect:view.bounds fromView:view];
    
    CGSize imageSize = (CGSize) {.width = 88, .height = 88};
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = (CGRect) {
        .size = imageSize,
        .origin.x = roundf(CGRectGetMidX(frame) - imageSize.width / 2.f),
        .origin.y = roundf(CGRectGetMidY(frame) - imageSize.height / 2.f)
    };
    [window addSubview:imageView];
    
    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        imageView.transform = CGAffineTransformMakeScale(0, 0);
    } completion:^(BOOL finished) {
        [imageView removeFromSuperview];
        if (finished) {
            [self signalAnimationWithCompletionBlock:completionBlock];
        } else {
            if (completionBlock) completionBlock();
        }
    }];
}

- (void)signalAnimationWithCompletionBlock:(void (^)())completionBlock {
    UIView *view = [self valueForKeyPath:@"view"];
    
    CGAffineTransform initialTransform = view.transform;
    
    [UIView animateKeyframesWithDuration:.4 delay:0 options:0 animations:^{
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:.2 animations:^{
            view.transform = CGAffineTransformScale(initialTransform, 1.4, 1.4);
        }];
        [UIView addKeyframeWithRelativeStartTime:.2 relativeDuration:.2 animations:^{
            view.transform = CGAffineTransformScale(initialTransform, 1, 1);
        }];
    } completion:^(BOOL finished){
        view.transform = initialTransform;
        if (completionBlock) completionBlock();
    }];
}

@end
