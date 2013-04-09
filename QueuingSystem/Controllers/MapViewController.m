//
//  MapViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "MapViewController.h"
#import "ShopCell.h"
#import "RNBlurModalView.h"
#import "PlistHelper.h"
#import "OrderViewController.h"
@implementation MapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    // Do any additional setup after loading the view from its nib.
    _shopList=[[NSMutableArray alloc] init];
    fisrtGetUL=FALSE;
    score=[PlistHelper getUserScore];
    _shopListTable.delegate=self;
    _shopListTable.dataSource=self;
	_bMapView.delegate = self;
    _bMapView.showsUserLocation=YES;
	_search = [[BMKSearch alloc]init];
    [self performSelectorInBackground:@selector(showPoiNearBy:) withObject:@"外婆家"];
}

-(void)showPoiNearBy:(NSString *)poiName{
    BOOL isExistUL=FALSE;
    while (!isExistUL) {
        if (_bMapView.userLocation.location!=nil) {
            isExistUL=TRUE;
            BOOL flag = [_search poiSearchNearBy:poiName center:_bMapView.userLocation.location.coordinate radius:100000 pageIndex:0];
            if (!flag) {
                NSLog(@"search failed!");
            }
        }
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    _search.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_shopListTable release];
    [_bMapView release];
    [_search release];
    [_searchTxt release];
    [_alertView release];
    [super dealloc];
}
- (IBAction)changeBtn_Clicked:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [_shopListTable setAlpha:!_shopListTable.alpha];
    [_bMapView setAlpha:!_bMapView.alpha];
    if ([btn.titleLabel.text isEqualToString:@"1"]) {
        [btn setTitle:@"2" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"shoplist_unclick"] forState:UIControlStateNormal];
    }else{
        [btn setTitle:@"1" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"shopmap_unclick"] forState:UIControlStateNormal];
    }
}

- (IBAction)searchTxt_DidEndOnExit:(id)sender {
    [self showPoiNearBy:_searchTxt.text];
}

#pragma mark 地图------更新位置
- (void)mapView:(BMKMapView *)mapView didUpdateUserLocation:(BMKUserLocation *)userLocation
{
	if (userLocation != nil) {
        if (!fisrtGetUL) {
            fisrtGetUL=TRUE;
            [_bMapView setCenterCoordinate:userLocation.location.coordinate];
        }
	}
}
#pragma mark 地图------定位失败
- (void)mapView:(BMKMapView *)mapView didFailToLocateUserWithError:(NSError *)error
{
	if (error != nil)
		NSLog(@"locate failed: %@", [error localizedDescription]);
	else {
		NSLog(@"locate failed");
	}
	
}
#pragma mark 地图------开始定位
- (void)mapViewWillStartLocatingUser:(BMKMapView *)mapView
{
	NSLog(@"start locate");
    
}
#pragma mark 地图------添加大头针
- (BMKAnnotationView *)mapView:(BMKMapView *)view viewForAnnotation:(id <BMKAnnotation>)annotation
{
	static NSString *AnnotationViewID = @"annotationViewID";
	
    BMKAnnotationView *annotationView = [view dequeueReusableAnnotationViewWithIdentifier:AnnotationViewID];
    if (annotationView == nil) {
        annotationView = [[[BMKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:AnnotationViewID] autorelease];
		((BMKPinAnnotationView*)annotationView).pinColor = BMKPinAnnotationColorRed;
		((BMKPinAnnotationView*)annotationView).animatesDrop = YES;
    }
	annotationView.centerOffset = CGPointMake(0, -(annotationView.frame.size.height * 0.5));
    annotationView.annotation = annotation;
	annotationView.canShowCallout = TRUE;
    if (score>GaoJiShiKe) {
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(0, 0, 32, 32)];
        [btn setTitle:annotationView.annotation.title forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"takebtn.png"] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(annotationViewbtn_Clicked:) forControlEvents:UIControlEventTouchUpInside];
        annotationView.rightCalloutAccessoryView=btn;
    }
    return annotationView;
}
#pragma mark 地图------获得搜索结果
- (void)onGetPoiResult:(NSArray*)poiResultList searchType:(int)type errorCode:(int)error
{
	if (error == BMKErrorOk) {
        NSArray* array = [NSArray arrayWithArray:_bMapView.annotations];
        [_bMapView removeAnnotations:array];
        array = [NSArray arrayWithArray:_bMapView.overlays];
        [_bMapView removeOverlays:array];
        [_shopList removeAllObjects];
        BMKPoiResult* result = [poiResultList objectAtIndex:0];
        for (int i = 0; i < result.poiInfoList.count; i++) {
            BMKPoiInfo* poi = [result.poiInfoList objectAtIndex:i];
			 BMKPointAnnotation* item = [[BMKPointAnnotation alloc]init];
			 item.coordinate = poi.pt;
			 item.title = poi.name;
            item.subtitle=@"20桌|30桌";
            [_shopList addObject:poi.name];
			 [_bMapView addAnnotation:item];
			 [item release];
        }
        [_shopListTable reloadData];
	}else if(error==BMKErrorConnect){
        _alertView=[[RNBlurModalView alloc] initWithParentView:self.view title:@"错误" message:@"没有网络链接。请确保您的网络已经连接。"];
        [_alertView show];
    }else if(error==BMKErrorResultNotFound){
        _alertView=[[RNBlurModalView alloc] initWithParentView:self.view title:@"" message:@"没有找到您要找的位置。"];
        [_alertView show];
    }
}

#pragma mark table
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIImage *image=[UIImage imageNamed:@"shoplist_tableheader.png"];
    UIImageView *headerView=[[[UIImageView alloc] initWithImage:image] autorelease];
    return headerView;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_shopList count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"ShopCell";
    ShopCell *cell=(ShopCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"ShopCell" owner:self options:nil] objectAtIndex:0];
    }
    cell.shopNameLb.text=[_shopList objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (score<GaoJiShiKe) {
        RNBlurModalView *alertview=[[RNBlurModalView alloc] initWithParentView:self.view title:@"抱歉" message:@"您的积分不足，不能进行VIP预定。"];
        [alertview show];
        [alertview release];
    }else{
        [self showOrderView:[_shopList objectAtIndex:indexPath.row]];
    }
    
}

-(void)annotationViewbtn_Clicked:(id)sender{
    NSString *title=[[(UIButton *)sender titleLabel] text];
    [self showOrderView:title];
}

-(void)showOrderView:(NSString *)shopName{
    [theApp setOrderShopName:shopName];
    OrderViewController *orderView=[[OrderViewController alloc] init];
    orderView.shopName=shopName;
    [self.navigationController pushViewController:orderView animated:YES];
    [orderView release];
}


@end
