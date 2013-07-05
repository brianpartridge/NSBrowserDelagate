//
//  ELAppDelegate.m
//  NSBrowserDelegate
//
//  Created by Edward Loveall on 7/5/13.
//  Copyright (c) 2013 Edward Loveall. All rights reserved.
//

#import "ELAppDelegate.h"

@implementation ELAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.fontList = [[ELFontList alloc] init];
    [self.fontBrowser setDelegate:self.fontList];
}

- (IBAction)setFont:(id)sender {
    NSString *selectedFont = [[self.fontBrowser selectedCell] title];
    NSLog(@"%@", selectedFont);
}

@end
