//
//  ViewController.m
//  2017_12_4
//
//  Created by wangaiguo on 2017/12/4.
//  Copyright © 2017年 wangaiguo. All rights reserved.
//

#import "ViewController.h"
#import "WAGMesonryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.view.bounds];
    imageV.image = [UIImage imageNamed:@"test"];
    imageV.contentMode = UIViewContentModeScaleAspectFill;
    [self.view insertSubview:imageV atIndex:0]; // 这个方法只能说加深对图层的理解，，，
    

    
}


//- (void)setToMesonry:(UIButton *)toMesonry{

//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)mesonry:(id)sender {
    WAGMesonryViewController *mesonryV = [[WAGMesonryViewController alloc]init];
    [self presentViewController:mesonryV animated:YES completion:nil];
}
@end
