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
#import "VXXDoubleTable.h"

@interface ViewController ()


@property (strong,nonatomic) NSArray * dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    
    
    self.dataArr = [Model getData];
    
    VXXDoubleTable* doubleTable = [VXXDoubleTable new];
    
    doubleTable.frame = self.view.bounds;
    
    doubleTable.dataArr = self.dataArr;
    
    [self.view addSubview:doubleTable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
