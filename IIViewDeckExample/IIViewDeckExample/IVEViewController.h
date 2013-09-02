//
//  IVEViewController.h
//  IIViewDeckExample
//
//  Created by Shiro Nohara on 2013/08/29.
//  Copyright (c) 2013年 OR6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IIViewDeckController.h>

@class IVEMenuViewController;

@interface IVEViewController : IIViewDeckController

@property (nonatomic, strong) IVEMenuViewController *menuViewController;
@property (nonatomic, strong) UINavigationController *mainNavigationController;

- (void)toggleMenu;

@end
