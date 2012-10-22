//
//  NSArray+NSTNArrayAdditions.m
//  Ensighten
//
//  Created by Miles Alden on 8/7/12.
//
//

#import "NSTNArrayAdditions.h"
#import "NSTNDictionaryAdditions.h"

@implementation NSArray (NSTNArrayAdditions)


+ (NSArray *)arrayWithPreferenceSpecifierAndGroup {
    
    // The specific info for the Root.plist
    // is kept in an array.
    // Here we're just adding the one group so we've
    // got some kind of label.
    return @[ [NSDictionary defaultGroupForSettingsDictionary] ];
    
}

@end
