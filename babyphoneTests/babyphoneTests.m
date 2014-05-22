//
//  babyphoneTests.m
//  babyphoneTests
//
//  Created by Andreas Meister on 22.05.14.
//  Copyright (c) 2014 bbv. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PhoneNumberRepository.h"

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

- (void)testExample
{
    PhoneNumberRepository *repo = [[PhoneNumberRepository alloc] init];
    repo.phoneNumber = @"0796652606";
    [repo saveNumber];
    repo.phoneNumber = nil;
    [repo loadNumber];
    XCTAssertEqualObjects(@"0796652606", repo.phoneNumber);
}

@end
