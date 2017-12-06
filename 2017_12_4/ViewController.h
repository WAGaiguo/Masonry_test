//
//  ViewController.h
//  2017_12_4
//
//  Created by wangaiguo on 2017/12/4.
//  Copyright © 2017年 wangaiguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *testLabel1;
@property (weak, nonatomic) IBOutlet UILabel *testLabel2;

- (IBAction)mesonry:(id)sender;

@end

