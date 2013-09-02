//
//  IVEMenuViewController.m
//  IIViewDeckExample
//
//  Created by Shiro Nohara on 2013/08/29.
//  Copyright (c) 2013年 OR6. All rights reserved.
//

#import "IVEMenuViewController.h"

@interface IVEMenuViewController ()

@property (nonatomic, strong) IVEMenuViewControllerMenuDidSelectBlock menuDidSelectBlock;

@end

@implementation IVEMenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)menuDidSelect:(IVEMenuViewControllerMenuDidSelectBlock)completionBlock
{
    self.menuDidSelectBlock = completionBlock;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"didSelectRowAtIndexPath: %d", indexPath.row);

    if (self.menuDidSelectBlock) {
        self.menuDidSelectBlock(indexPath.row);
    }
}

@end
