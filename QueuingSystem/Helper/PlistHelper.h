//
//  PlistHelper.h
//  QueuingSystem
//
//  Created by admin on 13-4-9.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kPlistPath [NSHomeDirectory() stringByAppendingString:@"/Documents/CustomerInfo.plist"]
@interface PlistHelper : NSObject
+(int)getUserScore;
+(NSString *)getTelNum;
+(NSString *)getEggCount;
@end
