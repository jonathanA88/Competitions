//
//  CompeteNewAccount.h
//  Competitions
//
//  Created by Jonathan Andersson on 24/11/13.
//  Copyright (c) 2013 Jonathan Andersson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompeteNewAccount : NSObject

@property (weak, nonatomic) NSString *firstName;
@property (weak, nonatomic) NSString *lastName;
@property (weak, nonatomic) NSString *email;
@property (weak, nonatomic) NSString *password;
@property (weak, nonatomic) NSString *rePassword;

- (id)initWithFirstName:(NSString *) firstName andLastName:(NSString *) lastName andEmail:(NSString *) email andPassWord:(NSString *) passWord andRePassWord:(NSString *) rePassWord;

@end
