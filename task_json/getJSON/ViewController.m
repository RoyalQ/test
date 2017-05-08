//
//  ViewController.m
//  getJSON
//
//  Created by Nine on 2017/4/24.
//  Copyright © 2017年 Nine. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "Vedio.h"
#import "MBProgressHUD.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *showButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)get:(id)sender {
    MBProgressHUD *juhua=[MBProgressHUD showHUDAddedTo:self.view animated:YES];
    juhua.label.text=@"转啊...";
    NSString *URLString=@"http://vedio.wxz.name/api/vedio.html";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    ((AFJSONResponseSerializer *)manager.responseSerializer).removesKeysWithNullValues = YES;//有什么作用？
    //将所有的NSNull值变成nil：json解析的时候，会把null解析成NSNull对象，我们向这个NSNull对象发送消息的时候就会遇到crash的问题。
    
    //设置超时
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = 5;//这个值是什么意思？  //请求超时时间5s
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];

    
    //请求
    [manager GET:URLString parameters:nil progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
         {
             if ([responseObject[@"msg"] isEqualToString:@"ok"])
             {
                 //_datas=[[NSMutableArray alloc]init]; 不使用懒加载的话可以在这里用
                 for(NSDictionary *eachDic in responseObject[@"links"])
                 {
                     NSLog(@"%@",eachDic);
                     Vedio *vedio=[[Vedio alloc]initWithDic:eachDic];
                     [self.datas addObject:vedio];//换成_datas会怎么样？  懒加载调用 不初始化不会输出数据
                     
                     _showButton.hidden=false;                   }
             }
             else
             {
                 NSLog(@"数据错误");
             }
         }
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
         {
             NSLog(@"网络超时");
         }
     ];
    [juhua hideAnimated:YES];
}
- (IBAction)show:(id)sender {
    MBProgressHUD *juhua2=[MBProgressHUD showHUDAddedTo:self.view animated:YES];
    juhua2.label.text=@"又转啊";
    NSLog(@"%@",_datas[1]);
        for (Vedio *vedio in _datas) {
            NSLog(@"标题:%@，图片:%@",vedio.name,vedio.img);
        }
    [juhua2 hideAnimated:YES];
}

//为什么要有这个方法？
-(NSMutableArray *)datas{
    if (!_datas) {
        _datas=[[NSMutableArray alloc]init];
    }
    return _datas;
}
//懒加载，重写get方法时，先判断对象是否为空，为空在实例化对象
@end
