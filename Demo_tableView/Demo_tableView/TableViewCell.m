//
//  TableViewCell.m
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *mediaImgView;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelTop2ContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelTop2Image;//default 10

@end

@implementation TableViewCell

+ (CGFloat)cellHeightWithDictionary:(NSDictionary *)dic {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    NSString *image = dic[@"image"];
    CGFloat imageHeight = -10;
    if (image) {
        imageHeight = (screenWidth-32)*530.0/640;
    }
    
    NSString *text = dic[@"text"];
    NSDictionary *attributes = @{NSFontAttributeName : [UIFont systemFontOfSize:17.f ]};
    CGRect rect = [text boundingRectWithSize:CGSizeMake(screenWidth-32, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading  attributes:attributes context:nil];
    
    return 16 + imageHeight + 10 + ceil(rect.size.height) + 16 + 0.5;//系统分割线占了0.5
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setDictionary:(NSDictionary *)dic {
    _descLabel.text = dic[@"text"];
    
    NSString *image = dic[@"image"];
    if (image) {
        _labelTop2Image.active = YES;
        _labelTop2ContentView.active = NO;
        _mediaImgView.hidden = NO;
        _mediaImgView.image = [UIImage imageNamed:image];
    } else {
        _labelTop2Image.active = NO;
        _labelTop2ContentView.active = YES;
        _mediaImgView.hidden = YES;
    }
    [self setNeedsLayout];
}


@end
