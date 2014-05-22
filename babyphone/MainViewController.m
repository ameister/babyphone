//
//  MainViewController.m
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize outputLabel;

- (IBAction)start:(id)sender {
    self.outputLabel.text = @"Button pressed";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://0796652606"]];
}
@end
