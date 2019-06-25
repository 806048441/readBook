//
//  main.c
//  2.6整数类型
//
//  Created by 神州第一坑 on 2019/5/23.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    intBS();
    return 0;
}

//2.6.1整数类型及其储存
//为了更加精确地适合程序的需要 可以给int 添加各种修饰符
int intLx_Cc(){
    
    printf("%lu字节\n",sizeof(int));
    
    printf("%lu字节\n",sizeof(long int));
    
    printf("%lu字节\n",sizeof(long long));
    
    printf("%lu字节\n",sizeof(short));
    
    printf("%lu字节\n",sizeof(unsigned int));
    
    printf("%lu字节\n",sizeof(unsigned long));
    
    
    return 0;
}

//2.6.2整数常量的表示

int intBS(){
    
    //    32为整数常量
    int a;
    printf("请输入一个整形常量\n");
    scanf("%d",&a);
    int b  =a +32;
    //    32.0为float常量
    int c  =a +32.0;
    printf("b====%d\nc====%d\n",b,c);
    
    //如果要将小的整数占用用更大的内存空间 在数字后边添加l或者L 123L 该数会被看做一个long类型的常数 123LL该数字会被作为long long类型  如果将整型常量当做无符号型 后边加U L、LL和U可以一起使用
    
    
//    整型常量的10进制表示方法  235 123
//    如果常量前以0开头，编译器会认为该常量为8进制
    
    printf("%d====17\n",17);
    printf("%d====0117\n",017);
//    十六进制的常量以0x开头或者0X，取值0-9，a-f、A-F
    printf("%d====0xAAA\n",0xAAA);

//    使用8进制 或者16进制 也可以用后缀指定内存空间
    
//    各个进制之间的相互转换 2进制转10进制 例如：2进制的111110，转到10进制为0*2^0+1*2^1+2^2+1*2^3+1*2^4+1*2^5
    
    //    8进制转10进制 例如:8进制的075，转到10进制 为5*8^0+7*8^1=61
    printf("%d====075\n",075);
//    10进制转其他进制都是取余法   一个10进制转8进制的例子：  61/8 商7余5 7/8商0 余7 余75 前边加0 075
//    16进制转10进制，例如：0x12fd 转到10进制为131*16^0+15*16^1+2*16^2+1*16^3
    printf("%ld====0x12fd\n",0x12fdL);
    printf("%ld====\n",(long)(13*pow(16.0, 0.0)+15*pow(16.0, 1.0)+2*pow(16.0, 2.0)+1*pow(16.0, 3.0)));
    
    
    signed short shortA =1;
    int intB = 1;
    unsigned int uIntC =1;
    long longD = 1;
    unsigned long uLongE =1;
    long long lLongF =1;
    unsigned long long ulLongG =1;
    
    //整型的输出
    printf("%hd====shortA\n",shortA);
    printf("%d====intB\n",intB);
    printf("%u====uIntC\n",uIntC);
    printf("%ld====longD\n",longD);
    printf("%lu====uLongE\n",uLongE);
    printf("%lld====lLongF\n",lLongF);
    printf("%llu====ulLongG\n",ulLongG);
    
    printf("%x\n",4861);//16进制输出
    printf("%o\n",61);//8进制输出
    
    printf("输入一个十进制数字\n");
    
    int tenNumber;
    scanf("%d",&tenNumber);
    printf("%d转换为8进制数字为%o\n",tenNumber,tenNumber);
    printf("%d转换为16进制数字为%x\n",tenNumber,tenNumber);
    return 0;
}
