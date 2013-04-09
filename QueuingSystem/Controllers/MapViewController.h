//
//  MapViewController.h
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"
@class RNBlurModalView;
@interface MapViewController : UIViewController<BMKMapViewDelegate, BMKSearchDelegate,UITableViewDataSource,UITableViewDelegate>{
    BOOL fisrtGetUL;
    int score;
}
- (IBAction)changeBtn_Clicked:(id)sender;
- (IBAction)searchTxt_DidEndOnExit:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *searchTxt;
@property (retain, nonatomic) IBOutlet UITableView *shopListTable;
@property (retain,nonatomic) IBOutlet BMKMapView *bMapView;
@property (retain,nonatomic) BMKSearch *search;
@property (retain,nonatomic) NSMutableArray *shopList;
@property (retain,nonatomic) RNBlurModalView *alertView;
@end
