//
//  OBJCReturnTypes.h
//  ParseMaster
//
//  Created by Miles Alden on 10/21/12.
//  Copyright (c) 2012 MilesAlden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OBJCReturnTypes : NSObject


+ (NSDictionary *)returnTypesDictionary;
+ (NSDictionary *)returnTypesFromHumanKeys;
+ (const char *)returnTypeForKey: (NSString *)key;


@end
