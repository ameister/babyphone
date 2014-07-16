//
//  Listener.h
//  babyphone
//
//  Created by Andreas Meister on 16.07.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Listener

-(void) handleAction: (double)value;

@end

@interface AudioListener : NSObject <Listener>

@end
