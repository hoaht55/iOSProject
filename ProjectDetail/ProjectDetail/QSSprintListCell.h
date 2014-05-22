//
//  QSSprintListCell.h
//  ProjectDetail
//
//  Created by Hoa Hoang  on 5/22/14.
//  Copyright (c) 2014 Hoang Hoa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QSSprintModel.h"

@interface QSSprintListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *startDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *endDateLabel;

@property (nonatomic, strong) QSSprintModel * model;

@end
