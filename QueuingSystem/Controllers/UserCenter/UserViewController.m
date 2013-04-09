//
//  UserViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "UserViewController.h"
#import "InviteViewController.h"
@interface UserViewController ()

@end

@implementation UserViewController

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
    InviteViewController *i=[[InviteViewController alloc] init];
    self.inviteView=i;
    [i release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)inviteTxBtn_Clicked:(id)sender {
    [self.view addSubview:_inviteView.view];
}

- (IBAction)inviteSinaBtn_Clicked:(id)sender {
    [self.view addSubview:_inviteView.view];
}
- (void)dealloc {
    [_inviteView release];
    [super dealloc];
}
@end
