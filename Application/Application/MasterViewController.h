//
//  MasterViewController.h
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TableViewData;
@class ResumeData;

@interface MasterViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *theTableView;
@property (strong, nonatomic) TableViewData *theData;
@property (strong, nonatomic) ResumeData* theResume;
@end
