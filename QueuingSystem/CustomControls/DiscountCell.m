//
//  DiscountCell.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "DiscountCell.h"

@implementation DiscountCell

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

- (void)dealloc {
    [_shopNameLb release];
    [_discountNameLb release];
    [_stateLb release];
    [_useBtn release];
    [super dealloc];
}
- (IBAction)useBtn_Clicked:(id)sender {
    
}
@end
