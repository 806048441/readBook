//
//  main.c
//  6.5拓展训练
//
//  Created by 神州第一坑 on 2019/6/6.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>
#include "trip.h"
int main(int argc, const char * argv[]) {
   
    for (int i =0; i<argc; i++) {
        
        printf("%s====\n",argv[i]);
    }
    
    tripMain();
    return 0;
}
