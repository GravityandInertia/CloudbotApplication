//
//  MyPageViewController.h
//  Application
//
//  Created by Brandon Donnelly on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class pagesViewController;

@interface MyPageViewController : UIPageViewController
@property (weak, nonatomic) id<UIPageViewControllerDataSource> dataSource;
@property (weak, nonatomic) id<UIPageViewControllerDelegate> delegate;
@property (weak, nonatomic) pagesViewController* firstPageController;

@end
