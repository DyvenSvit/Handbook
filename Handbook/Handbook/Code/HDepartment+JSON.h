//
//  HDepartment+JSON.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HDepartment+CD.h"
#import "NSString+Utils.h"

@interface HDepartment (JSON)
+ (HDepartment*)departmentWithDictionary:(NSDictionary*)dict;
@end
