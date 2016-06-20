//
//  ViewController.m
//  QSDotView
//
//  Created by jingshuihuang on 16/6/20.
//  Copyright © 2016年 QS. All rights reserved.
//

#import "ViewController.h"
#import "QSPageAcitivity.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    QSPageAcitivity * pageControl = [[QSPageAcitivity alloc]initWithFrame:CGRectMake(0, 80, 200, 40)];
    [self.view addSubview:pageControl];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
