//
//  BNViewController.h
//  BabyNames
//
//  Created by Askar on 7/30/14.
//  Copyright (c) 2014 spirit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BName.h"
@interface BNViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *theTableView;
@property (strong,nonatomic) NSMutableArray *tableData;

-(BName *)createNameWithNonsenseDataWithIndex:(int)index;
@end
