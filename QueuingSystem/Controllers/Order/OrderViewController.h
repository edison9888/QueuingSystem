//
//  OrderViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderViewController : UIViewController
- (IBAction)peopleCountBtn_Clicked:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *shopNameLb;
@property (retain, nonatomic) IBOutlet UILabel *peopleCountLb;
- (IBAction)orderBtn_Clicked:(UIButton *)sender;
@property (assign,nonatomic) int listNum;
@property (retain,nonatomic) NSString *telNum;
@property (retain,nonatomic) NSString *shopName;
@end
