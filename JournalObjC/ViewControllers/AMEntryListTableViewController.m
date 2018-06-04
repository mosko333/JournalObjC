//
//  AMEntryListTableViewController.m
//  JournalObjC
//
//  Created by Adam on 04/06/2018.
//  Copyright © 2018 Adam Moskovich. All rights reserved.
//

#import "AMEntryListTableViewController.h"
#import "AMEntry.h"
#import "AMEntryModelConroller.h"
#import "AMEntryDetailViewController.h"

@interface AMEntryListTableViewController ()

@end

@implementation AMEntryListTableViewController
- (IBAction)addEntryBtnPressed:(UIBarButtonItem *)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return AMEntryModelConroller.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    AMEntry *entry = AMEntryModelConroller.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        AMEntry *entryToDelete = AMEntryModelConroller.shared.entries[indexPath.row];
        [AMEntryModelConroller.shared deleteEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toEditEntry"])
    {
        AMEntry *selectedEntery = AMEntryModelConroller.shared.entries[self.tableView.indexPathForSelectedRow.row];
        AMEntryDetailViewController *detailVC = segue.destinationViewController;
        detailVC.entry = selectedEntery;
    }
}


@end
