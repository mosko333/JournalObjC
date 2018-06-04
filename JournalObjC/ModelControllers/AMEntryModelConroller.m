//
//  AMEntryModelConroller.m
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMEntryModelConroller.h"
#import "AMEntry.h"

@interface AMEntryModelConroller()
// private interface
@property (nonatomic, strong, readwrite) NSMutableArray *internalEntries;

@end

@implementation AMEntryModelConroller

// shared intance
+ (AMEntryModelConroller *)shared
{
    static AMEntryModelConroller *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = AMEntryModelConroller.new;
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalEntries = NSMutableArray.new;
    }
    return self;
}


// create entry
- (void) createEntryWithTitle:(NSString *)title
                      andBody:(NSString *)body
{
    AMEntry *newEntry = [[AMEntry alloc] initWithTitle:title andBody:body];
    [self.internalEntries addObject:newEntry];
}
// delete entry
- (void) deleteEntry:(AMEntry *)entry {
    [self.internalEntries removeObject:entry];
}

@end
