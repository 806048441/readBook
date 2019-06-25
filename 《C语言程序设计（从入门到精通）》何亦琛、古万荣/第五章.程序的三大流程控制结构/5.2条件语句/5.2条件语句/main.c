//
//  main.c
//  5.2条件语句
//
//  Created by 神州第一坑 on 2019/6/5.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

//这实在是简单  和其他语言区别很小 直接搞就行 
int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    _Bool a;
    
    printf("请输入一个真假值:\n");
    
    scanf("%d",&a);
    
    if (a) {
        printf("来了\n");
    }else{
        printf("假的呢\n");
    }
    
    return 0;
}
