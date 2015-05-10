//
//  NSDictionary+DPFBSDKGraphPlaceTests.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+DPFBSDKGraphPlace.h"

@interface NSDictionary_DPFBSDKGraphPlaceTests : XCTestCase{
    NSDictionary<DPFBSDKGraphPlace> *graphObject;
}

@end

@implementation NSDictionary_DPFBSDKGraphPlaceTests

- (void)setUp {
    [super setUp];
    
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:@"GraphObjectJSON" ofType:@"json"]];
    NSError *error = nil;
    graphObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
}

- (void)tearDown {
    graphObject = nil;
    
    [super tearDown];
}

-(void)testGraphPlaceHasName{
    XCTAssertNoThrow([graphObject name],@"Graph place has name getter");
    XCTAssertEqualObjects([graphObject name], @"Facebook HQ",@"Graph place can retrieve name");
}

-(void)testGraphPlaceHasCategoryName{
    XCTAssertNoThrow([graphObject categoryName],@"Graph place has categoryName getter");
    XCTAssertEqualObjects([graphObject categoryName], @"Internet/software",@"Graph place can retrieve categoryName");
}

-(void)testGraphPlaceHasLocation{
    XCTAssertNoThrow([graphObject location],@"Graph place has location getter");
    XCTAssertTrue([[graphObject location] isKindOfClass:[NSDictionary class]],@"Graph place location is dictionary");
}

-(void)testGraphPlaceProtocolExtendsGraphObjectProtocol{
    XCTAssertNoThrow([graphObject objectId],@"Graph place extends graph object protocol");
    XCTAssertEqualObjects([graphObject objectId], @"166793820034304",@"Graph place can retrieve objectId");
}

@end
