//
//  main.c
//  2.5变量
//
//  Created by 神州第一坑 on 2019/5/23.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");

    variabelCSH();
    return 0;
}

//2.5.1变量声明
//编译程序时，编译器在内存中按照声明类型为变量分配内存空间
int variableSM(){
    
//    int age;
//    float height;
//    float heavy;
//    int a,b;

    float c,f;
    printf("请输入摄氏度值\n");
    scanf("%f",&c);
    
    f= 32+c*1.8;
    printf("转换为华氏度为%f\n",f);

    return 0;
}

//2.5.2变量的初始化  为了使程序不会因为使用一个不确定的值而出现数据混乱，应在使用变量前对其赋初值，让他有确定的值，这种方法叫初始化 也没举个数据混乱的例子
//普通变量的初始化不是在编译阶段完成的，是在应用程序执行赋值语句完成的
int variabelCSH(){
    
    float a = 0.0;
    float e;
    float b = 2;
    
    printf("%p====a\t%p====e\t%p====b\n",&a,&e,&b);
    return 0;
}
