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
#import "Listener.h"
#define BUFFER_LENGTH 20

@implementation MainViewController
@synthesize outputLabel;
@synthesize phoneNumberField;
@synthesize startButton;
@synthesize volumeIndicator;
@synthesize volTimer;
bool start = YES;
double max = 0;
double lastRmsAmpl[BUFFER_LENGTH];
int counter = 0.0;

-(void) viewDidLoad {
    iosAudio.listener = self;
}

- (IBAction)start:(id)sender {
   
    if (start) {
        [iosAudio start];
        [startButton setTitle:@"Stopp" forState:UIControlStateNormal];
        PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
        [repo loadNumber];
        self.phoneNumberField.text = repo.phoneNumber;
        phoneNumberField.text =  repo.phoneNumber;
        volTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateUI:) userInfo:nil repeats:YES ];
        
    } else {
        [iosAudio stop];
         [startButton setTitle:@"Start" forState:UIControlStateNormal];
        phoneNumberField.text = nil;
        
    }
    
    start = !start;
    
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://0796652606"]];

}

-(void) updateUI:(NSTimer *) timer {
    double sum = 0.0;
    for(int i=0; i<BUFFER_LENGTH; i++)
    {
        sum = sum + lastRmsAmpl [i];
    }
    double vol =sum / ((double) BUFFER_LENGTH);
    volumeIndicator.progress = vol/max;
    NSLog(@"%f", vol);
  
}

    -(void) handleAction: (double)value {
        lastRmsAmpl[counter++] = value;
        if(counter == BUFFER_LENGTH) {
            counter = 0;
        }
        @synchronized(self) {
            if (value > max) {
                max = value;
            }

          
        }
    }

@end
