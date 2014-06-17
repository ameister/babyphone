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
@synthesize phoneNumberField;
@synthesize startButton;
bool start = YES;

- (IBAction)start:(id)sender {
   
    if (start) {
        [iosAudio start];
        [startButton setTitle:@"Stopp" forState:UIControlStateNormal];
        PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
        [repo loadNumber];
        self.phoneNumberField.text = repo.phoneNumber;
        phoneNumberField.text =  repo.phoneNumber;
    } else {
        [iosAudio stop];
         [startButton setTitle:@"Start" forState:UIControlStateNormal];
        phoneNumberField.text = nil;
        
    }
    
    start = !start;
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://0796652606"]];

}
@end
