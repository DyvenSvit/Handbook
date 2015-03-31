//
//  CommunitiesViewController.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HCommunitiesViewController.h"

@interface HCommunitiesViewController ()

@end

@implementation HCommunitiesViewController
@synthesize communities, department;
- (void)viewDidLoad {
    [super viewDidLoad];
    communities = [department.communities allObjects];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [communities count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *result = [tableView dequeueReusableCellWithIdentifier:@"HCommunityCell" forIndexPath:indexPath];
    
    result.textLabel.text = ((HCommunity*)communities[indexPath.row]).title;
    
    return result;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    
    if ([[segue identifier] isEqualToString:@"ShowCommunity"]) {
        
        HCommunityViewController *detailViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        detailViewController.community = communities[indexPath.row];
        
    }
    
}


@end
