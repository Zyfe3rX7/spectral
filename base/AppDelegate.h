//
//  AppDelegate.h
//  databasepractise
//
//  Created by Hyma on 27/06/17.
//  Copyright © 2017 Hyma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

