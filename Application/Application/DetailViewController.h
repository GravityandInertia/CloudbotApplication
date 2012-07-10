//
//  DetailViewController.h
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *theLabel;
@property (weak, nonatomic) IBOutlet UITextView *theTextField;
@property (weak, nonatomic) IBOutlet UILabel *theSubtitle;
@property (strong, nonatomic) NSIndexPath* indexPath;

@end
