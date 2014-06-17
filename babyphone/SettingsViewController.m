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

- (void)viewWillAppear:(BOOL)animated {
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    [repo loadNumber];
    self.phone.text = repo.phoneNumber;
}

- (void) viewWillDisappear:(BOOL)animated {
    [self save];
}

- (void) save {
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    repo.phoneNumber = phone.text;
    [repo saveNumber];
    
}

@end
