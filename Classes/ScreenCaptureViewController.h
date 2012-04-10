//
//  ScreenCaptureViewController.h
//  ScreenCapture
//
//  Created by Collin Ruffenach on 7/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenCaptureViewController : UIViewController 
{
	IBOutlet UIWebView *webview;
}

@property (nonatomic, retain) IBOutlet UIWebView *webview;

-(IBAction)captureScreen:(id)sender;

@end

