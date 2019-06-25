//
//  string.c
//  6.4字符数组和字符串
//
//  Created by 神州第一坑 on 2019/6/6.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "string.h"

void stringMain(void){
    
    liaojiezifuchuan();
}

//6.4.1字符数组
void zifushuzu(void){
    
    //声明
    char name[10];
    char address[30];
    char gg[2][5];
    //初始化
    char name1[10] = {'a','b','c','d','e','f','g','h','i','j'};
    char name2[] = {'a','b','c','d','e','f','g','h','i','j'};
    //引用字符数组
    
    for (int i =0; i<sizeof(name1); i++) {
        
        printf("%c---\n",name1[i]);
    }

}

//6.4.2了解字符串 '\n'结尾结束标志
//6.4.3字符串的输入和输出
void liaojiezifuchuan(){
    
    char name[]= "name 来了";
    printf("%s===name\n",name);
    
    printf("请输入姓名：");
    char aName[] ="";
    scanf("%s",aName);
 
    printf("输入的姓名是%s\n",aName);
}

