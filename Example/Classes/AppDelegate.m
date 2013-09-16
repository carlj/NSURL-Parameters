//
//  AppDelegate.m
//  NSURL+Parameters
//
//  Created by Carl Jahn on 16.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "AppDelegate.h"
#import "ExampleViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

  // Override point for customization after application launch.
  self.window.rootViewController = [ExampleViewController new];
  [self.window makeKeyAndVisible];
  return YES;
}


@end
