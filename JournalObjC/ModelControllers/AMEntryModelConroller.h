//
//  AMEntryModelConroller.h
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AMEntry;

@interface AMEntryModelConroller : NSObject

// shared intance
+ (AMEntryModelConroller *)shared;

// source of truth
@property (nonatomic, strong, readonly) NSArray *entries;

//CRUD
// create entry
- (void) createEntryWithTitle:(NSString *)title
                      andBody:(NSString *)body;
// delete entry
- (void) deleteEntry:(AMEntry *)entry;

@end
