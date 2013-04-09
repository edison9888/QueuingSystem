//
//  InviteViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FriendViewController.h"
@interface InviteViewController : UIViewController<FriendDelegate>
- (IBAction)atBtn_Clicked:(id)sender;
- (IBAction)cancelBtn_Clicked:(id)sender;
- (IBAction)okBtn_Clicked:(id)sender;
- (IBAction)backGroundBtn_Clicked:(id)sender;
@property (retain, nonatomic) IBOutlet UITextView *contenTxtView;
@property (retain, nonatomic) IBOutlet UILabel *userNameLb;
@property (retain,nonatomic) FriendViewController *friendView;
@end
