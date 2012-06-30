//
//  MSPAAppDelegate.m
//  Menustuck
//
//  Created by Евгений Тулушев on 30.06.12.
//  Copyright (c) 2012 Dev iQ. All rights reserved.
//

#import "MSPAAppDelegate.h"

@implementation MSPAAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	
}

- (void)awakeFromNib
{
	statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
	NSBundle *bundle = [NSBundle mainBundle];
	statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"candycorn" ofType:@"png"]];
	statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"candycornHighlighted" ofType:@"png"]];
	[statusItem setImage:statusImage];
	[statusItem setAlternateImage:statusImage];
	[statusItem setMenu:statusMenu];
	[statusItem setToolTip:@"Last Update: "];
	[statusItem setHighlightMode:YES];
}

- (IBAction)checkForUpdates:(id)sender {
	[NSApp activateIgnoringOtherApps:YES];
}
@end
