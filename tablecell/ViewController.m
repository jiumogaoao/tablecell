//
//  ViewController.m
//  CustomCell
//
//  Created by 高志强 on 2016/12/13.
//  Copyright © 2016年 tony. All rights reserved.
//

#import "ViewController.h"
#import "DiscoverBigCell.h"
#import "DiscoverSinglePicCell.h"
#import "DiscoverTreePicCell.h"

#define cellIdentifier @"CellIdentifier"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置可重用单元格标识与单元格类型
    //[self.tableView registerClass:[DiscoverBigCell class]  forCellReuseIdentifier:cellIdentifier];
    //[self.tableView registerClass:[DiscoverSinglePicCell class]  forCellReuseIdentifier:cellIdentifier];
    [self.tableView registerClass:[DiscoverTreePicCell class]  forCellReuseIdentifier:cellIdentifier];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark --UITableViewDataSource 协议方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
/*
    DiscoverBigCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];

    cell.cellTitle.text = @"2016全球精准医疗（中国）峰会圆满召开！";
    
    NSString *imageFile = @"USA";
    NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];

    cell.cellImage.image = [UIImage imageNamed:imagePath];
  */
  /*
    DiscoverSinglePicCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
    
    NSString *imageFile = @"USA";
    NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
    
    cell.cellImage.image = [UIImage imageNamed:imagePath];
    
    cell.cellParise.text = @"23";
    
    cell.cellDate.text= @"2016/12/06";

*/
    DiscoverTreePicCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
    
    NSString *imageFile = @"USA";
    NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
    
    cell.cellImageLeft.image = [UIImage imageNamed:imagePath];
    
    cell.cellImageCenter.image = [UIImage imageNamed:imagePath];
    
    cell.cellImageRight.image = [UIImage imageNamed:imagePath];
    
    cell.cellParise.text = @"23";
    
    cell.cellDate.text= @"2016/12/06";
    return cell;
}

@end
