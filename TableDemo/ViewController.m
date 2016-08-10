//
//  ViewController.m
//  TableDemo
//
//  Created by Volitation小星 on 16/7/22.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDataSource.h"
#import "Model.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableSort;
@property (weak, nonatomic) IBOutlet UITableView *tableSub;

@property (strong,nonatomic)  TableViewDataSource* tableSortDetegate;
@property (strong,nonatomic)  TableViewDataSource* tableSubDetegate;

@property (strong,nonatomic) NSArray * dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArr = [Model getData];
    
    if (self.dataArr.count == 0) {
        return;
    }
    

    
    self.tableSortDetegate = [TableViewDataSource new];
    self.tableSortDetegate.data = self.dataArr;
    self.tableSort.dataSource = self.tableSortDetegate;
    self.tableSort.delegate = self.tableSortDetegate;
    
    self.tableSortDetegate.subTableView = self.tableSub;
    
    
    self.tableSubDetegate = [TableViewDataSource new];
    self.tableSub.dataSource = self.tableSubDetegate;
    self.tableSub.delegate = self.tableSubDetegate;
    
    Model* model = self.dataArr[0];
    self.tableSubDetegate.data = model.arr;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
