//
//  StringTest.m
//  Test
//
//  Created by yongjie_zou on 16/3/18.
//  Copyright © 2016年 yongjie_zou. All rights reserved.
//

//各种doubleValue，integerValue转换时需要respondsToSelector:判断能否执行此方法，否则特殊情况下会出现崩溃???

#import "StringTest.h"

@implementation StringTest

+ (void)test
{
    NSString *string = @"1";
    NSString *sub;
    char c;
    
//    sub = [string substringFromIndex:2];
//    sub = [string substringToIndex:3];
    sub = [string substringFromIndex:0];
    sub = [string substringToIndex:0];
    
//    c = [string characterAtIndex:2];
    c = [string characterAtIndex:0];
    
//    string = [string stringByReplacingOccurrencesOfString:@"1" withString:nil];
    string = [string stringByReplacingOccurrencesOfString:@"1" withString:@"2"];
    NSRange range0 = {0, 2};
    NSRange range1 = {0, 1};
//    string = [string stringByReplacingCharactersInRange:range0 withString:@"3"];  //越界
    string = [string stringByReplacingCharactersInRange:range1 withString:@"3"];
    
//    string = [string stringByReplacingCharactersInRange:range1 withString:nil];   //为nil
    
    
}

@end
