//
//  ViewController.m
//  Handbook
//
//  Created by Admin on 3/31/15.
//  Copyright (c) 2015 DyvenSvit. All rights reserved.
//

#import "HDepartmentsViewController.h"

@interface HDepartmentsViewController ()

@end

@implementation HDepartmentsViewController
@synthesize departments;

- (void)viewDidLoad {
    [super viewDidLoad];
    departments = [HDepartment getDepartments];
    
    [[self navigationItem] setTitle:@"Регіони"];
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStyleDone target:nil action:nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [departments count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HDepartmentCell *result = (HDepartmentCell*)[tableView dequeueReusableCellWithIdentifier:@"HDepartmentCell" forIndexPath:indexPath];
    
    result.lbTitle.text = ((HDepartment*)departments[indexPath.row]).title;

    return result;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    
    if ([[segue identifier] isEqualToString:@"ShowCommunities"]) {
        
        HCommunitiesViewController *detailViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        detailViewController.department = departments[indexPath.row];
        
    }
    
}


@end
