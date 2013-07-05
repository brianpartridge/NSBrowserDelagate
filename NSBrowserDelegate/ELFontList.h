//
//  ELFontList.h
//  NSBrowserDelegate
//
//  Created by Edward Loveall on 7/5/13.
//  Copyright (c) 2013 Edward Loveall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELFontList : NSObject <NSBrowserDelegate>

- (NSInteger)browser:(NSBrowser *)sender numberOfRowsInColumn:(NSInteger)column;
- (void)browser:(NSBrowser *)sender willDisplayCell:(id)cell atRow:(NSInteger)row column:(NSInteger)column;
- (NSArray *)weightsForFontFamily:(NSString *)family;

@end
