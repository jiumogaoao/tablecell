//
//  DiscoverTreePicCell.m
//  CustomCell
//
//  Created by 高志强 on 2016/12/13.
//  Copyright © 2016年 tony. All rights reserved.
//

#import "DiscoverTreePicCell.h"

@implementation DiscoverTreePicCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    CGFloat size=[UIScreen mainScreen].bounds.size.width/750;
    if (self) {
        
        //单元格的宽度
        
        
        /// 1.添加ImageView
        self.cellImageLeft = [[UIImageView alloc] initWithFrame: CGRectMake(20*size,45*size, 223*size,152*size)];
        
        [self addSubview:self.cellImageLeft];
        
        self.cellImageCenter = [[UIImageView alloc] initWithFrame: CGRectMake(262*size,45*size, 223*size,152*size)];
        
        [self addSubview:self.cellImageCenter];
        
        self.cellImageRight = [[UIImageView alloc] initWithFrame: CGRectMake(510*size,45*size, 223*size,152*size)];
        
        [self addSubview:self.cellImageRight];
        
        /// 2.添加标题
        
        self.cellTitle = [[UILabel alloc] initWithFrame:CGRectMake(20*size,0, 710*size, 30*size)];
        self.cellTitle.font=[UIFont fontWithName:@"Arial" size:30*size];
        [self addSubview:self.cellTitle];
        
        /// 2.添加赞
        
        self.cellPariseIcon = [[UILabel alloc] initWithFrame:CGRectMake(20*size,210*size, 110*size, 28*size)];
        self.cellPariseIcon.font =[UIFont fontWithName:@"iconfont" size:14];
        self.cellPariseIcon.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        [self addSubview:self.cellPariseIcon];
        
        self.cellParise = [[UILabel alloc] initWithFrame:CGRectMake(60*size,210*size, 110*size, 28*size)];
        self.cellParise.font=[UIFont fontWithName:@"Arial" size:22*size];
        self.cellParise.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        [self addSubview:self.cellParise];
        
        /// 2.添加日期
        
        self.cellDate = [[UILabel alloc] initWithFrame:CGRectMake(577*size,210*size, 153*size, 28*size)];
        self.cellDate.font=[UIFont fontWithName:@"Arial" size:22*size];
        self.cellDate.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        self.cellDate.textAlignment=UITextAlignmentRight;
        [self addSubview:self.cellDate];
    }
    
    return self;
}

@end
