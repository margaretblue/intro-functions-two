//
//  AppDelegate.m
//  intro-functions-two
//
//  Created by MARGARET MORRIS on 9/3/14.
//  Copyright (c) 2014 Margaret Blue. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

NSString *printIntroductions(NSString *name) {
    NSString *myName = @"Margaret";
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", myName];
    NSString *japaneseIntroduction = [myName stringByAppendingString:@" to moushimasu"];
    NSLog(@"%@, or in Japanese we say %@", introduction, japaneseIntroduction);
    //NSString *fullIntroduction = "%@, or in Japanese we say %@", introduction, japaneseIntroduction;
    // ??? I don't know what to return here, so I just ret japaneseIntroduction
    //NSLog(@"%@ THIS IS IT", japaneseIntroduction);
    return japaneseIntroduction;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *myName = @"Margaret";
    // call printIntroduction with myName as arg
    printIntroductions(myName);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
