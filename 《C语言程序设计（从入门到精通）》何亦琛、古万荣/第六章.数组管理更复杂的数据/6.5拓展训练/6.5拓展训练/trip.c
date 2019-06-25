//
//  trip.c
//  6.5拓展训练
//
//  Created by 神州第一坑 on 2019/6/6.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "trip.h"

long count;
void fuck1(void);

int jiecheng(int number);

void hannuoke(char a,char b,char c,int number);

void hannuoke(char a,char b,char c,int number){
    
    
    if (number==1) {
        printf("第%ld次，%c--->%c\n",++count,a,c);
    }else{
        
        hannuoke(a, c, b, number-1);
        printf("第%ld次，%c--->%c\n",++count,a,b);
        hannuoke(b, a, c, number-1);
    }
}

void fuck1(){
    
    printf("fuck\n");
}
int jiecheng(int number){
    
    if (number<=1) {
        return 1;
    }else{
        return number*jiecheng(number-1);
    }
}




void tripMain(void){
    
    //    zifuchuanfanzhuan();
    //    fuck1();
    
    //    while (1) {
    //
    //        unsigned int a ;
    //        printf("请输入一个正整数");
    //        scanf("%u",&a);
    //        printf("结果%d\n",jiecheng(a));
    //    }
    
    while (1) {
        count =0;
        unsigned int a ;
        printf("请输入一个正整数");
        scanf("%u",&a);
        hannuoke('a', 'b', 'c', a);
    }
}

//6.5.1通过数组求解斐波那契数列问题
void feibonaqie(void){
    
    int a[20] ={1,1};
    
    for (int i =2; i<21; i++) {
        a[i] = a[i-1]+a[i-2];
    }
    
    for (int i =0; i<20; i++) {
        
        printf("%d\n",a[i]);
    }
}

//6.5.2 采用冒泡排序法对数据进行排序

void maopaopaixu(){
    
    int a[10]={};
    for (int i=0; i<10; i++) {
        
        printf("请输入第%d个整数",i+1);
        scanf("%d",&a[i]);
    }
    
    int zhongjianshu;
    for (int i =0; i<10; i++) {
        
        //        for (int j=i+1; j<10; j++) {
        //
        //            if (a[j]<a[i]) {
        //
        //                zhongjianshu = a[i];
        //                a[i] =a[j];
        //                a[j]=zhongjianshu;
        //            }
        //        }
        
        for (int j=9; j<i; j--) {
            
            if (a[j]<a[i]) {
                
                zhongjianshu = a[i];
                a[i] =a[j];
                a[j]=zhongjianshu;
            }
        }
    }
    
    for (int i =0; i<10; i++) {
        
        printf("%d\n",a[i]);
    }
}


//6.5.4字符串反转
void zifuchuanfanzhuan(){
    
    char string[80];
    int i,j;
    
    printf("请输入长度小于80的字符串:");
    scanf("%s",string);
    
    for (i =0; string[i]; i++) {
        
    }
    
    char temp;
    for (j =0; j<i/2; j++) {
        
        temp =string[j];
        string[j] =string[i-1-j];
        string[i-1-j]=temp;
    }
    
    printf("%s\n",string);
}
