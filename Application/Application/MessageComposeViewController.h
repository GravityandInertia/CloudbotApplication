//
//  ExampleMessageViewController<MFMessageComposeViewControllerDelegate>ViewController.h
//  Application
//
//  Created by Brandon Donnelly on 7/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMessageComposeViewController.h>

@interface MessageComposeViewController : UIViewController <UITextFieldDelegate,MFMessageComposeViewControllerDelegate>

@property (strong, nonatomic) UITextField *message;
@property (weak, nonatomic) IBOutlet UIButton *smsButton;
@property (weak, nonatomic) IBOutlet UIButton *hireButton;

- (IBAction)displayComposerSheet:(id)sender;


@end
