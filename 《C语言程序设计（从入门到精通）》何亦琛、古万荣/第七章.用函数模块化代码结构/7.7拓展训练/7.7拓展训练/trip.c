//
//  trip.c
//  7.7拓展训练
//
//  Created by 神州第一坑 on 2019/6/11.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "trip.h"

//计算1到n的5次方之和
long pingfanghe(int n);

//j计算某字符出现的次数
int  tongjicishu(char str[]);

//计算两个值的差值
float chazhi(float a,float b);

//十进制转二进制
long shijinzhidaoerjinzhi(long a);

//函数传值方式
void chuanzhi(int *a,int *b);

void zifuchuan(char *string);


void tripMain(void){
    
//    while (1) {
//        int from;
//        printf("输入一个数字：");
//        scanf("%d",&from);
//        printf("结果:%ld\n",pingfanghe(from));
//    }
    
//    while (1) {
//        char from[100];
//        printf("输入一个100以内长度的字符串：");
//        scanf("%s",from);
//        printf("结果:c出现%d次\n",tongjicishu(from));
//    }
    
//    while (1) {
//        float a, b;
//        printf("请输入两个实数");
//        scanf("%f%f",&a,&b);
//        printf("a-b=%f\n",chazhi(a, b));
//    }
    
//    while (1) {
//        long a;
//        int start[100000];
//        printf("请输入10进制数字");
//        scanf("%ld",&a);
//        shijinzhidaoerjinzhi(a);
////        printf("二进制数字：%ld\n",shijinzhidaoerjinzhi(a, start));
//    }
    
//    while (1) {
//        int a,b;
//        printf("请输入两个整数");
//        scanf("%d%d",&a,&b);
//        printf("输入的a=%d,b=%d\n",a,b);
//        chuanzhi(&a, &b);
//        printf("最后a=%d,b=%d\n",a,b);
//    }
    
    zifuchuan("fdaf");
    
    char *string ="fafasdfas";
}


long pingfanghe(int n){
    
    int lastN =0;
    for (int i=1; i<=n; i++) {

        lastN +=i*i*i*i*i;
    }
    return lastN;

//    if (n==1) {
//        return 1;
//    }else{
//
//        return n*n*n*n*n+pingfanghe(n-1);
//    }
}

int  tongjicishu(char str[]){
    
    int times =0;
    for (int i =0; i<strlen(str); i++) {
        
        if (str[i] == 'c') {
            
            times++;
        }
    }
    
    return times;
}

float chazhi(float a,float b){
    
    
    return a-b;
}

long shijinzhidaoerjinzhi(long a){
   
    int i =0;
    int erjinzhi[100];
    while (1) {
        int yushu =a%2;
        a =a/2;
        erjinzhi[i++] =yushu;
        if (a==0){
            break;
        }
    }

    for (int j=i-1; j>=0; j--) {
        
        printf("%d",erjinzhi[j]);
    }
    putchar('\n');
    
    return 0;
}


void chuanzhi(int *a,int *b){
    
    int t=*a;
    *a =*b;
    *b=t;
}

void zifuchuan(char *string){
    
    printf("%s\n",string);
}
