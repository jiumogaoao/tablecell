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
#import "DiscoverDscPicCell.h"
#import "DiscoverDscCell.h"
#define DiscoverBigIdentifier @"DiscoverBigIdentifier"
#define DiscoverSinglePicIdentifier @"DiscoverSinglePicIdentifier"
#define DiscoverTreePicIdentifier @"DiscoverTreePicIdentifier"
#define DiscoverDscPicIdentifier @"DiscoverDscPicIdentifier"
#define DiscoverDscIdentifier @"DiscoverDscIdentifier"
@interface ViewController ()
{
    NSMutableArray *cellHeight;
    UITableViewCell *returnCell;
    CGFloat size;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cellHeight=[[NSMutableArray alloc] init];
    size=[UIScreen mainScreen].bounds.size.width/750;
    //设置可重用单元格标识与单元格类型
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[DiscoverBigCell class]  forCellReuseIdentifier:DiscoverBigIdentifier];
    [self.tableView registerClass:[DiscoverSinglePicCell class]  forCellReuseIdentifier:DiscoverSinglePicIdentifier];
    [self.tableView registerClass:[DiscoverTreePicCell class]  forCellReuseIdentifier:DiscoverTreePicIdentifier];
    [self.tableView registerClass:[DiscoverDscPicCell class]  forCellReuseIdentifier:DiscoverDscPicIdentifier];
    [self.tableView registerClass:[DiscoverDscCell class]  forCellReuseIdentifier:DiscoverDscIdentifier];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark --UITableViewDataSource 协议方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    


    if([indexPath row] == 0){
        DiscoverBigCell *cellBig = [tableView dequeueReusableCellWithIdentifier:DiscoverBigIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(408*size) atIndex:[indexPath row]];
        cellBig.cellTitle.text = @"2016全球精准医疗（中国）峰会圆满召开！";
        
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellBig.cellImage.image = [UIImage imageNamed:imagePath];
        returnCell = cellBig;
    }
    if([indexPath row] == 1){
        DiscoverSinglePicCell *cellSingle = [tableView dequeueReusableCellWithIdentifier:DiscoverSinglePicIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(196*size) atIndex:[indexPath row]];
        cellSingle.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
        
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellSingle.cellImage.image = [UIImage imageNamed:imagePath];
        
        cellSingle.cellParise.text = @"23";
        
        cellSingle.cellDate.text= @"2016/12/06";
        returnCell = cellSingle;
    }
    if([indexPath row] == 2){
        
        DiscoverTreePicCell *cellTree = [tableView dequeueReusableCellWithIdentifier:DiscoverTreePicIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(286*size) atIndex:[indexPath row]];
        cellTree.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
        
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellTree.cellImageLeft.image = [UIImage imageNamed:imagePath];
        
        cellTree.cellImageCenter.image = [UIImage imageNamed:imagePath];
        
        cellTree.cellImageRight.image = [UIImage imageNamed:imagePath];
        
        cellTree.cellParise.text = @"24";
        
        cellTree.cellDate.text= @"2016/12/06";
       returnCell = cellTree;
    }    
    if([indexPath row] == 3){
        
        DiscoverDscPicCell *cellFour = [tableView dequeueReusableCellWithIdentifier:DiscoverDscPicIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(286*size) atIndex:[indexPath row]];
        cellFour.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
        cellFour.cellDsc.text=@"很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多描述";
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellFour.cellImage.image = [UIImage imageNamed:imagePath];
        
        cellFour.cellParise.text = @"24";
        
        cellFour.cellDate.text= @"2016/12/06";
        returnCell = cellFour;
    }
    if([indexPath row] == 4){
        
        DiscoverDscCell *cellFour = [tableView dequeueReusableCellWithIdentifier:DiscoverDscIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(286*size) atIndex:[indexPath row]];
        cellFour.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
        cellFour.cellDsc.text=@"很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多很多描述";
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellFour.cellParise.text = @"24";
        
        cellFour.cellDate.text= @"2016/12/06";
        returnCell = cellFour;
    }
    return returnCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat h=100;
    if(cellHeight.count > [indexPath row]){
        NSNumber *hh=[cellHeight objectAtIndex:[indexPath row]];
        h=[hh floatValue];
        NSLog(@"%ld",(long)[indexPath row]);
        NSLog(@"%f",h);
    }
    return h;
}


@end
