//
//  AppDelegate.m
//  NGTabBarControllerDemo
//
//  Created by Tretter Matthias on 16.02.12.
//  Copyright (c) 2012 NOUS Wissensmanagement GmbH. All rights reserved.
//

#import "AppDelegate.h"
#import "NGColoredViewController.h"
#import "NGTabBarController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    /*
    NGColoredViewController *vc1 = [[NGColoredViewController alloc] initWithNibName:nil bundle:nil];
    NGColoredViewController *vc2 = [[NGColoredViewController alloc] initWithNibName:nil bundle:nil];
    NGColoredViewController *vc3 = [[NGColoredViewController alloc] initWithNibName:nil bundle:nil];
    NGColoredViewController *vc4 = [[NGColoredViewController alloc] initWithNibName:nil bundle:nil];
     */
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];

    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor greenColor];

    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor grayColor];

    UIViewController *vc4 = [UIViewController new];
    vc4.view.backgroundColor = [UIColor yellowColor];

    /*
    vc1.ng_tabBarItem = [NGTabBarItem itemWithTitle:@"Live" image:[UIImage imageNamed:@"liveradio"]];
    vc2.ng_tabBarItem = [NGTabBarItem itemWithTitle:@"Favorites" image:[UIImage imageNamed:@"myradio"]];
    vc3.ng_tabBarItem = [NGTabBarItem itemWithTitle:@"News" image:[UIImage imageNamed:@"news"]];
    vc4.ng_tabBarItem = [NGTabBarItem itemWithTitle:@"On Demand" image:[UIImage imageNamed:@"ondemand"]];
     */
    
    vc1.ng_tabBarItem.selectedImageTintColor = [UIColor yellowColor];
    vc1.ng_tabBarItem.selectedTitleColor = [UIColor yellowColor];

    
    NSArray *viewControllers = [NSArray arrayWithObjects:vc1,vc2,vc3,vc4,nil];
    
    self.tabBarController = [[NGTabBarController alloc] initWithDelegate:self];
    
    _tabBarController.viewControllers = viewControllers;
    _tabBarController.tabBar.drawGloss = NO;
    _tabBarController.tabBar.itemPadding = 1;//默认是0
    _tabBarController.tabBarPosition = NGTabBarPositionTop;
    _tabBarController.tabBar.tintColor = [UIColor grayColor];
    

    UITextField *view = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    view.delegate = self;
    view.backgroundColor = [UIColor redColor];
    [_tabBarController.tabBar addSubview:view];


    self.window.rootViewController = _tabBarController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing");
    [_tabBarController handleItem:2];

}
////////////////////////////////////////////////////////////////////////
#pragma mark - NGTabBarControllerDelegate
////////////////////////////////////////////////////////////////////////

- (CGSize)tabBarController:(NGTabBarController *)tabBarController 
sizeOfItemForViewController:(UIViewController *)viewController
                   atIndex:(NSUInteger)index 
                  position:(NGTabBarPosition)position {
    if (NGTabBarIsVertical(position)) {
        return CGSizeMake(150.f, 60.f);
    } else {
        return CGSizeMake(60.f, 50);
    }
}


@end
