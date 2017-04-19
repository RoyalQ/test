//
//  CodeViewController.m
//  task
//
//  Created by user on 2017/4/16.
//  Copyright © 2017年 user. All rights reserved.
//

#import "CodeViewController.h"

@interface CodeViewController ()
@end

@implementation CodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *inLabel=[[UILabel alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    [self.view addSubview:inLabel];
    inLabel.textAlignment=NSTextAlignmentLeft;
    inLabel.backgroundColor=[UIColor greenColor];
    inLabel.textColor=[UIColor blackColor];
    inLabel.text=_firstValue;
    UIButton *back3=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:back3];
    back3.backgroundColor=[UIColor redColor];
    back3.frame=CGRectMake(100, 210, 50, 50);
    [back3 addTarget:self action:@selector(backclick) forControlEvents:UIControlEventTouchUpInside];
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
