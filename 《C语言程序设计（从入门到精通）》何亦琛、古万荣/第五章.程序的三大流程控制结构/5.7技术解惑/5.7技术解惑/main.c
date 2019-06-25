//
//  main.c
//  5.7技术解惑
//
//  Created by 神州第一坑 on 2019/6/5.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

//5.7.1 输出1——100之间的所有素数（是指除1和它本身之外不能被其他整数整除）
int main(int argc, const char * argv[]) {
  
    for (int i =1; i<=100; i++) {
        
        _Bool isTrue =1;
        
        for (int j=2; j<i; j++) {
            
            if (i%j==0) {
                
                isTrue =0;
                break;
            }
        }
        
        if (isTrue && i!=1) {
            
            printf("%d\n",i);
        }
    }
    
    
    return 0;
    
}
