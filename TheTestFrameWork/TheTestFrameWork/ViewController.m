//
//  ViewController.m
//  TheTestFrameWork
//
//  Created by Clement_Gu on 16/8/26.
//  Copyright © 2016年 clement. All rights reserved.
//

#import "ViewController.h"
//这边导入的是framework自带的头文件因为在头文件里面关联了 也可以直接导入需要的文件
#import <FrameworkBuild/FrameworkBuild.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self buildAllControls];
    
}
/**
 *  创建界面
 */
-(void)buildAllControls
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 250, 50)];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn setTitle:@"测试framework是否正常运行" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

//点击事件
-(void)btnClick
{
    //调用类方法
    [HellowWorld alert];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
