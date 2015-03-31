//
//  HCommunity+CD.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HCommunity+CD.h"

@implementation HCommunity (CD)
+(BOOL)isCommunityWithID:(NSInteger)communityID
{
    return [CoreDataUtils isManagedObjectOfClass:[HCommunity class] byID:communityID];
}
+(HCommunity*)getCommunityByID:(NSInteger)communityID
{
    return (HCommunity*)[CoreDataUtils getManagedObjectOfClass:[HCommunity class] byID:communityID];
}
+(NSEntityDescription*)getEntity
{
    return [CoreDataUtils getEntityForClass:[HCommunity class]];
}
@end
