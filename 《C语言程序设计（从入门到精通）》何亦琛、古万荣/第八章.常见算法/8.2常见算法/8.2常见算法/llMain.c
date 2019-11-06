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

void zuidazhi(int *from,int number);

void llMain(void){
    
//    int count=0;
//    int temp[count];
//    for (int i=0; i<6; i++) {
//
//        count =i+1;
//        int array[count];
//
//        for (int j=0; j<count; j++) {
//
//            if (j==0 || j==i) {
//
//                array[j]=1;
//            }else{
//
//                array[j]=temp[j]+temp[j-1];
//            }
//
//        }
//
//        for (int n=0; n<count; n++) {
//
//            temp[n]=array[n];
//
//            printf("%d ",temp[n]);
//        }
//
//        putchar('\n');
//
//    }

    int i,j,n=0,a[17][17]={0};
        
        while(n<1 || n>16)
            
        { printf("请输入杨辉三角形的行数:");
            
            scanf("%d",&n);
            
        }
        
        for(i=0;i<n;i++)
            
            a[i][0]=1; /*第一列全置为一*/
        
        for(i=1;i<n;i++)
            
            for(j=1;j<=i;j++)
                
                a[i][j]=a[i-1][j-1]+a[i-1][j];/*每个数是上面两数之和*/
        
        for(i=0;i<n;i++) /*输出杨辉三角*/
            
        { for(j=0;j<=i;j++)
            
            printf("%5d",a[i][j]);
            
            printf("\n");
            
        }
    
//    int number=10;
//    int from[number];
//    
//    srand((unsigned)time(NULL));
//    for (int i =0; i<number; i++) {
//        
//        from[i]=rand()%1000+100;
//    }
//    
////    maopao(from, number);
////    charu(from, number);
//    zuidazhi(from, number);
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
        j= i-1;
        while (j>=0 && t<from[j]) {
            
            from[j+1]=from[j];
            j--;
        }
        from[j+1]=t;
        
        for (int n=0; n<number; n++) {
            
            printf("%d-",from[n]);
        }
        putchar('\n');
    }
}

void zuidazhi(int *from,int number){
    
    int a = from[0];
    
    for (int i=1; i<number; i++) {
        
        if (from[i]>a) {
            a= from[i];
        }
    }
    
    for (int i=0; i<number; i++) {
        
        printf("%d-",from[i]);
    }
    putchar('\n');
    
    printf("最大值%d\n",a);
}


