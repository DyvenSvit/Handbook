//
//  CommunityViewController.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "HCommunity+CD.h"

@interface HCommunityViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *lbTitle;
@property (strong, nonatomic) IBOutlet UILabel *lbAddressTitle;
@property (strong, nonatomic) IBOutlet UILabel *lbAddress;
@property (strong, nonatomic) IBOutlet UILabel *lbFatherTitle;
@property (strong, nonatomic) IBOutlet UILabel *lbFather;
@property (strong, nonatomic) IBOutlet UILabel *lbChiefTitle;
@property (strong, nonatomic) IBOutlet UILabel *lbEmailTitle;
@property (strong, nonatomic) IBOutlet UILabel *lbChief;
@property (strong, nonatomic) IBOutlet UILabel *lbPhoneTitle;
@property (strong, nonatomic) IBOutlet UIButton *btnEmail;
@property (strong, nonatomic) IBOutlet UIButton *btnPhone;
@property (strong, nonatomic) HCommunity *community;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthAddressLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthAddress;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthFatherLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthFather;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthChiefLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthChief;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthEmailLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthEmail;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthPhoneLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *conWidthPhone;
@end
