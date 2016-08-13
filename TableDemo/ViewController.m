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


@property (strong,nonatomic) NSArray * dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataArr = [Model getData];
    
    if (self.dataArr.count == 0) {
        return;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
