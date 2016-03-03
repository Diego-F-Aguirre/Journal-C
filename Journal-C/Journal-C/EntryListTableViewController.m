//
//  EntryListTableViewController.m
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import "EntryListTableViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [EntryController sharedInstance].entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryListCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = entry.timestamp;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        
        [[EntryController sharedInstance].entries removeObjectAtIndex:indexPath.row];
        
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}


@end
