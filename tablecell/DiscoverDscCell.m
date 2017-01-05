//
//  DiscoverDscCell.m
//  tablecell
//
//  Created by 高志强 on 2017/1/5.
//  Copyright © 2017年 高志强. All rights reserved.
//

#import "DiscoverDscCell.h"
#import "Header.h"
@implementation DiscoverDscCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    CGFloat size=K_mainWidth/750;
    if (self) {
        
        //单元格的宽度
        
        /// 2.添加标题
        
        self.cellTitle = [[UILabel alloc] initWithFrame:CGRectMake(20*size,38, 710*size, 80*size)];
        self.cellTitle.font=[UIFont fontWithName:@"Arial" size:34*size];
        self.cellTitle.lineBreakMode = NSLineBreakByWordWrapping;
        self.cellTitle.numberOfLines = 2; // 0不限制行数
        [self addSubview:self.cellTitle];
        
        /// 3.添加赞
        
        self.cellPariseIcon = [[UILabel alloc] initWithFrame:CGRectMake(20*size,273*size, 110*size, 28*size)];
        self.cellPariseIcon.font =[UIFont fontWithName:@"iconfont" size:14];
        self.cellPariseIcon.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        self.cellPariseIcon.text=@"/uE654";
        [self addSubview:self.cellPariseIcon];
        
        self.cellParise = [[UILabel alloc] initWithFrame:CGRectMake(60*size,273*size, 110*size, 28*size)];
        self.cellParise.font=[UIFont fontWithName:@"Arial" size:22*size];
        self.cellParise.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        [self addSubview:self.cellParise];
        
        /// 4.添加日期
        
        self.cellDate = [[UILabel alloc] initWithFrame:CGRectMake(577*size,270*size, 153*size, 28*size)];
        self.cellDate.font=[UIFont fontWithName:@"Arial" size:22*size];
        self.cellDate.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        self.cellDate.textAlignment=UITextAlignmentRight;
        [self addSubview:self.cellDate];
        
        /// 5.添加简介
        self.cellDsc = [[UILabel alloc] initWithFrame:CGRectMake(20*size,154*size, 710*size, 80*size)];
        self.cellDsc.font=[UIFont fontWithName:@"Arial" size:26*size];
        self.cellDsc.textColor=[UIColor colorWithWhite:0.6 alpha:1];
        self.cellDsc.lineBreakMode = NSLineBreakByWordWrapping;
        self.cellDsc.numberOfLines = 2; // 0不限制行数
        [self addSubview:self.cellDsc];
    }
    
    return self;
}

@end
