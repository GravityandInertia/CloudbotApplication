//
//  FirstPageViewController.m
//  Application
//
//  Created by Brandon Donnelly on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "pagesViewController.h"

@interface pagesViewController ()

@end

@implementation pagesViewController
@synthesize theImage;
@synthesize theImageView;
@synthesize theNavigationBar;
@synthesize theTabBar;
@synthesize theView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"custom initialization in FirstPageViewController completed");
    }
    return self;
}

- (void) loadView{
    [super loadView];
    [self.view addSubview:theImageView];
    NSLog(@"pagesViewController called the overriden loadview method");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIView *init = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    theView = init;

    UIImageView* initImageView = [[UIImageView alloc]initWithImage:theImage];
    theImageView = initImageView;
    CGRect frame = theImageView.frame;
    frame.origin = CGPointMake(0, 0);
    [theImageView setFrame:frame];

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
    NSLog(@"interface orientation determined in FirstPageViewController");
}

@end
