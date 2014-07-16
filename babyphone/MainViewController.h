//
//  MainViewController.h
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Listener.h"

@interface MainViewController : UIViewController <Listener>
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberField;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) NSTimer *volTimer;
@property (weak, nonatomic) IBOutlet UIProgressView *volumeIndicator;


- (IBAction)start:(id)sender;

@end
