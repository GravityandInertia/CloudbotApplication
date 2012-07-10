//
//  TableViewData.h
//  Application
//
//  Created by Brandon Donnelly on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewData : NSObject
@property(strong, nonatomic) NSArray* tableTitlesArray;
@property(strong, nonatomic) NSArray* cellImageArray;


-(id) init;

@end
