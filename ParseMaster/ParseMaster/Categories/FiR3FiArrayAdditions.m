//
//  NSArray+NSTNArrayAdditions.m
//  Ensighten
//
//  Created by Miles Alden on 8/7/12.
//
//

#import "FiR3FiArrayAdditions.h"
#import "FiR3FiDictionaryAdditions.h"

@implementation NSArray (FiR3FiArrayAdditions)


+ (NSArray *)arrayWithPreferenceSpecifierAndGroup {
    
    // The specific info for the Root.plist
    // is kept in an array.
    // Here we're just adding the one group so we've
    // got some kind of label.
    return @[ [NSDictionary defaultGroupForSettingsDictionary] ];
    
}

@end
