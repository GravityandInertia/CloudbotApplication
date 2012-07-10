//
//  TableViewData.m
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TableViewData.h"

@implementation TableViewData
@synthesize tableTitlesArray;
@synthesize cellImageArray;

-(id) init{
    NSArray* initTitles = [[NSArray alloc] initWithObjects:@"summary",@"goals",@"skills",@"education",@"experience", nil];
    tableTitlesArray = initTitles;

    NSArray* initImages = [[NSArray alloc] initWithObjects:@"123-id-card.png",@"108-badge.png",@"122-stats.png",@"187-pencil.png",@"154-necktie.png", nil];
    cellImageArray = initImages;
    
    NSLog(@"TableViewData initialized");

    return self;
}

@end
