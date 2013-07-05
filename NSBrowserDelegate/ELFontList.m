//
//  ELFontList.m
//  NSBrowserDelegate
//
//  Created by Edward Loveall on 7/5/13.
//  Copyright (c) 2013 Edward Loveall. All rights reserved.
//

#import "ELFontList.h"

@implementation ELFontList

- (NSInteger)browser:(NSBrowser *)sender numberOfRowsInColumn:(NSInteger)column {
    if (column == 0) {
        NSArray *familes = [[NSFontManager alloc] availableFontFamilies];
        return [familes count];
    } else {
        NSString *selectedParent = [[sender selectedCellInColumn:column - 1] title];
        NSArray *weights = [self weightsForFontFamily:selectedParent];
        return [weights count];
    }
    return 0;
}

- (void)browser:(NSBrowser *)sender willDisplayCell:(id)cell atRow:(NSInteger)row column:(NSInteger)column {
    if (column == 0) {
        NSArray *familes = [[NSFontManager alloc] availableFontFamilies];
        [cell setTitle: [familes objectAtIndex:row]];
    } else {
        NSString *selectedParent = [[sender selectedCellInColumn:column - 1] title];
        NSArray *weights = [self weightsForFontFamily:selectedParent];
        [cell setTitle:[weights objectAtIndex:row]];
        [cell setLeaf:YES];
    }
}

- (NSArray *)weightsForFontFamily:(NSString *)family {
    NSArray *members  = [[NSFontManager alloc] availableMembersOfFontFamily:family];
    NSMutableArray *weights = [NSMutableArray array];
    for (int i = 0; i < [members count]; i++) {
        [weights addObject:members[i][1]];
    }

    return weights;
}


@end
