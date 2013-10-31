//
//  CompeteDetailViewController.h
//  Competitions
//
//  Created by Jonathan Andersson on 31/10/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompeteDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
