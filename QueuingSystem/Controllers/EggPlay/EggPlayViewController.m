//
//  EggPlayViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "EggPlayViewController.h"

@interface EggPlayViewController ()

@end

@implementation EggPlayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)eggBtn_Clicked:(id)sender {
    [(UIButton *)sender setImage:[UIImage imageNamed:@"egg_broken.png"] forState:UIControlStateNormal];
}
@end
