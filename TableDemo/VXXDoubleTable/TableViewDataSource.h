//
//  TableViewDataSource.h
//  TwoTableDemo
//
//  Created by Volitation小星 on 16/7/22.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewDataSource : NSObject<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic) NSArray* data;

@property (weak,nonatomic) UITableView* subTableView;

@end
