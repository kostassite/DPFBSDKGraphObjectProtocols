//
//  NSDictionary+DPFBSDKGraphUser.h
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+DPFBSDKGraphObject.h"

@protocol DPFBSDKGraphUser <DPFBSDKGraphObject>

-(NSString*)name;

@end

@interface NSDictionary (DPFBSDKGraphUser)

@end
