//
//  ViewController.h
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HDepartment+CD.h"
#import "HCommunity+CD.h"
#import "HCommunitiesViewController.h"
#import "HDepartmentCell.h"

@interface HDepartmentsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSArray *departments;

@end

