//
//  LeftRootViewController.m
//  teachTest
//
//  Created by admin on 2017/3/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "LeftRootViewController.h"

@interface LeftRootViewController ()

@end

@implementation LeftRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)leftButtonClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(switchControllerWithContrllerName:)]) {
        [self.delegate switchControllerWithContrllerName:sender.tag];
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
