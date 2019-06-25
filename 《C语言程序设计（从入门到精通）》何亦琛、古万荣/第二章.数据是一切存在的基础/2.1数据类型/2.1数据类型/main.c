//
//  main.c
//  2.1数据类型
//
//  Created by 神州第一坑 on 2019/5/11.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}


//2.1.1基本类型
void base(){
    
    short shortA =0;
    int intA =0;
    long longA =0;
    float floatA=0;
    double doubleA=0;
    char charA ='a';
    char charASC = 0;//字符可以用ASCII码赋值
    
}

//2.1.2 构造类型
void gouzao(){
    
    struct{
        int age;
        float class;
        float nice;
    } Student;
    
}

//2.1.3 指针类型
void zhizhen(){
    
    int *a;
    float *b;
    char *c;
}

//2.1.4 空类型 主要用来设置函数的返回值
void kong(){
    
    
}
