//
//  trip.c
//  4.4拓展训练
//
//  Created by 神州第一坑 on 2019/6/4.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "trip.h"
int tripMain(void){
    

    daXiaoXieZhuanHuan();
    return 0;
}
//4.4.1鸡兔同笼
int jiTuTongLong(void){
    
    int ji;
    int tu;
    int tou =35;
    int jiao =94;
    ji = (4*tou-jiao)/2;
    tu = tou -ji;
    printf("鸡有%d只,兔有%d只\n",ji,tu);
    
    return 0;
}
//4.4.2格式化输入
int qiuYuanZhuTiji(){
    
    float r,h,v;
    printf("请分别输入圆柱体的底面半径和高:\n");
    scanf("%f%f",&r,&h);
    v = r*r*h*3.14;
    printf("半径=%f,高=%f,体积=%f\n",r,h,v);
    return 0;
}

//4.4.3输入两个变量的值 交换输出
int jiaoHuanShuChu(){
    
    int a,b;
    printf("请输入两个整型值：\n");
    scanf("%d%d",&a,&b);
    printf("输入的%d=a,%d=b\n",a,b);
    int c= b;
    b= a;
    a =c;
    printf("交换后%d=a,%d=b\n",a,b);
    return 0;
}
//4.4.4大小写字母转换器
int daXiaoXieZhuanHuan(){
    
    char a,b;
    printf("请输入一个小写字母 再输入一个大写字母:\n");
    scanf("%c%c",&a,&b);
    printf("%c,%c,转换后为%c——————%c\n",a,b,a-32,b+32);
    
//    char c;
//    printf("输入一个大写字母:\n");
//    scanf("%c",&c);
//    printf("转换后为%c\n",c+32);
    return 0;
}

