//
//  LeftRootViewController.h
//  teachTest
//
//  Created by admin on 2017/3/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootViewControlerDelegate <NSObject>
@optional

- (void)switchControllerWithContrllerName:(NSInteger)btnTag;

@end
@interface LeftRootViewController : UIViewController

@property (nonatomic, weak)id<RootViewControlerDelegate> delegate;

@end
