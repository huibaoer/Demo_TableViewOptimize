//
//  FirstViewController.m
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "FirstViewController.h"
#import "DataAccess.h"
#import "TableViewCell.h"

@interface FirstViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _dataArray = [DataAccess sharedInstance].array;
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:_tableView];
    
}

#pragma mark - tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = _dataArray[indexPath.row];
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell setDictionary:dic];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = _dataArray[indexPath.row];
    CGFloat cellHeight = [TableViewCell cellHeightWithDictionary:dic];
    return cellHeight;
}


@end
