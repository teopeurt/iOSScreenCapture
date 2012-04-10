//
//  ScreenCaptureAppDelegate.m
//  ScreenCapture
//
//  Created by Collin Ruffenach on 7/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ScreenCaptureAppDelegate.h"
#import "ScreenCaptureViewController.h"

@implementation ScreenCaptureAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
