//
//  ViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "ViewController.h"
#import "CustomTabBarController.h"
#import "MapViewController.h"
#import "UserViewController.h"
#import "DiscountViewController.h"
#import "MenuViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate{
    return NO;
}

- (IBAction)loginBtn_Clicked:(id)sender {
    CustomTabBarController *tabbarController=[[CustomTabBarController alloc] init];
    MapViewController *mapView=[[MapViewController alloc] init];
    mapView.title=@"餐馆信息";
    UINavigationController *mapNav=[[UINavigationController alloc] initWithRootViewController:mapView];
    MenuViewController *orderView=[[MenuViewController alloc] init];
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
    [self presentViewController:tabbarController animated:YES completion:nil];
    [mapView release];
    [mapNav release];
    [orderView release];
    [discountView release];
    [userView release];
    [tabbarController release];
}
@end
