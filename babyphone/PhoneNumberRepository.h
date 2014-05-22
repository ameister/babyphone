//
//  PhoneNumberRepository.h
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumberRepository : NSObject
@property (strong) NSString *phoneNumber;

- (void)saveNumber;
- (void)loadNumber;

@end
