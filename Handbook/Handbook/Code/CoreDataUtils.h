//
//  CoreDataUtils.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "HAppDelegate.h"

@interface CoreDataUtils : NSObject
+(BOOL)isManagedObjectOfClass:(Class)classArg byID:(NSInteger)idArg;
+(NSManagedObject*)getManagedObjectOfClass:(Class)classArg byID:(NSInteger)idArg;
+(NSEntityDescription*)getEntityForClass:(Class)classArg;
+(NSArray*)getManagedObjectsOfClass:(Class)classArg;
@end
