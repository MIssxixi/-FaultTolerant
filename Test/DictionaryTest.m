//
//  DictionaryTest.m
//  Test
//
//  Created by yongjie_zou on 16/3/18.
//  Copyright © 2016年 yongjie_zou. All rights reserved.
//

#import "DictionaryTest.h"

@implementation DictionaryTest

+ (void)test
{
    NSDictionary *dic;
    NSMutableDictionary *mutableDic = [NSMutableDictionary dictionary];
    NSObject *object;
    
    //*** key && value都不能为nil
//    dic = [NSDictionary dictionaryWithObject:nil forKey:@""];
//    dic = [NSDictionary dictionaryWithObject:@"" forKey:nil];
    dic = [NSDictionary dictionaryWithObject:@"12" forKey:@""];

//    object = [dic objectForKey:nil];      //另外需要注意此方法可以KVC读取property的值，若没有propertyName，返回值为空；返回值不为空时需要判断类型为NSNull，或NSNumber，因为这两个类型也支持NSSecureCoding协议
    
    object = [dic objectForKey:@""];
    object = [dic valueForKey:@""];
    
//    [mutableDic setObject:nil forKey:@""];
//    [mutableDic setObject:@"" forKey:nil];
    [mutableDic setObject:@"" forKey:@""];
    
//    [mutableDic removeObjectForKey:nil];
    [mutableDic removeObjectForKey:@"dfaf"];
}

@end
