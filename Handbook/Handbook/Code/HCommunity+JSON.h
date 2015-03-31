//
//  HCommunity+JSON.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HCommunity+CD.h"
#import "HDepartment+CD.h"

@interface HCommunity (JSON)
+ (HCommunity*)communityWithDictionary:(NSDictionary*)dict;
@end
