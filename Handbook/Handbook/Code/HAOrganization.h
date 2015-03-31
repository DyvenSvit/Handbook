//
//  HAOrganization.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface HAOrganization : NSManagedObject

@property (nonatomic) int16_t code;
@property (nonatomic, retain) NSString * chief;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * website;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSString * journal;
@property (nonatomic, retain) NSString * activity;

@end
