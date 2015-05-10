//
//  NSDictionary+DPFBSDKGraphLocation.m
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "NSDictionary+DPFBSDKGraphLocation.h"

@implementation NSDictionary (DPFBSDKGraphLocation)

-(NSString *)street{
    return [self objectForKey:@"street"];
}

-(NSString *)city{
    return [self objectForKey:@"city"];
}

-(NSString *)state{
     return [self objectForKey:@"state"];
}

-(NSString *)country{
     return [self objectForKey:@"country"];
}

-(NSString *)zip{
     return [self objectForKey:@"zip"];
}

-(NSNumber *)latitude{
     return [self objectForKey:@"latitude"];
}

-(NSNumber *)longitude{
     return [self objectForKey:@"longitude"];
}

@end
