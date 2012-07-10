//
//  MessageViewController.m
//  Application
//
//  Created by Brandon Donnelly on 6/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    MFMessageComposeViewController* theController = [[MFMessageComposeViewController alloc] initWithRootViewController:self];
    theController.navigationBar.tintColor = [UIColor grayColor];
    theController.navigationItem.title = @"Message";
    theController.body = @"The cloudbot team would like to call you down to meet us";
    
    NSArray *recipients = [[NSArray alloc]initWithObjects:@"9284860243", nil];
    theController.recipients = recipients;
    if ([MFMessageComposeViewController canSendText] == NO) {
    }
    
    else{
        [self presentModalViewController:theController animated:YES];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    
}


@end
