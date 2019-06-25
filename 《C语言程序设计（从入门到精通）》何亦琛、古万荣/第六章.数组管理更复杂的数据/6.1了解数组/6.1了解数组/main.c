//
//  main.c
//  6.1了解数组
//
//  Created by 神州第一坑 on 2019/6/5.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

//求某学生成绩平均值
    
//    float score[5];
//    float avg;
//    float sum = 0.0;
//    for (int i =0; i<sizeof(score)/sizeof(score[0]); i++) {
//
//        printf("请输入第%d门成绩:",i+1);
//        scanf("%f",&score[i]);
//
//        sum +=score[i];
//    }
//    avg =sum/(sizeof(score)/sizeof(score[0]));
//    printf("总分%f,平均分%f\n",sum,avg);
    
//    求三个学生的平均成绩
    float studentsScore[3][2];
    float studentSum=0;
    float studentAvg=0;
    for (int i =0; i<sizeof(studentsScore)/sizeof(studentsScore[0]); i++) {
        
        float oneStudentSum=0;
        
        for (int j=0; j<sizeof(studentsScore[0])/sizeof(studentsScore[0][0]); j++) {
            
            printf("请输入第%d个学生的第%d门成绩:",i+1,j+1);
            float score;
            scanf("%f",&score);
            oneStudentSum +=score;
        }
        float oneStudentAgv=oneStudentSum/(sizeof(studentsScore[0])/sizeof(studentsScore[0][0]));
        studentSum+=oneStudentSum;
        printf("第%d个学生的总分是%f,平均分%f\n",i+1,oneStudentSum,oneStudentAgv);
    }
    
    studentAvg = studentSum/(sizeof(studentsScore)/sizeof(studentsScore[0]) * sizeof(studentsScore[0])/sizeof(studentsScore[0][0]));
    printf("三个学生的总分为%f,三个学生每科平均分为%f\n",studentSum,studentAvg);
    
    return 0;
}
