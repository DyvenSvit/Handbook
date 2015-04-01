//
//  CoreDataUtils.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "CoreDataUtils.h"

@implementation CoreDataUtils


+(BOOL)isManagedObjectOfClass:(Class)classArg byID:(NSInteger)idArg
{
    BOOL result = NO;
    
    NSError * error;
    
    NSFetchRequest * request = [self getFetchRequestForManagedObjectOfClass:classArg byID:idArg];

    result = [APP.managedObjectContext countForFetchRequest:request error:&error] > 0;
    
    return result;
}

+(NSArray*)getManagedObjectsOfClass:(Class)classArg
{
    NSArray* result = nil;
    
    NSError * error;
    
    NSFetchRequest * request = [self getFetchRequestForManagedObjectsOfClass:classArg];
    NSArray *array = [APP.managedObjectContext executeFetchRequest:request error:&error];
    if(!error)
    {
        result = array;
    }
    
    return result;
}

+(NSManagedObject*)getManagedObjectOfClass:(Class)classArg byID:(NSInteger)idArg
{
    NSManagedObject* result = nil;
    
    NSError * error;
    
    NSFetchRequest * request = [self getFetchRequestForManagedObjectOfClass:classArg byID:idArg];
    NSArray *array = [APP.managedObjectContext executeFetchRequest:request error:&error];
    if(!error &&[array count]>0)
    {
        result = [array objectAtIndex:0];
    }
    
    return result;
}

+(NSFetchRequest*)getFetchRequestForManagedObjectsOfClass:(Class)classArg
{
    NSFetchRequest* result = [[NSFetchRequest alloc] init];
    [result setEntity:[self getEntityForClass:classArg]];
    [result setSortDescriptors:@[[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES]]];
    return result;
}


+(NSFetchRequest*)getFetchRequestForManagedObjectOfClass:(Class)classArg byID:(NSInteger)idArg
{
    NSFetchRequest* result = [[NSFetchRequest alloc] init];
    [result setEntity:[self getEntityForClass:classArg]];
    [result setSortDescriptors:@[[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES]]];
    [result setFetchLimit:1];
    
    
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"code == %d", idArg];
    
    [result setPredicate:predicate];
    return result;
}

+(NSEntityDescription*)getEntityForClass:(Class)classArg
{
    NSEntityDescription *entity = [NSEntityDescription entityForName:NSStringFromClass(classArg) inManagedObjectContext:APP.managedObjectContext];
    return entity;
}
@end
