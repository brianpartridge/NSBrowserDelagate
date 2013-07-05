//
//  ELAppDelegate.m
//  NSBrowserDelegate
//
//  Created by Edward Loveall on 7/5/13.
//  Copyright (c) 2013 Edward Loveall. All rights reserved.
//

#import "ELAppDelegate.h"

@implementation ELAppDelegate

@synthesize fontBrowser;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    ELFontList *fontList = [[ELFontList alloc] init];
    [fontBrowser setDelegate:fontList];
}

- (IBAction)setFont:(id)sender {
    NSString *selectedFont = [[fontBrowser selectedCell] title];
    NSLog(@"%@", selectedFont);
}

@end
