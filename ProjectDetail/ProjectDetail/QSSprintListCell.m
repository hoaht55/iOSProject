//
//  QSSprintListCell.m
//  ProjectDetail
//
//  Created by Hoa Hoang  on 5/22/14.
//  Copyright (c) 2014 Hoang Hoa. All rights reserved.
//

#import "QSSprintListCell.h"
#import "QSSprintModel.h"
@implementation QSSprintListCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(QSSprintModel *)model
{
    _model = model;
    [self.nameLabel setText:_model.name];
    [self.startDateLabel setText:_model.startDate];
    [self.endDateLabel setText:_model.endDate];
    [self.statusLabel setText:_model.status];
   
}
@end
