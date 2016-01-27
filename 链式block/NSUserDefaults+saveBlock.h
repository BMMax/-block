//
//  NSUserDefaults+saveBlock.h
//  链式block
//
//  Created by user on 16/1/27.
//  Copyright © 2016年 mobin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (saveBlock)
- (NSUserDefaults *(^)(NSString *key,id value))save;
+ (void)save:(void(^)(NSUserDefaults *userDefault))userDefaultsBlock;
@end
