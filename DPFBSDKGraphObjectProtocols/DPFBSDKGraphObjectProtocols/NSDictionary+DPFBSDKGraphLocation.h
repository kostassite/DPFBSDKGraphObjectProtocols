//
//  NSDictionary+DPFBSDKGraphLocation.h
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DPFBSDKGraphLocation)

-(NSString *)street;
-(NSString *)city;
-(NSString *)state;
-(NSString *)country;
-(NSString *)zip;
-(NSNumber *)latitude;
-(NSNumber *)longitude;

@end
