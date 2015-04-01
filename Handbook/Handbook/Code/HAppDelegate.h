//
//  AppDelegate.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <MessageUI/MessageUI.h>
#import "HDataManager.h"

#define APP ((HAppDelegate*)[UIApplication sharedApplication].delegate)

@interface HAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, strong) MFMailComposeViewController *globalMailComposer;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
-(void)cycleTheGlobalMailComposer;

@end

