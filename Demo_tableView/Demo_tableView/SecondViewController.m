//
//  SecondViewController.m
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "SecondViewController.h"
#import "DataAccess.h"
#import "TableViewCell.h"

@interface SecondViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _dataArray = [DataAccess sharedInstance].array;
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.estimatedRowHeight = 300;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:_tableView];
}

#pragma mark - tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *dic = [_dataArray objectAtIndex:indexPath.row];
    [cell setDictionary:dic];
    return cell;
}


@end
