//
//  ExampleMessageViewController<MFMessageComposeViewControllerDelegate>ViewController.m
//  Application
//
//  Created by Brandon Donnelly on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MessageComposeViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation MessageComposeViewController
@synthesize message;
@synthesize smsButton;
@synthesize hireButton;

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*
 - (void)loadView {
 
 }
 */

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Making the buttons better looking, not pure boxes
    [smsButton.layer setCornerRadius:7.0F];
    [smsButton.layer setMasksToBounds:YES];
    [hireButton.layer setCornerRadius:7.0F];
    [hireButton.layer setMasksToBounds:YES];
    
    //Subliminal message, possibly. I could take it out but we'll just leave it for now, won't effect performance on this app
   /* message = [[UITextField alloc] initWithFrame:CGRectMake(20.0, 60.0, 280.0, 29.0)];
    message.hidden = YES;
    message.text = @"Hire Brandon Now!";
    message.userInteractionEnabled = NO;
    message.textColor = [UIColor whiteColor];*/

    //Adding the message as a subview though it wont be seen
    //[self.view addSubview:message];     

    NSLog(@"MessageComposeViewController called ViewDidLoad");
}

//- (void) viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:YES];
   // [self displayComposerSheet];
//}

/*This method sets the information and calls the composer for a text message*/
-(void)displayComposerSheet:(id) sender;
{
    MFMessageComposeViewController *picker = [[MFMessageComposeViewController alloc] init];
    picker.messageComposeDelegate = self;
    
    picker.recipients = [NSArray arrayWithObject:@"9284860243"];   // your recipient number or self for testing
    
    if (sender == smsButton){
        picker.body = @"Hello, this is {Name} at cloudbot. I received you're application and am {excited,agitated,indifferent} at the opportunity to {make fun of, meet with, have a drink with} you.";
    }
    
    else {
        picker.body = @"The team at cloudbot would like to hire you right away! Get in touch with the team immediately at [insert contact info]";
    }
    
    picker.navigationBar.tintColor = [UIColor darkGrayColor];
    
    [self presentModalViewController:picker animated:YES];
    NSLog(@"SMS fired in MessageComposeViewController");
}

/*This method cleans up the composer and calls an alert to notify the user what the status of the message is*/
- (void)messageComposeViewController:

    (MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    
    //message.hidden = YES;
        
    [self dismissModalViewControllerAnimated:YES];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Message Status" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    switch (result)
    {
        case MessageComposeResultCancelled:
            [alert setMessage:@"You cancelled your message. It was not sent."];
            NSLog(@"Result: canceled");
            break;
        case MessageComposeResultSent:
            [alert setMessage:@"Your message was sent."];
            NSLog(@"Result: sent");
            break;
        case MessageComposeResultFailed:
            [alert setMessage:@"Your message failed to send."];
            NSLog(@"Result: failed");
            break;
        default:
            [alert setMessage:@"Your message failed to send."];
            NSLog(@"Result: not sent");
            break;
    }

    [alert show];
    NSLog(@"MessageComposeViewController called messageComposeViewController");
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [self setSmsButton:nil];
    [self setHireButton:nil];
    [self setMessage:nil];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    NSLog(@"MessageComposeViewController called ViewDidUnload");
}

@end
