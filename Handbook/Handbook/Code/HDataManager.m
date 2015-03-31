//
//  HDataManager.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HDataManager.h"

@implementation HDataManager


+(void) preloadData
{
    NSString *lastSavedVersion = [[NSUserDefaults standardUserDefaults] objectForKey:@"app.version"];
    
    NSString *majorVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *minorVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    
    NSString *currentVersion = [NSString stringWithFormat:@"%@ (%@)", majorVersion, minorVersion];
    NSLog(@"Checking last app version");
    if(![currentVersion isEqualToString:lastSavedVersion])
    {
        NSArray *array = [self arrayWithContentsOfJSONString:@"comissions.json"];
        
        if ([array isKindOfClass:[NSArray class]]){
            for (NSDictionary *dic in array) {
                [HDepartment departmentWithDictionary:dic];
            }
        }
        
        array = [self arrayWithContentsOfJSONString:@"community.json"];
        
        if ([array isKindOfClass:[NSArray class]]){
            for (NSDictionary *dic in array) {
                [HCommunity communityWithDictionary:dic];
            }
        }
        
        
        
        NSLog(@"Assets was copied successfully!");
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:@"app.version"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    else
    {
        NSLog(@"This app version resources was already copied to Library");
    }
}

+(NSArray*)arrayWithContentsOfJSONString:(NSString*)fileLocation{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:[fileLocation stringByDeletingPathExtension] ofType:[fileLocation pathExtension]];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions error:&error];
    // Be careful here. You add this as a category to NSDictionary
    // but you get an id back, which means that result
    // might be an NSArray as well!
    if (error != nil) return nil;
    return result;
}

@end
