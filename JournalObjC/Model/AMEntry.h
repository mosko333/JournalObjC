//
//  AMEntry.h
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMEntry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;

- (instancetype) initWithTitle:(NSString *)title andBody:(NSString *)body;

@end
