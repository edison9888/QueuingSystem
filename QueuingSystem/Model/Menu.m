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
    [_peopleCount release];
    [_telNum release];
    [_menuTime release];
    [_listNum release];
    [super dealloc];
}

-(id) init{
    self=[super init];
    if (self) {
        _menuId=@"";
        _peopleCount=@"";
        _telNum=@"";
        _menuTime=@"";
        _listNum=@"";
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_menuId forKey:@"menuId"];
    [aCoder encodeObject:_peopleCount forKey:@"peopleCount"];
    [aCoder encodeObject:_telNum forKey:@"telNum"];
    [aCoder encodeObject:_menuTime forKey:@"menuTime"];
    [aCoder encodeObject:_listNum forKey:@"listNum"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self=[super init];
    if (self) {
        self.menuId=[aDecoder decodeObjectForKey:@"menuId"];
        self.peopleCount=[aDecoder decodeObjectForKey:@"peopleCount"];
        self.telNum=[aDecoder decodeObjectForKey:@"telNum"];
        self.menuTime=[aDecoder decodeObjectForKey:@"menuTime"];
        self.listNum=[aDecoder decodeObjectForKey:@"listNum"];
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Menu *menu=[[[self class] allocWithZone:zone] init];
    menu.menuId=self.menuId;
    menu.peopleCount=self.peopleCount;
    menu.telNum=self.telNum;
    menu.menuTime=self.menuTime;
    menu.listNum=self.listNum;
    return menu;
}
@end
