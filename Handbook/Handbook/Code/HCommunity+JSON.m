//
//  HCommunity+JSON.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HCommunity+JSON.h"

@implementation HCommunity (JSON)
+ (HCommunity*)communityWithDictionary:(NSDictionary*)dict
{
    HCommunity* item = nil;
    int code = [[dict objectForKey:@"code"] parseInt];
    if([HCommunity isCommunityWithID:code])
    {
        item = [HCommunity getCommunityByID:code];
    }
    else
    {
        item = [[HCommunity alloc] initWithEntity:[HCommunity getEntity] insertIntoManagedObjectContext:APP.managedObjectContext];
    }
    
    item.code = code;
    item.title = [dict objectForKey:@"title"];
    item.address = [dict objectForKey:@"town"];
    item.chief = [dict objectForKey:@"chief"];
    item.phone = [dict objectForKey:@"phone"];
    item.email = [dict objectForKey:@"email"];
    item.father = [dict objectForKey:@"father"];
    
    int dep_code = [[dict objectForKey:@"dep_code"] parseInt];
    if(!item.department && [HDepartment isDepartmentWithID:dep_code])
        item.department =[HDepartment getDepartmentByID:dep_code];
    
    
    [APP saveContext];
    
    return item;
}
@end
