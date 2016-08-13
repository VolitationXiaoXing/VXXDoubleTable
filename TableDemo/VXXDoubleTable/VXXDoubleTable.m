//
//  VXXDoubleTable.m
//  TableDemo
//
//  Created by Volitation小星 on 16/8/13.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import "VXXDoubleTable.h"
#import "TableViewDataSource.h"

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
        
        self.tableSortDetegate = [TableViewDataSource new];
        
        self.tableSort.dataSource = self.tableSortDetegate;
        
        self.tableSort.delegate = self.tableSortDetegate;
        
        self.tableSortDetegate.subTableView = self.tableSub;
        
        
        self.tableSubDetegate = [TableViewDataSource new];
        
        self.tableSub.dataSource = self.tableSubDetegate;
        
        self.tableSub.delegate = self.tableSubDetegate;
        
    }
    
    return self;
}

@end
