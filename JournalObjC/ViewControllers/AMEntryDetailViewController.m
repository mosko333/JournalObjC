//
//  AMEntryDetailViewController.m
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMEntryDetailViewController.h"

@interface AMEntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation AMEntryDetailViewController
- (IBAction)addEntryBtnPressed:(UIBarButtonItem *)sender {
    NSLog(@"Add btn pressed");
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
