//
//  CompeteCreateNewAccountViewController.h
//  Competitions
//
//  Created by Jonathan Andersson on 10/11/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompeteCreateNewAccountViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *rePassword;
@property (weak, nonatomic) IBOutlet UIButton *createAccButton;

@end
