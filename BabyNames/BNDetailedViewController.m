//
//  BNDetailedViewController.m
//  BabyNames
//
//  Created by Askar on 8/4/14.
//  Copyright (c) 2014 spirit. All rights reserved.
//

#import "BNDetailedViewController.h"
#import "BName.h"

@interface BNDetailedViewController ()

@end

@implementation BNDetailedViewController
@synthesize genderLabel,nameTextLabel,noteLabel,iconImageView,derivationLabel;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{   
    [super viewDidLoad];
//    theBname = [[BName alloc] init];
//    NSLog(@" NO- %@ ",self.theBname.nameText);
//    self.nameTextLabel.text = self.theBname.nameText;
//    self.genderLabel.text = self.theBname.gender;
//    self.derivationLabel.text = self.theBname.derivation;
//    self.noteLabel.text = self.theBname.notes;
//    self.iconImageView.image = [UIImage imageNamed:self.theBname.icon];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
