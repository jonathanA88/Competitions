//
//  CompeteNewAccount.m
//  Competitions
//
//  Created by Jonathan Andersson on 24/11/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import "CompeteNewAccount.h"

@implementation CompeteNewAccount
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize email = _email;
@synthesize password = _password;
@synthesize rePassword = _rePassword;

- (id)initWithFirstName:(NSString *) firstName andLastName:(NSString *) lastName andEmail:(NSString *) email andPassWord:(NSString *) password andRePassWord:(NSString *) rePassword {
    
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.password = password;
        self.rePassword = rePassword;
    }
    return self;
}

@end
