//
//  ViewController.m
//  flutterFrameworkToiOS
//
//  Created by 王悦光 on 2023/2/28.
//

#import "ViewController.h"
@import Flutter;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor orangeColor];
    button.frame = CGRectMake(100, 100, 100, 40);
    [button setTitle:@"点我" forState:0];
    
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(UIButton *)button{
    NSLog(@"点击了这个按钮");
    
    FlutterViewController *mainVC = [[FlutterViewController alloc] init];
    mainVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:mainVC animated:YES completion:nil];
}


@end
