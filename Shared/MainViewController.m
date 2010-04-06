#import "MainViewController.h"
#import "UIView+FadeInOut.h"

@implementation MainViewController

- (void)updateTouchCount {
	countLabel.text = [NSString stringWithFormat:@"%02d", [activeTouches count]];
}

- (UIView*)createTouchViewAt:(CGPoint)pt {
	UIImageView *v = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"touch.png"]] autorelease];
	v.center = pt;
	return v;
}

- (void)viewDidLoad {
	self.view.multipleTouchEnabled = YES;
	[self updateTouchCount];
    [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	if (activeTouches == nil) {
		activeTouches = [[NSMutableArray array] retain];
	}
	
	for (UITouch *t in touches) {
		if (![activeTouches containsObject:t]) {
			[activeTouches addObject:t];
			UIView *v = [self createTouchViewAt:[t locationInView:self.view]];
			v.tag = [t hash];
			[self.view addSubview:v];
			[v fadeInWithDuration:[NSNumber numberWithFloat:0.3f]];
		}
	}
	
	[self updateTouchCount];
	
}

- (UIView*)viewForTouch:(UITouch*)touch {
	for (UIView *v in self.view.subviews) {
		if (v.tag == [touch hash]) {
			return v;
		}
	}
	return nil;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	for (UITouch *t in touches) {
		UIView *v = [self viewForTouch:t];
		v.center = [t locationInView:self.view];
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	for (UITouch *t in touches) {
//		[[self viewForTouch:t] fadeOut];
		[[self viewForTouch:t] removeFromSuperview];
		[activeTouches removeObject:t];
	}

	[self updateTouchCount];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	[self touchesEnded:touches withEvent:event];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {
	[activeTouches release];
    [super dealloc];
}

@end
