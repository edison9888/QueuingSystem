//
//  Menu.m
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "Menu.h"

@implementation Menu
-(void)dealloc{
    [_menuId release];
    [_poepleCount release];
    [_telNum release];
    [_menuTime release];
    [super dealloc];
}

-(id) init{
    self=[super init];
    if (self) {
        _menuId=@"";
        _poepleCount=@"";
        _telNum=@"";
        _menuTime=@"";
        _menuTime=0;
    }
    return self;
}
@end
