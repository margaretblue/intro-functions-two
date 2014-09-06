//
//  AppDelegate.m
//  intro-functions-two
//
//  Created by MARGARET MORRIS on 9/2/14.
//  Copyright (c) 2014 Margaret Blue. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (NSString *)printIntro:(NSString *)myName {
    // found a stackoverflow answer to what I was doing wrong.
    //Initially my program worked when I was just doing simple statements and functions.
    //once I moved to Step 3 where it said to make it an instance method, I got "Implicit declaration of a function..." errors
    //you can't just call printIntro(myName) anymore since its no longer a function, now an instance method.
    // so you have to reference its class (which is "self". In chapter 2 in the Car Valet app, they had different class names.  I think.
    //http://stackoverflow.com/questions/8994955/warning-implicit-declaration-of-function-is-invalid-in-c99-please-help
    
    //NSString *myName = @"Margaret";
    //?????? I cantdeclare a value then set it later??? I get a "Redefinition" error ?????
    //myName = @"Margaret";
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", myName];
    NSString *japaneseIntro = [myName stringByAppendingString:@" to moushimasu"];
    NSLog(@"%@, or in Japanese we say %@", introduction, japaneseIntro);
    return japaneseIntro;
    //???what do i even return here????
}
//see iOS book chapter 2

- (NSInteger)countDownTillIntro:(NSInteger)numberOfDays {
    if (numberOfDays == 0) {
        NSLog(@"The time has come");
    } else if (numberOfDays ){
    } else {
        NSLog(@"%d days to go", numberOfDays);
        NSInteger oneDayLess = numberOfDays - 1;
        //message with method duh
        //countDownTillIntro(oneDayLess);
        [self countDownTillIntro:oneDayLess];
    }
    return numberOfDays;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *myName = @"Margaret Morris";
    [self countDownTillIntro:(NSInteger)4];
    // call printIntro with myName as arg
    [self printIntro:(NSString *)myName];
    // call printIntro with myName as arg
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
