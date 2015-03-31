//
//  HDepartment+CD.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HDepartment.h"
#import "CoreDataUtils.h"

@interface HDepartment (CD)
+(BOOL)isDepartmentWithID:(NSInteger)departmentID;
+(HDepartment*)getDepartmentByID:(NSInteger)departmentID;
+(NSArray*)getDepartments;
+(NSEntityDescription*)getEntity;
@end
