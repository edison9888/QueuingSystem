//
//  DiscountCell.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiscountCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UILabel *shopNameLb;
@property (retain, nonatomic) IBOutlet UILabel *discountNameLb;
@property (retain, nonatomic) IBOutlet UILabel *stateLb;
@property (retain, nonatomic) IBOutlet UIButton *useBtn;
- (IBAction)useBtn_Clicked:(id)sender;

@end
