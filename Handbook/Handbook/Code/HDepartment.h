//
//  HDepartment.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "HAOrganization.h"

@class HCommunity;

@interface HDepartment : HAOrganization

@property (nonatomic, retain) NSSet *communities;
@end

@interface HDepartment (CoreDataGeneratedAccessors)

- (void)addCommunitiesObject:(HCommunity *)value;
- (void)removeCommunitiesObject:(HCommunity *)value;
- (void)addCommunities:(NSSet *)values;
- (void)removeCommunities:(NSSet *)values;

@end
