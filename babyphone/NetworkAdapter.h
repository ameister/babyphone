//
//  NetworkAdapter.h
//  babyphone
//
//  Created by Andreas Meister on 17.06.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#include <sys/socket.h>
#include <arpa/inet.h>
#include <errno.h>
#define UDP 17
typedef struct sockaddr_in sockaddr_in;

@interface  NetworkAdapter : NSObject

- (void) sendMessage:(NSString*)data withParam: (NSString*) ipAddrs;

@end
