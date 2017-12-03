//
//  AppDelegate.m
//  Demo_tableView
//
//  Created by GrayLeo on 2017/12/3.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    FirstViewController *first = [[FirstViewController alloc] init];
    first.navigationItem.title = @"first";
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:first];
    nav1.tabBarItem.title = @"first";
    
    SecondViewController *second = [[SecondViewController alloc] init];
    second.navigationItem.title = @"second";
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:second];
    nav2.tabBarItem.title = @"second";
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    tab.viewControllers = @[nav1, nav2];
    self.window.rootViewController = tab;
    
    [self.window makeKeyAndVisible];
    
    return YES;
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
