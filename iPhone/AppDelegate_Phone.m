#import "AppDelegate_Phone.h"
#import "UIView+FadeInOut.h"

@implementation AppDelegate_Phone

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	[window addSubview:mainViewController.view];
	[window addSubview:defaultImageView];
    [window makeKeyAndVisible];
	[defaultImageView performSelector:@selector(fadeOutWithDuration:)
						   withObject:[NSNumber numberWithFloat:0.3f]
						   afterDelay:0.1];
	return YES;
}

- (void)dealloc {
    [window release];
    [super dealloc];
}

@end
