//
//  NSDictionary+DPFBSDKGraphObject.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+DPFBSDKGraphObject.h"

@interface NSDictionary_DPFBSDKGraphObject : XCTestCase{
    NSDictionary *graphObject;
}

@end

@implementation NSDictionary_DPFBSDKGraphObject

- (void)setUp {
    [super setUp];

    graphObject = [NSDictionary dictionaryWithObjectsAndKeys:@"123456",@"id", nil];
}

- (void)tearDown {
    graphObject = nil;
    
    [super tearDown];
}

-(void)testGraphObjectHasObjectId{
    XCTAssertNoThrow([graphObject objectId],@"Graph object has objectId getter");
    XCTAssertEqualObjects([graphObject objectId], @"123456",@"Graph object can retrieve objectId");
}

@end
