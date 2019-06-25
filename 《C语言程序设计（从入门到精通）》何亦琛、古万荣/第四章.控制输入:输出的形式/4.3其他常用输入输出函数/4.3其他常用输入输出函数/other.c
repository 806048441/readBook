//
//  other.c
//  4.3其他常用输入输出函数
//
//  Created by 神州第一坑 on 2019/6/4.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "other.h"

int otherMain(void){
    
    putcharFunc();
    return 0;
}


//4.3.1getchar函数
int getCharFunc(){
    
    int a =getchar();
    printf("输入的是：%c\n",a);
    return 0;
}
//4.3.2getch总是不让调用了 不知道什么情况 这个函数和上一个的区别是不用用户键入回车 都是接收用户输入的一个字符
//int getCh(){
//
//    int a =getch();
//    printf("输入的是：%c\n",a);
//    return 0;
//}

//4.3.3gets函数
//用来从输入缓冲区读取字符串，直到接收到换行符停止，并将读取的结果存放在str指针所指向的字符数组中，换行符不做读取的内容，读取的换行符被转换为null来结束字符串
//这里给了一个警告
int getsFunc(){
    
    char a[100];
    gets(a);
    printf("输入的是：%s\n",a);
    return 0;
}
//4.3.4putch函数不让用 和getch一样 用了报错
int putcharFunc(){
    
    int a=  putchar('a');
    putchar('\n');
    printf("%d---\n",a);
    return 0;
}
//4.3.5 puts函数 这个不能输出字符 字符没有结束标志 字符串必须以结束字符’\0‘作为结束标志
int putsFunc(){
    
    int a=  puts("that's a good idea");
//    putchar('\n');
    printf("%d---\n",a);
    return 0;
}
