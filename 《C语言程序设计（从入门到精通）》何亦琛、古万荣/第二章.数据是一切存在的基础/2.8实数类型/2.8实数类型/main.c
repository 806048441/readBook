//
//  main.c
//  2.8实数类型
//
//  Created by 神州第一坑 on 2019/5/24.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    floatSX_var();
    return 0;
}

//2.8.1 实数类型及其储存
int floatLx_Cc(){
    
    float a;
    double b;
    long double c;
    
    printf("%lu==float字节数\n",sizeof(float));
    printf("%lu==double字节数\n",sizeof(double));
    printf("%lu==long double字节数\n",sizeof(long double));

    
    return 0;
}

//2.8.2 实数常量的表示
int floatBS(){
    
    printf("%f -\n",98.);
    printf("%f -\n",.66);
    printf("%f -\n",-1.66);

    
    printf("%f -\n",4.E3);
    printf("%f -\n",4.E+3);
    printf("%f -\n",4.E-3);
    return 0;
}

// 2.8.3 实型变量
int floatSX_var(){
    
    float a  = 6.89E34;
    float b = a +1-a;
    
    printf("%e=====b\n",b);
    printf("%f=====b\n",a);
    printf("%e=====b\n",a);//科学计数法
        
    
    return 0;
}

