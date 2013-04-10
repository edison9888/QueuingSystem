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
#import "RNBlurModalView.h"
@interface MenuViewController ()

@end

@implementation MenuViewController

-(id)init{
    self=[super init];
    if (self) {
        [[NSNotificationCenter defaultCenter]
         addObserver:self selector:@selector(getNewMenu:) name:@"newMenu" object:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    adIndex=2;
    [self setViewLbs];
    [self getServiceInfo];
    _serviceTimer  =  [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(getServiceInfo) userInfo:nil repeats:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [_adTimer invalidate];
    NSData *menuData=[NSKeyedArchiver archivedDataWithRootObject:_menu];
    [menuData writeToFile:kMenuPath atomically:YES];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (!_isNew) {
        NSData *menuData=[NSData dataWithContentsOfFile:kMenuPath];
        if (menuData!=nil) {
            Menu *newMenu=[NSKeyedUnarchiver unarchiveObjectWithData:menuData];
            self.menu=newMenu;
            [self setViewLbs];
        }
    }
    _adTimer  =  [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(changeAds) userInfo:nil repeats:YES];
}

-(void)setViewLbs{
    _telNumLb.text       =  _menu.telNum;
    _menuIdLb.text       =  _menu.menuId;
    _peopleCountLb.text  =  _menu.peopleCount;
}

-(void)changeAds{
    if (adIndex==4) {
        adIndex=1;
    }
    [_bigAdImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"b%i.png",adIndex>4?adIndex-4:adIndex]]];
    adIndex++;
}

-(void)getServiceInfo{
    Service1SoapBinding *binding=[[Service1SoapBinding alloc] initWithAddress:kServiceURL];
    Service1_GetCountBeforeMe *request=[[Service1_GetCountBeforeMe alloc] init];
    request.listNum=_menu.listNum;
    request.customerId=_menu.menuId;
    Service1SoapBindingResponse *response=[binding GetCountBeforeMeUsingParameters:request];
    int lastCount=0;
    for (id mine  in response.bodyParts) {
        if ([mine isKindOfClass:[Service1_GetCountBeforeMeResponse class]]) {
            lastCount=[[mine GetCountBeforeMeResult] intValue];
        }
    }
    if (lastCount!=10011&&lastCount!=10012) {
        [self performSelectorOnMainThread:@selector(updateLastCount:) withObject:[NSNumber numberWithInt:lastCount] waitUntilDone:NO];
    }
    [request release];
    [binding release];
}

-(void)updateLastCount:(NSNumber *)count{
    _lastCountLb.text=[NSString stringWithFormat:@"%i",[count intValue]];
    _lastTimeLb.text=[NSString stringWithFormat:@"%i",[count intValue]*5];
}

-(void)getNewMenu:(NSNotification *)notification{
    _isNew=TRUE;
    self.menu=[(Menu *)[notification object] copy];
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
    [_adTimer release];
    [_bigAdImageView release];
    [_adImageView release];
    [super dealloc];
}
@end
