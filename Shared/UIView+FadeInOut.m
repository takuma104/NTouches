#import "UIView+FadeInOut.h"

@implementation UIView(FadeInOut)

- (void)fadeIn {
	self.alpha = 0.f;
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationDuration:0.3f];
	self.alpha = 1.f;
	[UIView commitAnimations];
}

- (void)fadeOut {
/*	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3f];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//	[UIView setAnimationDelegate:self];
//	[UIView setAnimationDidStopSelector:@selector(removeFromSuperview)];
	self.alpha = 0.f;	
	[UIView commitAnimations];
	[self performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.4f];
*/

	[self removeFromSuperview];
//	[self performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:0.4f];
}

@end
