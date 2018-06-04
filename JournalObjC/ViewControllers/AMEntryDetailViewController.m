//
//  AMEntryDetailViewController.m
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMEntryDetailViewController.h"
#import "AMEntry.h"
#import "AMEntryModelConroller.h"

@interface AMEntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation AMEntryDetailViewController
- (IBAction)addEntryBtnPressed:(UIBarButtonItem *)sender {
    
    [[AMEntryModelConroller shared] createEntryWithTitle:_nameTextField.text andBody:_bodyTextView.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
