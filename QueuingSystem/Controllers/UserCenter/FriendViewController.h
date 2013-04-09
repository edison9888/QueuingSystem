//
//  FriendViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol FriendDelegate;
@interface FriendViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (retain, nonatomic) IBOutlet UITableView *friendList;
@property (retain,nonatomic) id<FriendDelegate> delegate;
@property (retain,nonatomic) NSArray *friendArray;
@end

@protocol FriendDelegate <NSObject>

-(void)didChooseFriend:(NSString *)name;

@end