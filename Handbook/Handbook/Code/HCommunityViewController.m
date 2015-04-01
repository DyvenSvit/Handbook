//
//  CommunityViewController.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HCommunityViewController.h"

@interface HCommunityViewController ()

@end

@implementation HCommunityViewController
@synthesize community, lbTitle, lbAddress, lbChief, lbFather, btnEmail, btnPhone, conWidthAddress, conWidthAddressLabel, conWidthFather, conWidthFatherLabel, conWidthChief, conWidthChiefLabel, conWidthEmail, conWidthEmailLabel, conWidthPhone, conWidthPhoneLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    lbTitle.text = community.title;
    lbAddress.text = community.address;
    lbChief.text = community.chief;
    lbFather.text = community.father;
    
    [btnEmail setTitle:community.email forState:UIControlStateNormal];
    btnEmail.titleLabel.adjustsFontSizeToFitWidth = TRUE;
    [btnEmail addTarget:self action:@selector(btnEmailClick) forControlEvents:UIControlEventTouchUpInside];
    
     [btnPhone setTitle:community.phone forState:UIControlStateNormal];
    btnPhone.titleLabel.adjustsFontSizeToFitWidth = TRUE;
    [btnPhone addTarget:self action:@selector(btnPhoneClick) forControlEvents:UIControlEventTouchUpInside];
    
    if([community.address stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0)
    {
        conWidthAddressLabel.constant = 0;
        conWidthAddress.constant = 0;
    }

    if([community.father stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0)
    {
        conWidthFatherLabel.constant = 0;
        conWidthFather.constant = 0;
    }
    
    if([community.chief stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0)
    {
        conWidthChiefLabel.constant = 0;
        conWidthChief.constant = 0;
    }
    
    if([community.email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0)
    {
        conWidthEmailLabel.constant = 0;
        conWidthEmail.constant = 0;
    }
    
    if([community.phone stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0)
    {
        conWidthPhoneLabel.constant = 0;
        conWidthPhone.constant = 0;
    }
    
    
    [[self navigationItem] setTitle:@"Спільнота"];
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStyleDone target:nil action:nil]];
}

-(void) btnEmailClick
{
    if ([MFMailComposeViewController canSendMail]) {
        
        APP.globalMailComposer.mailComposeDelegate = self;
        
        [APP.globalMailComposer setToRecipients:@[community.email]];
        
        [self presentViewController:APP.globalMailComposer animated:YES completion:nil];
        
    } else {
        [[[UIAlertView alloc] initWithTitle:@"Error"
                                    message:@"Device cannot send email"
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil] show];
        
    }
}

-(void) btnPhoneClick
{
    NSString *phNo = [[community.phone componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet]] componentsJoinedByString:@""];
    
    NSURL *phoneUrl = [NSURL URLWithString:[NSString  stringWithFormat:@"tel://%@",phNo]];
    
    if ([[UIApplication sharedApplication] canOpenURL:phoneUrl]) {
        [[UIApplication sharedApplication] openURL:phoneUrl];
    } else
    {
        [[[UIAlertView alloc]initWithTitle:@"Alert" message:@"Call facility is not available!!!" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil] show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mailComposeController:(MFMailComposeViewController*)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError*)error;
{
    if (result == MFMailComposeResultSent) {
        NSLog(@"It's away!");
    }
    
    [controller dismissViewControllerAnimated:YES completion:^{
        [APP cycleTheGlobalMailComposer];
    }];
}

@end
