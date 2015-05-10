//
//  NSDictionary+DPFBSDKGraphPlace.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "NSDictionary+DPFBSDKGraphPlace.h"

@implementation NSDictionary (DPFBSDKGraphPlace)

-(NSString *)name{
    return [self objectForKey:@"name"];
}

-(NSString*)categoryName{
    return [self objectForKey:@"category"];
}

-(NSDictionary *)location{
     return [self objectForKey:@"location"];   
}

@end
