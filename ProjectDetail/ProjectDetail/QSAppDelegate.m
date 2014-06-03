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
#import "QSLoginViewController.h"

@implementation QSAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    QSLoginViewController *viewController = [[QSLoginViewController alloc] initWithNibName:@"QSLoginViewController" bundle:nil];
    [self.window setRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

