//
//  IVETwoViewController.m
//  IIViewDeckExample
//
//  Created by Shiro Nohara on 2013/09/03.
//  Copyright (c) 2013年 OR6. All rights reserved.
//

#import "IVETwoViewController.h"

#import "IVEViewController.h"

@interface IVETwoViewController ()

@end

@implementation IVETwoViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openMenu:(id)sender {
    NSLog(@"IVETwoViewController openMenu");
    
    IVEViewController *mainViewController = (IVEViewController *)self.navigationController.parentViewController;
    [mainViewController toggleMenu];
}

@end
