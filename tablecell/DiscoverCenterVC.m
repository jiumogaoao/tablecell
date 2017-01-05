//
//  DiscoverCenterVC.m
//  BigHealthy
//
//  Created by 高志强 on 2016/11/29.
//  Copyright © 2016年 Wikky. All rights reserved.
//

#import "DiscoverCenterVC.h"
#import "Header.h"
#import "APIConnect.h"
#import "DiscoverBigCell.h"
#import "DiscoverSinglePicCell.h"
#import "DiscoverTreePicCell.h"

#define DiscoverBigIdentifier @"DiscoverBigIdentifier"
#define DiscoverSinglePicIdentifier @"DiscoverSinglePicIdentifier"
#define DiscoverTreePicIdentifier @"DiscoverTreePicIdentifier"
@interface DiscoverCenterVC ()<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *cellHeight;
    UITableViewCell *returnCell;
    CGFloat size;
}
@property (strong, nonatomic) UITableView *tableView;
@end

@implementation DiscoverCenterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *attributes=[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:YMAKE(18)],NSFontAttributeName, nil];
    [self.navigationController.navigationBar setTitleTextAttributes:attributes];
    self.title=@"发现";
    self.tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, K_mainWidth, K_mainHeight)];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self.view addSubview:self.tableView];
    cellHeight=[[NSMutableArray alloc] init];
    size=K_mainWidth/750;
    //设置可重用单元格标识与单元格类型
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[DiscoverBigCell class]  forCellReuseIdentifier:DiscoverBigIdentifier];
    [self.tableView registerClass:[DiscoverSinglePicCell class]  forCellReuseIdentifier:DiscoverSinglePicIdentifier];
    [self.tableView registerClass:[DiscoverTreePicCell class]  forCellReuseIdentifier:DiscoverTreePicIdentifier];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark --UITableViewDataSource 协议方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    
    if([indexPath row] == 0){
        DiscoverBigCell *cellBig = [tableView dequeueReusableCellWithIdentifier:DiscoverBigIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(408*size) atIndex:[indexPath row]];
        cellBig.cellTitle.text = @"2016全球精准医疗（中国）峰会圆满召开！";
        
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellBig.cellImage.image = [UIImage imageNamed:@"member_active"];
        returnCell = cellBig;
    }
    if([indexPath row] == 1){
        DiscoverSinglePicCell *cellSingle = [tableView dequeueReusableCellWithIdentifier:DiscoverSinglePicIdentifier forIndexPath:indexPath];
        [cellHeight insertObject:@(196*size) atIndex:[indexPath row]];
        cellSingle.cellTitle.text = @"健康医疗科技精准对接会暨陕西省国家临床医学研究中心";
        
        NSString *imageFile = @"USA";
        NSString *imagePath = [[NSString alloc] initWithFormat:@"%@.png", imageFile];
        
        cellSingle.cellImage.image = [UIImage imageNamed:@"member_active"];
        
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
        
        cellTree.cellImageLeft.image = [UIImage imageNamed:@"member_active"];
        
        cellTree.cellImageCenter.image = [UIImage imageNamed:@"member_active"];
        
        cellTree.cellImageRight.image = [UIImage imageNamed:@"member_active"];
        
        cellTree.cellParise.text = @"24";
        
        cellTree.cellDate.text= @"2016/12/06";
        returnCell = cellTree;
    }
    
    return returnCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat h=100;
    if(cellHeight.count > [indexPath row]){
        NSNumber *hh=[cellHeight objectAtIndex:[indexPath row]];
        h=[hh floatValue];
    }
    return h;
}

@end
