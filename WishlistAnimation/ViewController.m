//
//  ViewController.m
//  WishlistAnimation
//
//  Created by Fábio Bernardo on 03/02/14.
//  Copyright (c) 2014 fbernardo. All rights reserved.
//

#import "ViewController.h"
#import "UIBarButtonItem+WishListAnimation.h"

@implementation ViewController

- (IBAction)addToWishList:(UIBarButtonItem *)barButton {
    
    [barButton wishListAnimationWithImage:[UIImage imageNamed:@"iPhone.png"] completionBlock:^{
        NSLog(@"finished animation");
    }];

}

@end
