//
//  NSDictionary+DPFBSDKGraphUser.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+DPFBSDKGraphUser.h"

@interface NSDictionary_DPFBSDKGraphUser : XCTestCase{
    NSDictionary <DPFBSDKGraphUser> *graphUser;
}

@end

@implementation NSDictionary_DPFBSDKGraphUser

- (void)setUp {
    [super setUp];
    
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:@"GraphUserJSON" ofType:@"json"]];
    NSError *error = nil;
    graphUser = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
}

- (void)tearDown {
    graphUser = nil;
    [super tearDown];
}

-(void)testGraphUserHasName{
    XCTAssertNoThrow([graphUser name],@"Graph user has name getter");
    XCTAssertEqualObjects([graphUser name], @"Dev Pro",@"Graph user can retrieve name");
}

-(void)testGraphUserProtocolExtendsGraphObjectProtocol{
    XCTAssertNoThrow([graphUser objectId],@"Graph user extends graph object protocol");
    XCTAssertEqualObjects([graphUser objectId], @"123456",@"Graph user can retrieve objectId");
}

@end
