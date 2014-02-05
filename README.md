# App Store's "Add to Wish List" animation


## Usage


Import the category into your .m file:

	#import "UIBarButtonItem+WishListAnimation.h"

Then create your UIBarButtonItem:

	    self.navigationItem.rightBarButtonItem = 
	    	[UIBarButtonItem wlBarButtonWithImage:buttonImage target:self action:@selector(addToWishList:)];

Now just animate it using:	    
	    
	[self.navigationItem.rightBarButtonItem wishListAnimationWithImage:iconImage completionBlock:nil];
	
	
Enjoy.