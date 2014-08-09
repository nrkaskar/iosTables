//
//  BNDetailedViewController.h
//  BabyNames
//
//  Created by Askar on 8/4/14.
//  Copyright (c) 2014 spirit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BName.h"

@interface BNDetailedViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *nameTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *genderLabel;
@property (strong, nonatomic) IBOutlet UIImageView *iconImageView;
@property (strong, nonatomic) IBOutlet UILabel *derivationLabel;
@property (strong, nonatomic) IBOutlet UILabel *noteLabel;


@end
