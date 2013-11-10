//
//  CompeteStartPageViewController.h
//  Competitions
//
//  Created by Jonathan Andersson on 10/11/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompeteStartPageViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UIButton *createAccButton;

@end
