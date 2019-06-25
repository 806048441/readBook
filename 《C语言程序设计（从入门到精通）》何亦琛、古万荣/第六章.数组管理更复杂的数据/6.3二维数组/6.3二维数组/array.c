//
//  array.c
//  6.3二维数组
//
//  Created by 神州第一坑 on 2019/6/6.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include "array.h"

void arrayMain(){
    
    chushihua();
}

//6.3.1 二维数组的声明
void shengming(){
 
    float array[2][3];
    
}

//6.3.2二维数组的储存
void chucun(){
    
    int score[4][5];
    for (int i = 0; i<sizeof(score)/sizeof(score[0]); i++) {
        
        for (int j =0; j<sizeof(score[0])/sizeof(score[0][0]); j++) {
            
            score[i][j] = i*sizeof(score[0])/sizeof(score[0][0])+j;
            
        }
    }
    
    
    for (int i = 0; i<sizeof(score)/sizeof(score[0]); i++) {
        
        for (int j =0; j<sizeof(score[0])/sizeof(score[0][0]); j++) {
            
            printf("%3d",score[i][j]);
            
        }
        putchar('\n');
    }
    
    for (int i=0; i<sizeof(score)/sizeof(score[0][0]); i++) {
        
        printf("%3d",score[0][i]);
    }
    putchar('\n');
}

//6.3.3二维数组初始化
void chushihua(){
    
//    按行列初始化
    float score[4][5] ={{1,2,3,4,5},{6,7,8,9,10},{11,12,13,14,15},{16,17,18,19,20}};
    float score2[2][3] ={{1,2,3}};//声明一个2行三列的数组 初始化只给一行数据 说明score2[1]行的全部元素都是0
    float score3[2][3] ={{1,2},{3,4,5}};//这种说明score3[0][2]元素值为0;
    float score4[2][3] ={{[0]=2},{[2]=20}};//这种说明score4[0][0]=2,score4[1][2]=20
    printf("%f,%f\n",score4[0][0],score4[1][2]);
    
//    按顺序赋初值
    float none[4][5] ={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
    float none2[2][3] ={1,2,3};//和score2一致
    float none3[2][3] ={1,2,0,3,4,5};
    float none4[2][3] ={2,0,0,0,0,20};
    printf("%f,%f\n",score4[0][0],none4[1][2]);

    for (int i =0; i<sizeof(score)/sizeof(score[0]); i++) {
        
        for (int j=0; j<sizeof(score[0])/sizeof(score[0][0]); j++) {
            
            printf("%f-----%f\n",score[i][j],none[i][j]);//一样的
        }
    }
}
