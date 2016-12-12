//
//  DiscoverBigCell.m
//  CustomCell
//
//  Created by 高志强 on 2016/12/13.
//  Copyright © 2016年 tony. All rights reserved.
//

#import "DiscoverBigCell.h"

@implementation DiscoverBigCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    CGFloat size=[UIScreen mainScreen].bounds.size.width/750;
    if (self) {
        
        //单元格的宽度

        
        /// 1.添加ImageView
        self.cellImage = [[UIImageView alloc] initWithFrame: CGRectMake(0,0, 750*size,370*size)];
        
        [self addSubview:self.cellImage];
        
        /// 2.添加标签

        self.cellTitle = [[UILabel alloc] initWithFrame:CGRectMake(0,300*size, 750*size, 70*size)];
        self.cellTitle.textColor=[UIColor colorWithWhite:1 alpha:1];
        self.cellTitle.backgroundColor=[UIColor colorWithWhite:0 alpha:0.3];
        self.cellTitle.font=[UIFont fontWithName:@"Arial" size:30*size];
        [self addSubview:self.cellTitle];
    }
    
    return self;
}

@end
