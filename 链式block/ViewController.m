//
//  ViewController.m
//  链式block
//
//  Created by user on 16/1/27.
//  Copyright © 2016年 mobin. All rights reserved.
//

#import "ViewController.h"
#import "NSUserDefaults+saveBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [NSUserDefaults save:^(NSUserDefaults *userDefault) {
        userDefault.save(@"张三",@"2").save(@"李四",@"4");
    }];
    
    NSLog(@"%@ ---%@",[[NSUserDefaults standardUserDefaults]objectForKey:@"张三"],[[NSUserDefaults standardUserDefaults]objectForKey:@"李四"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
