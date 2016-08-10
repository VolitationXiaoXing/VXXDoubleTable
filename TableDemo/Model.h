//
//  Model.h
//  TableDemo
//
//  Created by Volitation小星 on 16/7/22.
//  Copyright © 2016年 wangkun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (copy,nonatomic) NSString* name;

@property (strong,nonatomic) NSArray* arr;

+(NSArray*)getData;

@end
