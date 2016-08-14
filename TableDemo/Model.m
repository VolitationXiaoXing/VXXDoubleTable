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
