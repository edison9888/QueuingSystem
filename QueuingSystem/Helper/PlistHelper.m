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

+(NSArray *)getDiscountKind{
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:kDiscountKindPath];
    NSMutableArray *arr=[NSMutableArray array];
    NSArray *keys=[dic allKeys];
    for (NSString *key in keys) {
        NSArray *discArr=[dic objectForKey:key];
        for (int i=0; i<discArr.count; i++) {
            NSString *disc=[discArr objectAtIndex:i];
            [arr addObject:[NSString stringWithFormat:@"%@的%@",key,disc]];
        }
    }
    return arr;
}

+(void)addNewDiscount:(NSString *)key :(NSString *)content{
    NSMutableDictionary *dic=[NSMutableDictionary dictionaryWithContentsOfFile:kPlistPath];
    NSString *keyPath=[NSString stringWithFormat:@"Discount.%@",key];
    NSMutableArray *arr=[dic valueForKeyPath:keyPath];
    [arr addObject:[content stringByAppendingString:@"|0"]];
    [dic setValue:arr forKeyPath:keyPath];
    [dic writeToFile:kPlistPath atomically:YES];
}

+(NSArray *)getDiscounts{
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:kPlistPath];
    NSDictionary *discountDic=[dic objectForKey:@"Discount"];
    NSMutableArray *arr=[NSMutableArray array];
    for (NSString *key in [discountDic allKeys]) {
        NSArray *discountArr=[discountDic objectForKey:key];
        for (int i=0; i<discountArr.count; i++) {
            NSString *discount=[discountArr objectAtIndex:i];
            [arr addObject:[NSString stringWithFormat:@"%@的%@",key,discount]];
        }
    }
    return arr;
}

+(void)updateEggCount:(NSString *)count{
    NSMutableDictionary *dic=[NSMutableDictionary dictionaryWithContentsOfFile:kPlistPath];
    [dic setValue:count forKey:@"EggCount"];
    [dic writeToFile:kPlistPath atomically:YES];
}
@end
