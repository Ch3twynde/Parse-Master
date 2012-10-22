//
//  NSDictionary+SettingsDictionaries.h
//  Ensighten
//
//  Created by Miles Alden on 8/7/12.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (FiR3FiSettingsDictionaries)

+ (NSDictionary *)dictionaryWithEnsightenToggleSwitch;
+ (NSDictionary *)rootPlistEmptyDictionary;
+ (NSDictionary *)defaultGroupForSettingsDictionary;
- (BOOL)containsKey: (NSString *)key;

@end
