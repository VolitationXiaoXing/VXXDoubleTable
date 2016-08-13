//
//  TableViewDataSource.m
//  TwoTableDemo
//
//  Created by Volitation小星 on 16/7/22.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import "TableViewDataSource.h"
#import "Model.h"

@implementation TableViewDataSource

-(void)setData:(NSArray *)data{
    
    if (data.count == 0) {
        return;
    }
    
    _data = data;
    
    [self.subTableView reloadData];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if ([[self.data[indexPath.row] class] isSubclassOfClass:[Model class]]) {
        Model* model = self.data[indexPath.row];
        cell.textLabel.text  = model.name;
    }else{
        
        NSDictionary* dict = self.data[indexPath.row];
        
        NSString* name = dict[@"name"];
        
        cell.textLabel.text = name;
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (self.subTableView) {
        //种类tableView
        
        TableViewDataSource* deleagate = (TableViewDataSource *)self.subTableView.delegate;
        
         Model* model = self.data[indexPath.row];
        
        
        deleagate.data = model.arr;
        
        [self.subTableView reloadData];
        return;
    }
    
    
}


@end
