//
//  PhoneNumberRepository.m
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import "PhoneNumberRepository.h"

@implementation PhoneNumberRepository

#pragma mark NSCoding

#define phoneNumberKey @"PhoneNumber"

- (void)saveNumber
{
    NSUserDefaults *perfs = [NSUserDefaults standardUserDefaults];
    [perfs setObject:_phoneNumber forKey:phoneNumberKey];
}

- (void)loadNumber
{
    NSUserDefaults *perfs = [NSUserDefaults standardUserDefaults];
    _phoneNumber = [perfs stringForKey:phoneNumberKey];
}
@end
