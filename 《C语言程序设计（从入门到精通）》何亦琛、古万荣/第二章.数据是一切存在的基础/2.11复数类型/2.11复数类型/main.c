//
//  main.c
//  2.11复数类型
//
//  Created by 神州第一坑 on 2019/5/29.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    complexLx();
    return 0;
}


int complexLx(){
    
    double _Complex a,b;
    
    a= 10+10i;
    b = 8-2i;
    
    double _Complex c= a+b;
    
    printf("c===(%g+%gi)\n",c);
    return 0;
}
