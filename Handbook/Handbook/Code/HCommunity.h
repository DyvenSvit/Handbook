//
//  HCommunity.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "HAOrganization.h"

@class HDepartment;

@interface HCommunity : HAOrganization

@property (nonatomic, retain) NSString * father;
@property (nonatomic, retain) HDepartment *department;

@end
