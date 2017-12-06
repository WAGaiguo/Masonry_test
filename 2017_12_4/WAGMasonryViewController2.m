//
//  WAGMasonryViewController2.m
//  2017_12_4
//
//  Created by wangaiguo on 2017/12/5.
//  Copyright © 2017年 wangaiguo. All rights reserved.
//

#import "WAGMasonryViewController2.h"
#import <Masonry.h>

@interface WAGMasonryViewController2 ()

@end

@implementation WAGMasonryViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    [self widthAndHight];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UILabel *centerL = [[UILabel alloc]init];
    centerL.text = @"zhongxin";
    centerL.backgroundColor = [UIColor cyanColor];
    centerL.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:centerL];
    
    [centerL mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(200);

        make.center.equalTo(self.view);// 整体设置居中
        
        make.centerX.equalTo(self.view.mas_centerX); // X 居中
        make.centerY.equalTo(self.view.mas_centerY); // Y 居中
        
    }];
}

- (void)widthAndHight{
    UIView *gray1 = [[UIView alloc]init];
    gray1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:gray1];
    
    UIView *gray2 = [[UIView alloc]init];
    gray2.backgroundColor = [UIColor grayColor];
    [self.view addSubview:gray2];
    
    UIView *gray3 = [[UIView alloc]init];
    gray3.backgroundColor = [UIColor grayColor];
    [self.view addSubview:gray3];
    
    UIView *red1 = [[UIView alloc]init];
    red1.backgroundColor = [UIColor redColor];
    [self.view addSubview:red1];
    
    UIView *red2 = [[UIView alloc]init];
    red2.backgroundColor = [UIColor redColor];
    [self.view addSubview:red2];
    
    [gray1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(20);
        make.leading.equalTo(self.view.mas_leading).offset(0);
        make.bottom.equalTo(red1.mas_bottom);
    }];
    
    [red1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
//        make.left.equalTo(gray1.mas_right);
        make.leading.mas_equalTo(gray1.mas_trailing);
        make.bottom.equalTo(self.view.mas_bottom).offset(-50);
    }];

    [gray2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.and.width.equalTo(gray1);
        make.left.equalTo(red1.mas_right);
        make.bottom.equalTo(red1.mas_bottom);
    }];

    [red2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.and.width.equalTo(red1);
        make.left.equalTo(gray2.mas_right);
        make.bottom.equalTo(red1.mas_bottom);
    }];

    [gray3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.and.width.equalTo(gray1);
        make.left.equalTo(red2.mas_right);
        make.trailing.equalTo(self.view.mas_trailing);
        make.bottom.equalTo(red1.mas_bottom);
    }];
    
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
