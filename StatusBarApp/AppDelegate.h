//
//  AppDelegate.h
//  StatusBarApp
//
//  Created by Miguel Carvajal on 5/30/14.
//  Copyright (c) 2014 Miguel Carvajal. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,NSWindowDelegate>


@property (weak) IBOutlet NSMenu *menu;
- (IBAction)showProperties:(id)sender;

@property (weak) IBOutlet NSMenuItem *quit;

@end
