//
//  InviteViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "InviteViewController.h"

@interface InviteViewController ()

@end

@implementation InviteViewController

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
    FriendViewController *f=[[FriendViewController alloc] init];
    self.friendView=f;
    _friendView.delegate=self;
    [f release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)atBtn_Clicked:(id)sender {
    [self presentViewController:_friendView animated:YES completion:nil];
}

- (IBAction)cancelBtn_Clicked:(id)sender {
    [self.view removeFromSuperview];
}

- (IBAction)okBtn_Clicked:(id)sender {
    [self.view removeFromSuperview];
}

- (IBAction)backGroundBtn_Clicked:(id)sender {
    [_contenTxtView resignFirstResponder];
    [_atTextView resignFirstResponder];
}

-(void)didChooseFriend:(NSString *)name{
    [_atTextView setText:[_atTextView.text stringByAppendingFormat:@"@%@ ",name]];
}

- (void)dealloc {
    [_userNameLb release];
    [_friendView release];
    [_contenTxtView release];
    [_atTextView release];
    [super dealloc];
}
@end
