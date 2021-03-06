//
//  OrderViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "OrderViewController.h"
#import "Service1.h"
#import "UIView+Shark.h"
#import "PlistHelper.h"
#import "RNBlurModalView.h"
#import "DejalActivityView.h"
#import "Menu.h"
@interface OrderViewController ()

@end

@implementation OrderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.telNum=[PlistHelper getTelNum];
    _shopNameLb.text=_shopName;
    UIActionSheet *actionSheet=[[UIActionSheet alloc] initWithTitle:@"时间选择\n\n\n\n\n\n\n\n\n\n\n" delegate:self cancelButtonTitle:@"确定" destructiveButtonTitle:nil otherButtonTitles:nil];
    [actionSheet setActionSheetStyle:UIActionSheetStyleDefault];
    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    [datePicker setDatePickerMode:UIDatePickerModeTime];
    NSLocale *china=[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    [datePicker setLocale:china];
    [china release];
    [datePicker setTag:101];
    [actionSheet addSubview:datePicker];
    [datePicker release];
    self.timeSheet=actionSheet;
    [actionSheet release];
}

#pragma mark 时间选择
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    UIDatePicker *datePicker = (UIDatePicker *)[actionSheet viewWithTag:101];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy年MM月dd日 hh:mm";
    NSString *timestamp = [formatter stringFromDate:datePicker.date];
    [formatter release];
    _timeLb.text=timestamp;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)peopleCountBtn_Clicked:(id)sender {
    UIButton *btn=(UIButton *)sender;
    if ([btn.titleLabel.text isEqualToString:@"1"]) {
        _peopleCountLb.text=@"1-2人";
        _listNum=1;
    }else if ([btn.titleLabel.text isEqualToString:@"2"]){
        _peopleCountLb.text=@"3-4人";
        _listNum=2;
    }else if ([btn.titleLabel.text isEqualToString:@"3"]){
        _peopleCountLb.text=@"5-8人";
        _listNum=3;
    }else{
        _peopleCountLb.text=@"8人以上";
        _listNum=4;
    }
}

- (IBAction)backBtn_Clicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)dealloc {
    [_shopNameLb release];
    [_peopleCountLb release];
    [_telNum release];
    [_shopName release];
    [_timeLb release];
    [_timeSheet release];
    [super dealloc];
}
- (IBAction)orderBtn_Clicked:(UIButton *)sender {
    if (![self validateOrderValues]) {
        return;
    }
    [DejalBezelActivityView activityViewForView:self.view
                                      withLabel:@"预定中……"];
    self.telNum=[PlistHelper getTelNum];
    Service1SoapBinding *binding=[[Service1SoapBinding alloc] initWithAddress:kServiceURL];
    binding.logXMLInOut=YES;
    Service1_AddNewCustomerGetId *request=[[Service1_AddNewCustomerGetId alloc] init];
    request.count=_peopleCountLb.text;
    request.tel=_telNum;
    request.listNum=[NSString stringWithFormat:@"%i",_listNum];
    Service1SoapBindingResponse *response=[binding AddNewCustomerGetIdUsingParameters:request];
    NSString *isSuccessed=@"";
    for (id mine in response.bodyParts) {
        if ([mine isKindOfClass:[Service1_AddNewCustomerGetIdResponse class]]) {
            isSuccessed=[mine AddNewCustomerGetIdResult];
        }
    }
    [request release];
    [binding release];
    [DejalBezelActivityView removeViewAnimated:YES];
    if ([[[isSuccessed componentsSeparatedByString:@"|"] objectAtIndex:0] isEqualToString:@"新增成功"]) {
        NSString *menuId=[[isSuccessed componentsSeparatedByString:@"|"] objectAtIndex:1];
        Menu *menu=[[Menu alloc] init];
        menu.menuId=menuId;
        menu.menuTime=_timeLb.text;
        if ([_peopleCountLb.text isEqualToString:@"8人以上"]) {
            menu.peopleCount=@"8+";
        }else{
            menu.peopleCount=[_peopleCountLb.text stringByReplacingOccurrencesOfString:@"人" withString:@""];
        }
        menu.listNum=[NSString stringWithFormat:@"%i",_listNum];
        menu.telNum=_telNum;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"newMenu" object:menu];
        [menu release];
        [self.tabBarController setSelectedIndex:1];
    }else{
        RNBlurModalView *alertView=[[RNBlurModalView alloc] initWithParentView:self.view title:@"出错了" message:isSuccessed];
        [alertView show];
        [alertView release];
    }
}

-(BOOL)validateOrderValues{
    if ([_peopleCountLb.text isEqualToString:@""]) {
        [_peopleCountLb animateIncorrect];
        return false;
    }else{
        return TRUE;
    }
}
- (IBAction)timeLb_TouchDown:(id)sender {
    [_timeSheet showInView:theApp.window];
}
@end
