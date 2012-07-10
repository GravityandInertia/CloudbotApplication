//
//  MyTableViewCellCell.m
//  Application
//
//  Created by Brandon Donnelly on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) layoutSubviews{
    [super layoutSubviews];
    CGRect frame = self.imageView.frame;
    frame.origin.x = 20 - 0.5*self.imageView.frame.size.width;
    [self.imageView setFrame:frame];
    
    frame = self.textLabel.frame;
    frame.origin.x = 50;
    [self.textLabel setFrame:frame];
}

@end
