//
//  BRViewController.m
//  UdpSocketsDemo
//
//  Created by Eduardo Gutiérrez Silva on 07/05/14.
//  Copyright (c) 2014 Brachiosoft. All rights reserved.
//

#import "NetworkAdapter.h"

@implementation NetworkAdapter

- (void) sendMessage:(NSString*)data withParam: (NSString*) ipAddrs {
    
    // DEST Address
    sockaddr_in *dest_addr = (sockaddr_in*)malloc(sizeof(sockaddr_in));
    
    // Init address
    memset(dest_addr, 0, sizeof(sockaddr_in));
    dest_addr->sin_family = AF_INET;
    
    // Get Source.
    
    // Load address.
    int pton_val = inet_pton(AF_INET, [ipAddrs UTF8String], &(dest_addr->sin_addr.s_addr));
    // Setting port
    dest_addr->sin_port=htons(1514);
    
    // Create our socket.
    int sock_fd = socket(AF_INET, SOCK_DGRAM, UDP);
    
    // Error handling.
    if(sock_fd < 0){
        perror("socket");
    }else{  // Our socket was opened
        // Get Message Data
        NSData *bytes = [data dataUsingEncoding:NSUTF8StringEncoding];
        uint8_t * rawBytes = (uint8_t*)[bytes bytes];
        
        // Send our message.
        int error = sendto(sock_fd, rawBytes, [data length], 0, (struct sockaddr*)dest_addr, sizeof(sockaddr_in));
        if(error < 0){
        }else{
            close(sock_fd);
        }
    }
}
@end
