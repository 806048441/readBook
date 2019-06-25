//
//  main.c
//  2.10逻辑型
//
//  Created by 神州第一坑 on 2019/5/29.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    boolX();
    return 0;
}


int boolX(){
    
    _Bool a = 1;
    
    printf("%d---\n",a);
    
    if (a) {
        
        printf("if\ta\t了\n");
    }
 
    return a;
}
