//
//  DiscoverSinglePicCell.m
//  CustomCell
//
//  Created by 高志强 on 2016/12/13.
//  Copyright © 2016年 tony. All rights reserved.
//

#import "DiscoverSinglePicCell.h"

@implementation DiscoverSinglePicCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    CGFloat size=[UIScreen mainScreen].bounds.size.width/750;
    if (self) {
        
        //单元格的宽度
        
        
        /// 1.添加ImageView
        self.cellImage = [[UIImageView alloc] initWithFrame: CGRectMake(508*size,0, 220*size,150*size)];
        
        [self addSubview:self.cellImage];
        
        /// 2.添加标题
        
        self.cellTitle = [[UILabel alloc] initWithFrame:CGRectMake(20*size,0, 469*size, 114*size)];
        self.cellTitle.font=[UIFont fontWithName:@"Arial" size:30*size];
        [self addSubview:self.cellTitle];
        
        /// 2.添加赞
        
        self.cellParise = [[UILabel alloc] initWithFrame:CGRectMake(20*size,112*size, 110*size, 28*size)];
        self.cellParise.font=[UIFont fontWithName:@"Arial" size:22*size];
        self.cellParise.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        [self addSubview:self.cellParise];
        
        /// 2.添加日期
        
        self.cellDate = [[UILabel alloc] initWithFrame:CGRectMake(336*size,112*size, 153*size, 28*size)];
        self.cellDate.font=[UIFont fontWithName:@"Arial" size:22*size];
        self.cellDate.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        self.cellDate.textAlignment=UITextAlignmentRight;
        [self addSubview:self.cellDate];
    }
    
    return self;
}


@end
