//
//  RMErrorTests.m
//  RMError
//
//  Created by Robert Mißbach on 06.08.15.
//  Copyright (c) 2015 Robert Mißbach. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSError+RMError.h"

@interface RMErrorTests : XCTestCase

@end

@implementation RMErrorTests

- (void)testErrorWithCode
{
    NSError *error = [NSError errorWithCode:1];
    XCTAssertEqual(error.code, 1);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"");
}

- (void)testErrorWithoutCode
{
    NSError *error = [NSError errorWithCode:NAN];
    XCTAssertEqual(error.code, RMErrorCodeDefault);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"");
}

- (void)testErrorWithNegativeCode
{
    NSError *error = [NSError errorWithCode:-1];
    XCTAssertEqual(error.code, -1);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"");
}


- (void)testErrorWithDescription
{
    NSError *error = [NSError errorWithDescription:@"hello"];
    XCTAssertEqual(error.code, RMErrorCodeDefault);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"hello");
}

- (void)testErrorWithoutDescription
{
    NSError *error = [NSError errorWithDescription:nil];
    XCTAssertEqual(error.code, RMErrorCodeDefault);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"");
}


- (void)testErrorWithCodeAndDescription
{
    NSError *error = [NSError errorWithCode:1 description:@"hello"];
    XCTAssertEqual(error.code, 1);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"hello");
}

- (void)testErrorWithoutCodeAndDescription
{
    NSError *error = [NSError errorWithCode:NAN description:nil];
    XCTAssertEqual(error.code, RMErrorCodeDefault);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"");
}


- (void)testErrorWithCodeAndDescriptionAndDomain
{
    NSError *error = [NSError errorWithCode:1 description:@"hello" domain:@"domain"];
    XCTAssertEqual(error.code, 1);
    XCTAssertEqualObjects(error.domain, @"domain");
    XCTAssertEqualObjects(error.localizedDescription, @"hello");
}

- (void)testErrorWithoutCodeAndDescriptionAndDomain
{
    NSError *error = [NSError errorWithCode:NAN description:nil domain:nil];
    XCTAssertEqual(error.code, RMErrorCodeDefault);
    XCTAssertEqualObjects(error.domain, RMErrorDomainDefault);
    XCTAssertEqualObjects(error.localizedDescription, @"");
}



- (void)testRMErrorCreate
{
    NSError *error = RMErrorCreate(@"hello");
    XCTAssertEqualObjects(error.localizedDescription, @"hello");
}

@end
