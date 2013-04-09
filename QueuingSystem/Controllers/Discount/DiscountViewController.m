//
//  DiscountViewController.m
//  QueuingSystem
//
//  Created by admin on 13-4-8.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "DiscountViewController.h"
#import "DiscountCell.h"
#import "PlistHelper.h"
#import "EggPlayViewController.h"
typedef enum{
    NotUse=0,
    OverTime=1,
    OkUse=2,
    Used=3
} DiscountState;

@interface DiscountViewController ()

@end

@implementation DiscountViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _discountTable.delegate=self;
    _discountTable.dataSource=self;
    _discountArray=[[NSArray alloc] init];
    [_eggCountLb setText:[PlistHelper getEggCount]];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self getDiscounts];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 砸蛋
- (IBAction)getEggBtn_Clicked:(id)sender {
    if ([_eggCountLb.text isEqualToString:@"1"]) {
        EggPlayViewController *eggPlay=[[EggPlayViewController alloc] init];
        [self presentViewController:eggPlay animated:YES completion:nil];
    }
}
- (void)dealloc {
    [_discountTable release];
    [_discountArray release];
    [_eggCountLb release];
    [super dealloc];
}

-(void)getDiscounts{
    self.discountArray=[PlistHelper getDiscounts];
    _eggCountLb.text=[PlistHelper getEggCount];
    [_discountTable reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _discountArray.count;
}

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier=@"DiscountCell";
    DiscountCell *cell=(DiscountCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"DiscountCell" owner:self options:nil] objectAtIndex:0];
    }
    NSArray *discountArr=[[_discountArray objectAtIndex:indexPath.row] componentsSeparatedByString:@"的"];
    NSString *key=[discountArr objectAtIndex:0];
    cell.shopNameLb.text=key;
    NSString *discount=[discountArr objectAtIndex:1];
    cell.discountNameLb.text=[[discount componentsSeparatedByString:@"|"] objectAtIndex:0];
    int state=[[[discount componentsSeparatedByString:@"|"] objectAtIndex:1] intValue];
    if (state==NotUse) {
        cell.stateLb.text=@"未使用";
        if ([key isEqualToString:theApp.orderShopName]) {
            [cell.useBtn setImage:[UIImage imageNamed:@"okuse.png"] forState:UIControlStateNormal];
        }else{
            [cell.useBtn setImage:[UIImage imageNamed:@"notuse.png"] forState:UIControlStateNormal];
        }
    }else if (state==OverTime){
        cell.stateLb.text=@"已过期";
        [cell.useBtn setImage:[UIImage imageNamed:@"overtime.png"] forState:UIControlStateNormal];
    }else if (state==Used){
        cell.stateLb.text=[[discount componentsSeparatedByString:@"|"] objectAtIndex:2];//已经使用
        [cell.useBtn setImage:[UIImage imageNamed:@"overtime.png"] forState:UIControlStateNormal];
    }
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 52;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIImage *image=[UIImage imageNamed:@"discount_tableheader.png"];
    UIImageView *headerView=[[[UIImageView alloc] initWithImage:image] autorelease];
    return headerView;
}
@end
