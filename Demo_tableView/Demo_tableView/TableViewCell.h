//
//  TableViewCell.h
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

/**
 (iOS8 之前使用本方式计算)
 根据数据cell计算自身高度

 @param dic 数据
 @return cell高度
 */
+ (CGFloat)cellHeightWithDictionary:(NSDictionary *)dic;

/**
 设置cell数据

 @param dic 数据
 */
- (void)setDictionary:(NSDictionary *)dic;

@end
