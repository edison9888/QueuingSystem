//
//  Menu.h
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Menu : NSObject<NSCoding,NSCopying>
@property (copy,nonatomic) NSString *menuId;
@property (copy,nonatomic) NSString *peopleCount;
@property (copy,nonatomic) NSString *menuTime;
@property (copy,nonatomic) NSString *telNum;
@property (copy,nonatomic) NSString *listNum;
@end
