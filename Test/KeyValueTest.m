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
    
//    [testInstance setValue:nil forKey:@""];    //this class is not key value coding-compliant for the key
    [testInstance setValue:nil forKey:@"name"]; //有对应的属性， value可以为nil
}

@end
