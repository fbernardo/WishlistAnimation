//
//  UIBarButtonItem+WishListAnimation.h
//  WishlistAnimation
//
//  Created by Fábio Bernardo on 03/02/14.
//  Copyright (c) 2014 fbernardo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WishListAnimation)

- (void)wishListAnimationWithImage:(UIImage *)image completionBlock:(void (^)())completionBlock;

@end
