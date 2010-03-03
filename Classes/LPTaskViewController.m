//
//  LPTaskController.m
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright 2010 Primer. All rights reserved.
//

#import "LPTaskViewController.h"



@implementation LPTaskViewController


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithTask:(LPTask *)specificTask
{
    if (self = [super initWithNibName:@"LPTaskViewController" bundle:nil]) 
	{
        task = [specificTask retain];
    }
    return self;
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc 
{	
	[task release]; 
	task = nil;
    [super dealloc];
}


@end
