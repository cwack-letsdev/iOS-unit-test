//
//  LDAppDelegate.h
//  iOS-Unit-Test-Example
//
//  Created by Christian Wack (cwack) on 15.10.12.
//  Copyright (c) 2012 let's dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LDViewController;

@interface LDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LDViewController *viewController;

@end
