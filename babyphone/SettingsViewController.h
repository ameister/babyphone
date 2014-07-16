//
//  SettingsViewController.h
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
- (IBAction)valueChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *treshholdSlider;

@property (weak, nonatomic) IBOutlet UITextField *phone;

@end
