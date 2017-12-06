//
//  WAGMesonryViewController.m
//  2017_12_4
//
//  Created by wangaiguo on 2017/12/5.
//  Copyright © 2017年 wangaiguo. All rights reserved.
//

#import "WAGMesonryViewController.h"
#import <Masonry/Masonry.h>
#import "WAGMasonryViewController2.h"

@interface WAGMesonryViewController ()

@end

@implementation WAGMesonryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    [self setMasonry];
    
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void)setMasonry{
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    UIView *yellow = [[UIView alloc]init];
    yellow.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellow];
    
    UIView *green = [[UIView alloc]init];
    green.backgroundColor = [UIColor greenColor];
    [self.view addSubview:green];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(0);
        make.top.equalTo(self.view.mas_top).offset(0);
        make.width.equalTo(self.view.mas_width).multipliedBy(0.5);
        make.height.equalTo(self.view.mas_height).multipliedBy(0.5);
    }];

    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.and.height.equalTo(redView);
        make.top.equalTo(redView.mas_top);
        make.left.equalTo(redView.mas_right).offset(10);
    }];

    [yellow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(redView);  // 与redView左对齐
        make.top.equalTo(redView.mas_bottom);
        make.width.and.height.equalTo(redView);
    }];

    [green mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(yellow.mas_right);
        make.top.equalTo(blueView.mas_bottom);
        make.width.and.height.equalTo(redView);
    }];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(toSecond)];
    redView.userInteractionEnabled = YES;
    [redView addGestureRecognizer:tap];
}

- (void)toSecond{
    WAGMasonryViewController2 *masonry2 = [[WAGMasonryViewController2 alloc]init];
    [self presentViewController:masonry2 animated:YES completion:nil];
}


//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesBegan:touches withEvent:event];
//    [self dismissViewControllerAnimated:YES completion:nil];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
