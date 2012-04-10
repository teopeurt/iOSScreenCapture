//
//  ScreenCaptureViewController.m
//  ScreenCapture
//
//  Created by Collin Ruffenach on 7/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ScreenCaptureViewController.h"

@implementation ScreenCaptureViewController

@synthesize webview;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	[webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
}

-(IBAction)captureScreen:(id)sender
{	
	UIGraphicsBeginImageContext(webview.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
