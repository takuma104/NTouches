#import "UIView+FadeInOut.h"

@implementation UIView(FadeInOut)

- (void)fadeInWithDuration:(NSNumber*)duration {
	self.alpha = 0.f;
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationDuration:[duration floatValue]];
	self.alpha = 1.f;
	[UIView commitAnimations];
}

- (void)fadeOutWithDuration:(NSNumber*)duration {
	float d = [duration floatValue];
	self.alpha = 1.f;
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:d];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	self.alpha = 0.f;
	[UIView commitAnimations];
	[self performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:d + 0.1f];	
}

@end
