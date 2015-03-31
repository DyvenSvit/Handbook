//
//  CommunityViewController.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCommunity+CD.h"

@interface HCommunityViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lbTitle;
@property (strong, nonatomic) HCommunity *community;

@end
