//
//  array.c
//  6.2一维数组
//
//  Created by 神州第一坑 on 2019/6/6.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "array.h"

void arrayMain(void){
    
    chushihua();
}

//6.2.1一维数组的声明

void shengMing(){
    
    
    int num;
    printf("请输入数组的长度:");
    scanf("%d",&num);
    
    float array[num];
    for (int i =0; i<num; i++) {
        
        float eum;
        printf("请输入第%d个元素:",i+1);
        scanf("%f",&eum);
        array[i] =eum;
    }
    

    long count =sizeof(array)/sizeof(array[0]);
    printf("array共有%ld个元素\n",count);
    for (int i =0;i< count; i++) {
        
        printf("array的第%d个元素是%f\n",i+1,array[i]);
    }
    
}

//6.2.2 一维数组的储存

//6.2.3 引用一维数组
//数组的引用 是要指定其下标
//c语言的编译器不会检查数组下标是否越界
void yinyong(){
    
    
    int array[10];
    
    for (int i =0; i<sizeof(array)/sizeof(array[0]); i++) {
        
        array[i] = i+1;
    }
    
    for (int i =0; i<15; i++) {
        
        printf("%d----\n",array[i]);
    }
    
    array[13] = 10;
    printf("%d----\n", array[13]);
}

void chushihua(){
    
    
    float a[3]={1,3,5.8};
    float b[4]={2.5,4};
    
    printf("%f\n",a[3]),
    printf("%f,%f\n",b[2],b[3]);//数组中未赋值值为0
    
    int c[10] ={0,0,2};
    int d[10] ={[2]=2};//这两句一个意思

    printf("%d--%d\n",c[2],d[2]);
}
