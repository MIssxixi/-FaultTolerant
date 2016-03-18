//
//  ArrayTest.m
//  Test
//
//  Created by yongjie_zou on 16/3/18.
//  Copyright © 2016年 yongjie_zou. All rights reserved.
//

#import "ArrayTest.h"

@implementation ArrayTest

+ (void)test
{
    NSArray *array;
    NSMutableArray *mutableArray = [NSMutableArray array];
    NSObject *object = nil;
    NSString *string = nil;
    NSURL *url = nil;
    NSObject *objectArray[1];
    objectArray[0] = nil;
    //崩溃
//    array = [NSArray arrayWithObject:object];
    array = [NSArray arrayWithObject:object?:[NSNull null]];
    
//    array = [NSArray arrayWithObjects:objectArray  count:1];      //count不能为负，不能大于objectArray.count + array.count （但似乎不能大于objectArray.count)
    objectArray[0] = @"";
//    array = [NSArray arrayWithObjects:objectArray count:2];        //有时可以通过，有时崩溃
    array = [NSArray arrayWithObjects:objectArray count:1];
    
//    array = [array arrayByAddingObject:object];
    array = [array arrayByAddingObject:objectArray[0]];
   
//    object = [array objectAtIndex:2];                              //＊＊＊＊
    if (1 < array.count) {
        object = [array objectAtIndex:1];
    }
    
//    [array valueForKey:nil];
    
//    [mutableArray addObject:nil];
    
//    [mutableArray insertObject:nil atIndex:3];                    //数据不为nil，且index不能越界
    
//    [mutableArray removeObjectAtIndex:2];                         //index不能越界
    [mutableArray removeObject:nil];
    
    
    
    //不会崩溃
    array = [NSArray arrayWithArray:array];
    array = [NSArray arrayWithObjects:object, nil];
    array = [NSArray arrayWithContentsOfFile:string];
    array = [NSArray arrayWithContentsOfURL:url];
}

@end
