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

    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:@"GraphObjectJSON" ofType:@"json"]];
    NSError *error = nil;
    graphObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
}

- (void)tearDown {
    graphObject = nil;
    
    [super tearDown];
}

-(void)testGraphObjectHasObjectId{
    XCTAssertNoThrow([graphObject objectId],@"Graph object has objectId getter");
    XCTAssertEqualObjects([graphObject objectId], @"166793820034304",@"Graph object can retrieve objectId");
}

@end
