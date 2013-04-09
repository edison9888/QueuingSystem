//
//  DiscountViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiscountViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (retain, nonatomic) IBOutlet UITableView *discountTable;
@property (retain,nonatomic) NSArray *discountArray;
@property (retain, nonatomic) IBOutlet UILabel *eggCountLb;
- (IBAction)getEggBtn_Clicked:(id)sender;
@end
