//
//  NSDictionary+DPFBSDKGraphObject.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "NSDictionary+DPFBSDKGraphObject.h"

@implementation NSDictionary (DPFBSDKGraphObject)

-(NSString *)objectId{
    return [self objectForKey:@"id"];
}

@end
