//
//  AppDelegate.h
//  NGTabBarControllerDemo
//
//  Created by Tretter Matthias on 16.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NGTabBarController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, NGTabBarControllerDelegate,UITextFieldDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic)NGTabBarController *tabBarController;

@end
