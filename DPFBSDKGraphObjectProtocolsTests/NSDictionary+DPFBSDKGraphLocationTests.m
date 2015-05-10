//
//  NSDictionary+DPFBSDKGraphLocationTests.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+DPFBSDKGraphLocation.h"
#import "NSDictionary+DPFBSDKGraphPlace.h"

@interface NSDictionary_DPFBSDKGraphLocationTests : XCTestCase{
    NSDictionary<DPFBSDKGraphPlace> *graphObject;
    NSDictionary<DPFBSDKGraphLocation> *graphLocation;

}

@end

@implementation NSDictionary_DPFBSDKGraphLocationTests

- (void)setUp {
    [super setUp];
    
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:@"GraphObjectJSON" ofType:@"json"]];
    NSError *error = nil;
    graphObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    graphLocation = [graphObject location];
}

- (void)tearDown {
    graphObject = nil;
    graphLocation = nil;
    [super tearDown];
}

-(void)testGraphLocationHasStreet{
    XCTAssertNoThrow([graphLocation street],@"Graph location has street getter");
    XCTAssertEqualObjects([graphLocation street], @"1 Hacker Way",@"Graph location can retrieve street");
}

-(void)testGraphLocationHasCity{
    XCTAssertNoThrow([graphLocation city],@"Graph location has city getter");
    XCTAssertEqualObjects([graphLocation city], @"Menlo Park",@"Graph location can retrieve city");
}

-(void)testGraphLocationHasState{
    XCTAssertNoThrow([graphLocation city],@"Graph location has state getter");
    XCTAssertEqualObjects([graphLocation state], @"CA",@"Graph location can retrieve state");
}

-(void)testGraphLocationHasCountry{
    XCTAssertNoThrow([graphLocation country],@"Graph location has country getter");
    XCTAssertEqualObjects([graphLocation country], @"United States",@"Graph location can retrieve country");
}

-(void)testGraphLocationHasZip{
    XCTAssertNoThrow([graphLocation zip],@"Graph location has zip getter");
    XCTAssertEqualObjects([graphLocation zip], @"94025",@"Graph location can retrieve zip");
}

-(void)testGraphLocationHasLatitude{
    XCTAssertNoThrow([graphLocation latitude],@"Graph location has latitude getter");
    XCTAssertEqualObjects([graphLocation latitude], @37.482898,@"Graph location can retrieve latitude");
}

-(void)testGraphLocationHasLongitude{
    XCTAssertNoThrow([graphLocation longitude],@"Graph location has longitude getter");
    XCTAssertEqualObjects([graphLocation longitude], @-122.149909,@"Graph location can retrieve longitude");
}

@end
