//
//  PlistHelper.m
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "PlistHelper.h"
@implementation PlistHelper
+(int)getUserScore{
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:kPlistPath];
    NSNumber *score=[dic objectForKey:@"Score"];
    return [score intValue];
}

+(NSString *)getTelNum{
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:kPlistPath];
    NSString *telNum=[dic objectForKey:@"TelNum"];
    return telNum;
}

+(NSString *)getEggCount{
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:kPlistPath];
    NSString *eggCount=[dic objectForKey:@"EggCount"];
    return eggCount;
}
@end
