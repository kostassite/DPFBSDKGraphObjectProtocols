//
//  NSDictionary+DPFBSDKGraphPlace.h
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+DPFBSDKGraphLocation.h"

@protocol DPFBSDKGraphPlace <NSObject>

-(NSString *)name;

-(NSString*)categoryName;

-(NSDictionary<DPFBSDKGraphLocation> *)location;

@end

@interface NSDictionary (DPFBSDKGraphPlace)

@end
