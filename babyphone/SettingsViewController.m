//
//  SettingsViewController.m
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import "SettingsViewController.h"
#import "PhoneNumberRepository.h"

@implementation SettingsViewController
@synthesize phone;

- (IBAction)save:(id)sender {
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    repo.phoneNumber = phone.text;
    [repo saveNumber];
    
}

@end
