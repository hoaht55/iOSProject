//
//  QSAppDelegate.m
//  ProjectDetail
//
//  Created by Hoa Hoang  on 5/22/14.
//  Copyright (c) 2014 Hoang Hoa. All rights reserved.
//

#import "QSAppDelegate.h"
#import "QSSprintModel.h"
#import "QSSprintListViewController.h"

@implementation QSAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    QSSprintListViewController *viewController = [[QSSprintListViewController alloc] initWithNibName:@"QSSprintListViewController" bundle:nil];
    [self.window setRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
