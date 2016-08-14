//
//  VXXDoubleTable.m
//  TableDemo
//
//  Created by Volitation小星 on 16/8/13.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import "VXXDoubleTable.h"
#import "TableViewDataSource.h"
#import "UIView+Frame.h"
#import "Model.h"

@interface VXXDoubleTable ()

@property (weak, nonatomic) UITableView *tableSort;

@property (weak, nonatomic) UITableView *tableSub;

@property (strong,nonatomic)  TableViewDataSource* tableSortDetegate;
@property (strong,nonatomic)  TableViewDataSource* tableSubDetegate;

@end

@implementation VXXDoubleTable


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        UITableView* tableSort = [UITableView new];
        
        self.tableSort = tableSort;
        
        UITableView* tableSub = [UITableView new];
        
        self.tableSub = tableSub;
        
        self.tableSortDetegate = [TableViewDataSource new];
        
        self.tableSort.dataSource = self.tableSortDetegate;
        
        self.tableSort.delegate = self.tableSortDetegate;
        
        self.tableSortDetegate.subTableView = self.tableSub;
        
        
        self.tableSubDetegate = [TableViewDataSource new];
        
        self.tableSub.dataSource = self.tableSubDetegate;
        
        self.tableSub.delegate = self.tableSubDetegate;
        
        
        [self addSubview:self.tableSort];
        [self addSubview:self.tableSub];
    }
    
    return self;
}


-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.tableSub.frame = self.bounds;
    
    self.tableSort.frame = self.bounds;
    
    self.tableSort.width = self.bounds.size.width * 0.5;
    
    self.tableSub.x = self.bounds.size.width * 0.5;
    
    self.tableSub.width = self.tableSort.width;
    
}

-(void)setDataArr:(NSArray *)dataArr{
    
    _dataArr = dataArr;
    
    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    
    self.tableSortDetegate.data = dataArr;
    
    [self.tableSort selectRowAtIndexPath:indexPath animated:NO scrollPosition:UITableViewScrollPositionNone];
    
     Model* model = dataArr[0];
    
    self.tableSubDetegate.data = model.arr;
}

@end
