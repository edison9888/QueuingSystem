//
//  AppDelegate.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import "CustomTabBarController.h"
#import "MapViewController.h"
#import "UserViewController.h"
#import "DiscountViewController.h"
#import "MenuViewController.h"
@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [_orderShopName release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 要使用百度地图，请先启动BaiduMapManager
	_mapManager = [[BMKMapManager alloc]init];
    // 如果要关注网络及授权验证事件，请设定generalDelegate参数
	BOOL ret = [_mapManager start:@"560EE3E7CB30EC5E6647454CA69F8CF71DECAF69" generalDelegate:nil];
	if (!ret) {
		NSLog(@"manager start failed!");
	}
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    CustomTabBarController *tabbarController=[[CustomTabBarController alloc] init];
    MapViewController *mapView=[[MapViewController alloc] init];
    mapView.title=@"餐馆信息";
    UINavigationController *mapNav=[[UINavigationController alloc] initWithRootViewController:mapView];
    MenuViewController *orderView=[[MenuViewController alloc] init];
    NSData *menuData=[NSData dataWithContentsOfFile:kMenuPath];
    if (menuData==nil) {
        orderView.isNew=YES;
    }else{
        orderView.isNew=NO;
    }
    orderView.title=@"电子订单";
    DiscountViewController *discountView=[[DiscountViewController alloc] init];
    discountView.title=@"优惠餐券";
    UserViewController *userView=[[UserViewController alloc] init];
    userView.title=@"会员中心";
    [tabbarController setViewControllers:[NSArray arrayWithObjects:mapNav,orderView,discountView,userView, nil]];
    [(UITabBarItem *)[tabbarController.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"tabbar_mapview.png"]];
    [(UITabBarItem *)[tabbarController.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"tabbar_orderview.png"]];
    [(UITabBarItem *)[tabbarController.tabBar.items objectAtIndex:2] setImage:[UIImage imageNamed:@"tabbar_discountview.png"]];
    [(UITabBarItem *)[tabbarController.tabBar.items objectAtIndex:3] setImage:[UIImage imageNamed:@"tabbar_userview.png"]];
//    [self presentViewController:tabbarController animated:YES completion:nil];
    self.viewController = tabbarController;
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    [mapView release];
    [mapNav release];
    [orderView release];
    [discountView release];
    [userView release];
    [tabbarController release];
    
    [self copyFileToDocuments:@"CustomerInfo.plist"];
    [self copyFileToDocuments:@"DiscountKind.plist"];
    return YES;
}

-(void)copyFileToDocuments:(NSString *)fileName{
    BOOL success;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *writableDBPath = [documentsDirectory stringByAppendingPathComponent:fileName];
    success = [fileManager fileExistsAtPath:writableDBPath];
    if (success)
        return;
    
    NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:fileName];
    success = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
    if (!success) {
        return;
        NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
    }
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
