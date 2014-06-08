//
//  AppDelegate.m
//  StatusBarApp
//
//  Created by Miguel Carvajal on 5/30/14.
//  Copyright (c) 2014 Miguel Carvajal. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate(){
    NSStatusItem *statusItem;
    NSPanel * propertyPanel;
    MainWindowController * mainWindowController;
    NSWindow *mainWindow;
}

@end
@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    statusItem =  [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setTitle:@"Test"];
    [statusItem setMenu: self.menu];
    [statusItem setHighlightMode:YES];
    propertyPanel = [[NSPanel alloc ]init];
    mainWindow =[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 200, 200) styleMask:NSTitledWindowMask | NSResizableWindowMask | NSClosableWindowMask  | NSMiniaturizableWindowMask  backing:NSBackingStoreBuffered defer:YES];
    
    mainWindowController = [[MainWindowController alloc]  initWithWindowNibName:@"SmallWindow"];

    [[mainWindowController window] setDelegate:self];
    
}

-(BOOL)windowShouldClose:(id)sender{
    
    return  YES;
}
- (IBAction)quit1:(id)sender {
    [[NSApplication sharedApplication] terminate:nil];
}

- (IBAction)showProperties:(id)sender {
    
    if(![mainWindowController window]){
        NSLog(@"What's going on");
        
        
        
    }
    
    
    [mainWindowController showWindow:self];

    [[mainWindowController window] makeKeyAndOrderFront:self];
    
}
@end
