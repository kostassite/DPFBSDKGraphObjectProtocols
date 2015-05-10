//
//  NSDictionary+DPFBSDKGraphUser.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "NSDictionary+DPFBSDKGraphUser.h"

@implementation NSDictionary (DPFBSDKGraphUser)

-(NSString*)name{
    return [self objectForKey:@"name"];
}

@end
