//
//  AMEntry.m
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMEntry.h"

@implementation AMEntry

- (instancetype) initWithTitle:(NSString *)title andBody:(NSString *)body {
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
    }
    return self;
}

- (BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:[AMEntry class]]) { return NO; }
    AMEntry *entry = object;
    
    if (entry.title != self.title) { return NO; }
    if (entry.body != self.body ) { return NO; }
    
    return YES;
}


@end
