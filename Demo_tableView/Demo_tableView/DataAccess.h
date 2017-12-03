//
//  DataAccess.h
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataAccess : NSObject
@property (nonatomic, strong) NSArray *array;

+ (instancetype)sharedInstance;

@end
