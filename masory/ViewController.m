//
//  ViewController.m
//  masory
//
//  Created by admin on 17/2/4.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
// 添加这个宏定义，以后在使用 Masonry 框架中的属性和方法的时候, 就可以省略mas_前缀
#define MAS_SHORTHAND
// 添加这个宏定义，就可以让 equalTo 方法就等价于 mas_equalTo 方法（具体含义会在后文说明）
#define MAS_SHORTHAND_GLOBALS
// 头文件一定要放在上面两个宏的后面
#import "Masonry.h"
@interface ViewController ()
@property (nonatomic,strong)UIView *redView;
@property (nonatomic,strong)UIView *yellowView;
@property (nonatomic,strong)UIView *grayView;
@property (nonatomic,strong)UIView *blueView;
@property (nonatomic,strong)UILabel *addressLabel;
@property (nonatomic,strong)UILabel *phoneLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //简单使用  设置约束之前需要先将其添加到视图上
    
//    _grayView = [[UIView alloc] init];
//    _grayView.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:_grayView];
//    
//    [_grayView makeConstraints:^(MASConstraintMaker *make) {
//       
//        make.leading.equalTo(self.view).offset(20);
//         make.top.equalTo(self.view).offset(20);
//         make.trailing.equalTo(self.view).offset(-20);
//         make.bottom.equalTo(self.view).offset(-20);
//        
//    }];
//    
//    _redView = [[UIView alloc] init];
//    _redView.backgroundColor = [UIColor redColor];
//    [_grayView addSubview:_redView];
//    
//    _yellowView = [[UIView alloc] init];
//    _yellowView.backgroundColor = [UIColor yellowColor];
//    [_grayView addSubview:_yellowView];
//    
//    _blueView = [[UIView alloc] init];
//    _blueView.backgroundColor = [UIColor blueColor];
//    [_grayView addSubview:_blueView];
//    
//    [_redView makeConstraints:^(MASConstraintMaker *make) {
//       
//        make.top.equalTo((_grayView)).offset(10);
//        make.leading.equalTo(_grayView).offset(10);
//        make.trailing.equalTo(_yellowView.leading).offset(-10);
//        make.width.equalTo(_yellowView).multipliedBy(2);
//        make.height.equalTo(_blueView);
//    }];
//    [_yellowView makeConstraints:^(MASConstraintMaker *make) {
//       
//        make.top.equalTo(_grayView).offset(10);
//        make.trailing.equalTo(_grayView).offset(-10);
//        make.height.equalTo(_redView);
//    }];
//    [_blueView makeConstraints:^(MASConstraintMaker *make) {
//       
//        make.top.equalTo(_redView.bottom).offset(10);
//        make.leading.equalTo(_grayView).offset(10);
//        make.trailing.equalTo(_grayView).offset(-10);
//        make.bottom.equalTo(_grayView).offset(-10);
//    }];
    
    _addressLabel = [[UILabel alloc] init];
    _addressLabel.text = @"智慧国际阿萨老师阿萨阿萨是";
    _addressLabel.textAlignment = NSTextAlignmentLeft;
    _addressLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:_addressLabel];
    
    _phoneLabel = [[UILabel alloc] init];
    _phoneLabel.text = @"1827309232823820320";
    _phoneLabel.textAlignment = NSTextAlignmentRight;
    _phoneLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:_phoneLabel];
    
    [_addressLabel makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self.view).offset(10);
        make.leading.equalTo(self.view).offset(8);
        make.trailing.equalTo(_phoneLabel.leading).offset(-8);
        make.height.equalTo(30);
    }];
    [_phoneLabel makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self.view).offset(10);
        make.height.equalTo(30);
        make.trailing.equalTo(self.view).offset(-10);
    }];
    [_phoneLabel setContentCompressionResistancePriority:750 forAxis:(UILayoutConstraintAxisHorizontal)];
    [_addressLabel setContentCompressionResistancePriority:250 forAxis:UILayoutConstraintAxisHorizontal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
