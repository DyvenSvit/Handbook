//
//  HDepartment+CD.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HDepartment+CD.h"

@implementation HDepartment (CD)
+(BOOL)isDepartmentWithID:(NSInteger)departmentID
{
    return [CoreDataUtils isManagedObjectOfClass:[HDepartment class] byID:departmentID];
}

+(HDepartment*)getDepartmentByID:(NSInteger)departmentID
{
    return (HDepartment*)[CoreDataUtils getManagedObjectOfClass:[HDepartment class] byID:departmentID];
}

+(NSArray*)getDepartments
{
    NSArray *result = [CoreDataUtils getManagedObjectsOfClass:[HDepartment class]];
    
    return result;
}

+(NSEntityDescription*)getEntity
{
    return [CoreDataUtils getEntityForClass:[HDepartment class]];
}
@end