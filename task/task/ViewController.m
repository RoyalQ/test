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
@interface ViewController ()

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
}
- (void)btnClick
{
    
    UIStoryboard *myStoryboard = [UIStoryboard storyboardWithName:@"test"bundle:nil];
    
    UIViewController *secondVC = [myStoryboard  instantiateViewControllerWithIdentifier:@"MyViewController"];
    [self presentViewController:secondVC animated:YES completion:nil];
    while (secondVC.presentingViewController) {
        secondVC=secondVC.presentingViewController;
        [secondVC dismissViewControllerAnimated:YES completion:NULL];}}
- (void)btnXIBClick

{
    
    XIBViewController *xibVC=[[XIBViewController alloc]initWithNibName:@"XIBViewController"bundle:nil];
    [self presentViewController:xibVC animated:YES completion:nil];
    while (xibVC.presentingViewController) {
        xibVC=xibVC.presentingViewController;
        [xibVC dismissViewControllerAnimated:YES completion:NULL];}
}
- (void)btnCodeClick

{
    
    CodeViewController *codeVC = [[CodeViewController alloc]init];
    
    [self presentViewController:codeVC animated:YES completion:nil];
    
}- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
