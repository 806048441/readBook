//
//  main.c
//  2.12拓展训练
//
//  Created by 神州第一坑 on 2019/5/29.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    jz10Tra();
    return 0;
}


//不同类型数转换为10进制

int jz10Tra(){
    
    int a= 075;
    int b =0xabce10;
    printf("%d\n",a);
    printf("%d\n",b);
    printf("%x\n",a);
    printf("%x\n",b);
    printf("%o\n",a);
    printf("%o\n",b);
    
    return 0;

}
