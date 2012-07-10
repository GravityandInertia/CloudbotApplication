//
//  DetailViewController.m
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize theLabel;
@synthesize theTextField;
@synthesize theSubtitle;
@synthesize indexPath;

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
    //Setting the text for each tableview tab that can be clicked on
    switch (indexPath.row) {
        case 0:
            theLabel.text = @"Here's a quick rundown";
            theSubtitle.text =@" Why I'm here";
            theTextField.text =@"People keep wondering why I want to be a developer when I went to college for Civil Engineering. It's simple, the Civil Engineering industry sucks. It's full of forty somethings who use outdated methods because 'That's how we do it.' I hate that attitude. I want to be where innovation is rewarded.\n\nI started programming engineering simulations in grad school. After being approached with an idea for booking cabs through an app (before Uber), I began to focus on app development. I spent time learning iOS and Android. I'm looking for an opportunity as a developer and think I would be a good fit at Cloudbot.\n\nYou need people who are good with API's, I'm one of those people. I don't have a large portfolio to show you, but this job application is just a small example of what I am capable of and if you give me a chance for even a month, you won't be disappointed. \n\nAfter looking at this,  I'm sure you can tell I want the job. It would have been easy to just put together a resume and cover letter, but that wouldn't give you a real feel for my enthusiasm, ability, potential or coding style. I went the extra mile like I always do.\n\nI understand the startup world is hard work and little guarantee of anything, but I love a good challenge!";
            break;
        case 1:
            theLabel.text = @"I hope to achieve a few things...";
            theSubtitle.text =@" In no particular order";
            theTextField.text =@"1. Be part of a great company, that makes a great product\n\n2. Constantly expand my understanding of the startup and business world\n\n3. Help make peoples' lives easier\n\n4. Continue to push myself to be the best in whatever I do\n\n5. Work at Cloudbot!";
            break;
        case 2:
            theLabel.text = @"Things I know";
            theSubtitle.text = @" Including but not limited to";
            theTextField.text = @"iOS\nSubclassing, Amazon Web Services SDK, View Controllers, Navigation Controllers, storyboards, frameworks, API understanding\n\nAndroid\nViews, frameworks\n\nOther Languages\nC++, Java, Matlab, Python, xml, Beginner in Ruby on Rails\n\nOther Skills\nPresentations, Spreadsheets, Reports, other business related skills";
            break;
        case 3:
            theLabel.text = @"Master's in Structural Engineering";
            theSubtitle.text = @" Arizona State University, May 2011";
            theTextField.text = @"After finishing my Bachelor's Degree I immediately went to graduate school, the industry had crashed. There were no jobs and my girlfriend still had two more years of school.\n\nNearly every class I took involved programming of some type, though it was usually to solve optimization or dynamics problems, not connect to servers. Regardless, I learned several different computing languages.\n\nOnce I realized that I was missing out on the revolution of the smartphone, I realized I wanted to change career paths and began to focus more on apps.";
            break;
        case 4:
            theLabel.text = @"RydeBoss iPhone App";
            theSubtitle.text = @" Priceline.com for Cabs";
            theTextField.text = @"RydeBoss is an application that I developed. It is not on the market yet but will be available starting in a few months.\n\nI was the sole developer. It uses smartphones and the Amazon Web Services SDK in order to connect riders with taxi drivers. It will be launching in Tempe, Arizona with the other two cofounders business Platinum Transportation soon.\n\nThe other two cofounders knew me to be a capable person at getting things done and asked me to create a dispatch system they could use that would be low cost for their growing limo business. I started developing on Android, but after a change in concept and a dead computer causing me to switch to a Mac, I redesigned the app for iOS.";
            break;
        default:
            theLabel.text = @"default";
            break;
    }
    NSLog(@"DetailViewController called ViewDidLoad");
}

- (void)viewDidUnload
{
    [self setTheLabel:nil];
    [self setTheTextField:nil];
    [self setTheSubtitle:nil];
    [self setIndexPath:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    NSLog(@"DetailViewController called ViewDidUnload");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
