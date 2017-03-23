//
//  AppDelegate.m
//  teachTest
//
//  Created by admin on 2017/3/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftRootViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"
#import "BaseNavigationController.h"

@interface AppDelegate ()<RootViewControlerDelegate>

@property(nonatomic, strong) UISplitViewController *split;
@property(nonatomic, strong) LeftRootViewController *rootVC;
@property(nonatomic, strong) OneViewController *OneVC;
@property(nonatomic, strong) TwoViewController *twoVC;
@property(nonatomic, strong) ThirdViewController *thirdVC;
@property(nonatomic, strong) ForthViewController *fourVC;

@property(nonatomic, strong) __block BaseNavigationController *baseNav;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self settingRootViewController];
    return YES;
}

- (void)settingRootViewController {
    self.split = [[UISplitViewController alloc] init];
    [self.split setPresentsWithGesture:YES];
    //左边根目录
    self.rootVC = [[LeftRootViewController alloc] initWithNibName:@"LeftRootViewController" bundle:nil];
    [self.split setValue:@78.0F forKey:@"masterColumnWidth"];
    self.rootVC.delegate = self;
    //右边详情页面
    self.OneVC = [[OneViewController alloc] init];
    [self setNavigationRootVC:self.OneVC];
    [self.split setViewControllers:@[self.rootVC, self.baseNav]];
    [self.split setDelegate:self.baseNav];
    
    self.window.rootViewController = self.split;
}

#pragma mark - navigation

- (void)setNavigationRootVC:(UIViewController *)vc {
    self.baseNav = [[BaseNavigationController alloc] initWithRootViewController:vc];
}

#pragma mark - delegate methods

- (void)switchControllerWithContrllerName:(NSInteger)btnTag
{
    switch ((int) btnTag) {
        case 100:
        {
            if (!self.OneVC) {
                self.OneVC = [[OneViewController alloc] init];
            }
            [self setNavigationRootVC:self.OneVC];

        }
            break;
        case 101:
        {
            if (!self.twoVC) {
                self.twoVC = [[TwoViewController alloc] init];
            }
            [self setNavigationRootVC:self.twoVC];
        }
            break;
        case 102:
        {
            if (!self.thirdVC) {
                self.thirdVC = [[ThirdViewController alloc] init];
            }
            [self setNavigationRootVC:self.thirdVC];
        }
            break;
        case 103:
        {
            if (!self.fourVC) {
                self.fourVC = [[ForthViewController alloc] init];
            }
            [self setNavigationRootVC:self.fourVC];
        }
            break;
 
        default:
            break;
    }
    
    [self.split setViewControllers:@[self.rootVC, self.baseNav]];
    [self.split setDelegate:self.baseNav];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
