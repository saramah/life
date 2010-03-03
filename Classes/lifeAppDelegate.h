//
//  lifeAppDelegate.h
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright Primer 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lifeAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
