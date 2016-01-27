//
//  NSUserDefaults+saveBlock.m
//  链式block
//
//  Created by user on 16/1/27.
//  Copyright © 2016年 mobin. All rights reserved.
//

#import "NSUserDefaults+saveBlock.h"

@implementation NSUserDefaults (saveBlock)

- (NSUserDefaults *(^)(NSString *key,id value))save
{
    return ^(NSString *key, id value){
    
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [ud setObject:value forKey:key];
        [ud synchronize];
        return ud;
    };
}

+ (void)save:(void(^)(NSUserDefaults *userDefault))userDefaultsBlock
{
    userDefaultsBlock([NSUserDefaults standardUserDefaults]);
}

@end
