//
//  babyphoneTests.m
//  babyphoneTests
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PhoneNumberRepository.h"
#import "NetworkAdapter.h"

@interface babyphoneTests : XCTestCase

@end

@implementation babyphoneTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPhoneNumber_save_numberCanBeLoaded
{
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    repo.phoneNumber = @"0796652606";
    [repo saveNumber];
    repo.phoneNumber = nil;
    [repo loadNumber];
    XCTAssertEqualObjects(@"0796652606", repo.phoneNumber);
}

- (void) testString_sendOverWLAN_success
{
    NetworkAdapter *adapter = [[NetworkAdapter alloc] init];
    
    [adapter sendMessage:@"hello" withParam:@"10.0.1.13"];
}

@end
