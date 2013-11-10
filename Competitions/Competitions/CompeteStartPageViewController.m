//
//  CompeteStartPageViewController.m
//  Competitions
//
//  Created by Jonathan Andersson on 10/11/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import "CompeteStartPageViewController.h"
#import "CompeteCreateNewAccountViewController.h"
#import "CompeteProfileHomePageViewController.h"

@interface CompeteStartPageViewController ()

@end

@implementation CompeteStartPageViewController
@synthesize userName = _userName;
@synthesize password = _password;
@synthesize loginButton = _loginButton;

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
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"competitors.jpg"]];
    
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];
    
    [self.loginButton addTarget:self
                           action:@selector(loginAction)
                 forControlEvents:UIControlEventTouchUpInside];
    
    [self.createAccButton addTarget:self
                         action:@selector(createAccountAction)
               forControlEvents:UIControlEventTouchUpInside];
    
    self.userName.delegate = self;
    self.password.delegate = self;
	// Do any additional setup after loading the view.
}

-(void) loginAction
{
    //check the textfields for the input values and check in database if login exists,
    //perform the segue or print out username and/or password wrong
    [self performSegueWithIdentifier:@"login" sender:self];
}

-(void) createAccountAction
{
    //go to the create a new account view
    [self performSegueWithIdentifier:@"createNewAccount" sender:self];
}

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CompeteCreateNewAccountViewController *destinationView = segue.destinationViewController;
    
    //destinationView.playerName = self.playerName.text;
    
    if ([[segue identifier] isEqualToString:@"createNewAccount"]) {
        //do something perhaps?
    } else if([[segue identifier] isEqualToString:@"login"]) {
        //do something perhaps?
    }
    
}*/

- (BOOL) textFieldShouldReturn:(UITextField *)theTextField
{
    [self.userName resignFirstResponder];
    [self.password resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
