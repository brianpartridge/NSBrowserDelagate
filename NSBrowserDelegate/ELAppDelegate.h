//
//  ELAppDelegate.h
//  NSBrowserDelegate
//
//  Created by Edward Loveall on 7/5/13.
//  Copyright (c) 2013 Edward Loveall. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ELFontList.h"

@interface ELAppDelegate : NSObject <NSApplicationDelegate> {
    NSBrowser *fontBrowser;
}

- (IBAction)setFont:(id)sender;

@end