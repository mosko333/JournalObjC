//
//  AMEntryDetailViewController.h
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AMEntry;

@interface AMEntryDetailViewController : UIViewController

@property (nonatomic, strong) AMEntry *entry;

@end
