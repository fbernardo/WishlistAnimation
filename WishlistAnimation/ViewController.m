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

-(void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem wlBarButtonWithImage:[UIImage imageNamed:@"detailButton.png"] target:self action:@selector(addToWishList:)];
}

- (void)addToWishList:(id)sender {
    [self.navigationItem.rightBarButtonItem wishListAnimationWithImage:[UIImage imageNamed:@"iPhone.png"] completionBlock:^{
        NSLog(@"finished animation");
    }];

}

@end
