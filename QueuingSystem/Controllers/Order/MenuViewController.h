//
//  MenuViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Menu;
@interface MenuViewController : UIViewController{
    int adIndex;
}
@property (retain, nonatomic) IBOutlet UIImageView *adImageView;
@property (retain, nonatomic) IBOutlet UIImageView *bigAdImageView;
@property (retain, nonatomic) IBOutlet UILabel *telNumLb;
@property (retain, nonatomic) IBOutlet UILabel *menuIdLb;
@property (retain, nonatomic) IBOutlet UILabel *peopleCountLb;
@property (retain, nonatomic) IBOutlet UILabel *lastCountLb;
@property (retain, nonatomic) IBOutlet UILabel *lastTimeLb;
@property (retain,nonatomic) Menu *menu;
@property (retain,nonatomic) NSTimer *serviceTimer;
@property (retain,nonatomic) NSTimer *adTimer;
@property (assign,nonatomic) BOOL isNew;
@end
