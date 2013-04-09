//
//  EggPlayViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "EggPlayViewController.h"
#import "PlistHelper.h"
#import "RNBlurModalView.h"
@interface EggPlayViewController ()

@end

@implementation EggPlayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    isClicked=FALSE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)eggBtn_Clicked:(id)sender {
    if (isClicked) {
        return;
    }
    isClicked=TRUE;
    [(UIButton *)sender setImage:[UIImage imageNamed:@"egg_broken.png"] forState:UIControlStateNormal];
    NSArray *discountKind=[PlistHelper getDiscountKind];
    int count=discountKind.count;
    int rdmNum=(arc4random()%count);
    if (rdmNum<count/2) {
        int discountNum=arc4random()%count;
        NSString *disc=[discountKind objectAtIndex:discountNum];
        NSArray *discArr=[disc componentsSeparatedByString:@"的"];
        [PlistHelper addNewDiscount:[discArr objectAtIndex:0] :[discArr objectAtIndex:1]];
        [PlistHelper updateEggCount:@"0"];
        RNBlurModalView *av=[[RNBlurModalView alloc] initWithParentView:self.view title:@"恭喜" message:[NSString stringWithFormat:@"您获得了%@",disc]];
        [av show];
        [av release];
    }else{
        RNBlurModalView *av=[[RNBlurModalView alloc] initWithParentView:self.view title:@"抱歉" message:@"您没有获得优惠。"];
        [av show];
        [av release];
    }
}

- (IBAction)backBtn_Click:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
