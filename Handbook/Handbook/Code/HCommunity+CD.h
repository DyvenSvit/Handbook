//
//  HCommunity+CD.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HCommunity.h"
#import "CoreDataUtils.h"
@interface HCommunity (CD)
+(BOOL)isCommunityWithID:(NSInteger)communityID;
+(HCommunity*)getCommunityByID:(NSInteger)communityID;
+(NSEntityDescription*)getEntity;
@end
