//
//  MyViewController.m
//  task
//
//  Created by user on 2017/4/16.
//  Copyright © 2017年 user. All rights reserved.
//

#import "MyViewController.h"
#import "ViewController.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor greenColor];
    UIButton *back3=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:back3];
    back3.backgroundColor=[UIColor redColor];
    back3.frame=CGRectMake(100, 210, 50, 50);
    [back3 addTarget:self action:@selector(backclick) forControlEvents:UIControlEventTouchUpInside];
    UILabel *inLabel=[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    [self.view addSubview:inLabel];
    inLabel.textAlignment=NSTextAlignmentLeft;
    inLabel.backgroundColor=[UIColor whiteColor];
    inLabel.textColor=[UIColor blackColor];
    inLabel.text=_Value3;
}
-(void)backclick{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
