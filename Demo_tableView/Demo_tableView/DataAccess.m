//
//  DataAccess.m
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "DataAccess.h"

@interface DataAccess ()

@end

@implementation DataAccess

static DataAccess *instance = nil;
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[[self class] alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _array = [[self class] getData];
    }
    return self;
}

+ (NSArray *)getData {
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 99; i++) {
        NSDictionary *dic = [self generateCellData];
        [arr addObject:dic];
    }
    return arr;
}

+ (NSDictionary *)generateCellData {
    NSMutableString *str = [NSMutableString string];
    int random = arc4random()%30 + 1;
    for (int i = 0; i < random; i++) {
        [str appendString:@"随机生成的内容"];
    }
    
    NSString *imageName = @"eva_image";
    if (random % 3 == 0) {
        imageName = nil;
    }
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObject:str forKey:@"text"];
    if (imageName) {
        [dic setObject:imageName forKey:@"image"];
    }
    return dic;
}

@end
