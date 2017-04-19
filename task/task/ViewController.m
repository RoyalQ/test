//
//  ViewController.m
//  task
//
//  Created by user on 2017/4/16.
//  Copyright © 2017年 user. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "XIBViewController.h"
#import "CodeViewController.h"
@interface ViewController ()<UITextFieldDelegate>
{
    UITextField *text1;
}
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    
    btn.backgroundColor= [UIColor greenColor];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    btn.frame=CGRectMake(100,100,100,100);
    //跳故事版
    UIButton *btnXIB = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [self.view addSubview:btnXIB];
    
    btnXIB.backgroundColor= [UIColor blueColor];
    
    [btnXIB addTarget:self action:@selector(btnXIBClick) forControlEvents:UIControlEventTouchUpInside];
    
    btnXIB.frame=CGRectMake(100,210,100,100);
    //跳XIB
    UIButton *btnCode = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [self.view addSubview:btnCode];
    
    btnCode.backgroundColor= [UIColor yellowColor];
    
    [btnCode addTarget:self action:@selector(btnCodeClick) forControlEvents:UIControlEventTouchUpInside];
    
    btnCode.frame=CGRectMake(100,320,100,100);//跳代码
    
    text1 = [[UITextField alloc] initWithFrame:CGRectMake(100, 400, 100, 50)];
    text1.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:text1];}//
- (void)btnClick
{
    MyViewController *myvc=[[MyViewController alloc]init];
    myvc.Value3=text1.text;
    [self presentViewController:myvc animated:YES completion:nil];
    }
- (void)btnXIBClick

{
    
    XIBViewController *xibVC=[[XIBViewController alloc]initWithNibName:@"XIBViewController"bundle:nil];
    xibVC.Value2=text1.text;
    [self presentViewController:xibVC animated:YES completion:nil];
}
- (void)btnCodeClick

{
    
    CodeViewController *codeVC = [[CodeViewController alloc]init];
    codeVC.firstValue=text1.text;
    [self presentViewController:codeVC animated:YES completion:nil];}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

