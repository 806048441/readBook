//
//  main.c
//  2.7字符类型
//
//  Created by 神州第一坑 on 2019/5/23.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    printZF();
    return 0;
}

//2.7.1字符常量
int charC(){
    
//    'z' '$' 'a' 字符常量
//    1.字符常量的定界为单引号，也就是只能用单引号括起来  2.一对单引号只能包含一个字符，不能是多个字符 3.字符可以是ASCII码中的任意字符   4.‘8’ 和 8是不一样的，‘8’是字符常量ASCII值为56  8是整型常量
    
    //char类型 内存中 占一字节 8位 有的c编译器 将char设置为无符号型 取值就是0-255 有的作为有符号行 就是-128-127
    int a= 1+'z';
    
    printf("%d\n",a);
    
    return 0;
}

//2.7.2字符变量及其初始化
int charVariable(){
    

    char c1,c2;
    char c3= 'a';
    
    printf("c3=====%d\n",c3);
    
    return 0;
}

//2.7.3转义字符
int zhuanYiZF(){
    
    return 0;
}

//2.7.4字符型类型输出
int printZF(){
    
//    char类型保存的是整数，可以对char类型进行加减运算 运算超过char类型的取值范围时，程序将自动舍弃高位的值 只保存低8位的值
    
    int a =100;
    char b = 'b';
    
    printf("a===%c,a===%d\n",a,a);
    printf("b===%c,b===%d\n",b,b);
    return 0;
}
