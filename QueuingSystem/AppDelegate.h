//
//  AppDelegate.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"
#define kDocumentsPath [NSHomeDirectory() stringByAppendingString:@"/Documents"]
#define kServiceURL @"http://www.hzgreaten.com:90/QueuingService.asmx"
#define theApp ((AppDelegate *)[[UIApplication sharedApplication] delegate])
#define kMenuPath [NSHomeDirectory() stringByAppendingString:@"/Documents/Menu.txt"]
typedef enum {
    ChuJiShiKe=30,
    ZhongJiShiKe=70,
    GaoJiShiKe=120,
    MeiShiDaRen=380,
    JianXiShiShen=560,
    ShiShen
}UserLevel;

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    BMKMapManager* _mapManager;
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *viewController;
@property (retain,nonatomic) NSString *orderShopName;
@end
