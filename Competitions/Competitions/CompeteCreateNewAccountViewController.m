//
//  CompeteCreateNewAccountViewController.m
//  Competitions
//
//  Created by Jonathan Andersson on 10/11/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import "CompeteCreateNewAccountViewController.h"

@interface CompeteCreateNewAccountViewController ()

@end

@implementation CompeteCreateNewAccountViewController
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize email = _email;
@synthesize password = _password;
@synthesize rePassword = _rePassword;
@synthesize createAccButton = _createAccButton;

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
    
    [self.createAccButton addTarget:self action:@selector(createAccAction) forControlEvents:UIControlEventTouchUpInside];
    
    self.firstName.delegate = self;
    self.lastName.delegate = self;
    self.email.delegate = self;
    self.password.delegate = self;
    self.rePassword.delegate = self;
    
    
}

-(void) createAccAction
{
    //go to the create a new account view
    
    //Let the controller create a NewAccount object and put it into the database and
    //then wait for a callback here and then performSegueWithIdentifier and write out
    //a text saying account succesfully created blabla
    
    [self performSegueWithIdentifier:@"createdAccount" sender:self];
    
}

- (BOOL) textFieldShouldReturn:(UITextField *)theTextField
{
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.email resignFirstResponder];
    [self.password resignFirstResponder];
    [self.rePassword resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
