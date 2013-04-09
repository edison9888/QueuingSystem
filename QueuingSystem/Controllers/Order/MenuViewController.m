//
//  MenuViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "MenuViewController.h"
#import "Menu.h"
#import "Service1.h"
@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setViewLbs];
    [self getServiceInfo];
    _serviceTimer        =  [NSTimer scheduledTimerWithTimeInterval:60 target:self selector:@selector(getServiceInfo) userInfo:nil repeats:YES];
}

-(void)setViewLbs{
    _telNumLb.text       =  _menu.telNum;
    _menuIdLb.text       =  _menu.menuId;
    _peopleCountLb.text  =  _menu.poepleCount;
}

-(void)getServiceInfo{
    Service1SoapBinding *binding=[[Service1SoapBinding alloc] initWithAddress:kServiceURL];
    Service1_GetCustomerCount *request=[[Service1_GetCustomerCount alloc] init];
    request.listNum=[NSString stringWithFormat:@"%i",_menu.listNum];
    Service1SoapBindingResponse *response=[binding GetCustomerCountUsingParameters:request];
    int lastCount=0;
    for (id mine  in response.bodyParts) {
        if ([mine isKindOfClass:[Service1_GetCustomerCountResponse class]]) {
            lastCount=[[mine GetCustomerCountResult] intValue];
        }
    }
    [self performSelectorOnMainThread:@selector(updateLastCount:) withObject:[NSNumber numberWithInt:lastCount] waitUntilDone:NO];
    [request release];
    [binding release];
}

-(void)updateLastCount:(NSNumber *)count{
    _lastCountLb.text=[NSString stringWithFormat:@"%i",[count intValue]];
    _lastTimeLb.text=[NSString stringWithFormat:@"%i",[count intValue]*5];
}

-(id)initWithMenu:(Menu *)menu{
    self=[super init];
    if (self) {
        self.menu=menu;
    }
    return self;
}

-(id)init{
    self=[super init];
    if (self) {
        [[NSNotificationCenter defaultCenter]
         addObserver:self selector:@selector(getNewMenu:) name:@"newMenu" object:nil];
    }
    return self;
}

-(void)getNewMenu:(NSNotification *)notification{
    self.menu=[notification object];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_telNumLb release];
    [_menuIdLb release];
    [_peopleCountLb release];
    [_lastCountLb release];
    [_lastTimeLb release];
    [_menu release];
    [super dealloc];
}
@end
