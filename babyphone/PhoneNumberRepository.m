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


- (void) saveWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_phoneNumber forKey:phoneNumberKey];
}

- (id)loadWithCoder:(NSCoder *)decoder {
    NSString *phoneNumber = [decoder decodeObjectForKey:phoneNumberKey];
    return phoneNumber;
}

@end
