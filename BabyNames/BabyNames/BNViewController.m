//
//  BNViewController.m
//  BabyNames
//
//  Created by Askar on 7/30/14.
//  Copyright (c) 2014 spirit. All rights reserved.
//

#import "BNViewController.h"
#import "BName.h"
#import "BNAppDelegate.h"
#import "BNDetailedViewController.h"

@interface BNViewController ()

@end

@implementation BNViewController
@synthesize theTableView,tableData;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"BabyNames";
    tableData = [[NSMutableArray alloc] init];
    BName *tempVar = [[BName alloc] init];
    for(int i = 0; i< 25;i++){
        tempVar = [self createNameWithNonsenseDataWithIndex:i];
        [tableData insertObject:tempVar atIndex:i];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection: (NSInteger)section {
    
    return [self.tableData count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"BabyNameCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    BName *tempName = [self.tableData objectAtIndex:indexPath.row];
    cell.textLabel.text = tempName.nameText;
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BNDetailedViewController *dvc = [[BNDetailedViewController alloc ]initWithNibName:@"BNDetailedViewController" bundle:nil];
    [self.navigationController pushViewController:dvc animated:YES];

    BName *b = [self.tableData objectAtIndex:indexPath.row];
    dvc.nameTextLabel.text = b.nameText;
    dvc.genderLabel.text = b.gender;
    dvc.noteLabel.text = b.notes;
    dvc.derivationLabel.text = b.derivation;
    dvc.iconImageView.image = [UIImage imageNamed:b.icon];
}
-(void) viewDidAppear:(BOOL)animated{
    NSIndexPath *selectedIndex = [self.theTableView indexPathForSelectedRow];
    [self.theTableView deselectRowAtIndexPath:selectedIndex animated:YES];
}



-(BName *)createNameWithNonsenseDataWithIndex:(int)index {
    BName *randomDataName = [[BName alloc] init];
    NSArray *namesArray = [[NSArray alloc] initWithObjects:
                           @"Abigail", @"Ada",@"Adelaide", @"Abel", @"Algernon",    @"Anatole", @"Barbara", @"Bertha", @"Brunhilda",
                           @"Barton", @"Ben", @"Boris", @"Calista", @"Cassandra", @"Constance", @"Caspar", @"Clive", @"Corey", @"Danica", @"Dido", @"Dora", @"Darnell", @"Dexter", @"Dunstan",@"Duncan", nil];
    NSArray *genderArray = [[NSArray alloc] initWithObjects:@"Boy", @"Girl",@"Unisex", nil];
    NSArray *notesArray = [[NSArray alloc] initWithObjects:@"'Prosperous and joyful'. A popular name in Victorian times.", @"'Bright fair one'. A term of endearment used by the Irish", @"'Son of the furrows; ploughman' One of the twelve apostles", @"One  who is graceful and charming", @"'Spear'. A warrior who wielded her spear to the detriment of her enemies", nil];
    NSArray *derivationArray = [[NSArray alloc] initWithObjects:@"Celtic", @"Germanic", @"Old English", @"Latin", @"Greek", nil];
    NSArray *iconArray = [[NSArray alloc] initWithObjects:@"faq.png", @"lessons.png", @"art_arrow_left.png", @"art_arrow_right.png", nil];
    
    int genderCount = [genderArray count];
    int notesCount = [notesArray count];
    int derivationCount = [derivationArray count];
    int iconCount = [iconArray count];
    
    randomDataName.nameText = [namesArray objectAtIndex:index];
    randomDataName.gender = [genderArray objectAtIndex:(arc4random() % genderCount)];
    randomDataName.derivation = [derivationArray objectAtIndex:(arc4random() %derivationCount)];
    randomDataName.notes = [notesArray objectAtIndex:(arc4random() % notesCount)];
    randomDataName.icon = [iconArray objectAtIndex:(arc4random() % iconCount)];
    return randomDataName;
}

@end
