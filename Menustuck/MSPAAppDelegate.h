//
//  MSPAAppDelegate.h
//  Menustuck
//
//  Created by Евгений Тулушев on 30.06.12.
//  Copyright (c) 2012 Dev iQ. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MSPAAppDelegate : NSObject <NSApplicationDelegate>{
	IBOutlet NSMenu *statusMenu;
	NSStatusItem *statusItem;
	NSImage *statusImage;
	NSImage *statusHighlightImage;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)checkForUpdates:(id)sender;
@end
