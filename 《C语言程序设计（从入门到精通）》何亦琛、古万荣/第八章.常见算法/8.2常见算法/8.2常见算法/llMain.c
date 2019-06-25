//
//  llMain.c
//  8.2常见算法
//
//  Created by 神州第一坑 on 2019/6/20.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "llMain.h"
#include <stdlib.h>
#include <time.h>

void maopao(int *from,int number);

void zheban(int *from,int number,int x);

void charu(int *from,int number);

void llMain(void){
    
    int number=10;
    int from[number];
    
    srand((unsigned)time(NULL));
    for (int i =0; i<number; i++) {
        
        from[i]=rand()%1000+100;
    }
    
//    maopao(from, number);
    charu(from, number);
}

void maopao(int *from,int number){
    
    printf("未排序数字:");
    int userNumber = 0;
    for (int k=0; k<number; k++) {
        
        printf("%d--",from[k]);
    }
    putchar('\n');
    for (int i =0; i<number-1; i++) {
        
        for (int j=i+1; j<number; j++) {
            
            if (from[j]<from[i]) {
                
                int temp=from[j];
                from[j]=from[i];
                from[i]=temp;
            }
        }
        
        printf("第%d次排序结果:",i+1);
        for (int k=0; k<number; k++) {
            
            printf("%d--",from[k]);
            if (k==number-1) {
                
                userNumber=from[k];
            }
        }
        putchar('\n');
    }
    
    zheban(from, number, userNumber);
}

void zheban(int *from,int number,int x){
    
    int low =0;
    int high =number-1;
    int mid;
    while (low<=high) {
        
        mid =(low+high)/2;
        if (from[mid]==x) {
            
            printf("折半找到了%d\n,是第%d个数\n",x,mid);
            break;
        }else if (from[mid]<x){
            
            low =mid+1;
        }else{
            
            high =mid-1;
        }
        
    }
}

void charu(int *from,int number){
    
    int t ,j;
    for (int i=1; i<number; i++) {
        
        t =from[i];
        j=i-1;
        
        while (j>=0 && t<from[i]) {
            
            from[j+1]=from[j];
            j--;
        }
        
        printf("第%d次排序结果:",i+1);
        for (int k=0; k<number; k++) {
            
            printf("%d--",from[k]);
        }
        putchar('\n');
    }
}


