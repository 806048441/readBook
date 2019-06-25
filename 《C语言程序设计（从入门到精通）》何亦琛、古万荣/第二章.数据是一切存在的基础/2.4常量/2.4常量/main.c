//
//  main.c
//  2.4常量
//
//  Created by 神州第一坑 on 2019/5/11.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    fuhaocl();
    return 0;
}

//2.4.1直接常量
int zhijiecl(){
    
    float s =0;
    float l =0;
    float r ;
    scanf("%f",&r);
    s= 3.14*r*r;
    l =3.14*2*r;
    printf("面积%f\n",s);
    printf("周长%f\n",l);
    //3.14 就是直接常量 又叫字面常量，常量类型为浮点类型
    //2 的常量类型为整数类型
    return 0;
}

//2.4.2 符号常量 编译程序进行预处理 将所有符号pi换成3.14
#define PI 3.14
const float constPI =3.14;
//这两种方式区别，define定义一个字面常量的名字，程序中这个名字等价于这个字面常量，提高了可读性，安全性没保障。const语句支持为常量类型，const定义的符号有自己的内存地址，编译器为他分配了空间
int fuhaocl(){
    
    float r;
    printf("请输入半径\n");
    scanf("%f",&r);
    printf("面积=%f\n",r*r*PI);
    printf("周长=%f\n",2*r*PI);
    getchar();
    
    return 0;

}
