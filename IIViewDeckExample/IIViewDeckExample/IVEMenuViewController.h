//
//  IVEMenuViewController.h
//  IIViewDeckExample
//
//  Created by Shiro Nohara on 2013/08/29.
//  Copyright (c) 2013年 OR6. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^IVEMenuViewControllerMenuDidSelectBlock)(NSInteger index);

@interface IVEMenuViewController : UITableViewController

- (void)menuDidSelect:(IVEMenuViewControllerMenuDidSelectBlock)completionBlock;

@end
