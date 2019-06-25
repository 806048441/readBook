//
//  trip.c
//  5.6拓展训练
//
//  Created by 神州第一坑 on 2019/6/5.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "trip.h"

void tripMain(void){
    
    jianDanJiSuanQi();
}

//5.6.1 水仙花数
void shuiXianHuaShu(void){
    
    for (int i =100; i<999; i++) {
       
        int a= i/100;
        int b= i%100/10;
        int c= (i%100)%10;
        if (i==a*a*a+b*b*b+c*c*c) {
            
            printf("%d---水仙花\n",i);
        }
    }
}
//5.6.2 工资提成问题
void gongZiTiCheng(){
    
    
    do {
        
        float gongzi;
        
        printf("请输入工资:");
        scanf("%f",&gongzi);
        float ticheng = 0.0;
        if (gongzi>100000) {
            
            ticheng+=(gongzi-100000)*0.01;
            gongzi =10000;
        }
        if (gongzi>70000 && gongzi<=100000){
            
            ticheng+=(gongzi-70000)*0.03;
            gongzi=70000;
        }
        if (gongzi>30000 && gongzi<=70000){
            
            ticheng+=(gongzi-30000)*0.05;
            gongzi=30000;
        }
        
        ticheng +=gongzi*0.08;
        
        printf("提成是%f元\n",ticheng);
        
    } while (1);
    
}

//5.6.3 学生成绩评分等级
void chengJiDengJi(){
    

    char c;
    printf("请输入等级:");
    scanf("%c",&c);
    switch (c) {
        case 'a':
            printf("优秀\n");
            break;
        case 'b':
            printf("中等\n");
            break;
        case 'c':
            
            printf("良好\n");
            break;
        case 'd':
            printf("及格\n");
            
            break;
        case 'e':
            printf("不及格\n");
            break;
            
        default:
            printf("瞎jb输吧\n");
            break;
    }
}

//5.6.4商店找零问题 3元 4元 5元商品 刚好花完100元
void shangDianZhaoLing(){
    
    for (int a=0; a<33; a++) {
        
        for (int b=0; b<=25; b++) {
            
            for (int c=0; c<=20; c++) {
                
                if (a*3+b*4+c*5==100) {
                    
                    printf("3元买%d个  4元买%d个  5元买%d个\n",a,b,c);
                }
            }
        }
    }
}
//5.6.5斐波那契数列问题 1 1 2 3 5 8……，求第40个数
void feibonaqieShuLie(){
    
    long a[40];
    for (int i =0; i<=39; i++) {
        
        if (i>1) {
            a[i] = a[i-1]+a[i-2];
        }else{
            
            a[i]=1;
        }
    }
    
    printf("%ld===\n",a[39]);
}

//5.6.6简单的计算器
void jianDanJiSuanQi(){
    
    while (1) {
        
        float a,b;
        char c;
        
        scanf("%f%c%f",&a,&c,&b);
        switch (c) {
            case '+':
                
                printf("%f+%f=%f\n",a,b,a+b);
                break;
            case '-':
                printf("%f-%f=%f\n",a,b,a-b);
                break;
            case '*':
                printf("%fx%f=%f\n",a,b,a*b);
                break;
            case '/':
                printf("%f/%f=%f\n",a,b,a/b);
                break;
                
            default:
                printf("FUCK\n");
                break;
        }
    }
}
