//
//  MyTabBarController.m
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyTabBarController.h"

@implementation MyTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"MyTabBarController custom initialization executed");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //self.tabBarController.tabBar.tintColor = [UIColor grayColor];
    //self.tabBar.backgroundColor = [UIColor grayColor];
    self.tabBar.tintColor = [UIColor darkGrayColor];
    NSLog(@"MyTabBarController viewDidLoad executed");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
       NSLog(@"MyTabBarController viewDidUnload executed");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
