//
//  HDepartment+JSON.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HDepartment+JSON.h"

@implementation HDepartment (JSON)
+ (HDepartment*)departmentWithDictionary:(NSDictionary*)dict
{
    HDepartment* item = nil;
    
    int code = [[dict objectForKey:@"code"] parseInt];
    if([HDepartment isDepartmentWithID:code])
    {
        item = [HDepartment getDepartmentByID:code];
    }
    else
    {
        item = [[HDepartment alloc] initWithEntity:[HDepartment getEntity] insertIntoManagedObjectContext:APP.managedObjectContext];
    }
    
    item.code = code;
    item.title = [dict objectForKey:@"title"];
    item.address = [dict objectForKey:@"address"];
    item.chief = [dict objectForKey:@"chief"];
    item.phone = [dict objectForKey:@"phone"];
    item.email = [dict objectForKey:@"email"];
    item.journal = [dict objectForKey:@"magazine"];
    item.activity = [dict objectForKey:@"activity"];
    item.website = [dict objectForKey:@"website"];
    
    [APP saveContext];
    
    return item;
}
@end
