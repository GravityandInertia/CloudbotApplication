//
//  MasterViewController.m
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "TableViewData.h"
#import "ResumeData.h"

@implementation MasterViewController
@synthesize theTableView;
@synthesize theData;
@synthesize theResume;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        NSLog(@"MasterViewController performed custom initialization");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TableViewData *init = [[TableViewData alloc]init];
    theData = init;
    
    ResumeData *initResume = [[ResumeData alloc]init];
    theResume = initResume;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSLog(@"MasterViewController executed ViewDidLoad");
}

- (void)viewDidUnload
{
    [self setTheTableView:nil];
    [self setTheData:nil];
    [self setTheResume:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    NSLog(@"MasterViewController executed ViewDidUnload");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
    NSLog(@"MasterViewController executed numberOfSectionsInTableView");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 5;
    NSLog(@"MasterViewController executed numberOfRowsInSection");
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = [self.theData.tableTitlesArray objectAtIndex:indexPath.row];
    //[cell.imageView setImage:[theData.cellImageArray objectAtIndex:indexPath.row]];
    [cell.imageView setImage:[UIImage imageNamed:[theData.cellImageArray objectAtIndex:indexPath.row]]];
    
    
    NSLog(@"MasterViewController executed cellForRowAtIndexPath");
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath executed in MasterViewController");
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"tableSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        destViewController.navigationItem.title = [theData.tableTitlesArray objectAtIndex:indexPath.row];
        destViewController.indexPath = indexPath;
        //destViewController.theLabel.text = [theData.tableTitlesArray objectAtIndex:indexPath.row];
        //destViewController.theTextField.text = [theResume.textArray objectAtIndex:indexPath.row];
        NSLog(@"MasterViewController executed prepareForSegue");
    }
}

@end
