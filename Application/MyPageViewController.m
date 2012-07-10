//
//  MyPageViewController.m
//  Application
//
//  Created by Brandon Donnelly on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyPageViewController.h"
#import "pagesViewController.h"

@interface MyPageViewController ()

@end

@implementation MyPageViewController
@synthesize dataSource;
@synthesize delegate;
@synthesize firstPageController;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"custom initialization in MyPageViewController completed");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //The View Controllers Initializing
    pagesViewController* init = [[pagesViewController alloc]init];
    firstPageController = init;
   
    NSMutableArray* viewControllerArray = [[NSMutableArray alloc]init];
    
    //Setting the first view controller
    UIImage *image = [[UIImage alloc]initWithContentsOfFile:@"who.jpg"];
    [firstPageController setTheImage:image];
    
    //Adding the View Controllers to the array
    [viewControllerArray addObject:firstPageController];
    
    [self setViewControllers:viewControllerArray direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished){
        NSLog(@"MyPageViewController set the view controllers");
    }];
    NSLog(@"viewDidLoad executed in FirstPageViewController");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    NSLog(@"viewDidUnload executed in FirstPageViewController");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
     NSLog(@"interface orientation determined in MyPageViewController");
}

@end
