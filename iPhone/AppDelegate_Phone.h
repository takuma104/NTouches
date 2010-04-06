#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface AppDelegate_Phone : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet MainViewController *mainViewController;
	IBOutlet UIImageView *defaultImageView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

