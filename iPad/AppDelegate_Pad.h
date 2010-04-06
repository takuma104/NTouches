#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate_Pad : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

