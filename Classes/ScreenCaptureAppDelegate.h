//
//  ScreenCaptureAppDelegate.h
//  ScreenCapture
//
//  Created by Collin Ruffenach on 7/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScreenCaptureViewController;

@interface ScreenCaptureAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScreenCaptureViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScreenCaptureViewController *viewController;

@end

