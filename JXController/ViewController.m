//
//  ViewController.m
//  JXController
//
//  Created by 王加祥 on 16/5/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "ViewController.h"
#import "JXOneController.h"
#import "JXTwoController.h"
#import "JXThreeController.h"


@interface ViewController ()

/** 引用当前的控制器的view */
@property (nonatomic,weak) UIViewController * currentView;
/** 包装容器view */
@property (nonatomic,weak) UIView * contentView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * contentView = [[UIView alloc] init];
    contentView.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64);
    [self.view addSubview:contentView];
    self.contentView = contentView;
    
    [self addChildViewController:[[JXOneController alloc] init]];
    [self addChildViewController:[[JXTwoController alloc] init]];
    [self addChildViewController:[[JXThreeController alloc] init]];
    
    // 将JXOneController从父控制器中移除
//    [self.childViewControllers[0] removeFromParentViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)one {
    
    // 将当前控制器的view移除
    [self.currentView.view removeFromSuperview];
    // 将添加的控制器赋值给引用控制器
    self.currentView = self.childViewControllers[0];
    
    self.currentView.view.frame = self.contentView.bounds;
    // 添加控制器的view
    [self.contentView addSubview:self.currentView.view];
    // 添加动画
    CATransition * animation = [CATransition animation];
    animation.type = @"cube";
    animation.duration = 0.7;
    animation.subtype = kCATransitionFromLeft;
    [self.contentView.layer addAnimation:animation forKey:nil];
}
- (IBAction)two {
    [self.currentView.view removeFromSuperview];
    // 将添加的控制器赋值给引用控制器
    self.currentView = self.childViewControllers[1];
    self.currentView.view.frame = self.contentView.bounds;
    [self.contentView addSubview:self.currentView.view];
    CATransition * animation = [CATransition animation];
    animation.type = @"cube";
    animation.duration = 0.7;
    animation.subtype = kCATransitionFromRight;
    [self.contentView.layer addAnimation:animation forKey:nil];
}
- (IBAction)three {
    
    
    [self.currentView.view removeFromSuperview];
    // 将添加的控制器赋值给引用控制器
    self.currentView = self.childViewControllers[2];
    self.currentView.view.frame = self.contentView.bounds;
    [self.contentView addSubview:self.currentView.view];
    CATransition * animation = [CATransition animation];
    animation.type = @"cube";
    animation.duration = 0.7;
    animation.subtype = kCATransitionFromRight;
    [self.contentView.layer addAnimation:animation forKey:nil];
}

@end
