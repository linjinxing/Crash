//
//  ViewController.m
//  Demo
//
//  Created by 林金星 on 17/3/27.
//  Copyright © 2017年 Pingan. All rights reserved.
//

#import "ScrollViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface ScrollViewController ()<UIScrollViewDelegate>
@property(strong) UIScrollView* scrollView;
@end

@implementation ScrollViewController

- (void)dealloc{
//    self.scrollView.delegate = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
     self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.delegate = self;
     [self.view addSubview:self.scrollView];
    
    UIButton* btn = [[UIButton alloc] initWithFrame:self.view.bounds];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)action:(id)sender{
#if 1
    [self test];
#else
    [self.scrollView setContentOffset:CGPointMake(0, self.scrollView.bounds.size.height * 3) animated:YES];
    [self.navigationController popViewControllerAnimated:NO];
#endif
}


- (void)test{
    NSString* url = @"http://www.jianshu.com/p/8eac5b1975de";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    for (int i = 0; i < 100; ++i) {
        [manager GET:url parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
//            NSLog(@"responseObject:%@", responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"error:%@", error);
        }];
    }
}


- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

//- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    NSLog(@"%@", NSStringFromSelector(_cmd));
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
