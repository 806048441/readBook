//
//  main.c
//  第一章练习题
//
//  Created by 神州第一坑 on 2019/5/11.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");

    useScanf();
    
    return 0;
}


int useScanf(){
    
    printf("请输入输入一个整数:\n");
    int a;
    scanf("%d",&a);
    printf("输入的是:%d\n",a);
    return 1;
}
