#import "AppDelegate_Pad.h"

@implementation AppDelegate_Pad

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	[window addSubview:mainViewController.view];
    [window makeKeyAndVisible];
	return YES;
}

- (void)dealloc {
    [window release];
    [super dealloc];
}

@end
