//
//  NSDictionary+DPFBSDKGraphObject.h
//  DPFBSDKGraphObjectProtocols
//
//  Created by Kostas on 10/5/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DPFBSDKGraphObject <NSObject>

-(NSString *)objectId;

@end

@interface NSDictionary (DPFBSDKGraphObject)

@end
