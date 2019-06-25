//
//  scanf.c
//  4.2格式化输入-scanf()函数
//
//  Created by 神州第一坑 on 2019/6/4.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "scanf.h"

int scanfMain(void){
    
    
    scanfFhz();
    
    return 0;
}
//这里每次都多输一次 要求输入一个值时 得输两个值 第二个值无效 一次类推
//4.2.1
int qiuHe(){
    
    int a;
    int b;
    printf("请输入两个整数\n");
    scanf("%d%d\n",&a,&b);
    printf("a+b=%d,a=%d,b=%d\n",a+b,a,b);
    return 0;
}

//4.2.2 scanf()函数的格式字符
int scanfGs(){
//    
//    printf("请输入一个4长度整数:\n");//比如输入12444555只会取到前4位
//    int a;
//    scanf("%4d\n",&a);
//    printf("输入的为%d\n",a);
    
    //控制输入宽度 长度
//    printf("请输入两个4长度整数:\n");
//    long b;
//    long c;
//    scanf("%4ld%4ld\n",&b,&c);
//    printf("输入的两个数分别为b=%ld,c=%ld\n",b,c);
    
    //星号 在格式字符串使用星号 表示从缓冲区读入该数据后不赋予相应的量，也就是跳过该输入值
    int d;
    int e;
    printf("请输入两个整数值:\n");
    scanf("%d%*d%d\n",&d,&e);
    
    printf("%d,%d\n",d,e);
    
    return 0;
}

//4.2.3scanf()函数注意事项 还有很多先隔过去 具体的看书上边的
int scanfZysx(){
    
    //不能控制输入精度
    
    printf("请输入一个实数：\n");
    float a;
    scanf("%5.2f",&a);//会跳过代码
    printf("输入的值为%f\n",a);
    
    float b;
    scanf("%2f",&b);//会跳过代码
    printf("输入的值为%f\n",b);
    return 0;
}

//4.2.4 scanf（）的返回值  有效数据的个数
int scanfFhz(){
    
    int a,b,c;
    printf("请输入3个整数:\n");
    int length =scanf("%d%d%d\n",&a,&b,&c);
    printf("length=%d\n",length);
    return 0;
}
