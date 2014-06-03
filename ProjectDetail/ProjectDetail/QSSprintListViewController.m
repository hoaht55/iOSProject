//
//  QSSprintListViewController.m
//  ProjectDetail
//
//  Created by Hoa Hoang  on 5/22/14.
//  Copyright (c) 2014 Hoang Hoa. All rights reserved.
//

#import "QSSprintListViewController.h"
#import "QSSprintModel.h"
#import "QSSprintListCell.h"

@interface QSSprintListViewController ()
- (void)fakeModel;

@property (nonatomic, strong) NSArray * sprints;
@end

@implementation QSSprintListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom init˜ialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"QSSprintListCell" bundle:nil] forCellReuseIdentifier:@"QSSprintListCell"];
    [self fakeModel];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
#pragma mark - table view datasouce and delegate
- (void)fakeModel
{
        NSMutableArray *array = [NSMutableArray array];
        NSString *fakeDate = @"01/01/2014";
        NSString *fakeStatus= @"Pending";
        for (NSInteger index = 0; index < 10; index ++) {
            QSSprintModel *model = [[QSSprintModel alloc] init];
            model.name = [NSString stringWithFormat:@"Sprint %li", (long)index];
            model.startDate = fakeDate;
            model.endDate = fakeDate;
            model.status = fakeStatus;
            [array addObject:model];
        }
    self.sprints = [array copy];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.sprints.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 129.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QSSprintListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSSprintListCell"];
    QSSprintModel *model = [self.sprints objectAtIndex:indexPath.row];
    [cell setModel:model];
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
