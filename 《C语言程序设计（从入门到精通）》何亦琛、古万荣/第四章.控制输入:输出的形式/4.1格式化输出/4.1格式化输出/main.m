//
//  main.m
//  4.1格式化输出
//
//  Created by 神州第一坑 on 2019/5/29.
//  Copyright © 2019 FirstKeng. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        printfLj2();
    }
    
    return 0;
}

//4.1.1 printf（）函数的格式

int printfGS(void){

    int a =8;
    float b = .618;
    printf("1.只输出文字信息\n");
    printf("2.整型变量a=%d\t实型变量b=%f\n",a,b);

    printf("%d\t%d\n",a,0);
    return 0;
}

//4.1.2 格式字符
int printfGSZF(){
    
    int a= 69;
    
    printf("整型%d,输出为字符%c\n",a,a);
    printf("整型%d,输出为八进制%o\n",a,a);
    printf("整型%d,输出为十六进制%x\n",a,a);//字母小写
    printf("整型%d,输出为十六进制%X\n",a,a);//字母大写

    
    printf("输出科学计数法%e\n",(float)a);
    printf("输出科学计数法%E\n",(float)a);
    printf("输出实数%f\n",(float)a);
    
    printf("%d,%i\n",a,a);
    printf("%p\n",&a);
    printf("%s\n","一条神气的天路");

    return 0;
}

//4.1.3 修饰符
int printfXSF(){
    
//    标志
//    - 输出项左对齐 右边填空格
//    + 输出数据项的符号（正号或负号）
//    空格 输出数据为正数时，则显示空格；为负数时，则显示负号（+标志会覆盖空格标志）
//    # 使用格式字符的可选形式，对格式字符%o 在输出时前缀加0，对于%x或者%X输出时前缀加0x或者0X，
    
//    printf("我是一个粉刷匠\n");
//    printf("%+d\n",1);
//    printf("%#x\n",100);
//    printf("%d\n",100);
    
    int i =-78;
    int j=65535;
//    输出最小宽度
    printf("%d,%d\n",i,j);
    printf("%4d,%4d\n",i,j);//输出至少4个字符串宽的整型常量 输出最小宽度4
    printf("%-4d,%-4d\n",i,j);
    printf("% d,% d\n",i,j);
    printf("%+d,%+d\n",i,j);
//    printf("%#d,%#d\n",i,j);
    printf("%#x,%#X\n",i,j);
    
//    精度
    printf("%.4d,%4.d\n",i,j);
    printf("%.4f,%.2f\n",9.3333333,9.3333333);
    
//    长度
    
    return 0;
}

//4.1.4函数输出实例
int printfInit(){
    
//    1.输出字符
    int i =75,j=65355;
    char c ='w';
    
    printf("整型数：%d,输出字符：%c\n",i,i);
    printf("整型数：%d,输出字符：%c\n",j,j);
    printf("整型数：%d,输出字符：%c\n",c,c);
    
//    2.输出整数
    int a=75,b=-65355;
    printf("整型数：%6d和%6d，输出为无符号数：%12u和%12u\n",a,b,a,b);
    printf("整型数：%6d和%6d，输出为八进制数：%#12o和%#12o\n",a,b,a,b);
    printf("整型数：%6d和%6d，输出为十六进制数：%#10x和%#10x\n",a,b,a,b);
    
//    3.输出实数
    float d = 130.79069388;
    double e =13198317000.2682882;
    
    printf("d=%f,%5.4f,%e,%g\n",d,d,d,d);
    printf("e=%f,%5.4f,%e,%g\n",e,e,e,e);
    
//    4.输出字符串
    const char s[] = "Hello,China!";
    printf("%s*\n",s);
    printf("%15s*\n",s);
    printf("%-15s*\n",s);
    printf("%15.5s*\n",s);
    printf("%-15.5s*\n",s);
    
    printf("const char *restrict, ...\
           字符串拆行 看着好看\n");
    printf("const char *restrict, ..."
           "字符串拆行 看着好看\n");
    return 0;
}

//4.1.5动态设置输出宽度和精度
 int printfKd_Jd(){
    
     int kd,jd;
     float f = 130.79069388;
     printf("设置数据最少输出宽度值：\n");
     scanf("%d",&kd);
     printf("设置数据最少输出位数：\n");
     scanf("%d",&jd);
     printf("%*.*f\n",kd,jd,f);
     return 0;
}

//4.1.6printf()函数的返回值
int printfFhz(){
    
    char s[] ="这是一个好地方啊";//这里一个汉字占了三个长度
    char s2[] ="Hello,China!";

    printf("返回%d\n",printf("%s\n",s));
    printf("返回%d\n",printf("%s\n",s2));
    return 0;
}

//4.1.7理解输出列表
int printfLj(){
    
    int i =3;
    int j =4;
//    printf("%d\t%d\n",i,j);
    
//    这里的输出结果和书上写的不一样
    
    printf("%d\t%d\t%d\t%d\n",++i,--i,i--,i++);
    
//    ++i;
//    printf("%d\n",i);
//    --i;
//    printf("%d\n",i);
//    i--;
//    printf("%d\n",i);
//    i++;
//    printf("%d\n",i);
    return 0;
}

//
int printfLj2(){
    
    int i =10;
    long l =90;
    float f  =6.18;
    double d =9.18;
    printf("%e,%e,%e,%e\n",i,l,f,d);
    printf("%ld,%ld\n",i,l);
    printf("%ld,%ld,%ld,%ld\n",f,d,i,l);
//    getch();
    
    return 0;
}
