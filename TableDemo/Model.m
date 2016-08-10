//
//  Model.m
//  TableDemo
//
//  Created by Volitation小星 on 16/7/22.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import "Model.h"

@implementation Model

+(NSArray*)getData{
    
    NSMutableArray* arr = [NSMutableArray arrayWithCapacity:20];
//
//    for (int i  = 0; i < 20; i++) {
//        
//        Model* model = [Model new];
//        
//        NSString* s = [NSString stringWithFormat:@"类型%d",i];
//        
//        model.name = s;
//        
//        int num = (int)arc4random_uniform(50);
//        
//        NSMutableArray* mArr = [NSMutableArray arrayWithCapacity:20];
//        
//        for (int j = 0; j < num; j++) {
//            
//            NSString* s1 = [NSString stringWithFormat:@"类型%d的第%d个cell",i,j];
//            
//            [mArr addObject:s1];
//        }
//        
//        model.arr = mArr.copy;
//  
//        
//        
//        [arr addObject:model];
//        
//    }
//    
    
    NSString* path = [[NSBundle mainBundle]pathForResource:@"demo5.json" ofType:nil];
    
    NSData* data = [NSData dataWithContentsOfFile:path];
    
    NSArray* arrData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    for (NSDictionary* dict in arrData) {
        
        Model* model = [Model new];
        
            model.name = dict[@"name"];
        
        model.arr = dict[@"sub"];
        
        [arr addObject:model];
    }
    
    return arr.copy;
}

@end
