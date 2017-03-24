//
//  ViewController.m
//  second
//
//  Created by user on 2017/3/22.
//  Copyright © 2017年 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UITextField *sum;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jia:(id)sender {
    NSString *n1=self.num1.text;
    NSString *n2=self.num2.text;
    double i1=[n1 doubleValue];
    double i2=[n2 doubleValue];
    _sum.text=[NSString stringWithFormat:@"%lf",i1+i2];
}
- (IBAction)jian:(id)sender {
    NSString *n1=self.num1.text;
    NSString *n2=self.num2.text;
    double i1=[n1 doubleValue];
    double i2=[n2 doubleValue];
    self.sum.text=[NSString stringWithFormat:@"%lf",i1-i2];
}
- (IBAction)cheng:(id)sender {
    NSString *n1=self.num1.text;
    NSString *n2=self.num2.text;
    double i1=[n1 doubleValue];
    double i2=[n2 doubleValue];
    self.sum.text=[NSString stringWithFormat:@"%lf",i1*i2];
}
- (IBAction)chu:(id)sender {
    NSString *n1=self.num1.text;
    NSString *n2=self.num2.text;
    double i1=[n1 doubleValue];
    double i2=[n2 doubleValue];
    self.sum.text=[NSString stringWithFormat:@"%.2f",i1/i2];
}



@end
