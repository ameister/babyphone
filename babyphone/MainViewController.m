//
//  MainViewController.m
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import "MainViewController.h"
#import "PhoneNumberRepository.h"
#import "IosAudioController.h"

@implementation MainViewController
@synthesize outputLabel;

- (IBAction)start:(id)sender {
    
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    [repo loadNumber];
    self.outputLabel.text = repo.phoneNumber;
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://0796652606"]];
    [iosAudio start];
}
@end
