//
//  NSDictionary+SettingsDictionaries.m
//  Ensighten
//
//  Created by Miles Alden on 8/7/12.
//
//

#import "FiR3FiDictionaryAdditions.h"
#import "FiR3FiArrayAdditions.h"

@implementation NSDictionary (FiR3FiSettingsDictionaries)


+ (NSDictionary *)dictionaryWithEnsightenToggleSwitch {
    
    // Dictionary that makes a toggle switch
    // when added to Settings.bundle/Root.plist
    return @{
    @"Type"  : @"PSToggleSwitchSpecifier",
    @"Title" : @"Clear caches",
    @"Key"   : @"kNSTNClearCache",
    @"DefaultValue" : @false };
    
}


+ (NSDictionary *)rootPlistEmptyDictionary {
    
    return @{
    @"StringsTable" : @"Root",
    @"PreferenceSpecifiers" : [NSArray arrayWithPreferenceSpecifierAndGroup]
    };
}

+ (NSDictionary *)defaultGroupForSettingsDictionary {
    
    return @{
    @"Type" : @"PSGroupSpecifier",
    @"Title" : @"Clear caches on start"
    };
    
}

- (BOOL)containsKey: (NSString *)key {
    
    BOOL retVal = 0;
    NSArray *allKeys = [self allKeys];
    retVal = [allKeys containsObject:key];
    return retVal;
    
}


@end
