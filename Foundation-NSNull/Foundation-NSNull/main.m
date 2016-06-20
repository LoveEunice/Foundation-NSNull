//
//  main.m
//  Foundation-NSNull
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // C语言中的空指针NULL 0x0
        char *p1=NULL;
        NSLog(@"p1==%p",p1);
        //OC 语言中表示对象类型的空指针（表示指针没有具体指向） nil
        NSObject *obj1=nil;
        NSLog(@"obj1==%p,%@",obj1,obj1);
        id obj2=nil;//id表示任意类型的对象，在OC中等同于NSObject*
        NSLog(@"obj2=%p,%@",obj2,obj2);
        id obj3=@"";//@""表示有内存，但是没有值
        NSLog(@"obj3=%p,%@",obj3,obj3);
        //表示什么都没有的对象的 类
        NSNull *null1=[NSNull null];//只有一个方法
        NSLog(@"null1=%p,%@",null1,null1);
        //NSNull分配的内存都是一样的
        for (int i=0; i<10; i++)
        {
            NSNull *newNull=[NSNull null];
            NSLog(@"newNull=%p,%@",newNull,newNull);
        }
        //Nil表示类类型的空指针
        Class cl1=Nil;
        NSLog(@"cl1=%p,%@",cl1,cl1);
        id mm=[NSObject new];
        NSLog(@"mm=%p,%@",mm,mm);
        
        NSArray *arr=@[@"qingyun",[NSNull null],@"hello",[NSNull null]];
        NSLog(@"arr==%@",arr);
        for (int i=0; i<arr.count; i++)
        {
            if ([NSNull null]==arr[i])
            {
                NSLog(@"空对象");
            }
        }
        NSString *str1=@"hello";//@""字符串对象
        NSNumber *num1=@21;//@数字 NSNumber对象
        NSNumber *num2=@(21);//@(数字) NSNumber对象
        NSLog(@"str=%@",str1);
        NSLog(@"num1=%@,num2=%@,num1=%d,num3=%d",num1,num2,[num1 intValue],[@(23) intValue]);
        //@[]表示数组  @{}字典   ->不可变
        NSDictionary *dic=@{@"name":@"liming",@"age":@21,@"girFriend":[NSNull null],@"money":[NSNull null],@"hourse":[NSNull null],@"car":@"比亚迪"};
        NSLog(@"dic=%@",dic);
    }
    return 0;
}
