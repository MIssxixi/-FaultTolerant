//
//  KeyValueTest.m
//  Test
//
//  Created by yongjie_zou on 16/3/19.
//  Copyright © 2016年 yongjie_zou. All rights reserved.
//

#import "KeyValueTest.h"

@implementation KeyValueTest

+ (void)test
{
    KeyValueTest *testInstance = [[KeyValueTest alloc] init];
    testInstance.name = @"zou";
    
//    [testInstance setValue:nil forKey:@""];    //this class is not key value coding-compliant for the key
    if ([testInstance valueForKey:@"name"]) {
        NSLog(@"name first:%@", [testInstance valueForKey:@"name"]);
        [testInstance setValue:nil forKey:@"name"]; //有对应的属性， value可以为nil
    }
    
    
    //  ********    事实上@"phone"这个key是存在的，只是值本身就为nil   这样岂不是无法赋值？？？？？
    if ([testInstance valueForKey:@"phone"]) {
        NSLog(@"phone first:%@", [testInstance valueForKey:@"phone"]);
        [testInstance setValue:nil forKey:@"phone"];
    }
    
    if ([testInstance respondsToSelector:NSSelectorFromString(@"phone")]) {
         NSLog(@"phone second:%@", [testInstance valueForKey:@"phone"]);
        [testInstance setValue:nil forKey:@"phone"];       
    }
    
    if ([testInstance respondsToSelector:NSSelectorFromString(@"name")]) {
         NSLog(@"name second:%@", [testInstance valueForKey:@"name"]);
        [testInstance setValue:nil forKey:@"name"]; //有对应的属性， value可以为nil       
    }
}

@end
