//
//  UserViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class InviteViewController;
@interface UserViewController : UIViewController
- (IBAction)inviteTxBtn_Clicked:(id)sender;
- (IBAction)inviteSinaBtn_Clicked:(id)sender;
@property (retain,nonatomic) InviteViewController *inviteView;
@end
