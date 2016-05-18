//
//  JXOneController.m
//  JXController
//
//  Created by 王加祥 on 16/5/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "JXOneController.h"

@interface JXOneController ()

@end

@implementation JXOneController

static NSString * identifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}
- (void)dealloc {
    NSLog(@"%s",__func__);
}


@end
