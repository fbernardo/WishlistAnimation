# App Store's "Add to Wish List" animation


## Example

![image](https://raw2.github.com/fbernardo/WishlistAnimation/master/example.gif)


## Usage


Import the category into your .m file:

	#import "UIBarButtonItem+WishListAnimation.h"

Then create your UIBarButtonItem:

	    self.navigationItem.rightBarButtonItem = 
	    	[UIBarButtonItem wlBarButtonWithImage:buttonImage target:self action:@selector(addToWishList:)];

Now just animate it using:	    
	    
	[self.navigationItem.rightBarButtonItem wishListAnimationWithImage:iconImage completionBlock:nil];
	
	
Enjoy.