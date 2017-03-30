//
//  AFNetworkingViewController.m
//  Crash
//
//  Created by 林金星 on 17/3/30.
//  Copyright © 2017年 Pingan. All rights reserved.
//

#import "AFNetworkingViewController.h"
#import <AFNetworking/AFNetworking.h>


@interface AFNetworkingViewController ()

@end

@implementation AFNetworkingViewController

#pragma mark - 动态属性及重写属性

#pragma mark - V生命周期管理

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)test:(id)sender{
    NSString* url = @"http://www.jianshu.com/p/8eac5b1975de";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    for (int i = 0; i < 3; ++i) {
        [manager GET:url parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
            //            NSLog(@"responseObject:%@", responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"error:%@", error);
        }];
    }
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

#pragma mark - M生命周期管理

#pragma mark - 界面跳转

#pragma mark - 视图（View）事件响应

#pragma mark - 数据模型（Model）和V的交互


@end
