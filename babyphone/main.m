//
//  main.m
//  babyphone
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BabyAppDelegate.h"
#import "IosAudioController.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        iosAudio.threshold = 1;
        iosAudio = [[IosAudioController alloc] init];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([BabyAppDelegate class]));
    }
}
