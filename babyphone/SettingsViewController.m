//
//  SettingsViewController.m
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import "SettingsViewController.h"
#import "PhoneNumberRepository.h"
#import "IosAudioController.h"

@implementation SettingsViewController
@synthesize phone;
@synthesize treshholdSlider;

- (void) viewDidLoad {
    treshholdSlider.minimumValue = 0.5;
    treshholdSlider.maximumValue = 2;
}

- (void)viewWillAppear:(BOOL)animated {
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    [repo loadNumber];
    self.phone.text = repo.phoneNumber;
    treshholdSlider.value = iosAudio.threshold;
}

- (void) viewWillDisappear:(BOOL)animated {
    [self save];
}

- (void) save {
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    repo.phoneNumber = phone.text;
    [repo saveNumber];
    
}

- (IBAction)valueChanged:(id)sender {
    UISlider *slider = (UISlider *)sender;
    float sliderValue = slider.value;
    iosAudio.threshold = sliderValue;
}
@end
