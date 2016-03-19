//
//  main.m
//  Test
//
//  Created by yongjie_zou on 16/3/18.
//  Copyright © 2016年 yongjie_zou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayTest.h"
#import "DictionaryTest.h"
#import "StringTest.h"
#import "KeyValueTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [ArrayTest test];
        
        [DictionaryTest test];
        
        [StringTest test];
        
        [KeyValueTest test];
    }
    return 0;
}

