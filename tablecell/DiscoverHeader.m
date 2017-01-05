//
//  DiscoverHeader.m
//  BigHealthy
//
//  Created by Wikky on 2016/12/15.
//  Copyright © 2016年 Wikky. All rights reserved.
//

#import "DiscoverHeader.h"
#import "Header.h"
@implementation DiscoverHeader

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initCell];
    }
    return self;
}

-(void)initCell{
    self.headerImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, K_mainWidth, YMAKE(185))];
    self.headerImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.headerImage];

    self.contenV = [[UIView alloc]initWithFrame:CGRectMake(0, self.headerImage.frame.size.height - YMAKE(35), K_mainWidth, YMAKE(35))];
    //    vv.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];

    self.headerTitle = [[UILabel alloc]initWithFrame:CGRectMake(15, self.headerImage.frame.size.height - YMAKE(35), K_mainWidth - 15, YMAKE(35))];
    self.headerTitle.textColor = [UIColor whiteColor];

    [self.contentView addSubview:self.contenV];
    [self.contentView addSubview:self.headerTitle];

    //实现背景渐变
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.contenV.bounds;

    //将CAGradientlayer对象添加在我们要设置背景色的视图的layer层
    [self.contenV.layer addSublayer:gradientLayer];

    //设置渐变区域的起始和终止位置（范围为0-1）
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);

    //设置颜色数组
    gradientLayer.colors = @[(id)[UIColor colorWithWhite:0 alpha:0.0].CGColor,
                             (id)[UIColor colorWithWhite:0 alpha:0.6].CGColor];

    //设置颜色分割点（范围：0-1）
    gradientLayer.locations = @[[NSNumber numberWithFloat:0.0f],
                                [NSNumber numberWithFloat:0.6f]];;

}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
