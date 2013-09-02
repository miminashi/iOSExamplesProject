//
//  IVEViewController.m
//  IIViewDeckExample
//
//  Created by Shiro Nohara on 2013/08/29.
//  Copyright (c) 2013年 OR6. All rights reserved.
//

#import "IVEViewController.h"

#import "IVEMenuViewController.h"

@interface IVEViewController ()

@end

@implementation IVEViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    
    self.menuViewController = [storyboard instantiateViewControllerWithIdentifier:@"MenuViewController"];
    self.mainNavigationController = [storyboard instantiateViewControllerWithIdentifier:@"MainNavigatinController"];
    
    self = [super initWithCenterViewController:self.mainNavigationController leftViewController:self.menuViewController];
    
    if (self) {
        NSLog(@"IVEViewController initWithCoder");
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.menuViewController menuDidSelect:^(NSInteger index) {
        [self changeViewWithIndex:index];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeViewWithIndex:(NSInteger)index
{
    NSLog(@"index: %d", index);
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    if (index == 0) {
        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"Home"];
        [self pushNextController:viewController];
    }
    else if (index == 1) {
        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"View1"];
        [self pushNextController:viewController];
    }
    else if (index == 2) {
        UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"View2"];
        [self pushNextController:viewController];
    }
}

- (void)pushNextController:(UIViewController *)controller {
    NSLog(@"controller: %@", controller);
    
    [self closeLeftViewAnimated:YES];
    [self.mainNavigationController popToRootViewControllerAnimated:NO];
    [self.mainNavigationController pushViewController:controller animated:NO];
}

- (void)toggleMenu
{
    [self toggleLeftViewAnimated:YES];
}

@end
