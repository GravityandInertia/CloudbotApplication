//
//  ResumeData.m
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ResumeData.h"

@implementation ResumeData
@synthesize textArray;

-(id) init{
    NSArray* init = [[NSArray alloc] initWithObjects:@"goals",@"skills",@"education",@"experience", nil];
    textArray = init;

    return self;
}

@end
