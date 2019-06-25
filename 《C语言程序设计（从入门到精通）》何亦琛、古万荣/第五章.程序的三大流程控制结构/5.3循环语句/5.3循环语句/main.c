//
//  main.c
//  5.3循环语句
//
//  Created by 神州第一坑 on 2019/6/5.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    //    for (int i =1; i<10; i++) {
    //
    //        for (int j=1; j<i+1;j++) {
    //
    ////            if (i==j) {
    ////                printf("%dx%d=%d\n",j,i,i*j);
    ////            }else{
    ////                printf("%dx%d=%d\t",j,i,i*j);
    ////            }
    //
    //            printf("%dx%d=%d\t",j,i,i*j);
    //
    //        }
    //        putchar('\n');
    //    }
    
    //    公鸡一只5钱，母鸡一只3钱，小鸡一钱3只 100钱能买鸡100只  多少公鸡 多少母鸡 多少小鸡
    
    //    int x,y,z;
    //
    //    for (x=0; x<=20; x++) {
    //
    //        for (y=0 ; y<=33; y++) {
    //
    //            for (z=0; z<=100; z++) {
    //
    //                if ((5*x+3*y+z/3==100) && (x+y+z==100) && z%3==0) {
    //
    //                    printf("公鸡%d只 母鸡%d只 小鸡%d只\n",x,y,z);
    //                }
    //            }
    //        }
    //
    //    }
    
    //累加
    //    float sum = 0.0;
    //    int i=0;
    //    float n = 0;
    //    do {
    //
    //        printf("若输入0则完成计算:");
    //        scanf("%f",&n);
    //        if (n==0) {
    //            break;
    //        }
    //        if (n<0) {
    //            continue;
    //        }
    //        i++;
    //        sum+=n;
    //        printf("输入的第%d个数，和为%f\n",i,sum);
    //
    //    } while (1);
    //
    //    printf("共输入%d个正数，和为%f\n",i,sum);
    
    //标签语句
    
    int i=0;

loop: if (i<10) {
    
    if (i==7) {
        goto bre;
    }
    if (i==4) {
        goto con;
    }
    printf("%d=i\n",i);
    
    i++;
    goto loop;
};
   

con:{
    printf("continute了\n");
    i++;
    goto loop;
};
bre: {
    
    printf("break了\n");
};

    
    return 0;
}
